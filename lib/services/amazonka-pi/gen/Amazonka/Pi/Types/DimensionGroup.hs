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
-- Module      : Amazonka.Pi.Types.DimensionGroup
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Pi.Types.DimensionGroup where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A logical grouping of Performance Insights metrics for a related subject
-- area. For example, the @db.sql@ dimension group consists of the
-- following dimensions:
--
-- -   @db.sql.id@ - The hash of a running SQL statement, generated by
--     Performance Insights.
--
-- -   @db.sql.db_id@ - Either the SQL ID generated by the database engine,
--     or a value generated by Performance Insights that begins with @pi-@.
--
-- -   @db.sql.statement@ - The full text of the SQL statement that is
--     running, for example, @SELECT * FROM employees@.
--
-- -   @db.sql_tokenized.id@ - The hash of the SQL digest generated by
--     Performance Insights.
--
-- Each response element returns a maximum of 500 bytes. For larger
-- elements, such as SQL statements, only the first 500 bytes are returned.
--
-- /See:/ 'newDimensionGroup' smart constructor.
data DimensionGroup = DimensionGroup'
  { -- | A list of specific dimensions from a dimension group. If this parameter
    -- is not present, then it signifies that all of the dimensions in the
    -- group were requested, or are present in the response.
    --
    -- Valid values for elements in the @Dimensions@ array are:
    --
    -- -   @db.application.name@ - The name of the application that is
    --     connected to the database. Valid values are as follows:
    --
    --     -   Aurora PostgreSQL
    --
    --     -   Amazon RDS PostgreSQL
    --
    --     -   Amazon DocumentDB
    --
    -- -   @db.host.id@ - The host ID of the connected client (all engines).
    --
    -- -   @db.host.name@ - The host name of the connected client (all
    --     engines).
    --
    -- -   @db.name@ - The name of the database to which the client is
    --     connected. Valid values are as follows:
    --
    --     -   Aurora PostgreSQL
    --
    --     -   Amazon RDS PostgreSQL
    --
    --     -   Aurora MySQL
    --
    --     -   Amazon RDS MySQL
    --
    --     -   Amazon RDS MariaDB
    --
    --     -   Amazon DocumentDB
    --
    -- -   @db.query.id@ - The query ID generated by Performance Insights (only
    --     Amazon DocumentDB).
    --
    -- -   @db.query.db_id@ - The query ID generated by the database (only
    --     Amazon DocumentDB).
    --
    -- -   @db.query.statement@ - The text of the query that is being run (only
    --     Amazon DocumentDB).
    --
    -- -   @db.query.tokenized_id@
    --
    -- -   @db.query.tokenized.id@ - The query digest ID generated by
    --     Performance Insights (only Amazon DocumentDB).
    --
    -- -   @db.query.tokenized.db_id@ - The query digest ID generated by
    --     Performance Insights (only Amazon DocumentDB).
    --
    -- -   @db.query.tokenized.statement@ - The text of the query digest (only
    --     Amazon DocumentDB).
    --
    -- -   @db.session_type.name@ - The type of the current session (only
    --     Amazon DocumentDB).
    --
    -- -   @db.sql.id@ - The hash of the full, non-tokenized SQL statement
    --     generated by Performance Insights (all engines except Amazon
    --     DocumentDB).
    --
    -- -   @db.sql.db_id@ - Either the SQL ID generated by the database engine,
    --     or a value generated by Performance Insights that begins with @pi-@
    --     (all engines except Amazon DocumentDB).
    --
    -- -   @db.sql.statement@ - The full text of the SQL statement that is
    --     running, as in @SELECT * FROM employees@ (all engines except Amazon
    --     DocumentDB)
    --
    -- -   @db.sql.tokenized_id@
    --
    -- -   @db.sql_tokenized.id@ - The hash of the SQL digest generated by
    --     Performance Insights (all engines except Amazon DocumentDB). In the
    --     console, @db.sql_tokenized.id@ is called the Support ID because
    --     Amazon Web Services Support can look at this data to help you
    --     troubleshoot database issues.
    --
    -- -   @db.sql_tokenized.db_id@ - Either the native database ID used to
    --     refer to the SQL statement, or a synthetic ID such as
    --     @pi-2372568224@ that Performance Insights generates if the native
    --     database ID isn\'t available (all engines except Amazon DocumentDB).
    --
    -- -   @db.sql_tokenized.statement@ - The text of the SQL digest, as in
    --     @SELECT * FROM employees WHERE employee_id = ?@ (all engines except
    --     Amazon DocumentDB)
    --
    -- -   @db.user.id@ - The ID of the user logged in to the database (all
    --     engines except Amazon DocumentDB).
    --
    -- -   @db.user.name@ - The name of the user logged in to the database (all
    --     engines except Amazon DocumentDB).
    --
    -- -   @db.wait_event.name@ - The event for which the backend is waiting
    --     (all engines except Amazon DocumentDB).
    --
    -- -   @db.wait_event.type@ - The type of event for which the backend is
    --     waiting (all engines except Amazon DocumentDB).
    --
    -- -   @db.wait_event_type.name@ - The name of the event type for which the
    --     backend is waiting (all engines except Amazon DocumentDB).
    --
    -- -   @db.wait_state.name@ - The event for which the backend is waiting
    --     (only Amazon DocumentDB).
    dimensions :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The maximum number of items to fetch for this dimension group.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | The name of the dimension group. Valid values are as follows:
    --
    -- -   @db@ - The name of the database to which the client is connected.
    --     The following values are permitted:
    --
    --     -   Aurora PostgreSQL
    --
    --     -   Amazon RDS PostgreSQL
    --
    --     -   Aurora MySQL
    --
    --     -   Amazon RDS MySQL
    --
    --     -   Amazon RDS MariaDB
    --
    --     -   Amazon DocumentDB
    --
    -- -   @db.application@ - The name of the application that is connected to
    --     the database. The following values are permitted:
    --
    --     -   Aurora PostgreSQL
    --
    --     -   Amazon RDS PostgreSQL
    --
    --     -   Amazon DocumentDB
    --
    -- -   @db.host@ - The host name of the connected client (all engines).
    --
    -- -   @db.query@ - The query that is currently running (only Amazon
    --     DocumentDB).
    --
    -- -   @db.query_tokenized@ - The digest query (only Amazon DocumentDB).
    --
    -- -   @db.session_type@ - The type of the current session (only Aurora
    --     PostgreSQL and RDS PostgreSQL).
    --
    -- -   @db.sql@ - The text of the SQL statement that is currently running
    --     (all engines except Amazon DocumentDB).
    --
    -- -   @db.sql_tokenized@ - The SQL digest (all engines except Amazon
    --     DocumentDB).
    --
    -- -   @db.user@ - The user logged in to the database (all engines except
    --     Amazon DocumentDB).
    --
    -- -   @db.wait_event@ - The event for which the database backend is
    --     waiting (all engines except Amazon DocumentDB).
    --
    -- -   @db.wait_event_type@ - The type of event for which the database
    --     backend is waiting (all engines except Amazon DocumentDB).
    --
    -- -   @db.wait_state@ - The event for which the database backend is
    --     waiting (only Amazon DocumentDB).
    group' :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DimensionGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dimensions', 'dimensionGroup_dimensions' - A list of specific dimensions from a dimension group. If this parameter
-- is not present, then it signifies that all of the dimensions in the
-- group were requested, or are present in the response.
--
-- Valid values for elements in the @Dimensions@ array are:
--
-- -   @db.application.name@ - The name of the application that is
--     connected to the database. Valid values are as follows:
--
--     -   Aurora PostgreSQL
--
--     -   Amazon RDS PostgreSQL
--
--     -   Amazon DocumentDB
--
-- -   @db.host.id@ - The host ID of the connected client (all engines).
--
-- -   @db.host.name@ - The host name of the connected client (all
--     engines).
--
-- -   @db.name@ - The name of the database to which the client is
--     connected. Valid values are as follows:
--
--     -   Aurora PostgreSQL
--
--     -   Amazon RDS PostgreSQL
--
--     -   Aurora MySQL
--
--     -   Amazon RDS MySQL
--
--     -   Amazon RDS MariaDB
--
--     -   Amazon DocumentDB
--
-- -   @db.query.id@ - The query ID generated by Performance Insights (only
--     Amazon DocumentDB).
--
-- -   @db.query.db_id@ - The query ID generated by the database (only
--     Amazon DocumentDB).
--
-- -   @db.query.statement@ - The text of the query that is being run (only
--     Amazon DocumentDB).
--
-- -   @db.query.tokenized_id@
--
-- -   @db.query.tokenized.id@ - The query digest ID generated by
--     Performance Insights (only Amazon DocumentDB).
--
-- -   @db.query.tokenized.db_id@ - The query digest ID generated by
--     Performance Insights (only Amazon DocumentDB).
--
-- -   @db.query.tokenized.statement@ - The text of the query digest (only
--     Amazon DocumentDB).
--
-- -   @db.session_type.name@ - The type of the current session (only
--     Amazon DocumentDB).
--
-- -   @db.sql.id@ - The hash of the full, non-tokenized SQL statement
--     generated by Performance Insights (all engines except Amazon
--     DocumentDB).
--
-- -   @db.sql.db_id@ - Either the SQL ID generated by the database engine,
--     or a value generated by Performance Insights that begins with @pi-@
--     (all engines except Amazon DocumentDB).
--
-- -   @db.sql.statement@ - The full text of the SQL statement that is
--     running, as in @SELECT * FROM employees@ (all engines except Amazon
--     DocumentDB)
--
-- -   @db.sql.tokenized_id@
--
-- -   @db.sql_tokenized.id@ - The hash of the SQL digest generated by
--     Performance Insights (all engines except Amazon DocumentDB). In the
--     console, @db.sql_tokenized.id@ is called the Support ID because
--     Amazon Web Services Support can look at this data to help you
--     troubleshoot database issues.
--
-- -   @db.sql_tokenized.db_id@ - Either the native database ID used to
--     refer to the SQL statement, or a synthetic ID such as
--     @pi-2372568224@ that Performance Insights generates if the native
--     database ID isn\'t available (all engines except Amazon DocumentDB).
--
-- -   @db.sql_tokenized.statement@ - The text of the SQL digest, as in
--     @SELECT * FROM employees WHERE employee_id = ?@ (all engines except
--     Amazon DocumentDB)
--
-- -   @db.user.id@ - The ID of the user logged in to the database (all
--     engines except Amazon DocumentDB).
--
-- -   @db.user.name@ - The name of the user logged in to the database (all
--     engines except Amazon DocumentDB).
--
-- -   @db.wait_event.name@ - The event for which the backend is waiting
--     (all engines except Amazon DocumentDB).
--
-- -   @db.wait_event.type@ - The type of event for which the backend is
--     waiting (all engines except Amazon DocumentDB).
--
-- -   @db.wait_event_type.name@ - The name of the event type for which the
--     backend is waiting (all engines except Amazon DocumentDB).
--
-- -   @db.wait_state.name@ - The event for which the backend is waiting
--     (only Amazon DocumentDB).
--
-- 'limit', 'dimensionGroup_limit' - The maximum number of items to fetch for this dimension group.
--
-- 'group'', 'dimensionGroup_group' - The name of the dimension group. Valid values are as follows:
--
-- -   @db@ - The name of the database to which the client is connected.
--     The following values are permitted:
--
--     -   Aurora PostgreSQL
--
--     -   Amazon RDS PostgreSQL
--
--     -   Aurora MySQL
--
--     -   Amazon RDS MySQL
--
--     -   Amazon RDS MariaDB
--
--     -   Amazon DocumentDB
--
-- -   @db.application@ - The name of the application that is connected to
--     the database. The following values are permitted:
--
--     -   Aurora PostgreSQL
--
--     -   Amazon RDS PostgreSQL
--
--     -   Amazon DocumentDB
--
-- -   @db.host@ - The host name of the connected client (all engines).
--
-- -   @db.query@ - The query that is currently running (only Amazon
--     DocumentDB).
--
-- -   @db.query_tokenized@ - The digest query (only Amazon DocumentDB).
--
-- -   @db.session_type@ - The type of the current session (only Aurora
--     PostgreSQL and RDS PostgreSQL).
--
-- -   @db.sql@ - The text of the SQL statement that is currently running
--     (all engines except Amazon DocumentDB).
--
-- -   @db.sql_tokenized@ - The SQL digest (all engines except Amazon
--     DocumentDB).
--
-- -   @db.user@ - The user logged in to the database (all engines except
--     Amazon DocumentDB).
--
-- -   @db.wait_event@ - The event for which the database backend is
--     waiting (all engines except Amazon DocumentDB).
--
-- -   @db.wait_event_type@ - The type of event for which the database
--     backend is waiting (all engines except Amazon DocumentDB).
--
-- -   @db.wait_state@ - The event for which the database backend is
--     waiting (only Amazon DocumentDB).
newDimensionGroup ::
  -- | 'group''
  Prelude.Text ->
  DimensionGroup
newDimensionGroup pGroup_ =
  DimensionGroup'
    { dimensions = Prelude.Nothing,
      limit = Prelude.Nothing,
      group' = pGroup_
    }

-- | A list of specific dimensions from a dimension group. If this parameter
-- is not present, then it signifies that all of the dimensions in the
-- group were requested, or are present in the response.
--
-- Valid values for elements in the @Dimensions@ array are:
--
-- -   @db.application.name@ - The name of the application that is
--     connected to the database. Valid values are as follows:
--
--     -   Aurora PostgreSQL
--
--     -   Amazon RDS PostgreSQL
--
--     -   Amazon DocumentDB
--
-- -   @db.host.id@ - The host ID of the connected client (all engines).
--
-- -   @db.host.name@ - The host name of the connected client (all
--     engines).
--
-- -   @db.name@ - The name of the database to which the client is
--     connected. Valid values are as follows:
--
--     -   Aurora PostgreSQL
--
--     -   Amazon RDS PostgreSQL
--
--     -   Aurora MySQL
--
--     -   Amazon RDS MySQL
--
--     -   Amazon RDS MariaDB
--
--     -   Amazon DocumentDB
--
-- -   @db.query.id@ - The query ID generated by Performance Insights (only
--     Amazon DocumentDB).
--
-- -   @db.query.db_id@ - The query ID generated by the database (only
--     Amazon DocumentDB).
--
-- -   @db.query.statement@ - The text of the query that is being run (only
--     Amazon DocumentDB).
--
-- -   @db.query.tokenized_id@
--
-- -   @db.query.tokenized.id@ - The query digest ID generated by
--     Performance Insights (only Amazon DocumentDB).
--
-- -   @db.query.tokenized.db_id@ - The query digest ID generated by
--     Performance Insights (only Amazon DocumentDB).
--
-- -   @db.query.tokenized.statement@ - The text of the query digest (only
--     Amazon DocumentDB).
--
-- -   @db.session_type.name@ - The type of the current session (only
--     Amazon DocumentDB).
--
-- -   @db.sql.id@ - The hash of the full, non-tokenized SQL statement
--     generated by Performance Insights (all engines except Amazon
--     DocumentDB).
--
-- -   @db.sql.db_id@ - Either the SQL ID generated by the database engine,
--     or a value generated by Performance Insights that begins with @pi-@
--     (all engines except Amazon DocumentDB).
--
-- -   @db.sql.statement@ - The full text of the SQL statement that is
--     running, as in @SELECT * FROM employees@ (all engines except Amazon
--     DocumentDB)
--
-- -   @db.sql.tokenized_id@
--
-- -   @db.sql_tokenized.id@ - The hash of the SQL digest generated by
--     Performance Insights (all engines except Amazon DocumentDB). In the
--     console, @db.sql_tokenized.id@ is called the Support ID because
--     Amazon Web Services Support can look at this data to help you
--     troubleshoot database issues.
--
-- -   @db.sql_tokenized.db_id@ - Either the native database ID used to
--     refer to the SQL statement, or a synthetic ID such as
--     @pi-2372568224@ that Performance Insights generates if the native
--     database ID isn\'t available (all engines except Amazon DocumentDB).
--
-- -   @db.sql_tokenized.statement@ - The text of the SQL digest, as in
--     @SELECT * FROM employees WHERE employee_id = ?@ (all engines except
--     Amazon DocumentDB)
--
-- -   @db.user.id@ - The ID of the user logged in to the database (all
--     engines except Amazon DocumentDB).
--
-- -   @db.user.name@ - The name of the user logged in to the database (all
--     engines except Amazon DocumentDB).
--
-- -   @db.wait_event.name@ - The event for which the backend is waiting
--     (all engines except Amazon DocumentDB).
--
-- -   @db.wait_event.type@ - The type of event for which the backend is
--     waiting (all engines except Amazon DocumentDB).
--
-- -   @db.wait_event_type.name@ - The name of the event type for which the
--     backend is waiting (all engines except Amazon DocumentDB).
--
-- -   @db.wait_state.name@ - The event for which the backend is waiting
--     (only Amazon DocumentDB).
dimensionGroup_dimensions :: Lens.Lens' DimensionGroup (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
dimensionGroup_dimensions = Lens.lens (\DimensionGroup' {dimensions} -> dimensions) (\s@DimensionGroup' {} a -> s {dimensions = a} :: DimensionGroup) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of items to fetch for this dimension group.
dimensionGroup_limit :: Lens.Lens' DimensionGroup (Prelude.Maybe Prelude.Natural)
dimensionGroup_limit = Lens.lens (\DimensionGroup' {limit} -> limit) (\s@DimensionGroup' {} a -> s {limit = a} :: DimensionGroup)

-- | The name of the dimension group. Valid values are as follows:
--
-- -   @db@ - The name of the database to which the client is connected.
--     The following values are permitted:
--
--     -   Aurora PostgreSQL
--
--     -   Amazon RDS PostgreSQL
--
--     -   Aurora MySQL
--
--     -   Amazon RDS MySQL
--
--     -   Amazon RDS MariaDB
--
--     -   Amazon DocumentDB
--
-- -   @db.application@ - The name of the application that is connected to
--     the database. The following values are permitted:
--
--     -   Aurora PostgreSQL
--
--     -   Amazon RDS PostgreSQL
--
--     -   Amazon DocumentDB
--
-- -   @db.host@ - The host name of the connected client (all engines).
--
-- -   @db.query@ - The query that is currently running (only Amazon
--     DocumentDB).
--
-- -   @db.query_tokenized@ - The digest query (only Amazon DocumentDB).
--
-- -   @db.session_type@ - The type of the current session (only Aurora
--     PostgreSQL and RDS PostgreSQL).
--
-- -   @db.sql@ - The text of the SQL statement that is currently running
--     (all engines except Amazon DocumentDB).
--
-- -   @db.sql_tokenized@ - The SQL digest (all engines except Amazon
--     DocumentDB).
--
-- -   @db.user@ - The user logged in to the database (all engines except
--     Amazon DocumentDB).
--
-- -   @db.wait_event@ - The event for which the database backend is
--     waiting (all engines except Amazon DocumentDB).
--
-- -   @db.wait_event_type@ - The type of event for which the database
--     backend is waiting (all engines except Amazon DocumentDB).
--
-- -   @db.wait_state@ - The event for which the database backend is
--     waiting (only Amazon DocumentDB).
dimensionGroup_group :: Lens.Lens' DimensionGroup Prelude.Text
dimensionGroup_group = Lens.lens (\DimensionGroup' {group'} -> group') (\s@DimensionGroup' {} a -> s {group' = a} :: DimensionGroup)

instance Prelude.Hashable DimensionGroup where
  hashWithSalt _salt DimensionGroup' {..} =
    _salt `Prelude.hashWithSalt` dimensions
      `Prelude.hashWithSalt` limit
      `Prelude.hashWithSalt` group'

instance Prelude.NFData DimensionGroup where
  rnf DimensionGroup' {..} =
    Prelude.rnf dimensions
      `Prelude.seq` Prelude.rnf limit
      `Prelude.seq` Prelude.rnf group'

instance Data.ToJSON DimensionGroup where
  toJSON DimensionGroup' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("Dimensions" Data..=) Prelude.<$> dimensions,
            ("Limit" Data..=) Prelude.<$> limit,
            Prelude.Just ("Group" Data..= group')
          ]
      )
