#!/bin/bash

# Copyright(C) 2022. Huawei Technologies Co., Ltd. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

air_path=$1
om_path=$2


echo "Input AIR file path: ${air_path}"
echo "Output OM file path: ${om_path}"

atc --input_format=NCHW \
    --framework=1 --model="${air_path}" \
    --output="${om_path}" \
    --soc_version=Ascend310
