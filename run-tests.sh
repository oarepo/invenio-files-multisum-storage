#!/usr/bin/env bash
# -*- coding: utf-8 -*-
#
# Copyright (C) 2019 CESNET.
#
# Invenio Files Multi-Checksum Storage is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.

pydocstyle invenio_files_multisum_storage tests docs && \
isort -rc -c -df && \
check-manifest --ignore ".travis-*,docs/_build*" && \
sphinx-build -qnNW docs docs/_build/html && \
python setup.py test
