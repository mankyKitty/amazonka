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
-- Module      : Network.AWS.QuickSight.Types.NamespaceInfoV2
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.NamespaceInfoV2 where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.IdentityStore
import Network.AWS.QuickSight.Types.NamespaceError
import Network.AWS.QuickSight.Types.NamespaceStatus

-- | The error type.
--
-- /See:/ 'newNamespaceInfoV2' smart constructor.
data NamespaceInfoV2 = NamespaceInfoV2'
  { -- | The namespace Amazon Web Services Region.
    capacityRegion :: Prelude.Maybe Prelude.Text,
    -- | The namespace ARN.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The creation status of a namespace that is not yet completely created.
    creationStatus :: Prelude.Maybe NamespaceStatus,
    -- | The name of the error.
    name :: Prelude.Maybe Prelude.Text,
    -- | An error that occurred when the namespace was created.
    namespaceError :: Prelude.Maybe NamespaceError,
    -- | The identity store used for the namespace.
    identityStore :: Prelude.Maybe IdentityStore
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NamespaceInfoV2' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'capacityRegion', 'namespaceInfoV2_capacityRegion' - The namespace Amazon Web Services Region.
--
-- 'arn', 'namespaceInfoV2_arn' - The namespace ARN.
--
-- 'creationStatus', 'namespaceInfoV2_creationStatus' - The creation status of a namespace that is not yet completely created.
--
-- 'name', 'namespaceInfoV2_name' - The name of the error.
--
-- 'namespaceError', 'namespaceInfoV2_namespaceError' - An error that occurred when the namespace was created.
--
-- 'identityStore', 'namespaceInfoV2_identityStore' - The identity store used for the namespace.
newNamespaceInfoV2 ::
  NamespaceInfoV2
newNamespaceInfoV2 =
  NamespaceInfoV2'
    { capacityRegion = Prelude.Nothing,
      arn = Prelude.Nothing,
      creationStatus = Prelude.Nothing,
      name = Prelude.Nothing,
      namespaceError = Prelude.Nothing,
      identityStore = Prelude.Nothing
    }

-- | The namespace Amazon Web Services Region.
namespaceInfoV2_capacityRegion :: Lens.Lens' NamespaceInfoV2 (Prelude.Maybe Prelude.Text)
namespaceInfoV2_capacityRegion = Lens.lens (\NamespaceInfoV2' {capacityRegion} -> capacityRegion) (\s@NamespaceInfoV2' {} a -> s {capacityRegion = a} :: NamespaceInfoV2)

-- | The namespace ARN.
namespaceInfoV2_arn :: Lens.Lens' NamespaceInfoV2 (Prelude.Maybe Prelude.Text)
namespaceInfoV2_arn = Lens.lens (\NamespaceInfoV2' {arn} -> arn) (\s@NamespaceInfoV2' {} a -> s {arn = a} :: NamespaceInfoV2)

-- | The creation status of a namespace that is not yet completely created.
namespaceInfoV2_creationStatus :: Lens.Lens' NamespaceInfoV2 (Prelude.Maybe NamespaceStatus)
namespaceInfoV2_creationStatus = Lens.lens (\NamespaceInfoV2' {creationStatus} -> creationStatus) (\s@NamespaceInfoV2' {} a -> s {creationStatus = a} :: NamespaceInfoV2)

-- | The name of the error.
namespaceInfoV2_name :: Lens.Lens' NamespaceInfoV2 (Prelude.Maybe Prelude.Text)
namespaceInfoV2_name = Lens.lens (\NamespaceInfoV2' {name} -> name) (\s@NamespaceInfoV2' {} a -> s {name = a} :: NamespaceInfoV2)

-- | An error that occurred when the namespace was created.
namespaceInfoV2_namespaceError :: Lens.Lens' NamespaceInfoV2 (Prelude.Maybe NamespaceError)
namespaceInfoV2_namespaceError = Lens.lens (\NamespaceInfoV2' {namespaceError} -> namespaceError) (\s@NamespaceInfoV2' {} a -> s {namespaceError = a} :: NamespaceInfoV2)

-- | The identity store used for the namespace.
namespaceInfoV2_identityStore :: Lens.Lens' NamespaceInfoV2 (Prelude.Maybe IdentityStore)
namespaceInfoV2_identityStore = Lens.lens (\NamespaceInfoV2' {identityStore} -> identityStore) (\s@NamespaceInfoV2' {} a -> s {identityStore = a} :: NamespaceInfoV2)

instance Core.FromJSON NamespaceInfoV2 where
  parseJSON =
    Core.withObject
      "NamespaceInfoV2"
      ( \x ->
          NamespaceInfoV2'
            Prelude.<$> (x Core..:? "CapacityRegion")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "CreationStatus")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "NamespaceError")
            Prelude.<*> (x Core..:? "IdentityStore")
      )

instance Prelude.Hashable NamespaceInfoV2

instance Prelude.NFData NamespaceInfoV2
