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
-- Module      : Network.AWS.GameLift.CreateGameSessionQueue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a placement queue that processes requests for new game sessions.
-- A queue uses FleetIQ algorithms to determine the best placement
-- locations and find an available game server there, then prompts the game
-- server process to start a new game session.
--
-- A game session queue is configured with a set of destinations (GameLift
-- fleets or aliases), which determine the locations where the queue can
-- place new game sessions. These destinations can span multiple fleet
-- types (Spot and On-Demand), instance types, and AWS Regions. If the
-- queue includes multi-location fleets, the queue is able to place game
-- sessions in all of a fleet\'s remote locations. You can opt to filter
-- out individual locations if needed.
--
-- The queue configuration also determines how FleetIQ selects the best
-- available placement for a new game session. Before searching for an
-- available game server, FleetIQ first prioritizes the queue\'s
-- destinations and locations, with the best placement locations on top.
-- You can set up the queue to use the FleetIQ default prioritization or
-- provide an alternate set of priorities.
--
-- To create a new queue, provide a name, timeout value, and a list of
-- destinations. Optionally, specify a sort configuration and\/or a filter,
-- and define a set of latency cap policies. You can also include the ARN
-- for an Amazon Simple Notification Service (SNS) topic to receive
-- notifications of game session placement activity. Notifications using
-- SNS or CloudWatch events is the preferred way to track placement
-- activity.
--
-- If successful, a new @GameSessionQueue@ object is returned with an
-- assigned queue ARN. New game session requests, which are submitted to
-- the queue with StartGameSessionPlacement or StartMatchmaking, reference
-- a queue\'s name or ARN.
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-design.html Design a game session queue>
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-creating.html Create a game session queue>
--
-- __Related actions__
--
-- CreateGameSessionQueue | DescribeGameSessionQueues |
-- UpdateGameSessionQueue | DeleteGameSessionQueue |
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets All APIs by task>
module Network.AWS.GameLift.CreateGameSessionQueue
  ( -- * Creating a Request
    CreateGameSessionQueue (..),
    newCreateGameSessionQueue,

    -- * Request Lenses
    createGameSessionQueue_customEventData,
    createGameSessionQueue_playerLatencyPolicies,
    createGameSessionQueue_priorityConfiguration,
    createGameSessionQueue_destinations,
    createGameSessionQueue_timeoutInSeconds,
    createGameSessionQueue_notificationTarget,
    createGameSessionQueue_tags,
    createGameSessionQueue_filterConfiguration,
    createGameSessionQueue_name,

    -- * Destructuring the Response
    CreateGameSessionQueueResponse (..),
    newCreateGameSessionQueueResponse,

    -- * Response Lenses
    createGameSessionQueueResponse_gameSessionQueue,
    createGameSessionQueueResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GameLift.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input for a request operation.
--
-- /See:/ 'newCreateGameSessionQueue' smart constructor.
data CreateGameSessionQueue = CreateGameSessionQueue'
  { -- | Information to be added to all events that are related to this game
    -- session queue.
    customEventData :: Prelude.Maybe Prelude.Text,
    -- | A set of policies that act as a sliding cap on player latency. FleetIQ
    -- works to deliver low latency for most players in a game session. These
    -- policies ensure that no individual player can be placed into a game with
    -- unreasonably high latency. Use multiple policies to gradually relax
    -- latency requirements a step at a time. Multiple policies are applied
    -- based on their maximum allowed latency, starting with the lowest value.
    playerLatencyPolicies :: Prelude.Maybe [PlayerLatencyPolicy],
    -- | Custom settings to use when prioritizing destinations and locations for
    -- game session placements. This configuration replaces the FleetIQ default
    -- prioritization process. Priority types that are not explicitly named
    -- will be automatically applied at the end of the prioritization process.
    priorityConfiguration :: Prelude.Maybe PriorityConfiguration,
    -- | A list of fleets and\/or fleet aliases that can be used to fulfill game
    -- session placement requests in the queue. Destinations are identified by
    -- either a fleet ARN or a fleet alias ARN, and are listed in order of
    -- placement preference.
    destinations :: Prelude.Maybe [GameSessionQueueDestination],
    -- | The maximum time, in seconds, that a new game session placement request
    -- remains in the queue. When a request exceeds this time, the game session
    -- placement changes to a @TIMED_OUT@ status.
    timeoutInSeconds :: Prelude.Maybe Prelude.Natural,
    -- | An SNS topic ARN that is set up to receive game session placement
    -- notifications. See
    -- <https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html Setting up notifications for game session placement>.
    notificationTarget :: Prelude.Maybe Prelude.Text,
    -- | A list of labels to assign to the new game session queue resource. Tags
    -- are developer-defined key-value pairs. Tagging AWS resources are useful
    -- for resource management, access management and cost allocation. For more
    -- information, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources>
    -- in the /AWS General Reference/. Once the resource is created, you can
    -- use TagResource, UntagResource, and ListTagsForResource to add, remove,
    -- and view tags. The maximum tag limit may be lower than stated. See the
    -- AWS General Reference for actual tagging limits.
    tags :: Prelude.Maybe [Tag],
    -- | A list of locations where a queue is allowed to place new game sessions.
    -- Locations are specified in the form of AWS Region codes, such as
    -- @us-west-2@. If this parameter is not set, game sessions can be placed
    -- in any queue location.
    filterConfiguration :: Prelude.Maybe FilterConfiguration,
    -- | A descriptive label that is associated with game session queue. Queue
    -- names must be unique within each Region.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateGameSessionQueue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'customEventData', 'createGameSessionQueue_customEventData' - Information to be added to all events that are related to this game
-- session queue.
--
-- 'playerLatencyPolicies', 'createGameSessionQueue_playerLatencyPolicies' - A set of policies that act as a sliding cap on player latency. FleetIQ
-- works to deliver low latency for most players in a game session. These
-- policies ensure that no individual player can be placed into a game with
-- unreasonably high latency. Use multiple policies to gradually relax
-- latency requirements a step at a time. Multiple policies are applied
-- based on their maximum allowed latency, starting with the lowest value.
--
-- 'priorityConfiguration', 'createGameSessionQueue_priorityConfiguration' - Custom settings to use when prioritizing destinations and locations for
-- game session placements. This configuration replaces the FleetIQ default
-- prioritization process. Priority types that are not explicitly named
-- will be automatically applied at the end of the prioritization process.
--
-- 'destinations', 'createGameSessionQueue_destinations' - A list of fleets and\/or fleet aliases that can be used to fulfill game
-- session placement requests in the queue. Destinations are identified by
-- either a fleet ARN or a fleet alias ARN, and are listed in order of
-- placement preference.
--
-- 'timeoutInSeconds', 'createGameSessionQueue_timeoutInSeconds' - The maximum time, in seconds, that a new game session placement request
-- remains in the queue. When a request exceeds this time, the game session
-- placement changes to a @TIMED_OUT@ status.
--
-- 'notificationTarget', 'createGameSessionQueue_notificationTarget' - An SNS topic ARN that is set up to receive game session placement
-- notifications. See
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html Setting up notifications for game session placement>.
--
-- 'tags', 'createGameSessionQueue_tags' - A list of labels to assign to the new game session queue resource. Tags
-- are developer-defined key-value pairs. Tagging AWS resources are useful
-- for resource management, access management and cost allocation. For more
-- information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources>
-- in the /AWS General Reference/. Once the resource is created, you can
-- use TagResource, UntagResource, and ListTagsForResource to add, remove,
-- and view tags. The maximum tag limit may be lower than stated. See the
-- AWS General Reference for actual tagging limits.
--
-- 'filterConfiguration', 'createGameSessionQueue_filterConfiguration' - A list of locations where a queue is allowed to place new game sessions.
-- Locations are specified in the form of AWS Region codes, such as
-- @us-west-2@. If this parameter is not set, game sessions can be placed
-- in any queue location.
--
-- 'name', 'createGameSessionQueue_name' - A descriptive label that is associated with game session queue. Queue
-- names must be unique within each Region.
newCreateGameSessionQueue ::
  -- | 'name'
  Prelude.Text ->
  CreateGameSessionQueue
newCreateGameSessionQueue pName_ =
  CreateGameSessionQueue'
    { customEventData =
        Prelude.Nothing,
      playerLatencyPolicies = Prelude.Nothing,
      priorityConfiguration = Prelude.Nothing,
      destinations = Prelude.Nothing,
      timeoutInSeconds = Prelude.Nothing,
      notificationTarget = Prelude.Nothing,
      tags = Prelude.Nothing,
      filterConfiguration = Prelude.Nothing,
      name = pName_
    }

-- | Information to be added to all events that are related to this game
-- session queue.
createGameSessionQueue_customEventData :: Lens.Lens' CreateGameSessionQueue (Prelude.Maybe Prelude.Text)
createGameSessionQueue_customEventData = Lens.lens (\CreateGameSessionQueue' {customEventData} -> customEventData) (\s@CreateGameSessionQueue' {} a -> s {customEventData = a} :: CreateGameSessionQueue)

-- | A set of policies that act as a sliding cap on player latency. FleetIQ
-- works to deliver low latency for most players in a game session. These
-- policies ensure that no individual player can be placed into a game with
-- unreasonably high latency. Use multiple policies to gradually relax
-- latency requirements a step at a time. Multiple policies are applied
-- based on their maximum allowed latency, starting with the lowest value.
createGameSessionQueue_playerLatencyPolicies :: Lens.Lens' CreateGameSessionQueue (Prelude.Maybe [PlayerLatencyPolicy])
createGameSessionQueue_playerLatencyPolicies = Lens.lens (\CreateGameSessionQueue' {playerLatencyPolicies} -> playerLatencyPolicies) (\s@CreateGameSessionQueue' {} a -> s {playerLatencyPolicies = a} :: CreateGameSessionQueue) Prelude.. Lens.mapping Lens._Coerce

-- | Custom settings to use when prioritizing destinations and locations for
-- game session placements. This configuration replaces the FleetIQ default
-- prioritization process. Priority types that are not explicitly named
-- will be automatically applied at the end of the prioritization process.
createGameSessionQueue_priorityConfiguration :: Lens.Lens' CreateGameSessionQueue (Prelude.Maybe PriorityConfiguration)
createGameSessionQueue_priorityConfiguration = Lens.lens (\CreateGameSessionQueue' {priorityConfiguration} -> priorityConfiguration) (\s@CreateGameSessionQueue' {} a -> s {priorityConfiguration = a} :: CreateGameSessionQueue)

-- | A list of fleets and\/or fleet aliases that can be used to fulfill game
-- session placement requests in the queue. Destinations are identified by
-- either a fleet ARN or a fleet alias ARN, and are listed in order of
-- placement preference.
createGameSessionQueue_destinations :: Lens.Lens' CreateGameSessionQueue (Prelude.Maybe [GameSessionQueueDestination])
createGameSessionQueue_destinations = Lens.lens (\CreateGameSessionQueue' {destinations} -> destinations) (\s@CreateGameSessionQueue' {} a -> s {destinations = a} :: CreateGameSessionQueue) Prelude.. Lens.mapping Lens._Coerce

-- | The maximum time, in seconds, that a new game session placement request
-- remains in the queue. When a request exceeds this time, the game session
-- placement changes to a @TIMED_OUT@ status.
createGameSessionQueue_timeoutInSeconds :: Lens.Lens' CreateGameSessionQueue (Prelude.Maybe Prelude.Natural)
createGameSessionQueue_timeoutInSeconds = Lens.lens (\CreateGameSessionQueue' {timeoutInSeconds} -> timeoutInSeconds) (\s@CreateGameSessionQueue' {} a -> s {timeoutInSeconds = a} :: CreateGameSessionQueue)

-- | An SNS topic ARN that is set up to receive game session placement
-- notifications. See
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html Setting up notifications for game session placement>.
createGameSessionQueue_notificationTarget :: Lens.Lens' CreateGameSessionQueue (Prelude.Maybe Prelude.Text)
createGameSessionQueue_notificationTarget = Lens.lens (\CreateGameSessionQueue' {notificationTarget} -> notificationTarget) (\s@CreateGameSessionQueue' {} a -> s {notificationTarget = a} :: CreateGameSessionQueue)

-- | A list of labels to assign to the new game session queue resource. Tags
-- are developer-defined key-value pairs. Tagging AWS resources are useful
-- for resource management, access management and cost allocation. For more
-- information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources>
-- in the /AWS General Reference/. Once the resource is created, you can
-- use TagResource, UntagResource, and ListTagsForResource to add, remove,
-- and view tags. The maximum tag limit may be lower than stated. See the
-- AWS General Reference for actual tagging limits.
createGameSessionQueue_tags :: Lens.Lens' CreateGameSessionQueue (Prelude.Maybe [Tag])
createGameSessionQueue_tags = Lens.lens (\CreateGameSessionQueue' {tags} -> tags) (\s@CreateGameSessionQueue' {} a -> s {tags = a} :: CreateGameSessionQueue) Prelude.. Lens.mapping Lens._Coerce

-- | A list of locations where a queue is allowed to place new game sessions.
-- Locations are specified in the form of AWS Region codes, such as
-- @us-west-2@. If this parameter is not set, game sessions can be placed
-- in any queue location.
createGameSessionQueue_filterConfiguration :: Lens.Lens' CreateGameSessionQueue (Prelude.Maybe FilterConfiguration)
createGameSessionQueue_filterConfiguration = Lens.lens (\CreateGameSessionQueue' {filterConfiguration} -> filterConfiguration) (\s@CreateGameSessionQueue' {} a -> s {filterConfiguration = a} :: CreateGameSessionQueue)

-- | A descriptive label that is associated with game session queue. Queue
-- names must be unique within each Region.
createGameSessionQueue_name :: Lens.Lens' CreateGameSessionQueue Prelude.Text
createGameSessionQueue_name = Lens.lens (\CreateGameSessionQueue' {name} -> name) (\s@CreateGameSessionQueue' {} a -> s {name = a} :: CreateGameSessionQueue)

instance Core.AWSRequest CreateGameSessionQueue where
  type
    AWSResponse CreateGameSessionQueue =
      CreateGameSessionQueueResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateGameSessionQueueResponse'
            Prelude.<$> (x Core..?> "GameSessionQueue")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateGameSessionQueue

instance Prelude.NFData CreateGameSessionQueue

instance Core.ToHeaders CreateGameSessionQueue where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GameLift.CreateGameSessionQueue" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateGameSessionQueue where
  toJSON CreateGameSessionQueue' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CustomEventData" Core..=)
              Prelude.<$> customEventData,
            ("PlayerLatencyPolicies" Core..=)
              Prelude.<$> playerLatencyPolicies,
            ("PriorityConfiguration" Core..=)
              Prelude.<$> priorityConfiguration,
            ("Destinations" Core..=) Prelude.<$> destinations,
            ("TimeoutInSeconds" Core..=)
              Prelude.<$> timeoutInSeconds,
            ("NotificationTarget" Core..=)
              Prelude.<$> notificationTarget,
            ("Tags" Core..=) Prelude.<$> tags,
            ("FilterConfiguration" Core..=)
              Prelude.<$> filterConfiguration,
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath CreateGameSessionQueue where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateGameSessionQueue where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the returned data in response to a request operation.
--
-- /See:/ 'newCreateGameSessionQueueResponse' smart constructor.
data CreateGameSessionQueueResponse = CreateGameSessionQueueResponse'
  { -- | An object that describes the newly created game session queue.
    gameSessionQueue :: Prelude.Maybe GameSessionQueue,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateGameSessionQueueResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'gameSessionQueue', 'createGameSessionQueueResponse_gameSessionQueue' - An object that describes the newly created game session queue.
--
-- 'httpStatus', 'createGameSessionQueueResponse_httpStatus' - The response's http status code.
newCreateGameSessionQueueResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateGameSessionQueueResponse
newCreateGameSessionQueueResponse pHttpStatus_ =
  CreateGameSessionQueueResponse'
    { gameSessionQueue =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An object that describes the newly created game session queue.
createGameSessionQueueResponse_gameSessionQueue :: Lens.Lens' CreateGameSessionQueueResponse (Prelude.Maybe GameSessionQueue)
createGameSessionQueueResponse_gameSessionQueue = Lens.lens (\CreateGameSessionQueueResponse' {gameSessionQueue} -> gameSessionQueue) (\s@CreateGameSessionQueueResponse' {} a -> s {gameSessionQueue = a} :: CreateGameSessionQueueResponse)

-- | The response's http status code.
createGameSessionQueueResponse_httpStatus :: Lens.Lens' CreateGameSessionQueueResponse Prelude.Int
createGameSessionQueueResponse_httpStatus = Lens.lens (\CreateGameSessionQueueResponse' {httpStatus} -> httpStatus) (\s@CreateGameSessionQueueResponse' {} a -> s {httpStatus = a} :: CreateGameSessionQueueResponse)

instance
  Prelude.NFData
    CreateGameSessionQueueResponse