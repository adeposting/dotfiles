#!/bin/zsh

# --- History Options ---
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_VERIFY

# --- Command Behavior ---
setopt CORRECT
setopt NO_FLOW_CONTROL

# --- Directory Navigation ---
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

# --- Globbing and Wildcards ---
setopt EXTENDED_GLOB
setopt NO_CASE_GLOB
setopt GLOB_DOTS
setopt NUMERIC_GLOB_SORT

# --- Completion Behavior ---
setopt AUTO_PARAM_SLASH
setopt INTERACTIVE_COMMENTS
setopt NO_NOMATCH

# --- Job Control & Prompting ---
setopt NOTIFY
setopt LONG_LIST_JOBS
