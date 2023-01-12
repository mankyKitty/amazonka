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
-- Module      : Amazonka.CodeBuild.Types.BatchReportModeType
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeBuild.Types.BatchReportModeType
  ( BatchReportModeType
      ( ..,
        BatchReportModeType_REPORT_AGGREGATED_BATCH,
        BatchReportModeType_REPORT_INDIVIDUAL_BUILDS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype BatchReportModeType = BatchReportModeType'
  { fromBatchReportModeType ::
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

pattern BatchReportModeType_REPORT_AGGREGATED_BATCH :: BatchReportModeType
pattern BatchReportModeType_REPORT_AGGREGATED_BATCH = BatchReportModeType' "REPORT_AGGREGATED_BATCH"

pattern BatchReportModeType_REPORT_INDIVIDUAL_BUILDS :: BatchReportModeType
pattern BatchReportModeType_REPORT_INDIVIDUAL_BUILDS = BatchReportModeType' "REPORT_INDIVIDUAL_BUILDS"

{-# COMPLETE
  BatchReportModeType_REPORT_AGGREGATED_BATCH,
  BatchReportModeType_REPORT_INDIVIDUAL_BUILDS,
  BatchReportModeType'
  #-}
