-- Copyright (c) 2016-present, Facebook, Inc.
-- All rights reserved.
--
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree. An additional grant
-- of patent rights can be found in the PATENTS file in the same directory.


{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}

module Duckling.Rules.ET
  ( rules
  ) where

import Duckling.Dimensions.Types
import qualified Duckling.Number.ET.Rules as Number
import qualified Duckling.Ordinal.ET.Rules as Ordinal
import Duckling.Types

rules :: Some Dimension -> [Rule]
rules (This Distance) = []
rules (This Duration) = []
rules (This Numeral) = Number.rules
rules (This Email) = []
rules (This Finance) = []
rules (This Ordinal) = Ordinal.rules
rules (This PhoneNumber) = []
rules (This Quantity) = []
rules (This RegexMatch) = []
rules (This Temperature) = []
rules (This Time) = []
rules (This TimeGrain) = []
rules (This Url) = []
rules (This Volume) = []
