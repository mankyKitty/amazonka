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
-- Module      : Amazonka.SES.Types.TrackingOptions
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SES.Types.TrackingOptions where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A domain that is used to redirect email recipients to an Amazon
-- SES-operated domain. This domain captures open and click events
-- generated by Amazon SES emails.
--
-- For more information, see
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html Configuring Custom Domains to Handle Open and Click Tracking>
-- in the /Amazon SES Developer Guide/.
--
-- /See:/ 'newTrackingOptions' smart constructor.
data TrackingOptions = TrackingOptions'
  { -- | The custom subdomain that will be used to redirect email recipients to
    -- the Amazon SES event tracking domain.
    customRedirectDomain :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TrackingOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'customRedirectDomain', 'trackingOptions_customRedirectDomain' - The custom subdomain that will be used to redirect email recipients to
-- the Amazon SES event tracking domain.
newTrackingOptions ::
  TrackingOptions
newTrackingOptions =
  TrackingOptions'
    { customRedirectDomain =
        Prelude.Nothing
    }

-- | The custom subdomain that will be used to redirect email recipients to
-- the Amazon SES event tracking domain.
trackingOptions_customRedirectDomain :: Lens.Lens' TrackingOptions (Prelude.Maybe Prelude.Text)
trackingOptions_customRedirectDomain = Lens.lens (\TrackingOptions' {customRedirectDomain} -> customRedirectDomain) (\s@TrackingOptions' {} a -> s {customRedirectDomain = a} :: TrackingOptions)

instance Data.FromXML TrackingOptions where
  parseXML x =
    TrackingOptions'
      Prelude.<$> (x Data..@? "CustomRedirectDomain")

instance Prelude.Hashable TrackingOptions where
  hashWithSalt _salt TrackingOptions' {..} =
    _salt `Prelude.hashWithSalt` customRedirectDomain

instance Prelude.NFData TrackingOptions where
  rnf TrackingOptions' {..} =
    Prelude.rnf customRedirectDomain

instance Data.ToQuery TrackingOptions where
  toQuery TrackingOptions' {..} =
    Prelude.mconcat
      ["CustomRedirectDomain" Data.=: customRedirectDomain]
