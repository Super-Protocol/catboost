PY2_LIBRARY()



VERSION(2.1.1)

LICENSE(Apache-2.0)

PEERDIR(
    contrib/python/configparser
    contrib/python/contextlib2
    contrib/python/pathlib2
    library/python/resource
)

NO_LINT()

PY_SRCS(
    TOP_LEVEL
    importlib_metadata/__init__.py
    importlib_metadata/_compat.py
)

RESOURCE_FILES(
    PREFIX contrib/python/importlib-metadata/py2/
    .dist-info/METADATA
    .dist-info/top_level.txt
)

END()