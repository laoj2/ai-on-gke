# Copyright 2023 Google LLC
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

##common variables
project_id = "<project-id>"

#######################################################
####    PLATFORM
#######################################################
## network values
create_network  = false
network_name    = "demo-network"
subnetwork_name = "demo-subnet"

## gke variables
private_cluster   = true ## Default true. Use false for a public cluster
autopilot_cluster = true # false = standard cluster, true = autopilot cluster
cluster_name      = "demo-cluster"
cluster_region    = "us-central1"
cluster_zones     = ["us-central1-a", "us-central1-b", "us-central1-f"]
