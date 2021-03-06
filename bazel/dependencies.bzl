#
# GRAKN.AI - THE KNOWLEDGE GRAPH
# Copyright (C) 2018 Grakn Labs Ltd
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file", "http_jar")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def bazel_common():
    git_repository(
        name="com_github_google_bazel_common",
        remote="https://github.com/graknlabs/bazel-common",
        commit="5cf83ccbb4b184f282380fe2c1f47b13336ffcdd",
    )

def bazel_toolchain():
    http_archive(
      name = "bazel_toolchains",
      sha256 = "a1e273b6159ae858f53046f5bab9678cffa82a72f0bf0c0a9e4af8fddb91209c",
      strip_prefix = "bazel-toolchains-0.29.6",
      urls = [
        "https://github.com/bazelbuild/bazel-toolchains/releases/download/0.29.6/bazel-toolchains-0.29.6.tar.gz",
      ],
    )

def bazel_deps():
    http_jar(
        name = "bazel_deps",
        urls = ["https://github.com/graknlabs/bazel-deps/releases/download/0.3/grakn-bazel-deps-0.3.jar"],
    )

def bazel_rules_docker():
    http_archive(
        name = "io_bazel_rules_docker",
        sha256 = "14ac30773fdb393ddec90e158c9ec7ebb3f8a4fd533ec2abbfd8789ad81a284b",
        strip_prefix = "rules_docker-0.12.1",
        urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.12.1/rules_docker-v0.12.1.tar.gz"],
    )

def bazel_rules_nodejs():
    http_archive(
        name = "build_bazel_rules_nodejs",
        sha256 = "3b0116a8a91a75678a57ba676c246ac0fa9c90dc3d46daef305b11b54ed4467e",
        urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/0.33.1/rules_nodejs-0.33.1.tar.gz"],
    )

def bazel_rules_python():
    git_repository(
        name = "io_bazel_rules_python",
        remote = "https://github.com/bazelbuild/rules_python.git",
        commit = "e6399b601e2f72f74e5aa635993d69166784dde1",
    )
