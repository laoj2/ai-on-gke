# Copyright 2024 Google LLC
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

variable "project_id" {
  type        = string
  description = "GCP project id"
}

variable "namespace" {
  type        = string
  description = "Kubernetes namespace where resources are deployed"
  default     = "rag"
}

variable "region" {
  type        = string
  description = "GCP project region"
  default     = "us-central1"
}

variable "cloudsql_instance" {
  type        = string
  description = "Name of the CloudSQL instance for RAG VectorDB"
  default     = "pgvector-instance"
}

variable "db_secret_name" {
  type        = string
  description = "CloudSQL user"
}

variable "db_secret_namespace" {
  type        = string
  description = "CloudSQL password"
  default     = "rag"
}

variable "dataset_embeddings_table_name" {
  type        = string
  description = "Name of the table that stores vector embeddings for input dataset"
}

variable "inference_service_name" {
  type        = string
  description = "Model inference k8s service name"
}

variable "inference_service_namespace" {
  type        = string
  description = "Model inference k8s service endpoint"
  default     = "rag"
}

variable "create_service_account" {
  type        = bool
  description = "Creates a google service account & k8s service account & configures workload identity"
  default     = true
}

variable "google_service_account" {
  type        = string
  description = "Google Service Account name"
  default     = "frontend-gcp-sa"
}

variable "add_auth" {
  type        = bool
  description = "Enable iap authentication on frontend"
  default     = true
}

variable "k8s_ingress_name" {
  type    = string
  default = "frontend-ingress"
}

variable "k8s_managed_cert_name" {
  type        = string
  description = "Name for frontend managed certificate"
  default     = "frontend-managed-cert"
}

variable "k8s_iap_secret_name" {
  type    = string
  default = "frontend-secret"
}

variable "k8s_backend_config_name" {
  type        = string
  description = "Name of the Backend Config on GCP"
  default     = "frontend-iap-config"
}

variable "k8s_backend_service_name" {
  type        = string
  description = "Name of the K8s Backend Service, this is defined by Frontend"
  default     = "rag-frontend"
}

variable "k8s_backend_service_port" {
  type        = number
  description = "Name of the K8s Backend Service Port"
  default     = 8080
}

variable "brand" {
  type        = string
  description = "name of the brand if there isn't already on the project. If there is already a brand for your project, please leave it blank and empty"
  default     = ""
}

variable "url_domain_addr" {
  type        = string
  description = "Domain provided by the user. If it's empty, we will create one for you."
  default     = ""
}

variable "url_domain_name" {
  type        = string
  description = "Name of the domain provided by the user. This var will only be used if url_domain_addr is not empty"
  default     = ""
}

variable "support_email" {
  type        = string
  description = "Email for users to contact with questions about their consent"
  default     = "<email>"
}

variable "client_id" {
  type        = string
  description = "Client ID used for enabling IAP"
  default     = ""
}

variable "client_secret" {
  type        = string
  description = "Client secret used for enabling IAP"
  default     = ""
  sensitive   = false
}

variable "members_allowlist" {
  type    = list(string)
  default = []
}