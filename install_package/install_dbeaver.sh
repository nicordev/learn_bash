#! /bin/bash

install() {
    if [ ! -f "$@" ]
    then
        echo "no file to use."

        return 1
    fi

    sudo apt-get install "$@"
}

getVersion() {
    [[ "$@" =~ dbeaver-ce_([0-9]+)\.([0-9]+)\.([0-9]+)_amd64\.deb ]]

    if [ -z "${BASH_REMATCH[1]}${BASH_REMATCH[2]}${BASH_REMATCH[3]}" ]
    then
        return 1
    fi

    echo "${BASH_REMATCH[1]}.${BASH_REMATCH[2]}.${BASH_REMATCH[3]}"
}

getVersionPart() {
    echo "$1" | cut --delimiter='.' --fields=${2}
}

getMajor() {
    getVersionPart "$@" 1
}

getMinor() {
    getVersionPart "$@" 2
}

getFix() {
    getVersionPart "$@" 3
}

isVersionALaterThanB() {
    local versionA="$1"
    local versionB="$2"

    [ "$(getMajor $versionA)" -ge "$(getMajor $versionB)" ] && \
    [ "$(getMinor $versionA)" -ge "$(getMinor $versionB)" ] && \
    [ "$(getFix $versionA)" -ge "$(getFix $versionB)" ]
}

getLastPackageFile() {
    local previousVersion='0.0.0'
    local lastPackageFile=''

    for file in ./*
    do
        version=$(getVersion $file)

        if [ -z "$version" ]
        then
            continue
        fi

        if isVersionALaterThanB $version $previousVersion
        then
            lastPackageFile=$file
        fi

        previousVersion=$version
    done

    echo $lastPackageFile
}

install $(getLastPackageFile)