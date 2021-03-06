%%%----------------------------------------------------------------------
%%% Copyright (c) 2006-2011 Gemini Mobile Technologies, Inc.  All rights reserved.
%%%
%%% Licensed under the Apache License, Version 2.0 (the "License");
%%% you may not use this file except in compliance with the License.
%%% You may obtain a copy of the License at
%%%
%%%     http://www.apache.org/licenses/LICENSE-2.0
%%%
%%% Unless required by applicable law or agreed to in writing, software
%%% distributed under the License is distributed on an "AS IS" BASIS,
%%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%% See the License for the specific language governing permissions and
%%% limitations under the License.
%%%
%%% File    : partition_detector.hrl
%%% Purpose : partition detector application header
%%%----------------------------------------------------------------------

-define(EVENT_SERVER, partition_detector_event).

-record(beacon, {
          node,                                 % Node name (atom)
          net,                                  % 'A' | 'B'
          count,                                % Counter (integer)
          time,                                 % now()
          extra = []
         }).

-record(history, {
          node_net,                             % {node(), 'A' | 'B'}
          lastcount,                            % int()
          lasttime,                             % now()
          beacon                                % #beacon
         }).

