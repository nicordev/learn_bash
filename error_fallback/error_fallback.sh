#!/bin/bash

brokenFunction() {
    return 1
}

brokenFunction || cat zog || echo "error"