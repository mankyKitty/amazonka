{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.FraudDetector.Types.DataSource
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FraudDetector.Types.DataSource
  ( DataSource
      ( ..,
        DataSource_EVENT,
        DataSource_EXTERNAL_MODEL_SCORE,
        DataSource_MODEL_SCORE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype DataSource = DataSource'
  { fromDataSource ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern DataSource_EVENT :: DataSource
pattern DataSource_EVENT = DataSource' "EVENT"

pattern DataSource_EXTERNAL_MODEL_SCORE :: DataSource
pattern DataSource_EXTERNAL_MODEL_SCORE = DataSource' "EXTERNAL_MODEL_SCORE"

pattern DataSource_MODEL_SCORE :: DataSource
pattern DataSource_MODEL_SCORE = DataSource' "MODEL_SCORE"

{-# COMPLETE
  DataSource_EVENT,
  DataSource_EXTERNAL_MODEL_SCORE,
  DataSource_MODEL_SCORE,
  DataSource'
  #-}
