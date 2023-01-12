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
-- Module      : Amazonka.SageMaker.Types.ListInferenceRecommendationsJobsSortBy
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.ListInferenceRecommendationsJobsSortBy
  ( ListInferenceRecommendationsJobsSortBy
      ( ..,
        ListInferenceRecommendationsJobsSortBy_CreationTime,
        ListInferenceRecommendationsJobsSortBy_Name,
        ListInferenceRecommendationsJobsSortBy_Status
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype ListInferenceRecommendationsJobsSortBy = ListInferenceRecommendationsJobsSortBy'
  { fromListInferenceRecommendationsJobsSortBy ::
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

pattern ListInferenceRecommendationsJobsSortBy_CreationTime :: ListInferenceRecommendationsJobsSortBy
pattern ListInferenceRecommendationsJobsSortBy_CreationTime = ListInferenceRecommendationsJobsSortBy' "CreationTime"

pattern ListInferenceRecommendationsJobsSortBy_Name :: ListInferenceRecommendationsJobsSortBy
pattern ListInferenceRecommendationsJobsSortBy_Name = ListInferenceRecommendationsJobsSortBy' "Name"

pattern ListInferenceRecommendationsJobsSortBy_Status :: ListInferenceRecommendationsJobsSortBy
pattern ListInferenceRecommendationsJobsSortBy_Status = ListInferenceRecommendationsJobsSortBy' "Status"

{-# COMPLETE
  ListInferenceRecommendationsJobsSortBy_CreationTime,
  ListInferenceRecommendationsJobsSortBy_Name,
  ListInferenceRecommendationsJobsSortBy_Status,
  ListInferenceRecommendationsJobsSortBy'
  #-}
