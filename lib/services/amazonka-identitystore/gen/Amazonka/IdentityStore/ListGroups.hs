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
-- Module      : Amazonka.IdentityStore.ListGroups
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all groups in the identity store. Returns a paginated list of
-- complete @Group@ objects. Filtering for a @Group@ by the @DisplayName@
-- attribute is deprecated. Instead, use the @GetGroupId@ API action.
--
-- This operation returns paginated results.
module Amazonka.IdentityStore.ListGroups
  ( -- * Creating a Request
    ListGroups (..),
    newListGroups,

    -- * Request Lenses
    listGroups_filters,
    listGroups_maxResults,
    listGroups_nextToken,
    listGroups_identityStoreId,

    -- * Destructuring the Response
    ListGroupsResponse (..),
    newListGroupsResponse,

    -- * Response Lenses
    listGroupsResponse_nextToken,
    listGroupsResponse_httpStatus,
    listGroupsResponse_groups,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.IdentityStore.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListGroups' smart constructor.
data ListGroups = ListGroups'
  { -- | A list of @Filter@ objects, which is used in the @ListUsers@ and
    -- @ListGroups@ requests.
    filters :: Prelude.Maybe [Filter],
    -- | The maximum number of results to be returned per request. This parameter
    -- is used in the @ListUsers@ and @ListGroups@ requests to specify how many
    -- results to return in one page. The length limit is 50 characters.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The pagination token used for the @ListUsers@ and @ListGroups@ API
    -- operations. This value is generated by the identity store service. It is
    -- returned in the API response if the total results are more than the size
    -- of one page. This token is also returned when it is used in the API
    -- request to search for the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The globally unique identifier for the identity store, such as
    -- @d-1234567890@. In this example, @d-@ is a fixed prefix, and
    -- @1234567890@ is a randomly generated string that contains numbers and
    -- lower case letters. This value is generated at the time that a new
    -- identity store is created.
    identityStoreId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'listGroups_filters' - A list of @Filter@ objects, which is used in the @ListUsers@ and
-- @ListGroups@ requests.
--
-- 'maxResults', 'listGroups_maxResults' - The maximum number of results to be returned per request. This parameter
-- is used in the @ListUsers@ and @ListGroups@ requests to specify how many
-- results to return in one page. The length limit is 50 characters.
--
-- 'nextToken', 'listGroups_nextToken' - The pagination token used for the @ListUsers@ and @ListGroups@ API
-- operations. This value is generated by the identity store service. It is
-- returned in the API response if the total results are more than the size
-- of one page. This token is also returned when it is used in the API
-- request to search for the next page.
--
-- 'identityStoreId', 'listGroups_identityStoreId' - The globally unique identifier for the identity store, such as
-- @d-1234567890@. In this example, @d-@ is a fixed prefix, and
-- @1234567890@ is a randomly generated string that contains numbers and
-- lower case letters. This value is generated at the time that a new
-- identity store is created.
newListGroups ::
  -- | 'identityStoreId'
  Prelude.Text ->
  ListGroups
newListGroups pIdentityStoreId_ =
  ListGroups'
    { filters = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      identityStoreId = pIdentityStoreId_
    }

-- | A list of @Filter@ objects, which is used in the @ListUsers@ and
-- @ListGroups@ requests.
listGroups_filters :: Lens.Lens' ListGroups (Prelude.Maybe [Filter])
listGroups_filters = Lens.lens (\ListGroups' {filters} -> filters) (\s@ListGroups' {} a -> s {filters = a} :: ListGroups) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to be returned per request. This parameter
-- is used in the @ListUsers@ and @ListGroups@ requests to specify how many
-- results to return in one page. The length limit is 50 characters.
listGroups_maxResults :: Lens.Lens' ListGroups (Prelude.Maybe Prelude.Natural)
listGroups_maxResults = Lens.lens (\ListGroups' {maxResults} -> maxResults) (\s@ListGroups' {} a -> s {maxResults = a} :: ListGroups)

-- | The pagination token used for the @ListUsers@ and @ListGroups@ API
-- operations. This value is generated by the identity store service. It is
-- returned in the API response if the total results are more than the size
-- of one page. This token is also returned when it is used in the API
-- request to search for the next page.
listGroups_nextToken :: Lens.Lens' ListGroups (Prelude.Maybe Prelude.Text)
listGroups_nextToken = Lens.lens (\ListGroups' {nextToken} -> nextToken) (\s@ListGroups' {} a -> s {nextToken = a} :: ListGroups)

-- | The globally unique identifier for the identity store, such as
-- @d-1234567890@. In this example, @d-@ is a fixed prefix, and
-- @1234567890@ is a randomly generated string that contains numbers and
-- lower case letters. This value is generated at the time that a new
-- identity store is created.
listGroups_identityStoreId :: Lens.Lens' ListGroups Prelude.Text
listGroups_identityStoreId = Lens.lens (\ListGroups' {identityStoreId} -> identityStoreId) (\s@ListGroups' {} a -> s {identityStoreId = a} :: ListGroups)

instance Core.AWSPager ListGroups where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listGroupsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop (rs Lens.^. listGroupsResponse_groups) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listGroups_nextToken
          Lens..~ rs
          Lens.^? listGroupsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListGroups where
  type AWSResponse ListGroups = ListGroupsResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ListGroupsResponse'
            Prelude.<$> (x Data..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..?> "Groups" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListGroups where
  hashWithSalt _salt ListGroups' {..} =
    _salt `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` identityStoreId

instance Prelude.NFData ListGroups where
  rnf ListGroups' {..} =
    Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf identityStoreId

instance Data.ToHeaders ListGroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AWSIdentityStore.ListGroups" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON ListGroups where
  toJSON ListGroups' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("Filters" Data..=) Prelude.<$> filters,
            ("MaxResults" Data..=) Prelude.<$> maxResults,
            ("NextToken" Data..=) Prelude.<$> nextToken,
            Prelude.Just
              ("IdentityStoreId" Data..= identityStoreId)
          ]
      )

instance Data.ToPath ListGroups where
  toPath = Prelude.const "/"

instance Data.ToQuery ListGroups where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListGroupsResponse' smart constructor.
data ListGroupsResponse = ListGroupsResponse'
  { -- | The pagination token used for the @ListUsers@ and @ListGroups@ API
    -- operations. This value is generated by the identity store service. It is
    -- returned in the API response if the total results are more than the size
    -- of one page. This token is also returned when it1 is used in the API
    -- request to search for the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of @Group@ objects in the identity store.
    groups :: [Group]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGroupsResponse_nextToken' - The pagination token used for the @ListUsers@ and @ListGroups@ API
-- operations. This value is generated by the identity store service. It is
-- returned in the API response if the total results are more than the size
-- of one page. This token is also returned when it1 is used in the API
-- request to search for the next page.
--
-- 'httpStatus', 'listGroupsResponse_httpStatus' - The response's http status code.
--
-- 'groups', 'listGroupsResponse_groups' - A list of @Group@ objects in the identity store.
newListGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListGroupsResponse
newListGroupsResponse pHttpStatus_ =
  ListGroupsResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      groups = Prelude.mempty
    }

-- | The pagination token used for the @ListUsers@ and @ListGroups@ API
-- operations. This value is generated by the identity store service. It is
-- returned in the API response if the total results are more than the size
-- of one page. This token is also returned when it1 is used in the API
-- request to search for the next page.
listGroupsResponse_nextToken :: Lens.Lens' ListGroupsResponse (Prelude.Maybe Prelude.Text)
listGroupsResponse_nextToken = Lens.lens (\ListGroupsResponse' {nextToken} -> nextToken) (\s@ListGroupsResponse' {} a -> s {nextToken = a} :: ListGroupsResponse)

-- | The response's http status code.
listGroupsResponse_httpStatus :: Lens.Lens' ListGroupsResponse Prelude.Int
listGroupsResponse_httpStatus = Lens.lens (\ListGroupsResponse' {httpStatus} -> httpStatus) (\s@ListGroupsResponse' {} a -> s {httpStatus = a} :: ListGroupsResponse)

-- | A list of @Group@ objects in the identity store.
listGroupsResponse_groups :: Lens.Lens' ListGroupsResponse [Group]
listGroupsResponse_groups = Lens.lens (\ListGroupsResponse' {groups} -> groups) (\s@ListGroupsResponse' {} a -> s {groups = a} :: ListGroupsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListGroupsResponse where
  rnf ListGroupsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf groups
