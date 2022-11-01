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
-- Module      : Amazonka.MediaConvert.Types.M2tsKlvMetadata
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.M2tsKlvMetadata
  ( M2tsKlvMetadata
      ( ..,
        M2tsKlvMetadata_NONE,
        M2tsKlvMetadata_PASSTHROUGH
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | To include key-length-value metadata in this output: Set KLV metadata
-- insertion to Passthrough. MediaConvert reads KLV metadata present in
-- your input and passes it through to the output transport stream. To
-- exclude this KLV metadata: Set KLV metadata insertion to None or leave
-- blank.
newtype M2tsKlvMetadata = M2tsKlvMetadata'
  { fromM2tsKlvMetadata ::
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

pattern M2tsKlvMetadata_NONE :: M2tsKlvMetadata
pattern M2tsKlvMetadata_NONE = M2tsKlvMetadata' "NONE"

pattern M2tsKlvMetadata_PASSTHROUGH :: M2tsKlvMetadata
pattern M2tsKlvMetadata_PASSTHROUGH = M2tsKlvMetadata' "PASSTHROUGH"

{-# COMPLETE
  M2tsKlvMetadata_NONE,
  M2tsKlvMetadata_PASSTHROUGH,
  M2tsKlvMetadata'
  #-}