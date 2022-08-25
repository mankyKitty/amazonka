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
-- Module      : Amazonka.DynamoDB.Types.InputCompressionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DynamoDB.Types.InputCompressionType
  ( InputCompressionType
      ( ..,
        InputCompressionType_GZIP,
        InputCompressionType_NONE,
        InputCompressionType_ZSTD
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DynamoDB.Types.AttributeValue
import Amazonka.DynamoDB.Types.WriteRequest
import qualified Amazonka.Prelude as Prelude

newtype InputCompressionType = InputCompressionType'
  { fromInputCompressionType ::
      Core.Text
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
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern InputCompressionType_GZIP :: InputCompressionType
pattern InputCompressionType_GZIP = InputCompressionType' "GZIP"

pattern InputCompressionType_NONE :: InputCompressionType
pattern InputCompressionType_NONE = InputCompressionType' "NONE"

pattern InputCompressionType_ZSTD :: InputCompressionType
pattern InputCompressionType_ZSTD = InputCompressionType' "ZSTD"

{-# COMPLETE
  InputCompressionType_GZIP,
  InputCompressionType_NONE,
  InputCompressionType_ZSTD,
  InputCompressionType'
  #-}
