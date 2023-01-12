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
-- Module      : Amazonka.ElastiCache.Types.ReshardingStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElastiCache.Types.ReshardingStatus where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.ElastiCache.Types.SlotMigration
import qualified Amazonka.Prelude as Prelude

-- | The status of an online resharding operation.
--
-- /See:/ 'newReshardingStatus' smart constructor.
data ReshardingStatus = ReshardingStatus'
  { -- | Represents the progress of an online resharding operation.
    slotMigration :: Prelude.Maybe SlotMigration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReshardingStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'slotMigration', 'reshardingStatus_slotMigration' - Represents the progress of an online resharding operation.
newReshardingStatus ::
  ReshardingStatus
newReshardingStatus =
  ReshardingStatus' {slotMigration = Prelude.Nothing}

-- | Represents the progress of an online resharding operation.
reshardingStatus_slotMigration :: Lens.Lens' ReshardingStatus (Prelude.Maybe SlotMigration)
reshardingStatus_slotMigration = Lens.lens (\ReshardingStatus' {slotMigration} -> slotMigration) (\s@ReshardingStatus' {} a -> s {slotMigration = a} :: ReshardingStatus)

instance Data.FromXML ReshardingStatus where
  parseXML x =
    ReshardingStatus'
      Prelude.<$> (x Data..@? "SlotMigration")

instance Prelude.Hashable ReshardingStatus where
  hashWithSalt _salt ReshardingStatus' {..} =
    _salt `Prelude.hashWithSalt` slotMigration

instance Prelude.NFData ReshardingStatus where
  rnf ReshardingStatus' {..} = Prelude.rnf slotMigration
