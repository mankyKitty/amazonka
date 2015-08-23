{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Support.DescribeAttachment
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the attachment that has the specified ID. Attachment IDs are
-- generated by the case management system when you add an attachment to a
-- case or case communication. Attachment IDs are returned in the
-- AttachmentDetails objects that are returned by the
-- DescribeCommunications operation.
--
-- /See:/ <http://docs.aws.amazon.com/awssupport/latest/APIReference/API_DescribeAttachment.html AWS API Reference> for DescribeAttachment.
module Network.AWS.Support.DescribeAttachment
    (
    -- * Creating a Request
      describeAttachment
    , DescribeAttachment
    -- * Request Lenses
    , daAttachmentId

    -- * Destructuring the Response
    , describeAttachmentResponse
    , DescribeAttachmentResponse
    -- * Response Lenses
    , darsAttachment
    , darsStatus
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.Support.Types
import           Network.AWS.Support.Types.Product

-- | /See:/ 'describeAttachment' smart constructor.
newtype DescribeAttachment = DescribeAttachment'
    { _daAttachmentId :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DescribeAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daAttachmentId'
describeAttachment
    :: Text -- ^ 'daAttachmentId'
    -> DescribeAttachment
describeAttachment pAttachmentId_ =
    DescribeAttachment'
    { _daAttachmentId = pAttachmentId_
    }

-- | The ID of the attachment to return. Attachment IDs are returned by the
-- DescribeCommunications operation.
daAttachmentId :: Lens' DescribeAttachment Text
daAttachmentId = lens _daAttachmentId (\ s a -> s{_daAttachmentId = a});

instance AWSRequest DescribeAttachment where
        type Sv DescribeAttachment = Support
        type Rs DescribeAttachment =
             DescribeAttachmentResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 DescribeAttachmentResponse' <$>
                   (x .?> "attachment") <*> (pure (fromEnum s)))

instance ToHeaders DescribeAttachment where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWSSupport_20130415.DescribeAttachment" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeAttachment where
        toJSON DescribeAttachment'{..}
          = object
              (catMaybes
                 [Just ("attachmentId" .= _daAttachmentId)])

instance ToPath DescribeAttachment where
        toPath = const "/"

instance ToQuery DescribeAttachment where
        toQuery = const mempty

-- | The content and file name of the attachment returned by the
-- DescribeAttachment operation.
--
-- /See:/ 'describeAttachmentResponse' smart constructor.
data DescribeAttachmentResponse = DescribeAttachmentResponse'
    { _darsAttachment :: !(Maybe Attachment)
    , _darsStatus     :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DescribeAttachmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darsAttachment'
--
-- * 'darsStatus'
describeAttachmentResponse
    :: Int -- ^ 'darsStatus'
    -> DescribeAttachmentResponse
describeAttachmentResponse pStatus_ =
    DescribeAttachmentResponse'
    { _darsAttachment = Nothing
    , _darsStatus = pStatus_
    }

-- | The attachment content and file name.
darsAttachment :: Lens' DescribeAttachmentResponse (Maybe Attachment)
darsAttachment = lens _darsAttachment (\ s a -> s{_darsAttachment = a});

-- | The response status code.
darsStatus :: Lens' DescribeAttachmentResponse Int
darsStatus = lens _darsStatus (\ s a -> s{_darsStatus = a});
