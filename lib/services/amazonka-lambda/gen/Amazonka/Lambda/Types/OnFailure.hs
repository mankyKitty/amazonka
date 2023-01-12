{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Lambda.Types.OnFailure
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Lambda.Types.OnFailure where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A destination for events that failed processing.
--
-- /See:/ 'newOnFailure' smart constructor.
data OnFailure = OnFailure'
  { -- | The Amazon Resource Name (ARN) of the destination resource.
    destination :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OnFailure' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destination', 'onFailure_destination' - The Amazon Resource Name (ARN) of the destination resource.
newOnFailure ::
  OnFailure
newOnFailure =
  OnFailure' {destination = Prelude.Nothing}

-- | The Amazon Resource Name (ARN) of the destination resource.
onFailure_destination :: Lens.Lens' OnFailure (Prelude.Maybe Prelude.Text)
onFailure_destination = Lens.lens (\OnFailure' {destination} -> destination) (\s@OnFailure' {} a -> s {destination = a} :: OnFailure)

instance Data.FromJSON OnFailure where
  parseJSON =
    Data.withObject
      "OnFailure"
      ( \x ->
          OnFailure' Prelude.<$> (x Data..:? "Destination")
      )

instance Prelude.Hashable OnFailure where
  hashWithSalt _salt OnFailure' {..} =
    _salt `Prelude.hashWithSalt` destination

instance Prelude.NFData OnFailure where
  rnf OnFailure' {..} = Prelude.rnf destination

instance Data.ToJSON OnFailure where
  toJSON OnFailure' {..} =
    Data.object
      ( Prelude.catMaybes
          [("Destination" Data..=) Prelude.<$> destination]
      )
