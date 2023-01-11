{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.DMS.DeleteEventSubscription
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an DMS event subscription.
module Amazonka.DMS.DeleteEventSubscription
  ( -- * Creating a Request
    DeleteEventSubscription (..),
    newDeleteEventSubscription,

    -- * Request Lenses
    deleteEventSubscription_subscriptionName,

    -- * Destructuring the Response
    DeleteEventSubscriptionResponse (..),
    newDeleteEventSubscriptionResponse,

    -- * Response Lenses
    deleteEventSubscriptionResponse_eventSubscription,
    deleteEventSubscriptionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.DMS.Types
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newDeleteEventSubscription' smart constructor.
data DeleteEventSubscription = DeleteEventSubscription'
  { -- | The name of the DMS event notification subscription to be deleted.
    subscriptionName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEventSubscription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subscriptionName', 'deleteEventSubscription_subscriptionName' - The name of the DMS event notification subscription to be deleted.
newDeleteEventSubscription ::
  -- | 'subscriptionName'
  Prelude.Text ->
  DeleteEventSubscription
newDeleteEventSubscription pSubscriptionName_ =
  DeleteEventSubscription'
    { subscriptionName =
        pSubscriptionName_
    }

-- | The name of the DMS event notification subscription to be deleted.
deleteEventSubscription_subscriptionName :: Lens.Lens' DeleteEventSubscription Prelude.Text
deleteEventSubscription_subscriptionName = Lens.lens (\DeleteEventSubscription' {subscriptionName} -> subscriptionName) (\s@DeleteEventSubscription' {} a -> s {subscriptionName = a} :: DeleteEventSubscription)

instance Core.AWSRequest DeleteEventSubscription where
  type
    AWSResponse DeleteEventSubscription =
      DeleteEventSubscriptionResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteEventSubscriptionResponse'
            Prelude.<$> (x Data..?> "EventSubscription")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteEventSubscription where
  hashWithSalt _salt DeleteEventSubscription' {..} =
    _salt `Prelude.hashWithSalt` subscriptionName

instance Prelude.NFData DeleteEventSubscription where
  rnf DeleteEventSubscription' {..} =
    Prelude.rnf subscriptionName

instance Data.ToHeaders DeleteEventSubscription where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AmazonDMSv20160101.DeleteEventSubscription" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON DeleteEventSubscription where
  toJSON DeleteEventSubscription' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("SubscriptionName" Data..= subscriptionName)
          ]
      )

instance Data.ToPath DeleteEventSubscription where
  toPath = Prelude.const "/"

instance Data.ToQuery DeleteEventSubscription where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newDeleteEventSubscriptionResponse' smart constructor.
data DeleteEventSubscriptionResponse = DeleteEventSubscriptionResponse'
  { -- | The event subscription that was deleted.
    eventSubscription :: Prelude.Maybe EventSubscription,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEventSubscriptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventSubscription', 'deleteEventSubscriptionResponse_eventSubscription' - The event subscription that was deleted.
--
-- 'httpStatus', 'deleteEventSubscriptionResponse_httpStatus' - The response's http status code.
newDeleteEventSubscriptionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteEventSubscriptionResponse
newDeleteEventSubscriptionResponse pHttpStatus_ =
  DeleteEventSubscriptionResponse'
    { eventSubscription =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The event subscription that was deleted.
deleteEventSubscriptionResponse_eventSubscription :: Lens.Lens' DeleteEventSubscriptionResponse (Prelude.Maybe EventSubscription)
deleteEventSubscriptionResponse_eventSubscription = Lens.lens (\DeleteEventSubscriptionResponse' {eventSubscription} -> eventSubscription) (\s@DeleteEventSubscriptionResponse' {} a -> s {eventSubscription = a} :: DeleteEventSubscriptionResponse)

-- | The response's http status code.
deleteEventSubscriptionResponse_httpStatus :: Lens.Lens' DeleteEventSubscriptionResponse Prelude.Int
deleteEventSubscriptionResponse_httpStatus = Lens.lens (\DeleteEventSubscriptionResponse' {httpStatus} -> httpStatus) (\s@DeleteEventSubscriptionResponse' {} a -> s {httpStatus = a} :: DeleteEventSubscriptionResponse)

instance
  Prelude.NFData
    DeleteEventSubscriptionResponse
  where
  rnf DeleteEventSubscriptionResponse' {..} =
    Prelude.rnf eventSubscription
      `Prelude.seq` Prelude.rnf httpStatus
