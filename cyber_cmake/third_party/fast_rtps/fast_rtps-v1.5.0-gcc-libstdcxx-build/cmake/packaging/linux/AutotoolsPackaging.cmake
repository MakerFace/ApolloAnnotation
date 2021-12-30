# Copyright 2016 Proyectos y Sistemas de Mantenimiento SL (eProsima).
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Copy configure.ac
file(INSTALL /home/hhy/source_dir/cyber_mine/third_party/fast_rtps/fast_rtps-v1.5.0-gcc-source/configure.ac
    DESTINATION /home/hhy/source_dir/cyber_mine/third_party/fast_rtps/fast_rtps-v1.5.0-gcc-libstdcxx-build/autotools
    )

# Copy m4 diretory
file(INSTALL /home/hhy/source_dir/cyber_mine/third_party/fast_rtps/fast_rtps-v1.5.0-gcc-source/m4
    DESTINATION /home/hhy/source_dir/cyber_mine/third_party/fast_rtps/fast_rtps-v1.5.0-gcc-libstdcxx-build/autotools
    )

# Create include/fastrtps
file(MAKE_DIRECTORY /home/hhy/source_dir/cyber_mine/third_party/fast_rtps/fast_rtps-v1.5.0-gcc-libstdcxx-build/autotools/include/fastrtps)

if(OFF)
    # Copy script to be installed with autotools
    file(INSTALL /home/hhy/source_dir/cyber_mine/third_party/fast_rtps/fast_rtps-v1.5.0-gcc-source/fastrtpsgen/scripts/fastrtpsgen.in
        DESTINATION /home/hhy/source_dir/cyber_mine/third_party/fast_rtps/fast_rtps-v1.5.0-gcc-libstdcxx-build/autotools/.bin
        )
endif()


# Run autoreconf
execute_process(COMMAND autoreconf -fi /home/hhy/source_dir/cyber_mine/third_party/fast_rtps/fast_rtps-v1.5.0-gcc-libstdcxx-build/autotools
    RESULT_VARIABLE EXECUTE_RESULT)

if(NOT EXECUTE_RESULT EQUAL 0)
    message(FATAL_ERROR "Failed the execution of autoreconf")
endif()

# Copy include/fastrtps/config.h.in
file(INSTALL /home/hhy/source_dir/cyber_mine/third_party/fast_rtps/fast_rtps-v1.5.0-gcc-source/include/fastrtps/config.h.in
    DESTINATION /home/hhy/source_dir/cyber_mine/third_party/fast_rtps/fast_rtps-v1.5.0-gcc-libstdcxx-build/autotools/include/fastrtps
    )

# Copy licenses
file(INSTALL /home/hhy/source_dir/cyber_mine/third_party/fast_rtps/fast_rtps-v1.5.0-gcc-source/LICENSE
    DESTINATION /home/hhy/source_dir/cyber_mine/third_party/fast_rtps/fast_rtps-v1.5.0-gcc-libstdcxx-build/autotools
    )
