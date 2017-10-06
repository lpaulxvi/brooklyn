# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

# For all Brooklyn, we use a debian distribution instead of alpine as there are some libgcc incompatibilities with GO
# and PhantomJS
FROM maven:3.5.2-jdk-8-slim

# Install the non-headless JRE as some tests requires them
RUN apt-get update && apt-get install -y openjdk-8-jre

# Install necessary binaries to build brooklyn
RUN apt-get update && apt-get install -y \
    git-core \
    procps \
    golang-go \
    rpm \
    dpkg
