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
-- Module      : Amazonka.DataBrew.ListJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the DataBrew jobs that are defined.
--
-- This operation returns paginated results.
module Amazonka.DataBrew.ListJobs
  ( -- * Creating a Request
    ListJobs (..),
    newListJobs,

    -- * Request Lenses
    listJobs_nextToken,
    listJobs_projectName,
    listJobs_datasetName,
    listJobs_maxResults,

    -- * Destructuring the Response
    ListJobsResponse (..),
    newListJobsResponse,

    -- * Response Lenses
    listJobsResponse_nextToken,
    listJobsResponse_httpStatus,
    listJobsResponse_jobs,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DataBrew.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListJobs' smart constructor.
data ListJobs = ListJobs'
  { -- | A token generated by DataBrew that specifies where to continue
    -- pagination if a previous request was truncated. To get the next set of
    -- pages, pass in the NextToken value from the response object of the
    -- previous page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The name of a project. Using this parameter indicates to return only
    -- those jobs that are associated with the specified project.
    projectName :: Prelude.Maybe Prelude.Text,
    -- | The name of a dataset. Using this parameter indicates to return only
    -- those jobs that act on the specified dataset.
    datasetName :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in this request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listJobs_nextToken' - A token generated by DataBrew that specifies where to continue
-- pagination if a previous request was truncated. To get the next set of
-- pages, pass in the NextToken value from the response object of the
-- previous page call.
--
-- 'projectName', 'listJobs_projectName' - The name of a project. Using this parameter indicates to return only
-- those jobs that are associated with the specified project.
--
-- 'datasetName', 'listJobs_datasetName' - The name of a dataset. Using this parameter indicates to return only
-- those jobs that act on the specified dataset.
--
-- 'maxResults', 'listJobs_maxResults' - The maximum number of results to return in this request.
newListJobs ::
  ListJobs
newListJobs =
  ListJobs'
    { nextToken = Prelude.Nothing,
      projectName = Prelude.Nothing,
      datasetName = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A token generated by DataBrew that specifies where to continue
-- pagination if a previous request was truncated. To get the next set of
-- pages, pass in the NextToken value from the response object of the
-- previous page call.
listJobs_nextToken :: Lens.Lens' ListJobs (Prelude.Maybe Prelude.Text)
listJobs_nextToken = Lens.lens (\ListJobs' {nextToken} -> nextToken) (\s@ListJobs' {} a -> s {nextToken = a} :: ListJobs)

-- | The name of a project. Using this parameter indicates to return only
-- those jobs that are associated with the specified project.
listJobs_projectName :: Lens.Lens' ListJobs (Prelude.Maybe Prelude.Text)
listJobs_projectName = Lens.lens (\ListJobs' {projectName} -> projectName) (\s@ListJobs' {} a -> s {projectName = a} :: ListJobs)

-- | The name of a dataset. Using this parameter indicates to return only
-- those jobs that act on the specified dataset.
listJobs_datasetName :: Lens.Lens' ListJobs (Prelude.Maybe Prelude.Text)
listJobs_datasetName = Lens.lens (\ListJobs' {datasetName} -> datasetName) (\s@ListJobs' {} a -> s {datasetName = a} :: ListJobs)

-- | The maximum number of results to return in this request.
listJobs_maxResults :: Lens.Lens' ListJobs (Prelude.Maybe Prelude.Natural)
listJobs_maxResults = Lens.lens (\ListJobs' {maxResults} -> maxResults) (\s@ListJobs' {} a -> s {maxResults = a} :: ListJobs)

instance Core.AWSPager ListJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listJobsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop (rs Lens.^. listJobsResponse_jobs) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listJobs_nextToken
          Lens..~ rs
          Lens.^? listJobsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListJobs where
  type AWSResponse ListJobs = ListJobsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListJobsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Jobs" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListJobs

instance Prelude.NFData ListJobs

instance Core.ToHeaders ListJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListJobs where
  toPath = Prelude.const "/jobs"

instance Core.ToQuery ListJobs where
  toQuery ListJobs' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "projectName" Core.=: projectName,
        "datasetName" Core.=: datasetName,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse'
  { -- | A token that you can use in a subsequent call to retrieve the next set
    -- of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of jobs that are defined.
    jobs :: [Job]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listJobsResponse_nextToken' - A token that you can use in a subsequent call to retrieve the next set
-- of results.
--
-- 'httpStatus', 'listJobsResponse_httpStatus' - The response's http status code.
--
-- 'jobs', 'listJobsResponse_jobs' - A list of jobs that are defined.
newListJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListJobsResponse
newListJobsResponse pHttpStatus_ =
  ListJobsResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      jobs = Prelude.mempty
    }

-- | A token that you can use in a subsequent call to retrieve the next set
-- of results.
listJobsResponse_nextToken :: Lens.Lens' ListJobsResponse (Prelude.Maybe Prelude.Text)
listJobsResponse_nextToken = Lens.lens (\ListJobsResponse' {nextToken} -> nextToken) (\s@ListJobsResponse' {} a -> s {nextToken = a} :: ListJobsResponse)

-- | The response's http status code.
listJobsResponse_httpStatus :: Lens.Lens' ListJobsResponse Prelude.Int
listJobsResponse_httpStatus = Lens.lens (\ListJobsResponse' {httpStatus} -> httpStatus) (\s@ListJobsResponse' {} a -> s {httpStatus = a} :: ListJobsResponse)

-- | A list of jobs that are defined.
listJobsResponse_jobs :: Lens.Lens' ListJobsResponse [Job]
listJobsResponse_jobs = Lens.lens (\ListJobsResponse' {jobs} -> jobs) (\s@ListJobsResponse' {} a -> s {jobs = a} :: ListJobsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListJobsResponse