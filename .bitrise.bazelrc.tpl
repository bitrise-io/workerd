
build:bitrise --remote_cache=$BITRISE_CACHE_ENDPOINT
build:bitrise --remote_header=authorization="Bearer $BITRISE_ACCESS_TOKEN"
build:bitrise --remote_header=x-org-id="$BITRISE_WORKSPACE_SLUG"
build:bitrise --experimental_remote_cache_compression
build:bitrise --experimental_remote_downloader=$BITRISE_CACHE_ENDPOINT
build:bitrise --remote_downloader_header=authorization="Bearer $BITRISE_ACCESS_TOKEN"
build:bitrise --remote_downloader_header=x-org-id="$BITRISE_WORKSPACE_SLUG"
# lets see if it works!
build:bitrise --remote_download_toplevel
build:bitrise --repository_cache=
build:bitrise --disk_cache=
