package com.dropbox.core.p006v2.teamlog;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.dropbox.core.p006v2.teamlog.AccountCaptureChangeAvailabilityType;
import com.dropbox.core.p006v2.teamlog.AccountCaptureChangePolicyType;
import com.dropbox.core.p006v2.teamlog.AccountCaptureMigrateAccountType;
import com.dropbox.core.p006v2.teamlog.AccountCaptureNotificationEmailsSentType;
import com.dropbox.core.p006v2.teamlog.AccountCaptureRelinquishAccountType;
import com.dropbox.core.p006v2.teamlog.AccountLockOrUnlockedType;
import com.dropbox.core.p006v2.teamlog.AllowDownloadDisabledType;
import com.dropbox.core.p006v2.teamlog.AllowDownloadEnabledType;
import com.dropbox.core.p006v2.teamlog.AppLinkTeamType;
import com.dropbox.core.p006v2.teamlog.AppLinkUserType;
import com.dropbox.core.p006v2.teamlog.AppUnlinkTeamType;
import com.dropbox.core.p006v2.teamlog.AppUnlinkUserType;
import com.dropbox.core.p006v2.teamlog.BinderAddPageType;
import com.dropbox.core.p006v2.teamlog.BinderAddSectionType;
import com.dropbox.core.p006v2.teamlog.BinderRemovePageType;
import com.dropbox.core.p006v2.teamlog.BinderRemoveSectionType;
import com.dropbox.core.p006v2.teamlog.BinderRenamePageType;
import com.dropbox.core.p006v2.teamlog.BinderRenameSectionType;
import com.dropbox.core.p006v2.teamlog.BinderReorderPageType;
import com.dropbox.core.p006v2.teamlog.BinderReorderSectionType;
import com.dropbox.core.p006v2.teamlog.CameraUploadsPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.ChangedEnterpriseAdminRoleType;
import com.dropbox.core.p006v2.teamlog.ChangedEnterpriseConnectedTeamStatusType;
import com.dropbox.core.p006v2.teamlog.CollectionShareType;
import com.dropbox.core.p006v2.teamlog.ContentAdministrationPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.CreateFolderType;
import com.dropbox.core.p006v2.teamlog.CreateTeamInviteLinkType;
import com.dropbox.core.p006v2.teamlog.DataPlacementRestrictionChangePolicyType;
import com.dropbox.core.p006v2.teamlog.DataPlacementRestrictionSatisfyPolicyType;
import com.dropbox.core.p006v2.teamlog.DeleteTeamInviteLinkType;
import com.dropbox.core.p006v2.teamlog.DeviceApprovalsAddExceptionType;
import com.dropbox.core.p006v2.teamlog.DeviceApprovalsChangeDesktopPolicyType;
import com.dropbox.core.p006v2.teamlog.DeviceApprovalsChangeMobilePolicyType;
import com.dropbox.core.p006v2.teamlog.DeviceApprovalsChangeOverageActionType;
import com.dropbox.core.p006v2.teamlog.DeviceApprovalsChangeUnlinkActionType;
import com.dropbox.core.p006v2.teamlog.DeviceApprovalsRemoveExceptionType;
import com.dropbox.core.p006v2.teamlog.DeviceChangeIpDesktopType;
import com.dropbox.core.p006v2.teamlog.DeviceChangeIpMobileType;
import com.dropbox.core.p006v2.teamlog.DeviceChangeIpWebType;
import com.dropbox.core.p006v2.teamlog.DeviceDeleteOnUnlinkFailType;
import com.dropbox.core.p006v2.teamlog.DeviceDeleteOnUnlinkSuccessType;
import com.dropbox.core.p006v2.teamlog.DeviceLinkFailType;
import com.dropbox.core.p006v2.teamlog.DeviceLinkSuccessType;
import com.dropbox.core.p006v2.teamlog.DeviceManagementDisabledType;
import com.dropbox.core.p006v2.teamlog.DeviceManagementEnabledType;
import com.dropbox.core.p006v2.teamlog.DeviceUnlinkType;
import com.dropbox.core.p006v2.teamlog.DirectoryRestrictionsAddMembersType;
import com.dropbox.core.p006v2.teamlog.DirectoryRestrictionsRemoveMembersType;
import com.dropbox.core.p006v2.teamlog.DisabledDomainInvitesType;
import com.dropbox.core.p006v2.teamlog.DomainInvitesApproveRequestToJoinTeamType;
import com.dropbox.core.p006v2.teamlog.DomainInvitesDeclineRequestToJoinTeamType;
import com.dropbox.core.p006v2.teamlog.DomainInvitesEmailExistingUsersType;
import com.dropbox.core.p006v2.teamlog.DomainInvitesRequestToJoinTeamType;
import com.dropbox.core.p006v2.teamlog.DomainInvitesSetInviteNewUserPrefToNoType;
import com.dropbox.core.p006v2.teamlog.DomainInvitesSetInviteNewUserPrefToYesType;
import com.dropbox.core.p006v2.teamlog.DomainVerificationAddDomainFailType;
import com.dropbox.core.p006v2.teamlog.DomainVerificationAddDomainSuccessType;
import com.dropbox.core.p006v2.teamlog.DomainVerificationRemoveDomainType;
import com.dropbox.core.p006v2.teamlog.EmmAddExceptionType;
import com.dropbox.core.p006v2.teamlog.EmmChangePolicyType;
import com.dropbox.core.p006v2.teamlog.EmmCreateExceptionsReportType;
import com.dropbox.core.p006v2.teamlog.EmmCreateUsageReportType;
import com.dropbox.core.p006v2.teamlog.EmmErrorType;
import com.dropbox.core.p006v2.teamlog.EmmRefreshAuthTokenType;
import com.dropbox.core.p006v2.teamlog.EmmRemoveExceptionType;
import com.dropbox.core.p006v2.teamlog.EnabledDomainInvitesType;
import com.dropbox.core.p006v2.teamlog.EndedEnterpriseAdminSessionDeprecatedType;
import com.dropbox.core.p006v2.teamlog.EndedEnterpriseAdminSessionType;
import com.dropbox.core.p006v2.teamlog.EnterpriseSettingsLockingType;
import com.dropbox.core.p006v2.teamlog.ExportMembersReportFailType;
import com.dropbox.core.p006v2.teamlog.ExportMembersReportType;
import com.dropbox.core.p006v2.teamlog.ExtendedVersionHistoryChangePolicyType;
import com.dropbox.core.p006v2.teamlog.ExternalSharingCreateReportType;
import com.dropbox.core.p006v2.teamlog.ExternalSharingReportFailedType;
import com.dropbox.core.p006v2.teamlog.FileAddCommentType;
import com.dropbox.core.p006v2.teamlog.FileAddType;
import com.dropbox.core.p006v2.teamlog.FileChangeCommentSubscriptionType;
import com.dropbox.core.p006v2.teamlog.FileCommentsChangePolicyType;
import com.dropbox.core.p006v2.teamlog.FileCopyType;
import com.dropbox.core.p006v2.teamlog.FileDeleteCommentType;
import com.dropbox.core.p006v2.teamlog.FileDeleteType;
import com.dropbox.core.p006v2.teamlog.FileDownloadType;
import com.dropbox.core.p006v2.teamlog.FileEditCommentType;
import com.dropbox.core.p006v2.teamlog.FileEditType;
import com.dropbox.core.p006v2.teamlog.FileGetCopyReferenceType;
import com.dropbox.core.p006v2.teamlog.FileLikeCommentType;
import com.dropbox.core.p006v2.teamlog.FileLockingLockStatusChangedType;
import com.dropbox.core.p006v2.teamlog.FileLockingPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.FileMoveType;
import com.dropbox.core.p006v2.teamlog.FilePermanentlyDeleteType;
import com.dropbox.core.p006v2.teamlog.FilePreviewType;
import com.dropbox.core.p006v2.teamlog.FileRenameType;
import com.dropbox.core.p006v2.teamlog.FileRequestChangeType;
import com.dropbox.core.p006v2.teamlog.FileRequestCloseType;
import com.dropbox.core.p006v2.teamlog.FileRequestCreateType;
import com.dropbox.core.p006v2.teamlog.FileRequestDeleteType;
import com.dropbox.core.p006v2.teamlog.FileRequestReceiveFileType;
import com.dropbox.core.p006v2.teamlog.FileRequestsChangePolicyType;
import com.dropbox.core.p006v2.teamlog.FileRequestsEmailsEnabledType;
import com.dropbox.core.p006v2.teamlog.FileRequestsEmailsRestrictedToTeamOnlyType;
import com.dropbox.core.p006v2.teamlog.FileResolveCommentType;
import com.dropbox.core.p006v2.teamlog.FileRestoreType;
import com.dropbox.core.p006v2.teamlog.FileRevertType;
import com.dropbox.core.p006v2.teamlog.FileRollbackChangesType;
import com.dropbox.core.p006v2.teamlog.FileSaveCopyReferenceType;
import com.dropbox.core.p006v2.teamlog.FileTransfersFileAddType;
import com.dropbox.core.p006v2.teamlog.FileTransfersPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.FileTransfersTransferDeleteType;
import com.dropbox.core.p006v2.teamlog.FileTransfersTransferDownloadType;
import com.dropbox.core.p006v2.teamlog.FileTransfersTransferSendType;
import com.dropbox.core.p006v2.teamlog.FileTransfersTransferViewType;
import com.dropbox.core.p006v2.teamlog.FileUnlikeCommentType;
import com.dropbox.core.p006v2.teamlog.FileUnresolveCommentType;
import com.dropbox.core.p006v2.teamlog.FolderOverviewDescriptionChangedType;
import com.dropbox.core.p006v2.teamlog.FolderOverviewItemPinnedType;
import com.dropbox.core.p006v2.teamlog.FolderOverviewItemUnpinnedType;
import com.dropbox.core.p006v2.teamlog.GoogleSsoChangePolicyType;
import com.dropbox.core.p006v2.teamlog.GroupAddExternalIdType;
import com.dropbox.core.p006v2.teamlog.GroupAddMemberType;
import com.dropbox.core.p006v2.teamlog.GroupChangeExternalIdType;
import com.dropbox.core.p006v2.teamlog.GroupChangeManagementTypeType;
import com.dropbox.core.p006v2.teamlog.GroupChangeMemberRoleType;
import com.dropbox.core.p006v2.teamlog.GroupCreateType;
import com.dropbox.core.p006v2.teamlog.GroupDeleteType;
import com.dropbox.core.p006v2.teamlog.GroupDescriptionUpdatedType;
import com.dropbox.core.p006v2.teamlog.GroupJoinPolicyUpdatedType;
import com.dropbox.core.p006v2.teamlog.GroupMovedType;
import com.dropbox.core.p006v2.teamlog.GroupRemoveExternalIdType;
import com.dropbox.core.p006v2.teamlog.GroupRemoveMemberType;
import com.dropbox.core.p006v2.teamlog.GroupRenameType;
import com.dropbox.core.p006v2.teamlog.GroupUserManagementChangePolicyType;
import com.dropbox.core.p006v2.teamlog.GuestAdminChangeStatusType;
import com.dropbox.core.p006v2.teamlog.GuestAdminSignedInViaTrustedTeamsType;
import com.dropbox.core.p006v2.teamlog.GuestAdminSignedOutViaTrustedTeamsType;
import com.dropbox.core.p006v2.teamlog.IntegrationConnectedType;
import com.dropbox.core.p006v2.teamlog.IntegrationDisconnectedType;
import com.dropbox.core.p006v2.teamlog.IntegrationPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.LegalHoldsActivateAHoldType;
import com.dropbox.core.p006v2.teamlog.LegalHoldsAddMembersType;
import com.dropbox.core.p006v2.teamlog.LegalHoldsChangeHoldDetailsType;
import com.dropbox.core.p006v2.teamlog.LegalHoldsChangeHoldNameType;
import com.dropbox.core.p006v2.teamlog.LegalHoldsExportAHoldType;
import com.dropbox.core.p006v2.teamlog.LegalHoldsExportCancelledType;
import com.dropbox.core.p006v2.teamlog.LegalHoldsExportDownloadedType;
import com.dropbox.core.p006v2.teamlog.LegalHoldsExportRemovedType;
import com.dropbox.core.p006v2.teamlog.LegalHoldsReleaseAHoldType;
import com.dropbox.core.p006v2.teamlog.LegalHoldsRemoveMembersType;
import com.dropbox.core.p006v2.teamlog.LegalHoldsReportAHoldType;
import com.dropbox.core.p006v2.teamlog.LoginFailType;
import com.dropbox.core.p006v2.teamlog.LoginSuccessType;
import com.dropbox.core.p006v2.teamlog.LogoutType;
import com.dropbox.core.p006v2.teamlog.MemberAddExternalIdType;
import com.dropbox.core.p006v2.teamlog.MemberAddNameType;
import com.dropbox.core.p006v2.teamlog.MemberChangeAdminRoleType;
import com.dropbox.core.p006v2.teamlog.MemberChangeEmailType;
import com.dropbox.core.p006v2.teamlog.MemberChangeExternalIdType;
import com.dropbox.core.p006v2.teamlog.MemberChangeMembershipTypeType;
import com.dropbox.core.p006v2.teamlog.MemberChangeNameType;
import com.dropbox.core.p006v2.teamlog.MemberChangeStatusType;
import com.dropbox.core.p006v2.teamlog.MemberDeleteManualContactsType;
import com.dropbox.core.p006v2.teamlog.MemberDeleteProfilePhotoType;
import com.dropbox.core.p006v2.teamlog.MemberPermanentlyDeleteAccountContentsType;
import com.dropbox.core.p006v2.teamlog.MemberRemoveExternalIdType;
import com.dropbox.core.p006v2.teamlog.MemberRequestsChangePolicyType;
import com.dropbox.core.p006v2.teamlog.MemberSendInvitePolicyChangedType;
import com.dropbox.core.p006v2.teamlog.MemberSetProfilePhotoType;
import com.dropbox.core.p006v2.teamlog.MemberSpaceLimitsAddCustomQuotaType;
import com.dropbox.core.p006v2.teamlog.MemberSpaceLimitsAddExceptionType;
import com.dropbox.core.p006v2.teamlog.MemberSpaceLimitsChangeCapsTypePolicyType;
import com.dropbox.core.p006v2.teamlog.MemberSpaceLimitsChangeCustomQuotaType;
import com.dropbox.core.p006v2.teamlog.MemberSpaceLimitsChangePolicyType;
import com.dropbox.core.p006v2.teamlog.MemberSpaceLimitsChangeStatusType;
import com.dropbox.core.p006v2.teamlog.MemberSpaceLimitsRemoveCustomQuotaType;
import com.dropbox.core.p006v2.teamlog.MemberSpaceLimitsRemoveExceptionType;
import com.dropbox.core.p006v2.teamlog.MemberSuggestType;
import com.dropbox.core.p006v2.teamlog.MemberSuggestionsChangePolicyType;
import com.dropbox.core.p006v2.teamlog.MemberTransferAccountContentsType;
import com.dropbox.core.p006v2.teamlog.MicrosoftOfficeAddinChangePolicyType;
import com.dropbox.core.p006v2.teamlog.NetworkControlChangePolicyType;
import com.dropbox.core.p006v2.teamlog.NoExpirationLinkGenCreateReportType;
import com.dropbox.core.p006v2.teamlog.NoExpirationLinkGenReportFailedType;
import com.dropbox.core.p006v2.teamlog.NoPasswordLinkGenCreateReportType;
import com.dropbox.core.p006v2.teamlog.NoPasswordLinkGenReportFailedType;
import com.dropbox.core.p006v2.teamlog.NoPasswordLinkViewCreateReportType;
import com.dropbox.core.p006v2.teamlog.NoPasswordLinkViewReportFailedType;
import com.dropbox.core.p006v2.teamlog.NoteAclInviteOnlyType;
import com.dropbox.core.p006v2.teamlog.NoteAclLinkType;
import com.dropbox.core.p006v2.teamlog.NoteAclTeamLinkType;
import com.dropbox.core.p006v2.teamlog.NoteShareReceiveType;
import com.dropbox.core.p006v2.teamlog.NoteSharedType;
import com.dropbox.core.p006v2.teamlog.OpenNoteSharedType;
import com.dropbox.core.p006v2.teamlog.OutdatedLinkViewCreateReportType;
import com.dropbox.core.p006v2.teamlog.OutdatedLinkViewReportFailedType;
import com.dropbox.core.p006v2.teamlog.PaperAdminExportStartType;
import com.dropbox.core.p006v2.teamlog.PaperChangeDeploymentPolicyType;
import com.dropbox.core.p006v2.teamlog.PaperChangeMemberLinkPolicyType;
import com.dropbox.core.p006v2.teamlog.PaperChangeMemberPolicyType;
import com.dropbox.core.p006v2.teamlog.PaperChangePolicyType;
import com.dropbox.core.p006v2.teamlog.PaperContentAddMemberType;
import com.dropbox.core.p006v2.teamlog.PaperContentAddToFolderType;
import com.dropbox.core.p006v2.teamlog.PaperContentArchiveType;
import com.dropbox.core.p006v2.teamlog.PaperContentCreateType;
import com.dropbox.core.p006v2.teamlog.PaperContentPermanentlyDeleteType;
import com.dropbox.core.p006v2.teamlog.PaperContentRemoveFromFolderType;
import com.dropbox.core.p006v2.teamlog.PaperContentRemoveMemberType;
import com.dropbox.core.p006v2.teamlog.PaperContentRenameType;
import com.dropbox.core.p006v2.teamlog.PaperContentRestoreType;
import com.dropbox.core.p006v2.teamlog.PaperDefaultFolderPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.PaperDesktopPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.PaperDocAddCommentType;
import com.dropbox.core.p006v2.teamlog.PaperDocChangeMemberRoleType;
import com.dropbox.core.p006v2.teamlog.PaperDocChangeSharingPolicyType;
import com.dropbox.core.p006v2.teamlog.PaperDocChangeSubscriptionType;
import com.dropbox.core.p006v2.teamlog.PaperDocDeleteCommentType;
import com.dropbox.core.p006v2.teamlog.PaperDocDeletedType;
import com.dropbox.core.p006v2.teamlog.PaperDocDownloadType;
import com.dropbox.core.p006v2.teamlog.PaperDocEditCommentType;
import com.dropbox.core.p006v2.teamlog.PaperDocEditType;
import com.dropbox.core.p006v2.teamlog.PaperDocFollowedType;
import com.dropbox.core.p006v2.teamlog.PaperDocMentionType;
import com.dropbox.core.p006v2.teamlog.PaperDocOwnershipChangedType;
import com.dropbox.core.p006v2.teamlog.PaperDocRequestAccessType;
import com.dropbox.core.p006v2.teamlog.PaperDocResolveCommentType;
import com.dropbox.core.p006v2.teamlog.PaperDocRevertType;
import com.dropbox.core.p006v2.teamlog.PaperDocSlackShareType;
import com.dropbox.core.p006v2.teamlog.PaperDocTeamInviteType;
import com.dropbox.core.p006v2.teamlog.PaperDocTrashedType;
import com.dropbox.core.p006v2.teamlog.PaperDocUnresolveCommentType;
import com.dropbox.core.p006v2.teamlog.PaperDocUntrashedType;
import com.dropbox.core.p006v2.teamlog.PaperDocViewType;
import com.dropbox.core.p006v2.teamlog.PaperEnabledUsersGroupAdditionType;
import com.dropbox.core.p006v2.teamlog.PaperEnabledUsersGroupRemovalType;
import com.dropbox.core.p006v2.teamlog.PaperExternalViewAllowType;
import com.dropbox.core.p006v2.teamlog.PaperExternalViewDefaultTeamType;
import com.dropbox.core.p006v2.teamlog.PaperExternalViewForbidType;
import com.dropbox.core.p006v2.teamlog.PaperFolderChangeSubscriptionType;
import com.dropbox.core.p006v2.teamlog.PaperFolderDeletedType;
import com.dropbox.core.p006v2.teamlog.PaperFolderFollowedType;
import com.dropbox.core.p006v2.teamlog.PaperFolderTeamInviteType;
import com.dropbox.core.p006v2.teamlog.PaperPublishedLinkChangePermissionType;
import com.dropbox.core.p006v2.teamlog.PaperPublishedLinkCreateType;
import com.dropbox.core.p006v2.teamlog.PaperPublishedLinkDisabledType;
import com.dropbox.core.p006v2.teamlog.PaperPublishedLinkViewType;
import com.dropbox.core.p006v2.teamlog.PasswordChangeType;
import com.dropbox.core.p006v2.teamlog.PasswordResetAllType;
import com.dropbox.core.p006v2.teamlog.PasswordResetType;
import com.dropbox.core.p006v2.teamlog.PasswordStrengthRequirementsChangePolicyType;
import com.dropbox.core.p006v2.teamlog.PendingSecondaryEmailAddedType;
import com.dropbox.core.p006v2.teamlog.PermanentDeleteChangePolicyType;
import com.dropbox.core.p006v2.teamlog.ResellerSupportChangePolicyType;
import com.dropbox.core.p006v2.teamlog.ResellerSupportSessionEndType;
import com.dropbox.core.p006v2.teamlog.ResellerSupportSessionStartType;
import com.dropbox.core.p006v2.teamlog.RewindFolderType;
import com.dropbox.core.p006v2.teamlog.RewindPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.SecondaryEmailDeletedType;
import com.dropbox.core.p006v2.teamlog.SecondaryEmailVerifiedType;
import com.dropbox.core.p006v2.teamlog.SecondaryMailsPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.SendForSignaturePolicyChangedType;
import com.dropbox.core.p006v2.teamlog.SfAddGroupType;
import com.dropbox.core.p006v2.teamlog.SfAllowNonMembersToViewSharedLinksType;
import com.dropbox.core.p006v2.teamlog.SfExternalInviteWarnType;
import com.dropbox.core.p006v2.teamlog.SfFbInviteChangeRoleType;
import com.dropbox.core.p006v2.teamlog.SfFbInviteType;
import com.dropbox.core.p006v2.teamlog.SfFbUninviteType;
import com.dropbox.core.p006v2.teamlog.SfInviteGroupType;
import com.dropbox.core.p006v2.teamlog.SfTeamGrantAccessType;
import com.dropbox.core.p006v2.teamlog.SfTeamInviteChangeRoleType;
import com.dropbox.core.p006v2.teamlog.SfTeamInviteType;
import com.dropbox.core.p006v2.teamlog.SfTeamJoinFromOobLinkType;
import com.dropbox.core.p006v2.teamlog.SfTeamJoinType;
import com.dropbox.core.p006v2.teamlog.SfTeamUninviteType;
import com.dropbox.core.p006v2.teamlog.SharedContentAddInviteesType;
import com.dropbox.core.p006v2.teamlog.SharedContentAddLinkExpiryType;
import com.dropbox.core.p006v2.teamlog.SharedContentAddLinkPasswordType;
import com.dropbox.core.p006v2.teamlog.SharedContentAddMemberType;
import com.dropbox.core.p006v2.teamlog.SharedContentChangeDownloadsPolicyType;
import com.dropbox.core.p006v2.teamlog.SharedContentChangeInviteeRoleType;
import com.dropbox.core.p006v2.teamlog.SharedContentChangeLinkAudienceType;
import com.dropbox.core.p006v2.teamlog.SharedContentChangeLinkExpiryType;
import com.dropbox.core.p006v2.teamlog.SharedContentChangeLinkPasswordType;
import com.dropbox.core.p006v2.teamlog.SharedContentChangeMemberRoleType;
import com.dropbox.core.p006v2.teamlog.SharedContentChangeViewerInfoPolicyType;
import com.dropbox.core.p006v2.teamlog.SharedContentClaimInvitationType;
import com.dropbox.core.p006v2.teamlog.SharedContentCopyType;
import com.dropbox.core.p006v2.teamlog.SharedContentDownloadType;
import com.dropbox.core.p006v2.teamlog.SharedContentRelinquishMembershipType;
import com.dropbox.core.p006v2.teamlog.SharedContentRemoveInviteesType;
import com.dropbox.core.p006v2.teamlog.SharedContentRemoveLinkExpiryType;
import com.dropbox.core.p006v2.teamlog.SharedContentRemoveLinkPasswordType;
import com.dropbox.core.p006v2.teamlog.SharedContentRemoveMemberType;
import com.dropbox.core.p006v2.teamlog.SharedContentRequestAccessType;
import com.dropbox.core.p006v2.teamlog.SharedContentRestoreInviteesType;
import com.dropbox.core.p006v2.teamlog.SharedContentRestoreMemberType;
import com.dropbox.core.p006v2.teamlog.SharedContentUnshareType;
import com.dropbox.core.p006v2.teamlog.SharedContentViewType;
import com.dropbox.core.p006v2.teamlog.SharedFolderChangeLinkPolicyType;
import com.dropbox.core.p006v2.teamlog.SharedFolderChangeMembersInheritancePolicyType;
import com.dropbox.core.p006v2.teamlog.SharedFolderChangeMembersManagementPolicyType;
import com.dropbox.core.p006v2.teamlog.SharedFolderChangeMembersPolicyType;
import com.dropbox.core.p006v2.teamlog.SharedFolderCreateType;
import com.dropbox.core.p006v2.teamlog.SharedFolderDeclineInvitationType;
import com.dropbox.core.p006v2.teamlog.SharedFolderMountType;
import com.dropbox.core.p006v2.teamlog.SharedFolderNestType;
import com.dropbox.core.p006v2.teamlog.SharedFolderTransferOwnershipType;
import com.dropbox.core.p006v2.teamlog.SharedFolderUnmountType;
import com.dropbox.core.p006v2.teamlog.SharedLinkAddExpiryType;
import com.dropbox.core.p006v2.teamlog.SharedLinkChangeExpiryType;
import com.dropbox.core.p006v2.teamlog.SharedLinkChangeVisibilityType;
import com.dropbox.core.p006v2.teamlog.SharedLinkCopyType;
import com.dropbox.core.p006v2.teamlog.SharedLinkCreateType;
import com.dropbox.core.p006v2.teamlog.SharedLinkDisableType;
import com.dropbox.core.p006v2.teamlog.SharedLinkDownloadType;
import com.dropbox.core.p006v2.teamlog.SharedLinkRemoveExpiryType;
import com.dropbox.core.p006v2.teamlog.SharedLinkSettingsAddExpirationType;
import com.dropbox.core.p006v2.teamlog.SharedLinkSettingsAddPasswordType;
import com.dropbox.core.p006v2.teamlog.SharedLinkSettingsAllowDownloadDisabledType;
import com.dropbox.core.p006v2.teamlog.SharedLinkSettingsAllowDownloadEnabledType;
import com.dropbox.core.p006v2.teamlog.SharedLinkSettingsChangeAudienceType;
import com.dropbox.core.p006v2.teamlog.SharedLinkSettingsChangeExpirationType;
import com.dropbox.core.p006v2.teamlog.SharedLinkSettingsChangePasswordType;
import com.dropbox.core.p006v2.teamlog.SharedLinkSettingsRemoveExpirationType;
import com.dropbox.core.p006v2.teamlog.SharedLinkSettingsRemovePasswordType;
import com.dropbox.core.p006v2.teamlog.SharedLinkShareType;
import com.dropbox.core.p006v2.teamlog.SharedLinkViewType;
import com.dropbox.core.p006v2.teamlog.SharedNoteOpenedType;
import com.dropbox.core.p006v2.teamlog.SharingChangeFolderJoinPolicyType;
import com.dropbox.core.p006v2.teamlog.SharingChangeLinkPolicyType;
import com.dropbox.core.p006v2.teamlog.SharingChangeMemberPolicyType;
import com.dropbox.core.p006v2.teamlog.ShmodelGroupShareType;
import com.dropbox.core.p006v2.teamlog.ShowcaseAccessGrantedType;
import com.dropbox.core.p006v2.teamlog.ShowcaseAddMemberType;
import com.dropbox.core.p006v2.teamlog.ShowcaseArchivedType;
import com.dropbox.core.p006v2.teamlog.ShowcaseChangeDownloadPolicyType;
import com.dropbox.core.p006v2.teamlog.ShowcaseChangeEnabledPolicyType;
import com.dropbox.core.p006v2.teamlog.ShowcaseChangeExternalSharingPolicyType;
import com.dropbox.core.p006v2.teamlog.ShowcaseCreatedType;
import com.dropbox.core.p006v2.teamlog.ShowcaseDeleteCommentType;
import com.dropbox.core.p006v2.teamlog.ShowcaseEditCommentType;
import com.dropbox.core.p006v2.teamlog.ShowcaseEditedType;
import com.dropbox.core.p006v2.teamlog.ShowcaseFileAddedType;
import com.dropbox.core.p006v2.teamlog.ShowcaseFileDownloadType;
import com.dropbox.core.p006v2.teamlog.ShowcaseFileRemovedType;
import com.dropbox.core.p006v2.teamlog.ShowcaseFileViewType;
import com.dropbox.core.p006v2.teamlog.ShowcasePermanentlyDeletedType;
import com.dropbox.core.p006v2.teamlog.ShowcasePostCommentType;
import com.dropbox.core.p006v2.teamlog.ShowcaseRemoveMemberType;
import com.dropbox.core.p006v2.teamlog.ShowcaseRenamedType;
import com.dropbox.core.p006v2.teamlog.ShowcaseRequestAccessType;
import com.dropbox.core.p006v2.teamlog.ShowcaseResolveCommentType;
import com.dropbox.core.p006v2.teamlog.ShowcaseRestoredType;
import com.dropbox.core.p006v2.teamlog.ShowcaseTrashedDeprecatedType;
import com.dropbox.core.p006v2.teamlog.ShowcaseTrashedType;
import com.dropbox.core.p006v2.teamlog.ShowcaseUnresolveCommentType;
import com.dropbox.core.p006v2.teamlog.ShowcaseUntrashedDeprecatedType;
import com.dropbox.core.p006v2.teamlog.ShowcaseUntrashedType;
import com.dropbox.core.p006v2.teamlog.ShowcaseViewType;
import com.dropbox.core.p006v2.teamlog.SignInAsSessionEndType;
import com.dropbox.core.p006v2.teamlog.SignInAsSessionStartType;
import com.dropbox.core.p006v2.teamlog.SmartSyncChangePolicyType;
import com.dropbox.core.p006v2.teamlog.SmartSyncCreateAdminPrivilegeReportType;
import com.dropbox.core.p006v2.teamlog.SmartSyncNotOptOutType;
import com.dropbox.core.p006v2.teamlog.SmartSyncOptOutType;
import com.dropbox.core.p006v2.teamlog.SmarterSmartSyncPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.SsoAddCertType;
import com.dropbox.core.p006v2.teamlog.SsoAddLoginUrlType;
import com.dropbox.core.p006v2.teamlog.SsoAddLogoutUrlType;
import com.dropbox.core.p006v2.teamlog.SsoChangeCertType;
import com.dropbox.core.p006v2.teamlog.SsoChangeLoginUrlType;
import com.dropbox.core.p006v2.teamlog.SsoChangeLogoutUrlType;
import com.dropbox.core.p006v2.teamlog.SsoChangePolicyType;
import com.dropbox.core.p006v2.teamlog.SsoChangeSamlIdentityModeType;
import com.dropbox.core.p006v2.teamlog.SsoErrorType;
import com.dropbox.core.p006v2.teamlog.SsoRemoveCertType;
import com.dropbox.core.p006v2.teamlog.SsoRemoveLoginUrlType;
import com.dropbox.core.p006v2.teamlog.SsoRemoveLogoutUrlType;
import com.dropbox.core.p006v2.teamlog.StartedEnterpriseAdminSessionType;
import com.dropbox.core.p006v2.teamlog.TeamActivityCreateReportFailType;
import com.dropbox.core.p006v2.teamlog.TeamActivityCreateReportType;
import com.dropbox.core.p006v2.teamlog.TeamExtensionsPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.TeamFolderChangeStatusType;
import com.dropbox.core.p006v2.teamlog.TeamFolderCreateType;
import com.dropbox.core.p006v2.teamlog.TeamFolderDowngradeType;
import com.dropbox.core.p006v2.teamlog.TeamFolderPermanentlyDeleteType;
import com.dropbox.core.p006v2.teamlog.TeamFolderRenameType;
import com.dropbox.core.p006v2.teamlog.TeamMergeFromType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestAcceptedShownToPrimaryTeamType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestAcceptedShownToSecondaryTeamType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestAcceptedType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestAutoCanceledType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestCanceledShownToPrimaryTeamType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestCanceledShownToSecondaryTeamType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestCanceledType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestExpiredShownToPrimaryTeamType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestExpiredShownToSecondaryTeamType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestExpiredType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestRejectedShownToPrimaryTeamType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestRejectedShownToSecondaryTeamType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestReminderShownToPrimaryTeamType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestReminderShownToSecondaryTeamType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestReminderType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestRevokedType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestSentShownToPrimaryTeamType;
import com.dropbox.core.p006v2.teamlog.TeamMergeRequestSentShownToSecondaryTeamType;
import com.dropbox.core.p006v2.teamlog.TeamMergeToType;
import com.dropbox.core.p006v2.teamlog.TeamProfileAddLogoType;
import com.dropbox.core.p006v2.teamlog.TeamProfileChangeDefaultLanguageType;
import com.dropbox.core.p006v2.teamlog.TeamProfileChangeLogoType;
import com.dropbox.core.p006v2.teamlog.TeamProfileChangeNameType;
import com.dropbox.core.p006v2.teamlog.TeamProfileRemoveLogoType;
import com.dropbox.core.p006v2.teamlog.TeamSelectiveSyncPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.TeamSelectiveSyncSettingsChangedType;
import com.dropbox.core.p006v2.teamlog.TeamSharingWhitelistSubjectsChangedType;
import com.dropbox.core.p006v2.teamlog.TfaAddBackupPhoneType;
import com.dropbox.core.p006v2.teamlog.TfaAddExceptionType;
import com.dropbox.core.p006v2.teamlog.TfaAddSecurityKeyType;
import com.dropbox.core.p006v2.teamlog.TfaChangeBackupPhoneType;
import com.dropbox.core.p006v2.teamlog.TfaChangePolicyType;
import com.dropbox.core.p006v2.teamlog.TfaChangeStatusType;
import com.dropbox.core.p006v2.teamlog.TfaRemoveBackupPhoneType;
import com.dropbox.core.p006v2.teamlog.TfaRemoveExceptionType;
import com.dropbox.core.p006v2.teamlog.TfaRemoveSecurityKeyType;
import com.dropbox.core.p006v2.teamlog.TfaResetType;
import com.dropbox.core.p006v2.teamlog.TwoAccountChangePolicyType;
import com.dropbox.core.p006v2.teamlog.ViewerInfoPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.WatermarkingPolicyChangedType;
import com.dropbox.core.p006v2.teamlog.WebSessionsChangeActiveSessionLimitType;
import com.dropbox.core.p006v2.teamlog.WebSessionsChangeFixedLengthPolicyType;
import com.dropbox.core.p006v2.teamlog.WebSessionsChangeIdleLengthPolicyType;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import net.p110sf.saxon.om.StandardNames;
import org.apache.http.HttpStatus;

/* loaded from: classes4.dex */
public final class EventType {
    public static final EventType OTHER = new EventType().m14979m7(Tag.OTHER);

    /* renamed from: A */
    public AccountCaptureChangeAvailabilityType f19331A;

    /* renamed from: A0 */
    public GroupRenameType f19332A0;

    /* renamed from: A1 */
    public BinderRemoveSectionType f19333A1;

    /* renamed from: A2 */
    public ExportMembersReportFailType f19334A2;

    /* renamed from: A3 */
    public SharedContentCopyType f19335A3;

    /* renamed from: A4 */
    public ShowcaseFileRemovedType f19336A4;

    /* renamed from: A5 */
    public FileRequestsChangePolicyType f19337A5;

    /* renamed from: A6 */
    public TeamMergeFromType f19338A6;

    /* renamed from: B */
    public AccountCaptureMigrateAccountType f19339B;

    /* renamed from: B0 */
    public LegalHoldsActivateAHoldType f19340B0;

    /* renamed from: B1 */
    public BinderRenamePageType f19341B1;

    /* renamed from: B2 */
    public ExternalSharingCreateReportType f19342B2;

    /* renamed from: B3 */
    public SharedContentDownloadType f19343B3;

    /* renamed from: B4 */
    public ShowcaseFileViewType f19344B4;

    /* renamed from: B5 */
    public FileRequestsEmailsEnabledType f19345B5;

    /* renamed from: B6 */
    public TeamMergeToType f19346B6;

    /* renamed from: C */
    public AccountCaptureNotificationEmailsSentType f19347C;

    /* renamed from: C0 */
    public LegalHoldsAddMembersType f19348C0;

    /* renamed from: C1 */
    public BinderRenameSectionType f19349C1;

    /* renamed from: C2 */
    public ExternalSharingReportFailedType f19350C2;

    /* renamed from: C3 */
    public SharedContentRelinquishMembershipType f19351C3;

    /* renamed from: C4 */
    public ShowcasePermanentlyDeletedType f19352C4;

    /* renamed from: C5 */
    public FileRequestsEmailsRestrictedToTeamOnlyType f19353C5;

    /* renamed from: C6 */
    public TeamProfileAddLogoType f19354C6;

    /* renamed from: D */
    public AccountCaptureRelinquishAccountType f19355D;

    /* renamed from: D0 */
    public LegalHoldsChangeHoldDetailsType f19356D0;

    /* renamed from: D1 */
    public BinderReorderPageType f19357D1;

    /* renamed from: D2 */
    public NoExpirationLinkGenCreateReportType f19358D2;

    /* renamed from: D3 */
    public SharedContentRemoveInviteesType f19359D3;

    /* renamed from: D4 */
    public ShowcasePostCommentType f19360D4;

    /* renamed from: D5 */
    public FileTransfersPolicyChangedType f19361D5;

    /* renamed from: D6 */
    public TeamProfileChangeDefaultLanguageType f19362D6;

    /* renamed from: E */
    public DisabledDomainInvitesType f19363E;

    /* renamed from: E0 */
    public LegalHoldsChangeHoldNameType f19364E0;

    /* renamed from: E1 */
    public BinderReorderSectionType f19365E1;

    /* renamed from: E2 */
    public NoExpirationLinkGenReportFailedType f19366E2;

    /* renamed from: E3 */
    public SharedContentRemoveLinkExpiryType f19367E3;

    /* renamed from: E4 */
    public ShowcaseRemoveMemberType f19368E4;

    /* renamed from: E5 */
    public GoogleSsoChangePolicyType f19369E5;

    /* renamed from: E6 */
    public TeamProfileChangeLogoType f19370E6;

    /* renamed from: F */
    public DomainInvitesApproveRequestToJoinTeamType f19371F;

    /* renamed from: F0 */
    public LegalHoldsExportAHoldType f19372F0;

    /* renamed from: F1 */
    public PaperContentAddMemberType f19373F1;

    /* renamed from: F2 */
    public NoPasswordLinkGenCreateReportType f19374F2;

    /* renamed from: F3 */
    public SharedContentRemoveLinkPasswordType f19375F3;

    /* renamed from: F4 */
    public ShowcaseRenamedType f19376F4;

    /* renamed from: F5 */
    public GroupUserManagementChangePolicyType f19377F5;

    /* renamed from: F6 */
    public TeamProfileChangeNameType f19378F6;

    /* renamed from: G */
    public DomainInvitesDeclineRequestToJoinTeamType f19379G;

    /* renamed from: G0 */
    public LegalHoldsExportCancelledType f19380G0;

    /* renamed from: G1 */
    public PaperContentAddToFolderType f19381G1;

    /* renamed from: G2 */
    public NoPasswordLinkGenReportFailedType f19382G2;

    /* renamed from: G3 */
    public SharedContentRemoveMemberType f19383G3;

    /* renamed from: G4 */
    public ShowcaseRequestAccessType f19384G4;

    /* renamed from: G5 */
    public IntegrationPolicyChangedType f19385G5;

    /* renamed from: G6 */
    public TeamProfileRemoveLogoType f19386G6;

    /* renamed from: H */
    public DomainInvitesEmailExistingUsersType f19387H;

    /* renamed from: H0 */
    public LegalHoldsExportDownloadedType f19388H0;

    /* renamed from: H1 */
    public PaperContentArchiveType f19389H1;

    /* renamed from: H2 */
    public NoPasswordLinkViewCreateReportType f19390H2;

    /* renamed from: H3 */
    public SharedContentRequestAccessType f19391H3;

    /* renamed from: H4 */
    public ShowcaseResolveCommentType f19392H4;

    /* renamed from: H5 */
    public MemberRequestsChangePolicyType f19393H5;

    /* renamed from: H6 */
    public TfaAddBackupPhoneType f19394H6;

    /* renamed from: I */
    public DomainInvitesRequestToJoinTeamType f19395I;

    /* renamed from: I0 */
    public LegalHoldsExportRemovedType f19396I0;

    /* renamed from: I1 */
    public PaperContentCreateType f19397I1;

    /* renamed from: I2 */
    public NoPasswordLinkViewReportFailedType f19398I2;

    /* renamed from: I3 */
    public SharedContentRestoreInviteesType f19399I3;

    /* renamed from: I4 */
    public ShowcaseRestoredType f19400I4;

    /* renamed from: I5 */
    public MemberSendInvitePolicyChangedType f19401I5;

    /* renamed from: I6 */
    public TfaAddSecurityKeyType f19402I6;

    /* renamed from: J */
    public DomainInvitesSetInviteNewUserPrefToNoType f19403J;

    /* renamed from: J0 */
    public LegalHoldsReleaseAHoldType f19404J0;

    /* renamed from: J1 */
    public PaperContentPermanentlyDeleteType f19405J1;

    /* renamed from: J2 */
    public OutdatedLinkViewCreateReportType f19406J2;

    /* renamed from: J3 */
    public SharedContentRestoreMemberType f19407J3;

    /* renamed from: J4 */
    public ShowcaseTrashedType f19408J4;

    /* renamed from: J5 */
    public MemberSpaceLimitsAddExceptionType f19409J5;

    /* renamed from: J6 */
    public TfaChangeBackupPhoneType f19410J6;

    /* renamed from: K */
    public DomainInvitesSetInviteNewUserPrefToYesType f19411K;

    /* renamed from: K0 */
    public LegalHoldsRemoveMembersType f19412K0;

    /* renamed from: K1 */
    public PaperContentRemoveFromFolderType f19413K1;

    /* renamed from: K2 */
    public OutdatedLinkViewReportFailedType f19414K2;

    /* renamed from: K3 */
    public SharedContentUnshareType f19415K3;

    /* renamed from: K4 */
    public ShowcaseTrashedDeprecatedType f19416K4;

    /* renamed from: K5 */
    public MemberSpaceLimitsChangeCapsTypePolicyType f19417K5;

    /* renamed from: K6 */
    public TfaChangeStatusType f19418K6;

    /* renamed from: L */
    public DomainVerificationAddDomainFailType f19419L;

    /* renamed from: L0 */
    public LegalHoldsReportAHoldType f19420L0;

    /* renamed from: L1 */
    public PaperContentRemoveMemberType f19421L1;

    /* renamed from: L2 */
    public PaperAdminExportStartType f19422L2;

    /* renamed from: L3 */
    public SharedContentViewType f19423L3;

    /* renamed from: L4 */
    public ShowcaseUnresolveCommentType f19424L4;

    /* renamed from: L5 */
    public MemberSpaceLimitsChangePolicyType f19425L5;

    /* renamed from: L6 */
    public TfaRemoveBackupPhoneType f19426L6;

    /* renamed from: M */
    public DomainVerificationAddDomainSuccessType f19427M;

    /* renamed from: M0 */
    public AccountLockOrUnlockedType f19428M0;

    /* renamed from: M1 */
    public PaperContentRenameType f19429M1;

    /* renamed from: M2 */
    public SmartSyncCreateAdminPrivilegeReportType f19430M2;

    /* renamed from: M3 */
    public SharedFolderChangeLinkPolicyType f19431M3;

    /* renamed from: M4 */
    public ShowcaseUntrashedType f19432M4;

    /* renamed from: M5 */
    public MemberSpaceLimitsRemoveExceptionType f19433M5;

    /* renamed from: M6 */
    public TfaRemoveSecurityKeyType f19434M6;

    /* renamed from: N */
    public DomainVerificationRemoveDomainType f19435N;

    /* renamed from: N0 */
    public EmmErrorType f19436N0;

    /* renamed from: N1 */
    public PaperContentRestoreType f19437N1;

    /* renamed from: N2 */
    public TeamActivityCreateReportType f19438N2;

    /* renamed from: N3 */
    public SharedFolderChangeMembersInheritancePolicyType f19439N3;

    /* renamed from: N4 */
    public ShowcaseUntrashedDeprecatedType f19440N4;

    /* renamed from: N5 */
    public MemberSuggestionsChangePolicyType f19441N5;

    /* renamed from: N6 */
    public TfaResetType f19442N6;

    /* renamed from: O */
    public EnabledDomainInvitesType f19443O;

    /* renamed from: O0 */
    public GuestAdminSignedInViaTrustedTeamsType f19444O0;

    /* renamed from: O1 */
    public PaperDocAddCommentType f19445O1;

    /* renamed from: O2 */
    public TeamActivityCreateReportFailType f19446O2;

    /* renamed from: O3 */
    public SharedFolderChangeMembersManagementPolicyType f19447O3;

    /* renamed from: O4 */
    public ShowcaseViewType f19448O4;

    /* renamed from: O5 */
    public MicrosoftOfficeAddinChangePolicyType f19449O5;

    /* renamed from: O6 */
    public ChangedEnterpriseAdminRoleType f19450O6;

    /* renamed from: P */
    public CreateFolderType f19451P;

    /* renamed from: P0 */
    public GuestAdminSignedOutViaTrustedTeamsType f19452P0;

    /* renamed from: P1 */
    public PaperDocChangeMemberRoleType f19453P1;

    /* renamed from: P2 */
    public CollectionShareType f19454P2;

    /* renamed from: P3 */
    public SharedFolderChangeMembersPolicyType f19455P3;

    /* renamed from: P4 */
    public SsoAddCertType f19456P4;

    /* renamed from: P5 */
    public NetworkControlChangePolicyType f19457P5;

    /* renamed from: P6 */
    public ChangedEnterpriseConnectedTeamStatusType f19458P6;

    /* renamed from: Q */
    public FileAddType f19459Q;

    /* renamed from: Q0 */
    public LoginFailType f19460Q0;

    /* renamed from: Q1 */
    public PaperDocChangeSharingPolicyType f19461Q1;

    /* renamed from: Q2 */
    public FileTransfersFileAddType f19462Q2;

    /* renamed from: Q3 */
    public SharedFolderCreateType f19463Q3;

    /* renamed from: Q4 */
    public SsoAddLoginUrlType f19464Q4;

    /* renamed from: Q5 */
    public PaperChangeDeploymentPolicyType f19465Q5;

    /* renamed from: Q6 */
    public EndedEnterpriseAdminSessionType f19466Q6;

    /* renamed from: R */
    public FileCopyType f19467R;

    /* renamed from: R0 */
    public LoginSuccessType f19468R0;

    /* renamed from: R1 */
    public PaperDocChangeSubscriptionType f19469R1;

    /* renamed from: R2 */
    public FileTransfersTransferDeleteType f19470R2;

    /* renamed from: R3 */
    public SharedFolderDeclineInvitationType f19471R3;

    /* renamed from: R4 */
    public SsoAddLogoutUrlType f19472R4;

    /* renamed from: R5 */
    public PaperChangeMemberLinkPolicyType f19473R5;

    /* renamed from: R6 */
    public EndedEnterpriseAdminSessionDeprecatedType f19474R6;

    /* renamed from: S */
    public FileDeleteType f19475S;

    /* renamed from: S0 */
    public LogoutType f19476S0;

    /* renamed from: S1 */
    public PaperDocDeletedType f19477S1;

    /* renamed from: S2 */
    public FileTransfersTransferDownloadType f19478S2;

    /* renamed from: S3 */
    public SharedFolderMountType f19479S3;

    /* renamed from: S4 */
    public SsoChangeCertType f19480S4;

    /* renamed from: S5 */
    public PaperChangeMemberPolicyType f19481S5;

    /* renamed from: S6 */
    public EnterpriseSettingsLockingType f19482S6;

    /* renamed from: T */
    public FileDownloadType f19483T;

    /* renamed from: T0 */
    public ResellerSupportSessionEndType f19484T0;

    /* renamed from: T1 */
    public PaperDocDeleteCommentType f19485T1;

    /* renamed from: T2 */
    public FileTransfersTransferSendType f19486T2;

    /* renamed from: T3 */
    public SharedFolderNestType f19487T3;

    /* renamed from: T4 */
    public SsoChangeLoginUrlType f19488T4;

    /* renamed from: T5 */
    public PaperChangePolicyType f19489T5;

    /* renamed from: T6 */
    public GuestAdminChangeStatusType f19490T6;

    /* renamed from: U */
    public FileEditType f19491U;

    /* renamed from: U0 */
    public ResellerSupportSessionStartType f19492U0;

    /* renamed from: U1 */
    public PaperDocDownloadType f19493U1;

    /* renamed from: U2 */
    public FileTransfersTransferViewType f19494U2;

    /* renamed from: U3 */
    public SharedFolderTransferOwnershipType f19495U3;

    /* renamed from: U4 */
    public SsoChangeLogoutUrlType f19496U4;

    /* renamed from: U5 */
    public PaperDefaultFolderPolicyChangedType f19497U5;

    /* renamed from: U6 */
    public StartedEnterpriseAdminSessionType f19498U6;

    /* renamed from: V */
    public FileGetCopyReferenceType f19499V;

    /* renamed from: V0 */
    public SignInAsSessionEndType f19500V0;

    /* renamed from: V1 */
    public PaperDocEditType f19501V1;

    /* renamed from: V2 */
    public NoteAclInviteOnlyType f19502V2;

    /* renamed from: V3 */
    public SharedFolderUnmountType f19503V3;

    /* renamed from: V4 */
    public SsoChangeSamlIdentityModeType f19504V4;

    /* renamed from: V5 */
    public PaperDesktopPolicyChangedType f19505V5;

    /* renamed from: V6 */
    public TeamMergeRequestAcceptedType f19506V6;

    /* renamed from: W */
    public FileLockingLockStatusChangedType f19507W;

    /* renamed from: W0 */
    public SignInAsSessionStartType f19508W0;

    /* renamed from: W1 */
    public PaperDocEditCommentType f19509W1;

    /* renamed from: W2 */
    public NoteAclLinkType f19510W2;

    /* renamed from: W3 */
    public SharedLinkAddExpiryType f19511W3;

    /* renamed from: W4 */
    public SsoRemoveCertType f19512W4;

    /* renamed from: W5 */
    public PaperEnabledUsersGroupAdditionType f19513W5;

    /* renamed from: W6 */
    public TeamMergeRequestAcceptedShownToPrimaryTeamType f19514W6;

    /* renamed from: X */
    public FileMoveType f19515X;

    /* renamed from: X0 */
    public SsoErrorType f19516X0;

    /* renamed from: X1 */
    public PaperDocFollowedType f19517X1;

    /* renamed from: X2 */
    public NoteAclTeamLinkType f19518X2;

    /* renamed from: X3 */
    public SharedLinkChangeExpiryType f19519X3;

    /* renamed from: X4 */
    public SsoRemoveLoginUrlType f19520X4;

    /* renamed from: X5 */
    public PaperEnabledUsersGroupRemovalType f19521X5;

    /* renamed from: X6 */
    public TeamMergeRequestAcceptedShownToSecondaryTeamType f19522X6;

    /* renamed from: Y */
    public FilePermanentlyDeleteType f19523Y;

    /* renamed from: Y0 */
    public CreateTeamInviteLinkType f19524Y0;

    /* renamed from: Y1 */
    public PaperDocMentionType f19525Y1;

    /* renamed from: Y2 */
    public NoteSharedType f19526Y2;

    /* renamed from: Y3 */
    public SharedLinkChangeVisibilityType f19527Y3;

    /* renamed from: Y4 */
    public SsoRemoveLogoutUrlType f19528Y4;

    /* renamed from: Y5 */
    public PasswordStrengthRequirementsChangePolicyType f19529Y5;

    /* renamed from: Y6 */
    public TeamMergeRequestAutoCanceledType f19530Y6;

    /* renamed from: Z */
    public FilePreviewType f19531Z;

    /* renamed from: Z0 */
    public DeleteTeamInviteLinkType f19532Z0;

    /* renamed from: Z1 */
    public PaperDocOwnershipChangedType f19533Z1;

    /* renamed from: Z2 */
    public NoteShareReceiveType f19534Z2;

    /* renamed from: Z3 */
    public SharedLinkCopyType f19535Z3;

    /* renamed from: Z4 */
    public TeamFolderChangeStatusType f19536Z4;

    /* renamed from: Z5 */
    public PermanentDeleteChangePolicyType f19537Z5;

    /* renamed from: Z6 */
    public TeamMergeRequestCanceledType f19538Z6;

    /* renamed from: a */
    public Tag f19539a;

    /* renamed from: a0 */
    public FileRenameType f19540a0;

    /* renamed from: a1 */
    public MemberAddExternalIdType f19541a1;

    /* renamed from: a2 */
    public PaperDocRequestAccessType f19542a2;

    /* renamed from: a3 */
    public OpenNoteSharedType f19543a3;

    /* renamed from: a4 */
    public SharedLinkCreateType f19544a4;

    /* renamed from: a5 */
    public TeamFolderCreateType f19545a5;

    /* renamed from: a6 */
    public ResellerSupportChangePolicyType f19546a6;

    /* renamed from: a7 */
    public TeamMergeRequestCanceledShownToPrimaryTeamType f19547a7;

    /* renamed from: b */
    public AppLinkTeamType f19548b;

    /* renamed from: b0 */
    public FileRestoreType f19549b0;

    /* renamed from: b1 */
    public MemberAddNameType f19550b1;

    /* renamed from: b2 */
    public PaperDocResolveCommentType f19551b2;

    /* renamed from: b3 */
    public SfAddGroupType f19552b3;

    /* renamed from: b4 */
    public SharedLinkDisableType f19553b4;

    /* renamed from: b5 */
    public TeamFolderDowngradeType f19554b5;

    /* renamed from: b6 */
    public RewindPolicyChangedType f19555b6;

    /* renamed from: b7 */
    public TeamMergeRequestCanceledShownToSecondaryTeamType f19556b7;

    /* renamed from: c */
    public AppLinkUserType f19557c;

    /* renamed from: c0 */
    public FileRevertType f19558c0;

    /* renamed from: c1 */
    public MemberChangeAdminRoleType f19559c1;

    /* renamed from: c2 */
    public PaperDocRevertType f19560c2;

    /* renamed from: c3 */
    public SfAllowNonMembersToViewSharedLinksType f19561c3;

    /* renamed from: c4 */
    public SharedLinkDownloadType f19562c4;

    /* renamed from: c5 */
    public TeamFolderPermanentlyDeleteType f19563c5;

    /* renamed from: c6 */
    public SendForSignaturePolicyChangedType f19564c6;

    /* renamed from: c7 */
    public TeamMergeRequestExpiredType f19565c7;

    /* renamed from: d */
    public AppUnlinkTeamType f19566d;

    /* renamed from: d0 */
    public FileRollbackChangesType f19567d0;

    /* renamed from: d1 */
    public MemberChangeEmailType f19568d1;

    /* renamed from: d2 */
    public PaperDocSlackShareType f19569d2;

    /* renamed from: d3 */
    public SfExternalInviteWarnType f19570d3;

    /* renamed from: d4 */
    public SharedLinkRemoveExpiryType f19571d4;

    /* renamed from: d5 */
    public TeamFolderRenameType f19572d5;

    /* renamed from: d6 */
    public SharingChangeFolderJoinPolicyType f19573d6;

    /* renamed from: d7 */
    public TeamMergeRequestExpiredShownToPrimaryTeamType f19574d7;

    /* renamed from: e */
    public AppUnlinkUserType f19575e;

    /* renamed from: e0 */
    public FileSaveCopyReferenceType f19576e0;

    /* renamed from: e1 */
    public MemberChangeExternalIdType f19577e1;

    /* renamed from: e2 */
    public PaperDocTeamInviteType f19578e2;

    /* renamed from: e3 */
    public SfFbInviteType f19579e3;

    /* renamed from: e4 */
    public SharedLinkSettingsAddExpirationType f19580e4;

    /* renamed from: e5 */
    public TeamSelectiveSyncSettingsChangedType f19581e5;

    /* renamed from: e6 */
    public SharingChangeLinkPolicyType f19582e6;

    /* renamed from: e7 */
    public TeamMergeRequestExpiredShownToSecondaryTeamType f19583e7;

    /* renamed from: f */
    public IntegrationConnectedType f19584f;

    /* renamed from: f0 */
    public FolderOverviewDescriptionChangedType f19585f0;

    /* renamed from: f1 */
    public MemberChangeMembershipTypeType f19586f1;

    /* renamed from: f2 */
    public PaperDocTrashedType f19587f2;

    /* renamed from: f3 */
    public SfFbInviteChangeRoleType f19588f3;

    /* renamed from: f4 */
    public SharedLinkSettingsAddPasswordType f19589f4;

    /* renamed from: f5 */
    public AccountCaptureChangePolicyType f19590f5;

    /* renamed from: f6 */
    public SharingChangeMemberPolicyType f19591f6;

    /* renamed from: f7 */
    public TeamMergeRequestRejectedShownToPrimaryTeamType f19592f7;

    /* renamed from: g */
    public IntegrationDisconnectedType f19593g;

    /* renamed from: g0 */
    public FolderOverviewItemPinnedType f19594g0;

    /* renamed from: g1 */
    public MemberChangeNameType f19595g1;

    /* renamed from: g2 */
    public PaperDocUnresolveCommentType f19596g2;

    /* renamed from: g3 */
    public SfFbUninviteType f19597g3;

    /* renamed from: g4 */
    public SharedLinkSettingsAllowDownloadDisabledType f19598g4;

    /* renamed from: g5 */
    public AllowDownloadDisabledType f19599g5;

    /* renamed from: g6 */
    public ShowcaseChangeDownloadPolicyType f19600g6;

    /* renamed from: g7 */
    public TeamMergeRequestRejectedShownToSecondaryTeamType f19601g7;

    /* renamed from: h */
    public FileAddCommentType f19602h;

    /* renamed from: h0 */
    public FolderOverviewItemUnpinnedType f19603h0;

    /* renamed from: h1 */
    public MemberChangeStatusType f19604h1;

    /* renamed from: h2 */
    public PaperDocUntrashedType f19605h2;

    /* renamed from: h3 */
    public SfInviteGroupType f19606h3;

    /* renamed from: h4 */
    public SharedLinkSettingsAllowDownloadEnabledType f19607h4;

    /* renamed from: h5 */
    public AllowDownloadEnabledType f19608h5;

    /* renamed from: h6 */
    public ShowcaseChangeEnabledPolicyType f19609h6;

    /* renamed from: h7 */
    public TeamMergeRequestReminderType f19610h7;

    /* renamed from: i */
    public FileChangeCommentSubscriptionType f19611i;

    /* renamed from: i0 */
    public RewindFolderType f19612i0;

    /* renamed from: i1 */
    public MemberDeleteManualContactsType f19613i1;

    /* renamed from: i2 */
    public PaperDocViewType f19614i2;

    /* renamed from: i3 */
    public SfTeamGrantAccessType f19615i3;

    /* renamed from: i4 */
    public SharedLinkSettingsChangeAudienceType f19616i4;

    /* renamed from: i5 */
    public CameraUploadsPolicyChangedType f19617i5;

    /* renamed from: i6 */
    public ShowcaseChangeExternalSharingPolicyType f19618i6;

    /* renamed from: i7 */
    public TeamMergeRequestReminderShownToPrimaryTeamType f19619i7;

    /* renamed from: j */
    public FileDeleteCommentType f19620j;

    /* renamed from: j0 */
    public FileRequestChangeType f19621j0;

    /* renamed from: j1 */
    public MemberDeleteProfilePhotoType f19622j1;

    /* renamed from: j2 */
    public PaperExternalViewAllowType f19623j2;

    /* renamed from: j3 */
    public SfTeamInviteType f19624j3;

    /* renamed from: j4 */
    public SharedLinkSettingsChangeExpirationType f19625j4;

    /* renamed from: j5 */
    public ContentAdministrationPolicyChangedType f19626j5;

    /* renamed from: j6 */
    public SmarterSmartSyncPolicyChangedType f19627j6;

    /* renamed from: j7 */
    public TeamMergeRequestReminderShownToSecondaryTeamType f19628j7;

    /* renamed from: k */
    public FileEditCommentType f19629k;

    /* renamed from: k0 */
    public FileRequestCloseType f19630k0;

    /* renamed from: k1 */
    public MemberPermanentlyDeleteAccountContentsType f19631k1;

    /* renamed from: k2 */
    public PaperExternalViewDefaultTeamType f19632k2;

    /* renamed from: k3 */
    public SfTeamInviteChangeRoleType f19633k3;

    /* renamed from: k4 */
    public SharedLinkSettingsChangePasswordType f19634k4;

    /* renamed from: k5 */
    public DataPlacementRestrictionChangePolicyType f19635k5;

    /* renamed from: k6 */
    public SmartSyncChangePolicyType f19636k6;

    /* renamed from: k7 */
    public TeamMergeRequestRevokedType f19637k7;

    /* renamed from: l */
    public FileLikeCommentType f19638l;

    /* renamed from: l0 */
    public FileRequestCreateType f19639l0;

    /* renamed from: l1 */
    public MemberRemoveExternalIdType f19640l1;

    /* renamed from: l2 */
    public PaperExternalViewForbidType f19641l2;

    /* renamed from: l3 */
    public SfTeamJoinType f19642l3;

    /* renamed from: l4 */
    public SharedLinkSettingsRemoveExpirationType f19643l4;

    /* renamed from: l5 */
    public DataPlacementRestrictionSatisfyPolicyType f19644l5;

    /* renamed from: l6 */
    public SmartSyncNotOptOutType f19645l6;

    /* renamed from: l7 */
    public TeamMergeRequestSentShownToPrimaryTeamType f19646l7;

    /* renamed from: m */
    public FileResolveCommentType f19647m;

    /* renamed from: m0 */
    public FileRequestDeleteType f19648m0;

    /* renamed from: m1 */
    public MemberSetProfilePhotoType f19649m1;

    /* renamed from: m2 */
    public PaperFolderChangeSubscriptionType f19650m2;

    /* renamed from: m3 */
    public SfTeamJoinFromOobLinkType f19651m3;

    /* renamed from: m4 */
    public SharedLinkSettingsRemovePasswordType f19652m4;

    /* renamed from: m5 */
    public DeviceApprovalsAddExceptionType f19653m5;

    /* renamed from: m6 */
    public SmartSyncOptOutType f19654m6;

    /* renamed from: m7 */
    public TeamMergeRequestSentShownToSecondaryTeamType f19655m7;

    /* renamed from: n */
    public FileUnlikeCommentType f19656n;

    /* renamed from: n0 */
    public FileRequestReceiveFileType f19657n0;

    /* renamed from: n1 */
    public MemberSpaceLimitsAddCustomQuotaType f19658n1;

    /* renamed from: n2 */
    public PaperFolderDeletedType f19659n2;

    /* renamed from: n3 */
    public SfTeamUninviteType f19660n3;

    /* renamed from: n4 */
    public SharedLinkShareType f19661n4;

    /* renamed from: n5 */
    public DeviceApprovalsChangeDesktopPolicyType f19662n5;

    /* renamed from: n6 */
    public SsoChangePolicyType f19663n6;

    /* renamed from: o */
    public FileUnresolveCommentType f19664o;

    /* renamed from: o0 */
    public GroupAddExternalIdType f19665o0;

    /* renamed from: o1 */
    public MemberSpaceLimitsChangeCustomQuotaType f19666o1;

    /* renamed from: o2 */
    public PaperFolderFollowedType f19667o2;

    /* renamed from: o3 */
    public SharedContentAddInviteesType f19668o3;

    /* renamed from: o4 */
    public SharedLinkViewType f19669o4;

    /* renamed from: o5 */
    public DeviceApprovalsChangeMobilePolicyType f19670o5;

    /* renamed from: o6 */
    public TeamExtensionsPolicyChangedType f19671o6;

    /* renamed from: p */
    public DeviceChangeIpDesktopType f19672p;

    /* renamed from: p0 */
    public GroupAddMemberType f19673p0;

    /* renamed from: p1 */
    public MemberSpaceLimitsChangeStatusType f19674p1;

    /* renamed from: p2 */
    public PaperFolderTeamInviteType f19675p2;

    /* renamed from: p3 */
    public SharedContentAddLinkExpiryType f19676p3;

    /* renamed from: p4 */
    public SharedNoteOpenedType f19677p4;

    /* renamed from: p5 */
    public DeviceApprovalsChangeOverageActionType f19678p5;

    /* renamed from: p6 */
    public TeamSelectiveSyncPolicyChangedType f19679p6;

    /* renamed from: q */
    public DeviceChangeIpMobileType f19680q;

    /* renamed from: q0 */
    public GroupChangeExternalIdType f19681q0;

    /* renamed from: q1 */
    public MemberSpaceLimitsRemoveCustomQuotaType f19682q1;

    /* renamed from: q2 */
    public PaperPublishedLinkChangePermissionType f19683q2;

    /* renamed from: q3 */
    public SharedContentAddLinkPasswordType f19684q3;

    /* renamed from: q4 */
    public ShmodelGroupShareType f19685q4;

    /* renamed from: q5 */
    public DeviceApprovalsChangeUnlinkActionType f19686q5;

    /* renamed from: q6 */
    public TeamSharingWhitelistSubjectsChangedType f19687q6;

    /* renamed from: r */
    public DeviceChangeIpWebType f19688r;

    /* renamed from: r0 */
    public GroupChangeManagementTypeType f19689r0;

    /* renamed from: r1 */
    public MemberSuggestType f19690r1;

    /* renamed from: r2 */
    public PaperPublishedLinkCreateType f19691r2;

    /* renamed from: r3 */
    public SharedContentAddMemberType f19692r3;

    /* renamed from: r4 */
    public ShowcaseAccessGrantedType f19693r4;

    /* renamed from: r5 */
    public DeviceApprovalsRemoveExceptionType f19694r5;

    /* renamed from: r6 */
    public TfaAddExceptionType f19695r6;

    /* renamed from: s */
    public DeviceDeleteOnUnlinkFailType f19696s;

    /* renamed from: s0 */
    public GroupChangeMemberRoleType f19697s0;

    /* renamed from: s1 */
    public MemberTransferAccountContentsType f19698s1;

    /* renamed from: s2 */
    public PaperPublishedLinkDisabledType f19699s2;

    /* renamed from: s3 */
    public SharedContentChangeDownloadsPolicyType f19700s3;

    /* renamed from: s4 */
    public ShowcaseAddMemberType f19701s4;

    /* renamed from: s5 */
    public DirectoryRestrictionsAddMembersType f19702s5;

    /* renamed from: s6 */
    public TfaChangePolicyType f19703s6;

    /* renamed from: t */
    public DeviceDeleteOnUnlinkSuccessType f19704t;

    /* renamed from: t0 */
    public GroupCreateType f19705t0;

    /* renamed from: t1 */
    public PendingSecondaryEmailAddedType f19706t1;

    /* renamed from: t2 */
    public PaperPublishedLinkViewType f19707t2;

    /* renamed from: t3 */
    public SharedContentChangeInviteeRoleType f19708t3;

    /* renamed from: t4 */
    public ShowcaseArchivedType f19709t4;

    /* renamed from: t5 */
    public DirectoryRestrictionsRemoveMembersType f19710t5;

    /* renamed from: t6 */
    public TfaRemoveExceptionType f19711t6;

    /* renamed from: u */
    public DeviceLinkFailType f19712u;

    /* renamed from: u0 */
    public GroupDeleteType f19713u0;

    /* renamed from: u1 */
    public SecondaryEmailDeletedType f19714u1;

    /* renamed from: u2 */
    public PasswordChangeType f19715u2;

    /* renamed from: u3 */
    public SharedContentChangeLinkAudienceType f19716u3;

    /* renamed from: u4 */
    public ShowcaseCreatedType f19717u4;

    /* renamed from: u5 */
    public EmmAddExceptionType f19718u5;

    /* renamed from: u6 */
    public TwoAccountChangePolicyType f19719u6;

    /* renamed from: v */
    public DeviceLinkSuccessType f19720v;

    /* renamed from: v0 */
    public GroupDescriptionUpdatedType f19721v0;

    /* renamed from: v1 */
    public SecondaryEmailVerifiedType f19722v1;

    /* renamed from: v2 */
    public PasswordResetType f19723v2;

    /* renamed from: v3 */
    public SharedContentChangeLinkExpiryType f19724v3;

    /* renamed from: v4 */
    public ShowcaseDeleteCommentType f19725v4;

    /* renamed from: v5 */
    public EmmChangePolicyType f19726v5;

    /* renamed from: v6 */
    public ViewerInfoPolicyChangedType f19727v6;

    /* renamed from: w */
    public DeviceManagementDisabledType f19728w;

    /* renamed from: w0 */
    public GroupJoinPolicyUpdatedType f19729w0;

    /* renamed from: w1 */
    public SecondaryMailsPolicyChangedType f19730w1;

    /* renamed from: w2 */
    public PasswordResetAllType f19731w2;

    /* renamed from: w3 */
    public SharedContentChangeLinkPasswordType f19732w3;

    /* renamed from: w4 */
    public ShowcaseEditedType f19733w4;

    /* renamed from: w5 */
    public EmmRemoveExceptionType f19734w5;

    /* renamed from: w6 */
    public WatermarkingPolicyChangedType f19735w6;

    /* renamed from: x */
    public DeviceManagementEnabledType f19736x;

    /* renamed from: x0 */
    public GroupMovedType f19737x0;

    /* renamed from: x1 */
    public BinderAddPageType f19738x1;

    /* renamed from: x2 */
    public EmmCreateExceptionsReportType f19739x2;

    /* renamed from: x3 */
    public SharedContentChangeMemberRoleType f19740x3;

    /* renamed from: x4 */
    public ShowcaseEditCommentType f19741x4;

    /* renamed from: x5 */
    public ExtendedVersionHistoryChangePolicyType f19742x5;

    /* renamed from: x6 */
    public WebSessionsChangeActiveSessionLimitType f19743x6;

    /* renamed from: y */
    public DeviceUnlinkType f19744y;

    /* renamed from: y0 */
    public GroupRemoveExternalIdType f19745y0;

    /* renamed from: y1 */
    public BinderAddSectionType f19746y1;

    /* renamed from: y2 */
    public EmmCreateUsageReportType f19747y2;

    /* renamed from: y3 */
    public SharedContentChangeViewerInfoPolicyType f19748y3;

    /* renamed from: y4 */
    public ShowcaseFileAddedType f19749y4;

    /* renamed from: y5 */
    public FileCommentsChangePolicyType f19750y5;

    /* renamed from: y6 */
    public WebSessionsChangeFixedLengthPolicyType f19751y6;

    /* renamed from: z */
    public EmmRefreshAuthTokenType f19752z;

    /* renamed from: z0 */
    public GroupRemoveMemberType f19753z0;

    /* renamed from: z1 */
    public BinderRemovePageType f19754z1;

    /* renamed from: z2 */
    public ExportMembersReportType f19755z2;

    /* renamed from: z3 */
    public SharedContentClaimInvitationType f19756z3;

    /* renamed from: z4 */
    public ShowcaseFileDownloadType f19757z4;

    /* renamed from: z5 */
    public FileLockingPolicyChangedType f19758z5;

    /* renamed from: z6 */
    public WebSessionsChangeIdleLengthPolicyType f19759z6;

    /* loaded from: classes4.dex */
    public enum Tag {
        APP_LINK_TEAM,
        APP_LINK_USER,
        APP_UNLINK_TEAM,
        APP_UNLINK_USER,
        INTEGRATION_CONNECTED,
        INTEGRATION_DISCONNECTED,
        FILE_ADD_COMMENT,
        FILE_CHANGE_COMMENT_SUBSCRIPTION,
        FILE_DELETE_COMMENT,
        FILE_EDIT_COMMENT,
        FILE_LIKE_COMMENT,
        FILE_RESOLVE_COMMENT,
        FILE_UNLIKE_COMMENT,
        FILE_UNRESOLVE_COMMENT,
        DEVICE_CHANGE_IP_DESKTOP,
        DEVICE_CHANGE_IP_MOBILE,
        DEVICE_CHANGE_IP_WEB,
        DEVICE_DELETE_ON_UNLINK_FAIL,
        DEVICE_DELETE_ON_UNLINK_SUCCESS,
        DEVICE_LINK_FAIL,
        DEVICE_LINK_SUCCESS,
        DEVICE_MANAGEMENT_DISABLED,
        DEVICE_MANAGEMENT_ENABLED,
        DEVICE_UNLINK,
        EMM_REFRESH_AUTH_TOKEN,
        ACCOUNT_CAPTURE_CHANGE_AVAILABILITY,
        ACCOUNT_CAPTURE_MIGRATE_ACCOUNT,
        ACCOUNT_CAPTURE_NOTIFICATION_EMAILS_SENT,
        ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT,
        DISABLED_DOMAIN_INVITES,
        DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM,
        DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM,
        DOMAIN_INVITES_EMAIL_EXISTING_USERS,
        DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM,
        DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO,
        DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES,
        DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL,
        DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS,
        DOMAIN_VERIFICATION_REMOVE_DOMAIN,
        ENABLED_DOMAIN_INVITES,
        CREATE_FOLDER,
        FILE_ADD,
        FILE_COPY,
        FILE_DELETE,
        FILE_DOWNLOAD,
        FILE_EDIT,
        FILE_GET_COPY_REFERENCE,
        FILE_LOCKING_LOCK_STATUS_CHANGED,
        FILE_MOVE,
        FILE_PERMANENTLY_DELETE,
        FILE_PREVIEW,
        FILE_RENAME,
        FILE_RESTORE,
        FILE_REVERT,
        FILE_ROLLBACK_CHANGES,
        FILE_SAVE_COPY_REFERENCE,
        FOLDER_OVERVIEW_DESCRIPTION_CHANGED,
        FOLDER_OVERVIEW_ITEM_PINNED,
        FOLDER_OVERVIEW_ITEM_UNPINNED,
        REWIND_FOLDER,
        FILE_REQUEST_CHANGE,
        FILE_REQUEST_CLOSE,
        FILE_REQUEST_CREATE,
        FILE_REQUEST_DELETE,
        FILE_REQUEST_RECEIVE_FILE,
        GROUP_ADD_EXTERNAL_ID,
        GROUP_ADD_MEMBER,
        GROUP_CHANGE_EXTERNAL_ID,
        GROUP_CHANGE_MANAGEMENT_TYPE,
        GROUP_CHANGE_MEMBER_ROLE,
        GROUP_CREATE,
        GROUP_DELETE,
        GROUP_DESCRIPTION_UPDATED,
        GROUP_JOIN_POLICY_UPDATED,
        GROUP_MOVED,
        GROUP_REMOVE_EXTERNAL_ID,
        GROUP_REMOVE_MEMBER,
        GROUP_RENAME,
        LEGAL_HOLDS_ACTIVATE_A_HOLD,
        LEGAL_HOLDS_ADD_MEMBERS,
        LEGAL_HOLDS_CHANGE_HOLD_DETAILS,
        LEGAL_HOLDS_CHANGE_HOLD_NAME,
        LEGAL_HOLDS_EXPORT_A_HOLD,
        LEGAL_HOLDS_EXPORT_CANCELLED,
        LEGAL_HOLDS_EXPORT_DOWNLOADED,
        LEGAL_HOLDS_EXPORT_REMOVED,
        LEGAL_HOLDS_RELEASE_A_HOLD,
        LEGAL_HOLDS_REMOVE_MEMBERS,
        LEGAL_HOLDS_REPORT_A_HOLD,
        ACCOUNT_LOCK_OR_UNLOCKED,
        EMM_ERROR,
        GUEST_ADMIN_SIGNED_IN_VIA_TRUSTED_TEAMS,
        GUEST_ADMIN_SIGNED_OUT_VIA_TRUSTED_TEAMS,
        LOGIN_FAIL,
        LOGIN_SUCCESS,
        LOGOUT,
        RESELLER_SUPPORT_SESSION_END,
        RESELLER_SUPPORT_SESSION_START,
        SIGN_IN_AS_SESSION_END,
        SIGN_IN_AS_SESSION_START,
        SSO_ERROR,
        CREATE_TEAM_INVITE_LINK,
        DELETE_TEAM_INVITE_LINK,
        MEMBER_ADD_EXTERNAL_ID,
        MEMBER_ADD_NAME,
        MEMBER_CHANGE_ADMIN_ROLE,
        MEMBER_CHANGE_EMAIL,
        MEMBER_CHANGE_EXTERNAL_ID,
        MEMBER_CHANGE_MEMBERSHIP_TYPE,
        MEMBER_CHANGE_NAME,
        MEMBER_CHANGE_STATUS,
        MEMBER_DELETE_MANUAL_CONTACTS,
        MEMBER_DELETE_PROFILE_PHOTO,
        MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS,
        MEMBER_REMOVE_EXTERNAL_ID,
        MEMBER_SET_PROFILE_PHOTO,
        MEMBER_SPACE_LIMITS_ADD_CUSTOM_QUOTA,
        MEMBER_SPACE_LIMITS_CHANGE_CUSTOM_QUOTA,
        MEMBER_SPACE_LIMITS_CHANGE_STATUS,
        MEMBER_SPACE_LIMITS_REMOVE_CUSTOM_QUOTA,
        MEMBER_SUGGEST,
        MEMBER_TRANSFER_ACCOUNT_CONTENTS,
        PENDING_SECONDARY_EMAIL_ADDED,
        SECONDARY_EMAIL_DELETED,
        SECONDARY_EMAIL_VERIFIED,
        SECONDARY_MAILS_POLICY_CHANGED,
        BINDER_ADD_PAGE,
        BINDER_ADD_SECTION,
        BINDER_REMOVE_PAGE,
        BINDER_REMOVE_SECTION,
        BINDER_RENAME_PAGE,
        BINDER_RENAME_SECTION,
        BINDER_REORDER_PAGE,
        BINDER_REORDER_SECTION,
        PAPER_CONTENT_ADD_MEMBER,
        PAPER_CONTENT_ADD_TO_FOLDER,
        PAPER_CONTENT_ARCHIVE,
        PAPER_CONTENT_CREATE,
        PAPER_CONTENT_PERMANENTLY_DELETE,
        PAPER_CONTENT_REMOVE_FROM_FOLDER,
        PAPER_CONTENT_REMOVE_MEMBER,
        PAPER_CONTENT_RENAME,
        PAPER_CONTENT_RESTORE,
        PAPER_DOC_ADD_COMMENT,
        PAPER_DOC_CHANGE_MEMBER_ROLE,
        PAPER_DOC_CHANGE_SHARING_POLICY,
        PAPER_DOC_CHANGE_SUBSCRIPTION,
        PAPER_DOC_DELETED,
        PAPER_DOC_DELETE_COMMENT,
        PAPER_DOC_DOWNLOAD,
        PAPER_DOC_EDIT,
        PAPER_DOC_EDIT_COMMENT,
        PAPER_DOC_FOLLOWED,
        PAPER_DOC_MENTION,
        PAPER_DOC_OWNERSHIP_CHANGED,
        PAPER_DOC_REQUEST_ACCESS,
        PAPER_DOC_RESOLVE_COMMENT,
        PAPER_DOC_REVERT,
        PAPER_DOC_SLACK_SHARE,
        PAPER_DOC_TEAM_INVITE,
        PAPER_DOC_TRASHED,
        PAPER_DOC_UNRESOLVE_COMMENT,
        PAPER_DOC_UNTRASHED,
        PAPER_DOC_VIEW,
        PAPER_EXTERNAL_VIEW_ALLOW,
        PAPER_EXTERNAL_VIEW_DEFAULT_TEAM,
        PAPER_EXTERNAL_VIEW_FORBID,
        PAPER_FOLDER_CHANGE_SUBSCRIPTION,
        PAPER_FOLDER_DELETED,
        PAPER_FOLDER_FOLLOWED,
        PAPER_FOLDER_TEAM_INVITE,
        PAPER_PUBLISHED_LINK_CHANGE_PERMISSION,
        PAPER_PUBLISHED_LINK_CREATE,
        PAPER_PUBLISHED_LINK_DISABLED,
        PAPER_PUBLISHED_LINK_VIEW,
        PASSWORD_CHANGE,
        PASSWORD_RESET,
        PASSWORD_RESET_ALL,
        EMM_CREATE_EXCEPTIONS_REPORT,
        EMM_CREATE_USAGE_REPORT,
        EXPORT_MEMBERS_REPORT,
        EXPORT_MEMBERS_REPORT_FAIL,
        EXTERNAL_SHARING_CREATE_REPORT,
        EXTERNAL_SHARING_REPORT_FAILED,
        NO_EXPIRATION_LINK_GEN_CREATE_REPORT,
        NO_EXPIRATION_LINK_GEN_REPORT_FAILED,
        NO_PASSWORD_LINK_GEN_CREATE_REPORT,
        NO_PASSWORD_LINK_GEN_REPORT_FAILED,
        NO_PASSWORD_LINK_VIEW_CREATE_REPORT,
        NO_PASSWORD_LINK_VIEW_REPORT_FAILED,
        OUTDATED_LINK_VIEW_CREATE_REPORT,
        OUTDATED_LINK_VIEW_REPORT_FAILED,
        PAPER_ADMIN_EXPORT_START,
        SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT,
        TEAM_ACTIVITY_CREATE_REPORT,
        TEAM_ACTIVITY_CREATE_REPORT_FAIL,
        COLLECTION_SHARE,
        FILE_TRANSFERS_FILE_ADD,
        FILE_TRANSFERS_TRANSFER_DELETE,
        FILE_TRANSFERS_TRANSFER_DOWNLOAD,
        FILE_TRANSFERS_TRANSFER_SEND,
        FILE_TRANSFERS_TRANSFER_VIEW,
        NOTE_ACL_INVITE_ONLY,
        NOTE_ACL_LINK,
        NOTE_ACL_TEAM_LINK,
        NOTE_SHARED,
        NOTE_SHARE_RECEIVE,
        OPEN_NOTE_SHARED,
        SF_ADD_GROUP,
        SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS,
        SF_EXTERNAL_INVITE_WARN,
        SF_FB_INVITE,
        SF_FB_INVITE_CHANGE_ROLE,
        SF_FB_UNINVITE,
        SF_INVITE_GROUP,
        SF_TEAM_GRANT_ACCESS,
        SF_TEAM_INVITE,
        SF_TEAM_INVITE_CHANGE_ROLE,
        SF_TEAM_JOIN,
        SF_TEAM_JOIN_FROM_OOB_LINK,
        SF_TEAM_UNINVITE,
        SHARED_CONTENT_ADD_INVITEES,
        SHARED_CONTENT_ADD_LINK_EXPIRY,
        SHARED_CONTENT_ADD_LINK_PASSWORD,
        SHARED_CONTENT_ADD_MEMBER,
        SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY,
        SHARED_CONTENT_CHANGE_INVITEE_ROLE,
        SHARED_CONTENT_CHANGE_LINK_AUDIENCE,
        SHARED_CONTENT_CHANGE_LINK_EXPIRY,
        SHARED_CONTENT_CHANGE_LINK_PASSWORD,
        SHARED_CONTENT_CHANGE_MEMBER_ROLE,
        SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY,
        SHARED_CONTENT_CLAIM_INVITATION,
        SHARED_CONTENT_COPY,
        SHARED_CONTENT_DOWNLOAD,
        SHARED_CONTENT_RELINQUISH_MEMBERSHIP,
        SHARED_CONTENT_REMOVE_INVITEES,
        SHARED_CONTENT_REMOVE_LINK_EXPIRY,
        SHARED_CONTENT_REMOVE_LINK_PASSWORD,
        SHARED_CONTENT_REMOVE_MEMBER,
        SHARED_CONTENT_REQUEST_ACCESS,
        SHARED_CONTENT_RESTORE_INVITEES,
        SHARED_CONTENT_RESTORE_MEMBER,
        SHARED_CONTENT_UNSHARE,
        SHARED_CONTENT_VIEW,
        SHARED_FOLDER_CHANGE_LINK_POLICY,
        SHARED_FOLDER_CHANGE_MEMBERS_INHERITANCE_POLICY,
        SHARED_FOLDER_CHANGE_MEMBERS_MANAGEMENT_POLICY,
        SHARED_FOLDER_CHANGE_MEMBERS_POLICY,
        SHARED_FOLDER_CREATE,
        SHARED_FOLDER_DECLINE_INVITATION,
        SHARED_FOLDER_MOUNT,
        SHARED_FOLDER_NEST,
        SHARED_FOLDER_TRANSFER_OWNERSHIP,
        SHARED_FOLDER_UNMOUNT,
        SHARED_LINK_ADD_EXPIRY,
        SHARED_LINK_CHANGE_EXPIRY,
        SHARED_LINK_CHANGE_VISIBILITY,
        SHARED_LINK_COPY,
        SHARED_LINK_CREATE,
        SHARED_LINK_DISABLE,
        SHARED_LINK_DOWNLOAD,
        SHARED_LINK_REMOVE_EXPIRY,
        SHARED_LINK_SETTINGS_ADD_EXPIRATION,
        SHARED_LINK_SETTINGS_ADD_PASSWORD,
        SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_DISABLED,
        SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_ENABLED,
        SHARED_LINK_SETTINGS_CHANGE_AUDIENCE,
        SHARED_LINK_SETTINGS_CHANGE_EXPIRATION,
        SHARED_LINK_SETTINGS_CHANGE_PASSWORD,
        SHARED_LINK_SETTINGS_REMOVE_EXPIRATION,
        SHARED_LINK_SETTINGS_REMOVE_PASSWORD,
        SHARED_LINK_SHARE,
        SHARED_LINK_VIEW,
        SHARED_NOTE_OPENED,
        SHMODEL_GROUP_SHARE,
        SHOWCASE_ACCESS_GRANTED,
        SHOWCASE_ADD_MEMBER,
        SHOWCASE_ARCHIVED,
        SHOWCASE_CREATED,
        SHOWCASE_DELETE_COMMENT,
        SHOWCASE_EDITED,
        SHOWCASE_EDIT_COMMENT,
        SHOWCASE_FILE_ADDED,
        SHOWCASE_FILE_DOWNLOAD,
        SHOWCASE_FILE_REMOVED,
        SHOWCASE_FILE_VIEW,
        SHOWCASE_PERMANENTLY_DELETED,
        SHOWCASE_POST_COMMENT,
        SHOWCASE_REMOVE_MEMBER,
        SHOWCASE_RENAMED,
        SHOWCASE_REQUEST_ACCESS,
        SHOWCASE_RESOLVE_COMMENT,
        SHOWCASE_RESTORED,
        SHOWCASE_TRASHED,
        SHOWCASE_TRASHED_DEPRECATED,
        SHOWCASE_UNRESOLVE_COMMENT,
        SHOWCASE_UNTRASHED,
        SHOWCASE_UNTRASHED_DEPRECATED,
        SHOWCASE_VIEW,
        SSO_ADD_CERT,
        SSO_ADD_LOGIN_URL,
        SSO_ADD_LOGOUT_URL,
        SSO_CHANGE_CERT,
        SSO_CHANGE_LOGIN_URL,
        SSO_CHANGE_LOGOUT_URL,
        SSO_CHANGE_SAML_IDENTITY_MODE,
        SSO_REMOVE_CERT,
        SSO_REMOVE_LOGIN_URL,
        SSO_REMOVE_LOGOUT_URL,
        TEAM_FOLDER_CHANGE_STATUS,
        TEAM_FOLDER_CREATE,
        TEAM_FOLDER_DOWNGRADE,
        TEAM_FOLDER_PERMANENTLY_DELETE,
        TEAM_FOLDER_RENAME,
        TEAM_SELECTIVE_SYNC_SETTINGS_CHANGED,
        ACCOUNT_CAPTURE_CHANGE_POLICY,
        ALLOW_DOWNLOAD_DISABLED,
        ALLOW_DOWNLOAD_ENABLED,
        CAMERA_UPLOADS_POLICY_CHANGED,
        CONTENT_ADMINISTRATION_POLICY_CHANGED,
        DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY,
        DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY,
        DEVICE_APPROVALS_ADD_EXCEPTION,
        DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY,
        DEVICE_APPROVALS_CHANGE_MOBILE_POLICY,
        DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION,
        DEVICE_APPROVALS_CHANGE_UNLINK_ACTION,
        DEVICE_APPROVALS_REMOVE_EXCEPTION,
        DIRECTORY_RESTRICTIONS_ADD_MEMBERS,
        DIRECTORY_RESTRICTIONS_REMOVE_MEMBERS,
        EMM_ADD_EXCEPTION,
        EMM_CHANGE_POLICY,
        EMM_REMOVE_EXCEPTION,
        EXTENDED_VERSION_HISTORY_CHANGE_POLICY,
        FILE_COMMENTS_CHANGE_POLICY,
        FILE_LOCKING_POLICY_CHANGED,
        FILE_REQUESTS_CHANGE_POLICY,
        FILE_REQUESTS_EMAILS_ENABLED,
        FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY,
        FILE_TRANSFERS_POLICY_CHANGED,
        GOOGLE_SSO_CHANGE_POLICY,
        GROUP_USER_MANAGEMENT_CHANGE_POLICY,
        INTEGRATION_POLICY_CHANGED,
        MEMBER_REQUESTS_CHANGE_POLICY,
        MEMBER_SEND_INVITE_POLICY_CHANGED,
        MEMBER_SPACE_LIMITS_ADD_EXCEPTION,
        MEMBER_SPACE_LIMITS_CHANGE_CAPS_TYPE_POLICY,
        MEMBER_SPACE_LIMITS_CHANGE_POLICY,
        MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION,
        MEMBER_SUGGESTIONS_CHANGE_POLICY,
        MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY,
        NETWORK_CONTROL_CHANGE_POLICY,
        PAPER_CHANGE_DEPLOYMENT_POLICY,
        PAPER_CHANGE_MEMBER_LINK_POLICY,
        PAPER_CHANGE_MEMBER_POLICY,
        PAPER_CHANGE_POLICY,
        PAPER_DEFAULT_FOLDER_POLICY_CHANGED,
        PAPER_DESKTOP_POLICY_CHANGED,
        PAPER_ENABLED_USERS_GROUP_ADDITION,
        PAPER_ENABLED_USERS_GROUP_REMOVAL,
        PASSWORD_STRENGTH_REQUIREMENTS_CHANGE_POLICY,
        PERMANENT_DELETE_CHANGE_POLICY,
        RESELLER_SUPPORT_CHANGE_POLICY,
        REWIND_POLICY_CHANGED,
        SEND_FOR_SIGNATURE_POLICY_CHANGED,
        SHARING_CHANGE_FOLDER_JOIN_POLICY,
        SHARING_CHANGE_LINK_POLICY,
        SHARING_CHANGE_MEMBER_POLICY,
        SHOWCASE_CHANGE_DOWNLOAD_POLICY,
        SHOWCASE_CHANGE_ENABLED_POLICY,
        SHOWCASE_CHANGE_EXTERNAL_SHARING_POLICY,
        SMARTER_SMART_SYNC_POLICY_CHANGED,
        SMART_SYNC_CHANGE_POLICY,
        SMART_SYNC_NOT_OPT_OUT,
        SMART_SYNC_OPT_OUT,
        SSO_CHANGE_POLICY,
        TEAM_EXTENSIONS_POLICY_CHANGED,
        TEAM_SELECTIVE_SYNC_POLICY_CHANGED,
        TEAM_SHARING_WHITELIST_SUBJECTS_CHANGED,
        TFA_ADD_EXCEPTION,
        TFA_CHANGE_POLICY,
        TFA_REMOVE_EXCEPTION,
        TWO_ACCOUNT_CHANGE_POLICY,
        VIEWER_INFO_POLICY_CHANGED,
        WATERMARKING_POLICY_CHANGED,
        WEB_SESSIONS_CHANGE_ACTIVE_SESSION_LIMIT,
        WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY,
        WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY,
        TEAM_MERGE_FROM,
        TEAM_MERGE_TO,
        TEAM_PROFILE_ADD_LOGO,
        TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE,
        TEAM_PROFILE_CHANGE_LOGO,
        TEAM_PROFILE_CHANGE_NAME,
        TEAM_PROFILE_REMOVE_LOGO,
        TFA_ADD_BACKUP_PHONE,
        TFA_ADD_SECURITY_KEY,
        TFA_CHANGE_BACKUP_PHONE,
        TFA_CHANGE_STATUS,
        TFA_REMOVE_BACKUP_PHONE,
        TFA_REMOVE_SECURITY_KEY,
        TFA_RESET,
        CHANGED_ENTERPRISE_ADMIN_ROLE,
        CHANGED_ENTERPRISE_CONNECTED_TEAM_STATUS,
        ENDED_ENTERPRISE_ADMIN_SESSION,
        ENDED_ENTERPRISE_ADMIN_SESSION_DEPRECATED,
        ENTERPRISE_SETTINGS_LOCKING,
        GUEST_ADMIN_CHANGE_STATUS,
        STARTED_ENTERPRISE_ADMIN_SESSION,
        TEAM_MERGE_REQUEST_ACCEPTED,
        TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_PRIMARY_TEAM,
        TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_SECONDARY_TEAM,
        TEAM_MERGE_REQUEST_AUTO_CANCELED,
        TEAM_MERGE_REQUEST_CANCELED,
        TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_PRIMARY_TEAM,
        TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_SECONDARY_TEAM,
        TEAM_MERGE_REQUEST_EXPIRED,
        TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_PRIMARY_TEAM,
        TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_SECONDARY_TEAM,
        TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_PRIMARY_TEAM,
        TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_SECONDARY_TEAM,
        TEAM_MERGE_REQUEST_REMINDER,
        TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_PRIMARY_TEAM,
        TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_SECONDARY_TEAM,
        TEAM_MERGE_REQUEST_REVOKED,
        TEAM_MERGE_REQUEST_SENT_SHOWN_TO_PRIMARY_TEAM,
        TEAM_MERGE_REQUEST_SENT_SHOWN_TO_SECONDARY_TEAM,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.EventType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3508a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19760a;

        static {
            int[] iArr = new int[Tag.values().length];
            f19760a = iArr;
            try {
                iArr[Tag.APP_LINK_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19760a[Tag.APP_LINK_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19760a[Tag.APP_UNLINK_TEAM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19760a[Tag.APP_UNLINK_USER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19760a[Tag.INTEGRATION_CONNECTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19760a[Tag.INTEGRATION_DISCONNECTED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19760a[Tag.FILE_ADD_COMMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19760a[Tag.FILE_CHANGE_COMMENT_SUBSCRIPTION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19760a[Tag.FILE_DELETE_COMMENT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19760a[Tag.FILE_EDIT_COMMENT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19760a[Tag.FILE_LIKE_COMMENT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19760a[Tag.FILE_RESOLVE_COMMENT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f19760a[Tag.FILE_UNLIKE_COMMENT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f19760a[Tag.FILE_UNRESOLVE_COMMENT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f19760a[Tag.DEVICE_CHANGE_IP_DESKTOP.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f19760a[Tag.DEVICE_CHANGE_IP_MOBILE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f19760a[Tag.DEVICE_CHANGE_IP_WEB.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f19760a[Tag.DEVICE_DELETE_ON_UNLINK_FAIL.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f19760a[Tag.DEVICE_DELETE_ON_UNLINK_SUCCESS.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f19760a[Tag.DEVICE_LINK_FAIL.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f19760a[Tag.DEVICE_LINK_SUCCESS.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f19760a[Tag.DEVICE_MANAGEMENT_DISABLED.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f19760a[Tag.DEVICE_MANAGEMENT_ENABLED.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f19760a[Tag.DEVICE_UNLINK.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f19760a[Tag.EMM_REFRESH_AUTH_TOKEN.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f19760a[Tag.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f19760a[Tag.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f19760a[Tag.ACCOUNT_CAPTURE_NOTIFICATION_EMAILS_SENT.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f19760a[Tag.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f19760a[Tag.DISABLED_DOMAIN_INVITES.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f19760a[Tag.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f19760a[Tag.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f19760a[Tag.DOMAIN_INVITES_EMAIL_EXISTING_USERS.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f19760a[Tag.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f19760a[Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f19760a[Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f19760a[Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f19760a[Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f19760a[Tag.DOMAIN_VERIFICATION_REMOVE_DOMAIN.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f19760a[Tag.ENABLED_DOMAIN_INVITES.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f19760a[Tag.CREATE_FOLDER.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f19760a[Tag.FILE_ADD.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f19760a[Tag.FILE_COPY.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f19760a[Tag.FILE_DELETE.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f19760a[Tag.FILE_DOWNLOAD.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f19760a[Tag.FILE_EDIT.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f19760a[Tag.FILE_GET_COPY_REFERENCE.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                f19760a[Tag.FILE_LOCKING_LOCK_STATUS_CHANGED.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                f19760a[Tag.FILE_MOVE.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                f19760a[Tag.FILE_PERMANENTLY_DELETE.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                f19760a[Tag.FILE_PREVIEW.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                f19760a[Tag.FILE_RENAME.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                f19760a[Tag.FILE_RESTORE.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                f19760a[Tag.FILE_REVERT.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                f19760a[Tag.FILE_ROLLBACK_CHANGES.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                f19760a[Tag.FILE_SAVE_COPY_REFERENCE.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                f19760a[Tag.FOLDER_OVERVIEW_DESCRIPTION_CHANGED.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                f19760a[Tag.FOLDER_OVERVIEW_ITEM_PINNED.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                f19760a[Tag.FOLDER_OVERVIEW_ITEM_UNPINNED.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                f19760a[Tag.REWIND_FOLDER.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                f19760a[Tag.FILE_REQUEST_CHANGE.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                f19760a[Tag.FILE_REQUEST_CLOSE.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                f19760a[Tag.FILE_REQUEST_CREATE.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                f19760a[Tag.FILE_REQUEST_DELETE.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                f19760a[Tag.FILE_REQUEST_RECEIVE_FILE.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                f19760a[Tag.GROUP_ADD_EXTERNAL_ID.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                f19760a[Tag.GROUP_ADD_MEMBER.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                f19760a[Tag.GROUP_CHANGE_EXTERNAL_ID.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                f19760a[Tag.GROUP_CHANGE_MANAGEMENT_TYPE.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                f19760a[Tag.GROUP_CHANGE_MEMBER_ROLE.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                f19760a[Tag.GROUP_CREATE.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                f19760a[Tag.GROUP_DELETE.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                f19760a[Tag.GROUP_DESCRIPTION_UPDATED.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                f19760a[Tag.GROUP_JOIN_POLICY_UPDATED.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                f19760a[Tag.GROUP_MOVED.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                f19760a[Tag.GROUP_REMOVE_EXTERNAL_ID.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                f19760a[Tag.GROUP_REMOVE_MEMBER.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                f19760a[Tag.GROUP_RENAME.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                f19760a[Tag.LEGAL_HOLDS_ACTIVATE_A_HOLD.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                f19760a[Tag.LEGAL_HOLDS_ADD_MEMBERS.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                f19760a[Tag.LEGAL_HOLDS_CHANGE_HOLD_DETAILS.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                f19760a[Tag.LEGAL_HOLDS_CHANGE_HOLD_NAME.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                f19760a[Tag.LEGAL_HOLDS_EXPORT_A_HOLD.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                f19760a[Tag.LEGAL_HOLDS_EXPORT_CANCELLED.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                f19760a[Tag.LEGAL_HOLDS_EXPORT_DOWNLOADED.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                f19760a[Tag.LEGAL_HOLDS_EXPORT_REMOVED.ordinal()] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                f19760a[Tag.LEGAL_HOLDS_RELEASE_A_HOLD.ordinal()] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                f19760a[Tag.LEGAL_HOLDS_REMOVE_MEMBERS.ordinal()] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                f19760a[Tag.LEGAL_HOLDS_REPORT_A_HOLD.ordinal()] = 89;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                f19760a[Tag.ACCOUNT_LOCK_OR_UNLOCKED.ordinal()] = 90;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                f19760a[Tag.EMM_ERROR.ordinal()] = 91;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                f19760a[Tag.GUEST_ADMIN_SIGNED_IN_VIA_TRUSTED_TEAMS.ordinal()] = 92;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                f19760a[Tag.GUEST_ADMIN_SIGNED_OUT_VIA_TRUSTED_TEAMS.ordinal()] = 93;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                f19760a[Tag.LOGIN_FAIL.ordinal()] = 94;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                f19760a[Tag.LOGIN_SUCCESS.ordinal()] = 95;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                f19760a[Tag.LOGOUT.ordinal()] = 96;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                f19760a[Tag.RESELLER_SUPPORT_SESSION_END.ordinal()] = 97;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                f19760a[Tag.RESELLER_SUPPORT_SESSION_START.ordinal()] = 98;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                f19760a[Tag.SIGN_IN_AS_SESSION_END.ordinal()] = 99;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                f19760a[Tag.SIGN_IN_AS_SESSION_START.ordinal()] = 100;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                f19760a[Tag.SSO_ERROR.ordinal()] = 101;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                f19760a[Tag.CREATE_TEAM_INVITE_LINK.ordinal()] = 102;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                f19760a[Tag.DELETE_TEAM_INVITE_LINK.ordinal()] = 103;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                f19760a[Tag.MEMBER_ADD_EXTERNAL_ID.ordinal()] = 104;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                f19760a[Tag.MEMBER_ADD_NAME.ordinal()] = 105;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                f19760a[Tag.MEMBER_CHANGE_ADMIN_ROLE.ordinal()] = 106;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                f19760a[Tag.MEMBER_CHANGE_EMAIL.ordinal()] = 107;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                f19760a[Tag.MEMBER_CHANGE_EXTERNAL_ID.ordinal()] = 108;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                f19760a[Tag.MEMBER_CHANGE_MEMBERSHIP_TYPE.ordinal()] = 109;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                f19760a[Tag.MEMBER_CHANGE_NAME.ordinal()] = 110;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                f19760a[Tag.MEMBER_CHANGE_STATUS.ordinal()] = 111;
            } catch (NoSuchFieldError unused111) {
            }
            try {
                f19760a[Tag.MEMBER_DELETE_MANUAL_CONTACTS.ordinal()] = 112;
            } catch (NoSuchFieldError unused112) {
            }
            try {
                f19760a[Tag.MEMBER_DELETE_PROFILE_PHOTO.ordinal()] = 113;
            } catch (NoSuchFieldError unused113) {
            }
            try {
                f19760a[Tag.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS.ordinal()] = 114;
            } catch (NoSuchFieldError unused114) {
            }
            try {
                f19760a[Tag.MEMBER_REMOVE_EXTERNAL_ID.ordinal()] = 115;
            } catch (NoSuchFieldError unused115) {
            }
            try {
                f19760a[Tag.MEMBER_SET_PROFILE_PHOTO.ordinal()] = 116;
            } catch (NoSuchFieldError unused116) {
            }
            try {
                f19760a[Tag.MEMBER_SPACE_LIMITS_ADD_CUSTOM_QUOTA.ordinal()] = 117;
            } catch (NoSuchFieldError unused117) {
            }
            try {
                f19760a[Tag.MEMBER_SPACE_LIMITS_CHANGE_CUSTOM_QUOTA.ordinal()] = 118;
            } catch (NoSuchFieldError unused118) {
            }
            try {
                f19760a[Tag.MEMBER_SPACE_LIMITS_CHANGE_STATUS.ordinal()] = 119;
            } catch (NoSuchFieldError unused119) {
            }
            try {
                f19760a[Tag.MEMBER_SPACE_LIMITS_REMOVE_CUSTOM_QUOTA.ordinal()] = 120;
            } catch (NoSuchFieldError unused120) {
            }
            try {
                f19760a[Tag.MEMBER_SUGGEST.ordinal()] = 121;
            } catch (NoSuchFieldError unused121) {
            }
            try {
                f19760a[Tag.MEMBER_TRANSFER_ACCOUNT_CONTENTS.ordinal()] = 122;
            } catch (NoSuchFieldError unused122) {
            }
            try {
                f19760a[Tag.PENDING_SECONDARY_EMAIL_ADDED.ordinal()] = 123;
            } catch (NoSuchFieldError unused123) {
            }
            try {
                f19760a[Tag.SECONDARY_EMAIL_DELETED.ordinal()] = 124;
            } catch (NoSuchFieldError unused124) {
            }
            try {
                f19760a[Tag.SECONDARY_EMAIL_VERIFIED.ordinal()] = 125;
            } catch (NoSuchFieldError unused125) {
            }
            try {
                f19760a[Tag.SECONDARY_MAILS_POLICY_CHANGED.ordinal()] = 126;
            } catch (NoSuchFieldError unused126) {
            }
            try {
                f19760a[Tag.BINDER_ADD_PAGE.ordinal()] = 127;
            } catch (NoSuchFieldError unused127) {
            }
            try {
                f19760a[Tag.BINDER_ADD_SECTION.ordinal()] = 128;
            } catch (NoSuchFieldError unused128) {
            }
            try {
                f19760a[Tag.BINDER_REMOVE_PAGE.ordinal()] = 129;
            } catch (NoSuchFieldError unused129) {
            }
            try {
                f19760a[Tag.BINDER_REMOVE_SECTION.ordinal()] = 130;
            } catch (NoSuchFieldError unused130) {
            }
            try {
                f19760a[Tag.BINDER_RENAME_PAGE.ordinal()] = 131;
            } catch (NoSuchFieldError unused131) {
            }
            try {
                f19760a[Tag.BINDER_RENAME_SECTION.ordinal()] = 132;
            } catch (NoSuchFieldError unused132) {
            }
            try {
                f19760a[Tag.BINDER_REORDER_PAGE.ordinal()] = 133;
            } catch (NoSuchFieldError unused133) {
            }
            try {
                f19760a[Tag.BINDER_REORDER_SECTION.ordinal()] = 134;
            } catch (NoSuchFieldError unused134) {
            }
            try {
                f19760a[Tag.PAPER_CONTENT_ADD_MEMBER.ordinal()] = 135;
            } catch (NoSuchFieldError unused135) {
            }
            try {
                f19760a[Tag.PAPER_CONTENT_ADD_TO_FOLDER.ordinal()] = 136;
            } catch (NoSuchFieldError unused136) {
            }
            try {
                f19760a[Tag.PAPER_CONTENT_ARCHIVE.ordinal()] = 137;
            } catch (NoSuchFieldError unused137) {
            }
            try {
                f19760a[Tag.PAPER_CONTENT_CREATE.ordinal()] = 138;
            } catch (NoSuchFieldError unused138) {
            }
            try {
                f19760a[Tag.PAPER_CONTENT_PERMANENTLY_DELETE.ordinal()] = 139;
            } catch (NoSuchFieldError unused139) {
            }
            try {
                f19760a[Tag.PAPER_CONTENT_REMOVE_FROM_FOLDER.ordinal()] = 140;
            } catch (NoSuchFieldError unused140) {
            }
            try {
                f19760a[Tag.PAPER_CONTENT_REMOVE_MEMBER.ordinal()] = 141;
            } catch (NoSuchFieldError unused141) {
            }
            try {
                f19760a[Tag.PAPER_CONTENT_RENAME.ordinal()] = 142;
            } catch (NoSuchFieldError unused142) {
            }
            try {
                f19760a[Tag.PAPER_CONTENT_RESTORE.ordinal()] = 143;
            } catch (NoSuchFieldError unused143) {
            }
            try {
                f19760a[Tag.PAPER_DOC_ADD_COMMENT.ordinal()] = 144;
            } catch (NoSuchFieldError unused144) {
            }
            try {
                f19760a[Tag.PAPER_DOC_CHANGE_MEMBER_ROLE.ordinal()] = 145;
            } catch (NoSuchFieldError unused145) {
            }
            try {
                f19760a[Tag.PAPER_DOC_CHANGE_SHARING_POLICY.ordinal()] = 146;
            } catch (NoSuchFieldError unused146) {
            }
            try {
                f19760a[Tag.PAPER_DOC_CHANGE_SUBSCRIPTION.ordinal()] = 147;
            } catch (NoSuchFieldError unused147) {
            }
            try {
                f19760a[Tag.PAPER_DOC_DELETED.ordinal()] = 148;
            } catch (NoSuchFieldError unused148) {
            }
            try {
                f19760a[Tag.PAPER_DOC_DELETE_COMMENT.ordinal()] = 149;
            } catch (NoSuchFieldError unused149) {
            }
            try {
                f19760a[Tag.PAPER_DOC_DOWNLOAD.ordinal()] = 150;
            } catch (NoSuchFieldError unused150) {
            }
            try {
                f19760a[Tag.PAPER_DOC_EDIT.ordinal()] = 151;
            } catch (NoSuchFieldError unused151) {
            }
            try {
                f19760a[Tag.PAPER_DOC_EDIT_COMMENT.ordinal()] = 152;
            } catch (NoSuchFieldError unused152) {
            }
            try {
                f19760a[Tag.PAPER_DOC_FOLLOWED.ordinal()] = 153;
            } catch (NoSuchFieldError unused153) {
            }
            try {
                f19760a[Tag.PAPER_DOC_MENTION.ordinal()] = 154;
            } catch (NoSuchFieldError unused154) {
            }
            try {
                f19760a[Tag.PAPER_DOC_OWNERSHIP_CHANGED.ordinal()] = 155;
            } catch (NoSuchFieldError unused155) {
            }
            try {
                f19760a[Tag.PAPER_DOC_REQUEST_ACCESS.ordinal()] = 156;
            } catch (NoSuchFieldError unused156) {
            }
            try {
                f19760a[Tag.PAPER_DOC_RESOLVE_COMMENT.ordinal()] = 157;
            } catch (NoSuchFieldError unused157) {
            }
            try {
                f19760a[Tag.PAPER_DOC_REVERT.ordinal()] = 158;
            } catch (NoSuchFieldError unused158) {
            }
            try {
                f19760a[Tag.PAPER_DOC_SLACK_SHARE.ordinal()] = 159;
            } catch (NoSuchFieldError unused159) {
            }
            try {
                f19760a[Tag.PAPER_DOC_TEAM_INVITE.ordinal()] = 160;
            } catch (NoSuchFieldError unused160) {
            }
            try {
                f19760a[Tag.PAPER_DOC_TRASHED.ordinal()] = 161;
            } catch (NoSuchFieldError unused161) {
            }
            try {
                f19760a[Tag.PAPER_DOC_UNRESOLVE_COMMENT.ordinal()] = 162;
            } catch (NoSuchFieldError unused162) {
            }
            try {
                f19760a[Tag.PAPER_DOC_UNTRASHED.ordinal()] = 163;
            } catch (NoSuchFieldError unused163) {
            }
            try {
                f19760a[Tag.PAPER_DOC_VIEW.ordinal()] = 164;
            } catch (NoSuchFieldError unused164) {
            }
            try {
                f19760a[Tag.PAPER_EXTERNAL_VIEW_ALLOW.ordinal()] = 165;
            } catch (NoSuchFieldError unused165) {
            }
            try {
                f19760a[Tag.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM.ordinal()] = 166;
            } catch (NoSuchFieldError unused166) {
            }
            try {
                f19760a[Tag.PAPER_EXTERNAL_VIEW_FORBID.ordinal()] = 167;
            } catch (NoSuchFieldError unused167) {
            }
            try {
                f19760a[Tag.PAPER_FOLDER_CHANGE_SUBSCRIPTION.ordinal()] = 168;
            } catch (NoSuchFieldError unused168) {
            }
            try {
                f19760a[Tag.PAPER_FOLDER_DELETED.ordinal()] = 169;
            } catch (NoSuchFieldError unused169) {
            }
            try {
                f19760a[Tag.PAPER_FOLDER_FOLLOWED.ordinal()] = 170;
            } catch (NoSuchFieldError unused170) {
            }
            try {
                f19760a[Tag.PAPER_FOLDER_TEAM_INVITE.ordinal()] = 171;
            } catch (NoSuchFieldError unused171) {
            }
            try {
                f19760a[Tag.PAPER_PUBLISHED_LINK_CHANGE_PERMISSION.ordinal()] = 172;
            } catch (NoSuchFieldError unused172) {
            }
            try {
                f19760a[Tag.PAPER_PUBLISHED_LINK_CREATE.ordinal()] = 173;
            } catch (NoSuchFieldError unused173) {
            }
            try {
                f19760a[Tag.PAPER_PUBLISHED_LINK_DISABLED.ordinal()] = 174;
            } catch (NoSuchFieldError unused174) {
            }
            try {
                f19760a[Tag.PAPER_PUBLISHED_LINK_VIEW.ordinal()] = 175;
            } catch (NoSuchFieldError unused175) {
            }
            try {
                f19760a[Tag.PASSWORD_CHANGE.ordinal()] = 176;
            } catch (NoSuchFieldError unused176) {
            }
            try {
                f19760a[Tag.PASSWORD_RESET.ordinal()] = 177;
            } catch (NoSuchFieldError unused177) {
            }
            try {
                f19760a[Tag.PASSWORD_RESET_ALL.ordinal()] = 178;
            } catch (NoSuchFieldError unused178) {
            }
            try {
                f19760a[Tag.EMM_CREATE_EXCEPTIONS_REPORT.ordinal()] = 179;
            } catch (NoSuchFieldError unused179) {
            }
            try {
                f19760a[Tag.EMM_CREATE_USAGE_REPORT.ordinal()] = 180;
            } catch (NoSuchFieldError unused180) {
            }
            try {
                f19760a[Tag.EXPORT_MEMBERS_REPORT.ordinal()] = 181;
            } catch (NoSuchFieldError unused181) {
            }
            try {
                f19760a[Tag.EXPORT_MEMBERS_REPORT_FAIL.ordinal()] = 182;
            } catch (NoSuchFieldError unused182) {
            }
            try {
                f19760a[Tag.EXTERNAL_SHARING_CREATE_REPORT.ordinal()] = 183;
            } catch (NoSuchFieldError unused183) {
            }
            try {
                f19760a[Tag.EXTERNAL_SHARING_REPORT_FAILED.ordinal()] = 184;
            } catch (NoSuchFieldError unused184) {
            }
            try {
                f19760a[Tag.NO_EXPIRATION_LINK_GEN_CREATE_REPORT.ordinal()] = 185;
            } catch (NoSuchFieldError unused185) {
            }
            try {
                f19760a[Tag.NO_EXPIRATION_LINK_GEN_REPORT_FAILED.ordinal()] = 186;
            } catch (NoSuchFieldError unused186) {
            }
            try {
                f19760a[Tag.NO_PASSWORD_LINK_GEN_CREATE_REPORT.ordinal()] = 187;
            } catch (NoSuchFieldError unused187) {
            }
            try {
                f19760a[Tag.NO_PASSWORD_LINK_GEN_REPORT_FAILED.ordinal()] = 188;
            } catch (NoSuchFieldError unused188) {
            }
            try {
                f19760a[Tag.NO_PASSWORD_LINK_VIEW_CREATE_REPORT.ordinal()] = 189;
            } catch (NoSuchFieldError unused189) {
            }
            try {
                f19760a[Tag.NO_PASSWORD_LINK_VIEW_REPORT_FAILED.ordinal()] = 190;
            } catch (NoSuchFieldError unused190) {
            }
            try {
                f19760a[Tag.OUTDATED_LINK_VIEW_CREATE_REPORT.ordinal()] = 191;
            } catch (NoSuchFieldError unused191) {
            }
            try {
                f19760a[Tag.OUTDATED_LINK_VIEW_REPORT_FAILED.ordinal()] = 192;
            } catch (NoSuchFieldError unused192) {
            }
            try {
                f19760a[Tag.PAPER_ADMIN_EXPORT_START.ordinal()] = 193;
            } catch (NoSuchFieldError unused193) {
            }
            try {
                f19760a[Tag.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT.ordinal()] = 194;
            } catch (NoSuchFieldError unused194) {
            }
            try {
                f19760a[Tag.TEAM_ACTIVITY_CREATE_REPORT.ordinal()] = 195;
            } catch (NoSuchFieldError unused195) {
            }
            try {
                f19760a[Tag.TEAM_ACTIVITY_CREATE_REPORT_FAIL.ordinal()] = 196;
            } catch (NoSuchFieldError unused196) {
            }
            try {
                f19760a[Tag.COLLECTION_SHARE.ordinal()] = 197;
            } catch (NoSuchFieldError unused197) {
            }
            try {
                f19760a[Tag.FILE_TRANSFERS_FILE_ADD.ordinal()] = 198;
            } catch (NoSuchFieldError unused198) {
            }
            try {
                f19760a[Tag.FILE_TRANSFERS_TRANSFER_DELETE.ordinal()] = 199;
            } catch (NoSuchFieldError unused199) {
            }
            try {
                f19760a[Tag.FILE_TRANSFERS_TRANSFER_DOWNLOAD.ordinal()] = 200;
            } catch (NoSuchFieldError unused200) {
            }
            try {
                f19760a[Tag.FILE_TRANSFERS_TRANSFER_SEND.ordinal()] = 201;
            } catch (NoSuchFieldError unused201) {
            }
            try {
                f19760a[Tag.FILE_TRANSFERS_TRANSFER_VIEW.ordinal()] = 202;
            } catch (NoSuchFieldError unused202) {
            }
            try {
                f19760a[Tag.NOTE_ACL_INVITE_ONLY.ordinal()] = 203;
            } catch (NoSuchFieldError unused203) {
            }
            try {
                f19760a[Tag.NOTE_ACL_LINK.ordinal()] = 204;
            } catch (NoSuchFieldError unused204) {
            }
            try {
                f19760a[Tag.NOTE_ACL_TEAM_LINK.ordinal()] = 205;
            } catch (NoSuchFieldError unused205) {
            }
            try {
                f19760a[Tag.NOTE_SHARED.ordinal()] = 206;
            } catch (NoSuchFieldError unused206) {
            }
            try {
                f19760a[Tag.NOTE_SHARE_RECEIVE.ordinal()] = 207;
            } catch (NoSuchFieldError unused207) {
            }
            try {
                f19760a[Tag.OPEN_NOTE_SHARED.ordinal()] = 208;
            } catch (NoSuchFieldError unused208) {
            }
            try {
                f19760a[Tag.SF_ADD_GROUP.ordinal()] = 209;
            } catch (NoSuchFieldError unused209) {
            }
            try {
                f19760a[Tag.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS.ordinal()] = 210;
            } catch (NoSuchFieldError unused210) {
            }
            try {
                f19760a[Tag.SF_EXTERNAL_INVITE_WARN.ordinal()] = 211;
            } catch (NoSuchFieldError unused211) {
            }
            try {
                f19760a[Tag.SF_FB_INVITE.ordinal()] = 212;
            } catch (NoSuchFieldError unused212) {
            }
            try {
                f19760a[Tag.SF_FB_INVITE_CHANGE_ROLE.ordinal()] = 213;
            } catch (NoSuchFieldError unused213) {
            }
            try {
                f19760a[Tag.SF_FB_UNINVITE.ordinal()] = 214;
            } catch (NoSuchFieldError unused214) {
            }
            try {
                f19760a[Tag.SF_INVITE_GROUP.ordinal()] = 215;
            } catch (NoSuchFieldError unused215) {
            }
            try {
                f19760a[Tag.SF_TEAM_GRANT_ACCESS.ordinal()] = 216;
            } catch (NoSuchFieldError unused216) {
            }
            try {
                f19760a[Tag.SF_TEAM_INVITE.ordinal()] = 217;
            } catch (NoSuchFieldError unused217) {
            }
            try {
                f19760a[Tag.SF_TEAM_INVITE_CHANGE_ROLE.ordinal()] = 218;
            } catch (NoSuchFieldError unused218) {
            }
            try {
                f19760a[Tag.SF_TEAM_JOIN.ordinal()] = 219;
            } catch (NoSuchFieldError unused219) {
            }
            try {
                f19760a[Tag.SF_TEAM_JOIN_FROM_OOB_LINK.ordinal()] = 220;
            } catch (NoSuchFieldError unused220) {
            }
            try {
                f19760a[Tag.SF_TEAM_UNINVITE.ordinal()] = 221;
            } catch (NoSuchFieldError unused221) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_ADD_INVITEES.ordinal()] = 222;
            } catch (NoSuchFieldError unused222) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_ADD_LINK_EXPIRY.ordinal()] = 223;
            } catch (NoSuchFieldError unused223) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_ADD_LINK_PASSWORD.ordinal()] = 224;
            } catch (NoSuchFieldError unused224) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_ADD_MEMBER.ordinal()] = 225;
            } catch (NoSuchFieldError unused225) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY.ordinal()] = 226;
            } catch (NoSuchFieldError unused226) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_CHANGE_INVITEE_ROLE.ordinal()] = 227;
            } catch (NoSuchFieldError unused227) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_CHANGE_LINK_AUDIENCE.ordinal()] = 228;
            } catch (NoSuchFieldError unused228) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_CHANGE_LINK_EXPIRY.ordinal()] = 229;
            } catch (NoSuchFieldError unused229) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_CHANGE_LINK_PASSWORD.ordinal()] = 230;
            } catch (NoSuchFieldError unused230) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_CHANGE_MEMBER_ROLE.ordinal()] = 231;
            } catch (NoSuchFieldError unused231) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY.ordinal()] = 232;
            } catch (NoSuchFieldError unused232) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_CLAIM_INVITATION.ordinal()] = 233;
            } catch (NoSuchFieldError unused233) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_COPY.ordinal()] = 234;
            } catch (NoSuchFieldError unused234) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_DOWNLOAD.ordinal()] = 235;
            } catch (NoSuchFieldError unused235) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_RELINQUISH_MEMBERSHIP.ordinal()] = 236;
            } catch (NoSuchFieldError unused236) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_REMOVE_INVITEES.ordinal()] = 237;
            } catch (NoSuchFieldError unused237) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_REMOVE_LINK_EXPIRY.ordinal()] = 238;
            } catch (NoSuchFieldError unused238) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_REMOVE_LINK_PASSWORD.ordinal()] = 239;
            } catch (NoSuchFieldError unused239) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_REMOVE_MEMBER.ordinal()] = 240;
            } catch (NoSuchFieldError unused240) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_REQUEST_ACCESS.ordinal()] = 241;
            } catch (NoSuchFieldError unused241) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_RESTORE_INVITEES.ordinal()] = 242;
            } catch (NoSuchFieldError unused242) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_RESTORE_MEMBER.ordinal()] = 243;
            } catch (NoSuchFieldError unused243) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_UNSHARE.ordinal()] = 244;
            } catch (NoSuchFieldError unused244) {
            }
            try {
                f19760a[Tag.SHARED_CONTENT_VIEW.ordinal()] = 245;
            } catch (NoSuchFieldError unused245) {
            }
            try {
                f19760a[Tag.SHARED_FOLDER_CHANGE_LINK_POLICY.ordinal()] = 246;
            } catch (NoSuchFieldError unused246) {
            }
            try {
                f19760a[Tag.SHARED_FOLDER_CHANGE_MEMBERS_INHERITANCE_POLICY.ordinal()] = 247;
            } catch (NoSuchFieldError unused247) {
            }
            try {
                f19760a[Tag.SHARED_FOLDER_CHANGE_MEMBERS_MANAGEMENT_POLICY.ordinal()] = 248;
            } catch (NoSuchFieldError unused248) {
            }
            try {
                f19760a[Tag.SHARED_FOLDER_CHANGE_MEMBERS_POLICY.ordinal()] = 249;
            } catch (NoSuchFieldError unused249) {
            }
            try {
                f19760a[Tag.SHARED_FOLDER_CREATE.ordinal()] = 250;
            } catch (NoSuchFieldError unused250) {
            }
            try {
                f19760a[Tag.SHARED_FOLDER_DECLINE_INVITATION.ordinal()] = 251;
            } catch (NoSuchFieldError unused251) {
            }
            try {
                f19760a[Tag.SHARED_FOLDER_MOUNT.ordinal()] = 252;
            } catch (NoSuchFieldError unused252) {
            }
            try {
                f19760a[Tag.SHARED_FOLDER_NEST.ordinal()] = 253;
            } catch (NoSuchFieldError unused253) {
            }
            try {
                f19760a[Tag.SHARED_FOLDER_TRANSFER_OWNERSHIP.ordinal()] = 254;
            } catch (NoSuchFieldError unused254) {
            }
            try {
                f19760a[Tag.SHARED_FOLDER_UNMOUNT.ordinal()] = 255;
            } catch (NoSuchFieldError unused255) {
            }
            try {
                f19760a[Tag.SHARED_LINK_ADD_EXPIRY.ordinal()] = 256;
            } catch (NoSuchFieldError unused256) {
            }
            try {
                f19760a[Tag.SHARED_LINK_CHANGE_EXPIRY.ordinal()] = 257;
            } catch (NoSuchFieldError unused257) {
            }
            try {
                f19760a[Tag.SHARED_LINK_CHANGE_VISIBILITY.ordinal()] = 258;
            } catch (NoSuchFieldError unused258) {
            }
            try {
                f19760a[Tag.SHARED_LINK_COPY.ordinal()] = 259;
            } catch (NoSuchFieldError unused259) {
            }
            try {
                f19760a[Tag.SHARED_LINK_CREATE.ordinal()] = 260;
            } catch (NoSuchFieldError unused260) {
            }
            try {
                f19760a[Tag.SHARED_LINK_DISABLE.ordinal()] = 261;
            } catch (NoSuchFieldError unused261) {
            }
            try {
                f19760a[Tag.SHARED_LINK_DOWNLOAD.ordinal()] = 262;
            } catch (NoSuchFieldError unused262) {
            }
            try {
                f19760a[Tag.SHARED_LINK_REMOVE_EXPIRY.ordinal()] = 263;
            } catch (NoSuchFieldError unused263) {
            }
            try {
                f19760a[Tag.SHARED_LINK_SETTINGS_ADD_EXPIRATION.ordinal()] = 264;
            } catch (NoSuchFieldError unused264) {
            }
            try {
                f19760a[Tag.SHARED_LINK_SETTINGS_ADD_PASSWORD.ordinal()] = 265;
            } catch (NoSuchFieldError unused265) {
            }
            try {
                f19760a[Tag.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_DISABLED.ordinal()] = 266;
            } catch (NoSuchFieldError unused266) {
            }
            try {
                f19760a[Tag.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_ENABLED.ordinal()] = 267;
            } catch (NoSuchFieldError unused267) {
            }
            try {
                f19760a[Tag.SHARED_LINK_SETTINGS_CHANGE_AUDIENCE.ordinal()] = 268;
            } catch (NoSuchFieldError unused268) {
            }
            try {
                f19760a[Tag.SHARED_LINK_SETTINGS_CHANGE_EXPIRATION.ordinal()] = 269;
            } catch (NoSuchFieldError unused269) {
            }
            try {
                f19760a[Tag.SHARED_LINK_SETTINGS_CHANGE_PASSWORD.ordinal()] = 270;
            } catch (NoSuchFieldError unused270) {
            }
            try {
                f19760a[Tag.SHARED_LINK_SETTINGS_REMOVE_EXPIRATION.ordinal()] = 271;
            } catch (NoSuchFieldError unused271) {
            }
            try {
                f19760a[Tag.SHARED_LINK_SETTINGS_REMOVE_PASSWORD.ordinal()] = 272;
            } catch (NoSuchFieldError unused272) {
            }
            try {
                f19760a[Tag.SHARED_LINK_SHARE.ordinal()] = 273;
            } catch (NoSuchFieldError unused273) {
            }
            try {
                f19760a[Tag.SHARED_LINK_VIEW.ordinal()] = 274;
            } catch (NoSuchFieldError unused274) {
            }
            try {
                f19760a[Tag.SHARED_NOTE_OPENED.ordinal()] = 275;
            } catch (NoSuchFieldError unused275) {
            }
            try {
                f19760a[Tag.SHMODEL_GROUP_SHARE.ordinal()] = 276;
            } catch (NoSuchFieldError unused276) {
            }
            try {
                f19760a[Tag.SHOWCASE_ACCESS_GRANTED.ordinal()] = 277;
            } catch (NoSuchFieldError unused277) {
            }
            try {
                f19760a[Tag.SHOWCASE_ADD_MEMBER.ordinal()] = 278;
            } catch (NoSuchFieldError unused278) {
            }
            try {
                f19760a[Tag.SHOWCASE_ARCHIVED.ordinal()] = 279;
            } catch (NoSuchFieldError unused279) {
            }
            try {
                f19760a[Tag.SHOWCASE_CREATED.ordinal()] = 280;
            } catch (NoSuchFieldError unused280) {
            }
            try {
                f19760a[Tag.SHOWCASE_DELETE_COMMENT.ordinal()] = 281;
            } catch (NoSuchFieldError unused281) {
            }
            try {
                f19760a[Tag.SHOWCASE_EDITED.ordinal()] = 282;
            } catch (NoSuchFieldError unused282) {
            }
            try {
                f19760a[Tag.SHOWCASE_EDIT_COMMENT.ordinal()] = 283;
            } catch (NoSuchFieldError unused283) {
            }
            try {
                f19760a[Tag.SHOWCASE_FILE_ADDED.ordinal()] = 284;
            } catch (NoSuchFieldError unused284) {
            }
            try {
                f19760a[Tag.SHOWCASE_FILE_DOWNLOAD.ordinal()] = 285;
            } catch (NoSuchFieldError unused285) {
            }
            try {
                f19760a[Tag.SHOWCASE_FILE_REMOVED.ordinal()] = 286;
            } catch (NoSuchFieldError unused286) {
            }
            try {
                f19760a[Tag.SHOWCASE_FILE_VIEW.ordinal()] = 287;
            } catch (NoSuchFieldError unused287) {
            }
            try {
                f19760a[Tag.SHOWCASE_PERMANENTLY_DELETED.ordinal()] = 288;
            } catch (NoSuchFieldError unused288) {
            }
            try {
                f19760a[Tag.SHOWCASE_POST_COMMENT.ordinal()] = 289;
            } catch (NoSuchFieldError unused289) {
            }
            try {
                f19760a[Tag.SHOWCASE_REMOVE_MEMBER.ordinal()] = 290;
            } catch (NoSuchFieldError unused290) {
            }
            try {
                f19760a[Tag.SHOWCASE_RENAMED.ordinal()] = 291;
            } catch (NoSuchFieldError unused291) {
            }
            try {
                f19760a[Tag.SHOWCASE_REQUEST_ACCESS.ordinal()] = 292;
            } catch (NoSuchFieldError unused292) {
            }
            try {
                f19760a[Tag.SHOWCASE_RESOLVE_COMMENT.ordinal()] = 293;
            } catch (NoSuchFieldError unused293) {
            }
            try {
                f19760a[Tag.SHOWCASE_RESTORED.ordinal()] = 294;
            } catch (NoSuchFieldError unused294) {
            }
            try {
                f19760a[Tag.SHOWCASE_TRASHED.ordinal()] = 295;
            } catch (NoSuchFieldError unused295) {
            }
            try {
                f19760a[Tag.SHOWCASE_TRASHED_DEPRECATED.ordinal()] = 296;
            } catch (NoSuchFieldError unused296) {
            }
            try {
                f19760a[Tag.SHOWCASE_UNRESOLVE_COMMENT.ordinal()] = 297;
            } catch (NoSuchFieldError unused297) {
            }
            try {
                f19760a[Tag.SHOWCASE_UNTRASHED.ordinal()] = 298;
            } catch (NoSuchFieldError unused298) {
            }
            try {
                f19760a[Tag.SHOWCASE_UNTRASHED_DEPRECATED.ordinal()] = 299;
            } catch (NoSuchFieldError unused299) {
            }
            try {
                f19760a[Tag.SHOWCASE_VIEW.ordinal()] = 300;
            } catch (NoSuchFieldError unused300) {
            }
            try {
                f19760a[Tag.SSO_ADD_CERT.ordinal()] = 301;
            } catch (NoSuchFieldError unused301) {
            }
            try {
                f19760a[Tag.SSO_ADD_LOGIN_URL.ordinal()] = 302;
            } catch (NoSuchFieldError unused302) {
            }
            try {
                f19760a[Tag.SSO_ADD_LOGOUT_URL.ordinal()] = 303;
            } catch (NoSuchFieldError unused303) {
            }
            try {
                f19760a[Tag.SSO_CHANGE_CERT.ordinal()] = 304;
            } catch (NoSuchFieldError unused304) {
            }
            try {
                f19760a[Tag.SSO_CHANGE_LOGIN_URL.ordinal()] = 305;
            } catch (NoSuchFieldError unused305) {
            }
            try {
                f19760a[Tag.SSO_CHANGE_LOGOUT_URL.ordinal()] = 306;
            } catch (NoSuchFieldError unused306) {
            }
            try {
                f19760a[Tag.SSO_CHANGE_SAML_IDENTITY_MODE.ordinal()] = 307;
            } catch (NoSuchFieldError unused307) {
            }
            try {
                f19760a[Tag.SSO_REMOVE_CERT.ordinal()] = 308;
            } catch (NoSuchFieldError unused308) {
            }
            try {
                f19760a[Tag.SSO_REMOVE_LOGIN_URL.ordinal()] = 309;
            } catch (NoSuchFieldError unused309) {
            }
            try {
                f19760a[Tag.SSO_REMOVE_LOGOUT_URL.ordinal()] = 310;
            } catch (NoSuchFieldError unused310) {
            }
            try {
                f19760a[Tag.TEAM_FOLDER_CHANGE_STATUS.ordinal()] = 311;
            } catch (NoSuchFieldError unused311) {
            }
            try {
                f19760a[Tag.TEAM_FOLDER_CREATE.ordinal()] = 312;
            } catch (NoSuchFieldError unused312) {
            }
            try {
                f19760a[Tag.TEAM_FOLDER_DOWNGRADE.ordinal()] = 313;
            } catch (NoSuchFieldError unused313) {
            }
            try {
                f19760a[Tag.TEAM_FOLDER_PERMANENTLY_DELETE.ordinal()] = 314;
            } catch (NoSuchFieldError unused314) {
            }
            try {
                f19760a[Tag.TEAM_FOLDER_RENAME.ordinal()] = 315;
            } catch (NoSuchFieldError unused315) {
            }
            try {
                f19760a[Tag.TEAM_SELECTIVE_SYNC_SETTINGS_CHANGED.ordinal()] = 316;
            } catch (NoSuchFieldError unused316) {
            }
            try {
                f19760a[Tag.ACCOUNT_CAPTURE_CHANGE_POLICY.ordinal()] = 317;
            } catch (NoSuchFieldError unused317) {
            }
            try {
                f19760a[Tag.ALLOW_DOWNLOAD_DISABLED.ordinal()] = 318;
            } catch (NoSuchFieldError unused318) {
            }
            try {
                f19760a[Tag.ALLOW_DOWNLOAD_ENABLED.ordinal()] = 319;
            } catch (NoSuchFieldError unused319) {
            }
            try {
                f19760a[Tag.CAMERA_UPLOADS_POLICY_CHANGED.ordinal()] = 320;
            } catch (NoSuchFieldError unused320) {
            }
            try {
                f19760a[Tag.CONTENT_ADMINISTRATION_POLICY_CHANGED.ordinal()] = 321;
            } catch (NoSuchFieldError unused321) {
            }
            try {
                f19760a[Tag.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY.ordinal()] = 322;
            } catch (NoSuchFieldError unused322) {
            }
            try {
                f19760a[Tag.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY.ordinal()] = 323;
            } catch (NoSuchFieldError unused323) {
            }
            try {
                f19760a[Tag.DEVICE_APPROVALS_ADD_EXCEPTION.ordinal()] = 324;
            } catch (NoSuchFieldError unused324) {
            }
            try {
                f19760a[Tag.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY.ordinal()] = 325;
            } catch (NoSuchFieldError unused325) {
            }
            try {
                f19760a[Tag.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY.ordinal()] = 326;
            } catch (NoSuchFieldError unused326) {
            }
            try {
                f19760a[Tag.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION.ordinal()] = 327;
            } catch (NoSuchFieldError unused327) {
            }
            try {
                f19760a[Tag.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION.ordinal()] = 328;
            } catch (NoSuchFieldError unused328) {
            }
            try {
                f19760a[Tag.DEVICE_APPROVALS_REMOVE_EXCEPTION.ordinal()] = 329;
            } catch (NoSuchFieldError unused329) {
            }
            try {
                f19760a[Tag.DIRECTORY_RESTRICTIONS_ADD_MEMBERS.ordinal()] = 330;
            } catch (NoSuchFieldError unused330) {
            }
            try {
                f19760a[Tag.DIRECTORY_RESTRICTIONS_REMOVE_MEMBERS.ordinal()] = 331;
            } catch (NoSuchFieldError unused331) {
            }
            try {
                f19760a[Tag.EMM_ADD_EXCEPTION.ordinal()] = 332;
            } catch (NoSuchFieldError unused332) {
            }
            try {
                f19760a[Tag.EMM_CHANGE_POLICY.ordinal()] = 333;
            } catch (NoSuchFieldError unused333) {
            }
            try {
                f19760a[Tag.EMM_REMOVE_EXCEPTION.ordinal()] = 334;
            } catch (NoSuchFieldError unused334) {
            }
            try {
                f19760a[Tag.EXTENDED_VERSION_HISTORY_CHANGE_POLICY.ordinal()] = 335;
            } catch (NoSuchFieldError unused335) {
            }
            try {
                f19760a[Tag.FILE_COMMENTS_CHANGE_POLICY.ordinal()] = 336;
            } catch (NoSuchFieldError unused336) {
            }
            try {
                f19760a[Tag.FILE_LOCKING_POLICY_CHANGED.ordinal()] = 337;
            } catch (NoSuchFieldError unused337) {
            }
            try {
                f19760a[Tag.FILE_REQUESTS_CHANGE_POLICY.ordinal()] = 338;
            } catch (NoSuchFieldError unused338) {
            }
            try {
                f19760a[Tag.FILE_REQUESTS_EMAILS_ENABLED.ordinal()] = 339;
            } catch (NoSuchFieldError unused339) {
            }
            try {
                f19760a[Tag.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY.ordinal()] = 340;
            } catch (NoSuchFieldError unused340) {
            }
            try {
                f19760a[Tag.FILE_TRANSFERS_POLICY_CHANGED.ordinal()] = 341;
            } catch (NoSuchFieldError unused341) {
            }
            try {
                f19760a[Tag.GOOGLE_SSO_CHANGE_POLICY.ordinal()] = 342;
            } catch (NoSuchFieldError unused342) {
            }
            try {
                f19760a[Tag.GROUP_USER_MANAGEMENT_CHANGE_POLICY.ordinal()] = 343;
            } catch (NoSuchFieldError unused343) {
            }
            try {
                f19760a[Tag.INTEGRATION_POLICY_CHANGED.ordinal()] = 344;
            } catch (NoSuchFieldError unused344) {
            }
            try {
                f19760a[Tag.MEMBER_REQUESTS_CHANGE_POLICY.ordinal()] = 345;
            } catch (NoSuchFieldError unused345) {
            }
            try {
                f19760a[Tag.MEMBER_SEND_INVITE_POLICY_CHANGED.ordinal()] = 346;
            } catch (NoSuchFieldError unused346) {
            }
            try {
                f19760a[Tag.MEMBER_SPACE_LIMITS_ADD_EXCEPTION.ordinal()] = 347;
            } catch (NoSuchFieldError unused347) {
            }
            try {
                f19760a[Tag.MEMBER_SPACE_LIMITS_CHANGE_CAPS_TYPE_POLICY.ordinal()] = 348;
            } catch (NoSuchFieldError unused348) {
            }
            try {
                f19760a[Tag.MEMBER_SPACE_LIMITS_CHANGE_POLICY.ordinal()] = 349;
            } catch (NoSuchFieldError unused349) {
            }
            try {
                f19760a[Tag.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION.ordinal()] = 350;
            } catch (NoSuchFieldError unused350) {
            }
            try {
                f19760a[Tag.MEMBER_SUGGESTIONS_CHANGE_POLICY.ordinal()] = 351;
            } catch (NoSuchFieldError unused351) {
            }
            try {
                f19760a[Tag.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY.ordinal()] = 352;
            } catch (NoSuchFieldError unused352) {
            }
            try {
                f19760a[Tag.NETWORK_CONTROL_CHANGE_POLICY.ordinal()] = 353;
            } catch (NoSuchFieldError unused353) {
            }
            try {
                f19760a[Tag.PAPER_CHANGE_DEPLOYMENT_POLICY.ordinal()] = 354;
            } catch (NoSuchFieldError unused354) {
            }
            try {
                f19760a[Tag.PAPER_CHANGE_MEMBER_LINK_POLICY.ordinal()] = 355;
            } catch (NoSuchFieldError unused355) {
            }
            try {
                f19760a[Tag.PAPER_CHANGE_MEMBER_POLICY.ordinal()] = 356;
            } catch (NoSuchFieldError unused356) {
            }
            try {
                f19760a[Tag.PAPER_CHANGE_POLICY.ordinal()] = 357;
            } catch (NoSuchFieldError unused357) {
            }
            try {
                f19760a[Tag.PAPER_DEFAULT_FOLDER_POLICY_CHANGED.ordinal()] = 358;
            } catch (NoSuchFieldError unused358) {
            }
            try {
                f19760a[Tag.PAPER_DESKTOP_POLICY_CHANGED.ordinal()] = 359;
            } catch (NoSuchFieldError unused359) {
            }
            try {
                f19760a[Tag.PAPER_ENABLED_USERS_GROUP_ADDITION.ordinal()] = 360;
            } catch (NoSuchFieldError unused360) {
            }
            try {
                f19760a[Tag.PAPER_ENABLED_USERS_GROUP_REMOVAL.ordinal()] = 361;
            } catch (NoSuchFieldError unused361) {
            }
            try {
                f19760a[Tag.PASSWORD_STRENGTH_REQUIREMENTS_CHANGE_POLICY.ordinal()] = 362;
            } catch (NoSuchFieldError unused362) {
            }
            try {
                f19760a[Tag.PERMANENT_DELETE_CHANGE_POLICY.ordinal()] = 363;
            } catch (NoSuchFieldError unused363) {
            }
            try {
                f19760a[Tag.RESELLER_SUPPORT_CHANGE_POLICY.ordinal()] = 364;
            } catch (NoSuchFieldError unused364) {
            }
            try {
                f19760a[Tag.REWIND_POLICY_CHANGED.ordinal()] = 365;
            } catch (NoSuchFieldError unused365) {
            }
            try {
                f19760a[Tag.SEND_FOR_SIGNATURE_POLICY_CHANGED.ordinal()] = 366;
            } catch (NoSuchFieldError unused366) {
            }
            try {
                f19760a[Tag.SHARING_CHANGE_FOLDER_JOIN_POLICY.ordinal()] = 367;
            } catch (NoSuchFieldError unused367) {
            }
            try {
                f19760a[Tag.SHARING_CHANGE_LINK_POLICY.ordinal()] = 368;
            } catch (NoSuchFieldError unused368) {
            }
            try {
                f19760a[Tag.SHARING_CHANGE_MEMBER_POLICY.ordinal()] = 369;
            } catch (NoSuchFieldError unused369) {
            }
            try {
                f19760a[Tag.SHOWCASE_CHANGE_DOWNLOAD_POLICY.ordinal()] = 370;
            } catch (NoSuchFieldError unused370) {
            }
            try {
                f19760a[Tag.SHOWCASE_CHANGE_ENABLED_POLICY.ordinal()] = 371;
            } catch (NoSuchFieldError unused371) {
            }
            try {
                f19760a[Tag.SHOWCASE_CHANGE_EXTERNAL_SHARING_POLICY.ordinal()] = 372;
            } catch (NoSuchFieldError unused372) {
            }
            try {
                f19760a[Tag.SMARTER_SMART_SYNC_POLICY_CHANGED.ordinal()] = 373;
            } catch (NoSuchFieldError unused373) {
            }
            try {
                f19760a[Tag.SMART_SYNC_CHANGE_POLICY.ordinal()] = 374;
            } catch (NoSuchFieldError unused374) {
            }
            try {
                f19760a[Tag.SMART_SYNC_NOT_OPT_OUT.ordinal()] = 375;
            } catch (NoSuchFieldError unused375) {
            }
            try {
                f19760a[Tag.SMART_SYNC_OPT_OUT.ordinal()] = 376;
            } catch (NoSuchFieldError unused376) {
            }
            try {
                f19760a[Tag.SSO_CHANGE_POLICY.ordinal()] = 377;
            } catch (NoSuchFieldError unused377) {
            }
            try {
                f19760a[Tag.TEAM_EXTENSIONS_POLICY_CHANGED.ordinal()] = 378;
            } catch (NoSuchFieldError unused378) {
            }
            try {
                f19760a[Tag.TEAM_SELECTIVE_SYNC_POLICY_CHANGED.ordinal()] = 379;
            } catch (NoSuchFieldError unused379) {
            }
            try {
                f19760a[Tag.TEAM_SHARING_WHITELIST_SUBJECTS_CHANGED.ordinal()] = 380;
            } catch (NoSuchFieldError unused380) {
            }
            try {
                f19760a[Tag.TFA_ADD_EXCEPTION.ordinal()] = 381;
            } catch (NoSuchFieldError unused381) {
            }
            try {
                f19760a[Tag.TFA_CHANGE_POLICY.ordinal()] = 382;
            } catch (NoSuchFieldError unused382) {
            }
            try {
                f19760a[Tag.TFA_REMOVE_EXCEPTION.ordinal()] = 383;
            } catch (NoSuchFieldError unused383) {
            }
            try {
                f19760a[Tag.TWO_ACCOUNT_CHANGE_POLICY.ordinal()] = 384;
            } catch (NoSuchFieldError unused384) {
            }
            try {
                f19760a[Tag.VIEWER_INFO_POLICY_CHANGED.ordinal()] = 385;
            } catch (NoSuchFieldError unused385) {
            }
            try {
                f19760a[Tag.WATERMARKING_POLICY_CHANGED.ordinal()] = 386;
            } catch (NoSuchFieldError unused386) {
            }
            try {
                f19760a[Tag.WEB_SESSIONS_CHANGE_ACTIVE_SESSION_LIMIT.ordinal()] = 387;
            } catch (NoSuchFieldError unused387) {
            }
            try {
                f19760a[Tag.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY.ordinal()] = 388;
            } catch (NoSuchFieldError unused388) {
            }
            try {
                f19760a[Tag.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY.ordinal()] = 389;
            } catch (NoSuchFieldError unused389) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_FROM.ordinal()] = 390;
            } catch (NoSuchFieldError unused390) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_TO.ordinal()] = 391;
            } catch (NoSuchFieldError unused391) {
            }
            try {
                f19760a[Tag.TEAM_PROFILE_ADD_LOGO.ordinal()] = 392;
            } catch (NoSuchFieldError unused392) {
            }
            try {
                f19760a[Tag.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE.ordinal()] = 393;
            } catch (NoSuchFieldError unused393) {
            }
            try {
                f19760a[Tag.TEAM_PROFILE_CHANGE_LOGO.ordinal()] = 394;
            } catch (NoSuchFieldError unused394) {
            }
            try {
                f19760a[Tag.TEAM_PROFILE_CHANGE_NAME.ordinal()] = 395;
            } catch (NoSuchFieldError unused395) {
            }
            try {
                f19760a[Tag.TEAM_PROFILE_REMOVE_LOGO.ordinal()] = 396;
            } catch (NoSuchFieldError unused396) {
            }
            try {
                f19760a[Tag.TFA_ADD_BACKUP_PHONE.ordinal()] = 397;
            } catch (NoSuchFieldError unused397) {
            }
            try {
                f19760a[Tag.TFA_ADD_SECURITY_KEY.ordinal()] = 398;
            } catch (NoSuchFieldError unused398) {
            }
            try {
                f19760a[Tag.TFA_CHANGE_BACKUP_PHONE.ordinal()] = 399;
            } catch (NoSuchFieldError unused399) {
            }
            try {
                f19760a[Tag.TFA_CHANGE_STATUS.ordinal()] = 400;
            } catch (NoSuchFieldError unused400) {
            }
            try {
                f19760a[Tag.TFA_REMOVE_BACKUP_PHONE.ordinal()] = 401;
            } catch (NoSuchFieldError unused401) {
            }
            try {
                f19760a[Tag.TFA_REMOVE_SECURITY_KEY.ordinal()] = 402;
            } catch (NoSuchFieldError unused402) {
            }
            try {
                f19760a[Tag.TFA_RESET.ordinal()] = 403;
            } catch (NoSuchFieldError unused403) {
            }
            try {
                f19760a[Tag.CHANGED_ENTERPRISE_ADMIN_ROLE.ordinal()] = 404;
            } catch (NoSuchFieldError unused404) {
            }
            try {
                f19760a[Tag.CHANGED_ENTERPRISE_CONNECTED_TEAM_STATUS.ordinal()] = 405;
            } catch (NoSuchFieldError unused405) {
            }
            try {
                f19760a[Tag.ENDED_ENTERPRISE_ADMIN_SESSION.ordinal()] = 406;
            } catch (NoSuchFieldError unused406) {
            }
            try {
                f19760a[Tag.ENDED_ENTERPRISE_ADMIN_SESSION_DEPRECATED.ordinal()] = 407;
            } catch (NoSuchFieldError unused407) {
            }
            try {
                f19760a[Tag.ENTERPRISE_SETTINGS_LOCKING.ordinal()] = 408;
            } catch (NoSuchFieldError unused408) {
            }
            try {
                f19760a[Tag.GUEST_ADMIN_CHANGE_STATUS.ordinal()] = 409;
            } catch (NoSuchFieldError unused409) {
            }
            try {
                f19760a[Tag.STARTED_ENTERPRISE_ADMIN_SESSION.ordinal()] = 410;
            } catch (NoSuchFieldError unused410) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_ACCEPTED.ordinal()] = 411;
            } catch (NoSuchFieldError unused411) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_PRIMARY_TEAM.ordinal()] = 412;
            } catch (NoSuchFieldError unused412) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_SECONDARY_TEAM.ordinal()] = 413;
            } catch (NoSuchFieldError unused413) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_AUTO_CANCELED.ordinal()] = 414;
            } catch (NoSuchFieldError unused414) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_CANCELED.ordinal()] = 415;
            } catch (NoSuchFieldError unused415) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_PRIMARY_TEAM.ordinal()] = 416;
            } catch (NoSuchFieldError unused416) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_SECONDARY_TEAM.ordinal()] = 417;
            } catch (NoSuchFieldError unused417) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_EXPIRED.ordinal()] = 418;
            } catch (NoSuchFieldError unused418) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_PRIMARY_TEAM.ordinal()] = 419;
            } catch (NoSuchFieldError unused419) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_SECONDARY_TEAM.ordinal()] = 420;
            } catch (NoSuchFieldError unused420) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_PRIMARY_TEAM.ordinal()] = 421;
            } catch (NoSuchFieldError unused421) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_SECONDARY_TEAM.ordinal()] = 422;
            } catch (NoSuchFieldError unused422) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_REMINDER.ordinal()] = 423;
            } catch (NoSuchFieldError unused423) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_PRIMARY_TEAM.ordinal()] = 424;
            } catch (NoSuchFieldError unused424) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_SECONDARY_TEAM.ordinal()] = 425;
            } catch (NoSuchFieldError unused425) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_REVOKED.ordinal()] = 426;
            } catch (NoSuchFieldError unused426) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_PRIMARY_TEAM.ordinal()] = 427;
            } catch (NoSuchFieldError unused427) {
            }
            try {
                f19760a[Tag.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_SECONDARY_TEAM.ordinal()] = 428;
            } catch (NoSuchFieldError unused428) {
            }
            try {
                f19760a[Tag.OTHER.ordinal()] = 429;
            } catch (NoSuchFieldError unused429) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.EventType$b */
    /* loaded from: classes4.dex */
    public static class C3509b extends UnionSerializer<EventType> {

        /* renamed from: b */
        public static final C3509b f19761b = new C3509b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EventType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            EventType appLinkTeam = "app_link_team".equals(readTag) ? EventType.appLinkTeam(AppLinkTeamType.C3360a.f18741b.deserialize(jsonParser, true)) : "app_link_user".equals(readTag) ? EventType.appLinkUser(AppLinkUserType.C3362a.f18743b.deserialize(jsonParser, true)) : "app_unlink_team".equals(readTag) ? EventType.appUnlinkTeam(AppUnlinkTeamType.C3365a.f18746b.deserialize(jsonParser, true)) : "app_unlink_user".equals(readTag) ? EventType.appUnlinkUser(AppUnlinkUserType.C3367a.f18748b.deserialize(jsonParser, true)) : "integration_connected".equals(readTag) ? EventType.integrationConnected(IntegrationConnectedType.C3682a.f19950b.deserialize(jsonParser, true)) : "integration_disconnected".equals(readTag) ? EventType.integrationDisconnected(IntegrationDisconnectedType.C3684a.f19952b.deserialize(jsonParser, true)) : "file_add_comment".equals(readTag) ? EventType.fileAddComment(FileAddCommentType.C3535a.f19794b.deserialize(jsonParser, true)) : "file_change_comment_subscription".equals(readTag) ? EventType.fileChangeCommentSubscription(FileChangeCommentSubscriptionType.C3539a.f19798b.deserialize(jsonParser, true)) : "file_delete_comment".equals(readTag) ? EventType.fileDeleteComment(FileDeleteCommentType.C3549a.f19808b.deserialize(jsonParser, true)) : "file_edit_comment".equals(readTag) ? EventType.fileEditComment(FileEditCommentType.C3555a.f19814b.deserialize(jsonParser, true)) : "file_like_comment".equals(readTag) ? EventType.fileLikeComment(FileLikeCommentType.C3561a.f19820b.deserialize(jsonParser, true)) : "file_resolve_comment".equals(readTag) ? EventType.fileResolveComment(FileResolveCommentType.C3597a.f19856b.deserialize(jsonParser, true)) : "file_unlike_comment".equals(readTag) ? EventType.fileUnlikeComment(FileUnlikeCommentType.C3621a.f19880b.deserialize(jsonParser, true)) : "file_unresolve_comment".equals(readTag) ? EventType.fileUnresolveComment(FileUnresolveCommentType.C3623a.f19882b.deserialize(jsonParser, true)) : "device_change_ip_desktop".equals(readTag) ? EventType.deviceChangeIpDesktop(DeviceChangeIpDesktopType.C3431a.f18824b.deserialize(jsonParser, true)) : "device_change_ip_mobile".equals(readTag) ? EventType.deviceChangeIpMobile(DeviceChangeIpMobileType.C3433a.f18826b.deserialize(jsonParser, true)) : "device_change_ip_web".equals(readTag) ? EventType.deviceChangeIpWeb(DeviceChangeIpWebType.C3435a.f18828b.deserialize(jsonParser, true)) : "device_delete_on_unlink_fail".equals(readTag) ? EventType.deviceDeleteOnUnlinkFail(DeviceDeleteOnUnlinkFailType.C3437a.f18830b.deserialize(jsonParser, true)) : "device_delete_on_unlink_success".equals(readTag) ? EventType.deviceDeleteOnUnlinkSuccess(DeviceDeleteOnUnlinkSuccessType.C3439a.f18832b.deserialize(jsonParser, true)) : "device_link_fail".equals(readTag) ? EventType.deviceLinkFail(DeviceLinkFailType.C3441a.f18834b.deserialize(jsonParser, true)) : "device_link_success".equals(readTag) ? EventType.deviceLinkSuccess(DeviceLinkSuccessType.C3443a.f18836b.deserialize(jsonParser, true)) : "device_management_disabled".equals(readTag) ? EventType.deviceManagementDisabled(DeviceManagementDisabledType.C3445a.f18838b.deserialize(jsonParser, true)) : "device_management_enabled".equals(readTag) ? EventType.deviceManagementEnabled(DeviceManagementEnabledType.C3447a.f18840b.deserialize(jsonParser, true)) : "device_unlink".equals(readTag) ? EventType.deviceUnlink(DeviceUnlinkType.C3454a.f18847b.deserialize(jsonParser, true)) : "emm_refresh_auth_token".equals(readTag) ? EventType.emmRefreshAuthToken(EmmRefreshAuthTokenType.C3493a.f18886b.deserialize(jsonParser, true)) : "account_capture_change_availability".equals(readTag) ? EventType.accountCaptureChangeAvailability(AccountCaptureChangeAvailabilityType.C3331a.f18703b.deserialize(jsonParser, true)) : "account_capture_migrate_account".equals(readTag) ? EventType.accountCaptureMigrateAccount(AccountCaptureMigrateAccountType.C3335a.f18707b.deserialize(jsonParser, true)) : "account_capture_notification_emails_sent".equals(readTag) ? EventType.accountCaptureNotificationEmailsSent(AccountCaptureNotificationEmailsSentType.C3337a.f18709b.deserialize(jsonParser, true)) : "account_capture_relinquish_account".equals(readTag) ? EventType.accountCaptureRelinquishAccount(AccountCaptureRelinquishAccountType.C3343a.f18715b.deserialize(jsonParser, true)) : "disabled_domain_invites".equals(readTag) ? EventType.disabledDomainInvites(DisabledDomainInvitesType.C3460a.f18853b.deserialize(jsonParser, true)) : "domain_invites_approve_request_to_join_team".equals(readTag) ? EventType.domainInvitesApproveRequestToJoinTeam(DomainInvitesApproveRequestToJoinTeamType.C3462a.f18855b.deserialize(jsonParser, true)) : "domain_invites_decline_request_to_join_team".equals(readTag) ? EventType.domainInvitesDeclineRequestToJoinTeam(DomainInvitesDeclineRequestToJoinTeamType.C3464a.f18857b.deserialize(jsonParser, true)) : "domain_invites_email_existing_users".equals(readTag) ? EventType.domainInvitesEmailExistingUsers(DomainInvitesEmailExistingUsersType.C3466a.f18859b.deserialize(jsonParser, true)) : "domain_invites_request_to_join_team".equals(readTag) ? EventType.domainInvitesRequestToJoinTeam(DomainInvitesRequestToJoinTeamType.C3468a.f18861b.deserialize(jsonParser, true)) : "domain_invites_set_invite_new_user_pref_to_no".equals(readTag) ? EventType.domainInvitesSetInviteNewUserPrefToNo(DomainInvitesSetInviteNewUserPrefToNoType.C3470a.f18863b.deserialize(jsonParser, true)) : "domain_invites_set_invite_new_user_pref_to_yes".equals(readTag) ? EventType.domainInvitesSetInviteNewUserPrefToYes(DomainInvitesSetInviteNewUserPrefToYesType.C3472a.f18865b.deserialize(jsonParser, true)) : "domain_verification_add_domain_fail".equals(readTag) ? EventType.domainVerificationAddDomainFail(DomainVerificationAddDomainFailType.C3474a.f18867b.deserialize(jsonParser, true)) : "domain_verification_add_domain_success".equals(readTag) ? EventType.domainVerificationAddDomainSuccess(DomainVerificationAddDomainSuccessType.C3476a.f18869b.deserialize(jsonParser, true)) : "domain_verification_remove_domain".equals(readTag) ? EventType.domainVerificationRemoveDomain(DomainVerificationRemoveDomainType.C3478a.f18871b.deserialize(jsonParser, true)) : "enabled_domain_invites".equals(readTag) ? EventType.enabledDomainInvites(EnabledDomainInvitesType.C3497a.f18890b.deserialize(jsonParser, true)) : "create_folder".equals(readTag) ? EventType.createFolder(CreateFolderType.C3405a.f18797b.deserialize(jsonParser, true)) : "file_add".equals(readTag) ? EventType.fileAdd(FileAddType.C3537a.f19796b.deserialize(jsonParser, true)) : "file_copy".equals(readTag) ? EventType.fileCopy(FileCopyType.C3547a.f19806b.deserialize(jsonParser, true)) : "file_delete".equals(readTag) ? EventType.fileDelete(FileDeleteType.C3551a.f19810b.deserialize(jsonParser, true)) : "file_download".equals(readTag) ? EventType.fileDownload(FileDownloadType.C3553a.f19812b.deserialize(jsonParser, true)) : "file_edit".equals(readTag) ? EventType.fileEdit(FileEditType.C3557a.f19816b.deserialize(jsonParser, true)) : "file_get_copy_reference".equals(readTag) ? EventType.fileGetCopyReference(FileGetCopyReferenceType.C3559a.f19818b.deserialize(jsonParser, true)) : "file_locking_lock_status_changed".equals(readTag) ? EventType.fileLockingLockStatusChanged(FileLockingLockStatusChangedType.C3563a.f19822b.deserialize(jsonParser, true)) : "file_move".equals(readTag) ? EventType.fileMove(FileMoveType.C3568a.f19827b.deserialize(jsonParser, true)) : "file_permanently_delete".equals(readTag) ? EventType.filePermanentlyDelete(FilePermanentlyDeleteType.C3571a.f19830b.deserialize(jsonParser, true)) : "file_preview".equals(readTag) ? EventType.filePreview(FilePreviewType.C3573a.f19832b.deserialize(jsonParser, true)) : "file_rename".equals(readTag) ? EventType.fileRename(FileRenameType.C3575a.f19834b.deserialize(jsonParser, true)) : "file_restore".equals(readTag) ? EventType.fileRestore(FileRestoreType.C3599a.f19858b.deserialize(jsonParser, true)) : "file_revert".equals(readTag) ? EventType.fileRevert(FileRevertType.C3601a.f19860b.deserialize(jsonParser, true)) : "file_rollback_changes".equals(readTag) ? EventType.fileRollbackChanges(FileRollbackChangesType.C3603a.f19862b.deserialize(jsonParser, true)) : "file_save_copy_reference".equals(readTag) ? EventType.fileSaveCopyReference(FileSaveCopyReferenceType.C3605a.f19864b.deserialize(jsonParser, true)) : "folder_overview_description_changed".equals(readTag) ? EventType.folderOverviewDescriptionChanged(FolderOverviewDescriptionChangedType.C3626a.f19885b.deserialize(jsonParser, true)) : "folder_overview_item_pinned".equals(readTag) ? EventType.folderOverviewItemPinned(FolderOverviewItemPinnedType.C3628a.f19887b.deserialize(jsonParser, true)) : "folder_overview_item_unpinned".equals(readTag) ? EventType.folderOverviewItemUnpinned(FolderOverviewItemUnpinnedType.C3630a.f19889b.deserialize(jsonParser, true)) : "rewind_folder".equals(readTag) ? EventType.rewindFolder(RewindFolderType.C3980a.f20256b.deserialize(jsonParser, true)) : "file_request_change".equals(readTag) ? EventType.fileRequestChange(FileRequestChangeType.C3577a.f19836b.deserialize(jsonParser, true)) : "file_request_close".equals(readTag) ? EventType.fileRequestClose(FileRequestCloseType.C3579a.f19838b.deserialize(jsonParser, true)) : "file_request_create".equals(readTag) ? EventType.fileRequestCreate(FileRequestCreateType.C3581a.f19840b.deserialize(jsonParser, true)) : "file_request_delete".equals(readTag) ? EventType.fileRequestDelete(FileRequestDeleteType.C3584a.f19843b.deserialize(jsonParser, true)) : "file_request_receive_file".equals(readTag) ? EventType.fileRequestReceiveFile(FileRequestReceiveFileType.C3587a.f19846b.deserialize(jsonParser, true)) : "group_add_external_id".equals(readTag) ? EventType.groupAddExternalId(GroupAddExternalIdType.C3643a.f19911b.deserialize(jsonParser, true)) : "group_add_member".equals(readTag) ? EventType.groupAddMember(GroupAddMemberType.C3645a.f19913b.deserialize(jsonParser, true)) : "group_change_external_id".equals(readTag) ? EventType.groupChangeExternalId(GroupChangeExternalIdType.C3647a.f19915b.deserialize(jsonParser, true)) : "group_change_management_type".equals(readTag) ? EventType.groupChangeManagementType(GroupChangeManagementTypeType.C3649a.f19917b.deserialize(jsonParser, true)) : "group_change_member_role".equals(readTag) ? EventType.groupChangeMemberRole(GroupChangeMemberRoleType.C3651a.f19919b.deserialize(jsonParser, true)) : "group_create".equals(readTag) ? EventType.groupCreate(GroupCreateType.C3653a.f19921b.deserialize(jsonParser, true)) : "group_delete".equals(readTag) ? EventType.groupDelete(GroupDeleteType.C3655a.f19923b.deserialize(jsonParser, true)) : "group_description_updated".equals(readTag) ? EventType.groupDescriptionUpdated(GroupDescriptionUpdatedType.C3657a.f19925b.deserialize(jsonParser, true)) : "group_join_policy_updated".equals(readTag) ? EventType.groupJoinPolicyUpdated(GroupJoinPolicyUpdatedType.C3661a.f19929b.deserialize(jsonParser, true)) : "group_moved".equals(readTag) ? EventType.groupMoved(GroupMovedType.C3664a.f19932b.deserialize(jsonParser, true)) : "group_remove_external_id".equals(readTag) ? EventType.groupRemoveExternalId(GroupRemoveExternalIdType.C3666a.f19934b.deserialize(jsonParser, true)) : "group_remove_member".equals(readTag) ? EventType.groupRemoveMember(GroupRemoveMemberType.C3668a.f19936b.deserialize(jsonParser, true)) : "group_rename".equals(readTag) ? EventType.groupRename(GroupRenameType.C3670a.f19938b.deserialize(jsonParser, true)) : "legal_holds_activate_a_hold".equals(readTag) ? EventType.legalHoldsActivateAHold(LegalHoldsActivateAHoldType.C3694a.f19962b.deserialize(jsonParser, true)) : "legal_holds_add_members".equals(readTag) ? EventType.legalHoldsAddMembers(LegalHoldsAddMembersType.C3696a.f19964b.deserialize(jsonParser, true)) : "legal_holds_change_hold_details".equals(readTag) ? EventType.legalHoldsChangeHoldDetails(LegalHoldsChangeHoldDetailsType.C3698a.f19966b.deserialize(jsonParser, true)) : "legal_holds_change_hold_name".equals(readTag) ? EventType.legalHoldsChangeHoldName(LegalHoldsChangeHoldNameType.C3700a.f19968b.deserialize(jsonParser, true)) : "legal_holds_export_a_hold".equals(readTag) ? EventType.legalHoldsExportAHold(LegalHoldsExportAHoldType.C3702a.f19970b.deserialize(jsonParser, true)) : "legal_holds_export_cancelled".equals(readTag) ? EventType.legalHoldsExportCancelled(LegalHoldsExportCancelledType.C3704a.f19972b.deserialize(jsonParser, true)) : "legal_holds_export_downloaded".equals(readTag) ? EventType.legalHoldsExportDownloaded(LegalHoldsExportDownloadedType.C3706a.f19974b.deserialize(jsonParser, true)) : "legal_holds_export_removed".equals(readTag) ? EventType.legalHoldsExportRemoved(LegalHoldsExportRemovedType.C3708a.f19976b.deserialize(jsonParser, true)) : "legal_holds_release_a_hold".equals(readTag) ? EventType.legalHoldsReleaseAHold(LegalHoldsReleaseAHoldType.C3710a.f19978b.deserialize(jsonParser, true)) : "legal_holds_remove_members".equals(readTag) ? EventType.legalHoldsRemoveMembers(LegalHoldsRemoveMembersType.C3712a.f19980b.deserialize(jsonParser, true)) : "legal_holds_report_a_hold".equals(readTag) ? EventType.legalHoldsReportAHold(LegalHoldsReportAHoldType.C3714a.f19982b.deserialize(jsonParser, true)) : "account_lock_or_unlocked".equals(readTag) ? EventType.accountLockOrUnlocked(AccountLockOrUnlockedType.C3345a.f18717b.deserialize(jsonParser, true)) : "emm_error".equals(readTag) ? EventType.emmError(EmmErrorType.C3491a.f18884b.deserialize(jsonParser, true)) : "guest_admin_signed_in_via_trusted_teams".equals(readTag) ? EventType.guestAdminSignedInViaTrustedTeams(GuestAdminSignedInViaTrustedTeamsType.C3676a.f19944b.deserialize(jsonParser, true)) : "guest_admin_signed_out_via_trusted_teams".equals(readTag) ? EventType.guestAdminSignedOutViaTrustedTeams(GuestAdminSignedOutViaTrustedTeamsType.C3678a.f19946b.deserialize(jsonParser, true)) : "login_fail".equals(readTag) ? EventType.loginFail(LoginFailType.C3720a.f19993b.deserialize(jsonParser, true)) : "login_success".equals(readTag) ? EventType.loginSuccess(LoginSuccessType.C3724a.f19997b.deserialize(jsonParser, true)) : "logout".equals(readTag) ? EventType.logout(LogoutType.C3726a.f19999b.deserialize(jsonParser, true)) : "reseller_support_session_end".equals(readTag) ? EventType.resellerSupportSessionEnd(ResellerSupportSessionEndType.C3976a.f20252b.deserialize(jsonParser, true)) : "reseller_support_session_start".equals(readTag) ? EventType.resellerSupportSessionStart(ResellerSupportSessionStartType.C3978a.f20254b.deserialize(jsonParser, true)) : "sign_in_as_session_end".equals(readTag) ? EventType.signInAsSessionEnd(SignInAsSessionEndType.C4218a.f20494b.deserialize(jsonParser, true)) : "sign_in_as_session_start".equals(readTag) ? EventType.signInAsSessionStart(SignInAsSessionStartType.C4220a.f20496b.deserialize(jsonParser, true)) : "sso_error".equals(readTag) ? EventType.ssoError(SsoErrorType.C4254a.f20530b.deserialize(jsonParser, true)) : "create_team_invite_link".equals(readTag) ? EventType.createTeamInviteLink(CreateTeamInviteLinkType.C3407a.f18799b.deserialize(jsonParser, true)) : "delete_team_invite_link".equals(readTag) ? EventType.deleteTeamInviteLink(DeleteTeamInviteLinkType.C3413a.f18806b.deserialize(jsonParser, true)) : "member_add_external_id".equals(readTag) ? EventType.memberAddExternalId(MemberAddExternalIdType.C3728a.f20001b.deserialize(jsonParser, true)) : "member_add_name".equals(readTag) ? EventType.memberAddName(MemberAddNameType.C3730a.f20003b.deserialize(jsonParser, true)) : "member_change_admin_role".equals(readTag) ? EventType.memberChangeAdminRole(MemberChangeAdminRoleType.C3732a.f20005b.deserialize(jsonParser, true)) : "member_change_email".equals(readTag) ? EventType.memberChangeEmail(MemberChangeEmailType.C3734a.f20007b.deserialize(jsonParser, true)) : "member_change_external_id".equals(readTag) ? EventType.memberChangeExternalId(MemberChangeExternalIdType.C3736a.f20009b.deserialize(jsonParser, true)) : "member_change_membership_type".equals(readTag) ? EventType.memberChangeMembershipType(MemberChangeMembershipTypeType.C3738a.f20011b.deserialize(jsonParser, true)) : "member_change_name".equals(readTag) ? EventType.memberChangeName(MemberChangeNameType.C3740a.f20013b.deserialize(jsonParser, true)) : "member_change_status".equals(readTag) ? EventType.memberChangeStatus(MemberChangeStatusType.C3742a.f20015b.deserialize(jsonParser, true)) : "member_delete_manual_contacts".equals(readTag) ? EventType.memberDeleteManualContacts(MemberDeleteManualContactsType.C3744a.f20017b.deserialize(jsonParser, true)) : "member_delete_profile_photo".equals(readTag) ? EventType.memberDeleteProfilePhoto(MemberDeleteProfilePhotoType.C3746a.f20019b.deserialize(jsonParser, true)) : "member_permanently_delete_account_contents".equals(readTag) ? EventType.memberPermanentlyDeleteAccountContents(MemberPermanentlyDeleteAccountContentsType.C3748a.f20021b.deserialize(jsonParser, true)) : "member_remove_external_id".equals(readTag) ? EventType.memberRemoveExternalId(MemberRemoveExternalIdType.C3752a.f20025b.deserialize(jsonParser, true)) : "member_set_profile_photo".equals(readTag) ? EventType.memberSetProfilePhoto(MemberSetProfilePhotoType.C3762a.f20035b.deserialize(jsonParser, true)) : "member_space_limits_add_custom_quota".equals(readTag) ? EventType.memberSpaceLimitsAddCustomQuota(MemberSpaceLimitsAddCustomQuotaType.C3764a.f20037b.deserialize(jsonParser, true)) : "member_space_limits_change_custom_quota".equals(readTag) ? EventType.memberSpaceLimitsChangeCustomQuota(MemberSpaceLimitsChangeCustomQuotaType.C3770a.f20043b.deserialize(jsonParser, true)) : "member_space_limits_change_status".equals(readTag) ? EventType.memberSpaceLimitsChangeStatus(MemberSpaceLimitsChangeStatusType.C3774a.f20047b.deserialize(jsonParser, true)) : "member_space_limits_remove_custom_quota".equals(readTag) ? EventType.memberSpaceLimitsRemoveCustomQuota(MemberSpaceLimitsRemoveCustomQuotaType.C3776a.f20049b.deserialize(jsonParser, true)) : "member_suggest".equals(readTag) ? EventType.memberSuggest(MemberSuggestType.C3782a.f20055b.deserialize(jsonParser, true)) : "member_transfer_account_contents".equals(readTag) ? EventType.memberTransferAccountContents(MemberTransferAccountContentsType.C3788a.f20061b.deserialize(jsonParser, true)) : "pending_secondary_email_added".equals(readTag) ? EventType.pendingSecondaryEmailAdded(PendingSecondaryEmailAddedType.C3960a.f20236b.deserialize(jsonParser, true)) : "secondary_email_deleted".equals(readTag) ? EventType.secondaryEmailDeleted(SecondaryEmailDeletedType.C3986a.f20262b.deserialize(jsonParser, true)) : "secondary_email_verified".equals(readTag) ? EventType.secondaryEmailVerified(SecondaryEmailVerifiedType.C3988a.f20264b.deserialize(jsonParser, true)) : "secondary_mails_policy_changed".equals(readTag) ? EventType.secondaryMailsPolicyChanged(SecondaryMailsPolicyChangedType.C3992a.f20268b.deserialize(jsonParser, true)) : "binder_add_page".equals(readTag) ? EventType.binderAddPage(BinderAddPageType.C3371a.f18758b.deserialize(jsonParser, true)) : "binder_add_section".equals(readTag) ? EventType.binderAddSection(BinderAddSectionType.C3373a.f18760b.deserialize(jsonParser, true)) : "binder_remove_page".equals(readTag) ? EventType.binderRemovePage(BinderRemovePageType.C3375a.f18762b.deserialize(jsonParser, true)) : "binder_remove_section".equals(readTag) ? EventType.binderRemoveSection(BinderRemoveSectionType.C3377a.f18764b.deserialize(jsonParser, true)) : "binder_rename_page".equals(readTag) ? EventType.binderRenamePage(BinderRenamePageType.C3379a.f18766b.deserialize(jsonParser, true)) : "binder_rename_section".equals(readTag) ? EventType.binderRenameSection(BinderRenameSectionType.C3381a.f18768b.deserialize(jsonParser, true)) : "binder_reorder_page".equals(readTag) ? EventType.binderReorderPage(BinderReorderPageType.C3383a.f18770b.deserialize(jsonParser, true)) : "binder_reorder_section".equals(readTag) ? EventType.binderReorderSection(BinderReorderSectionType.C3385a.f18772b.deserialize(jsonParser, true)) : "paper_content_add_member".equals(readTag) ? EventType.paperContentAddMember(PaperContentAddMemberType.C3847a.f20120b.deserialize(jsonParser, true)) : "paper_content_add_to_folder".equals(readTag) ? EventType.paperContentAddToFolder(PaperContentAddToFolderType.C3849a.f20122b.deserialize(jsonParser, true)) : "paper_content_archive".equals(readTag) ? EventType.paperContentArchive(PaperContentArchiveType.C3851a.f20124b.deserialize(jsonParser, true)) : "paper_content_create".equals(readTag) ? EventType.paperContentCreate(PaperContentCreateType.C3853a.f20126b.deserialize(jsonParser, true)) : "paper_content_permanently_delete".equals(readTag) ? EventType.paperContentPermanentlyDelete(PaperContentPermanentlyDeleteType.C3855a.f20128b.deserialize(jsonParser, true)) : "paper_content_remove_from_folder".equals(readTag) ? EventType.paperContentRemoveFromFolder(PaperContentRemoveFromFolderType.C3857a.f20130b.deserialize(jsonParser, true)) : "paper_content_remove_member".equals(readTag) ? EventType.paperContentRemoveMember(PaperContentRemoveMemberType.C3859a.f20132b.deserialize(jsonParser, true)) : "paper_content_rename".equals(readTag) ? EventType.paperContentRename(PaperContentRenameType.C3861a.f20134b.deserialize(jsonParser, true)) : "paper_content_restore".equals(readTag) ? EventType.paperContentRestore(PaperContentRestoreType.C3863a.f20136b.deserialize(jsonParser, true)) : "paper_doc_add_comment".equals(readTag) ? EventType.paperDocAddComment(PaperDocAddCommentType.C3873a.f20146b.deserialize(jsonParser, true)) : "paper_doc_change_member_role".equals(readTag) ? EventType.paperDocChangeMemberRole(PaperDocChangeMemberRoleType.C3875a.f20148b.deserialize(jsonParser, true)) : "paper_doc_change_sharing_policy".equals(readTag) ? EventType.paperDocChangeSharingPolicy(PaperDocChangeSharingPolicyType.C3877a.f20150b.deserialize(jsonParser, true)) : "paper_doc_change_subscription".equals(readTag) ? EventType.paperDocChangeSubscription(PaperDocChangeSubscriptionType.C3879a.f20152b.deserialize(jsonParser, true)) : "paper_doc_deleted".equals(readTag) ? EventType.paperDocDeleted(PaperDocDeletedType.C3883a.f20156b.deserialize(jsonParser, true)) : "paper_doc_delete_comment".equals(readTag) ? EventType.paperDocDeleteComment(PaperDocDeleteCommentType.C3881a.f20154b.deserialize(jsonParser, true)) : "paper_doc_download".equals(readTag) ? EventType.paperDocDownload(PaperDocDownloadType.C3885a.f20158b.deserialize(jsonParser, true)) : "paper_doc_edit".equals(readTag) ? EventType.paperDocEdit(PaperDocEditType.C3889a.f20162b.deserialize(jsonParser, true)) : "paper_doc_edit_comment".equals(readTag) ? EventType.paperDocEditComment(PaperDocEditCommentType.C3887a.f20160b.deserialize(jsonParser, true)) : "paper_doc_followed".equals(readTag) ? EventType.paperDocFollowed(PaperDocFollowedType.C3891a.f20164b.deserialize(jsonParser, true)) : "paper_doc_mention".equals(readTag) ? EventType.paperDocMention(PaperDocMentionType.C3893a.f20166b.deserialize(jsonParser, true)) : "paper_doc_ownership_changed".equals(readTag) ? EventType.paperDocOwnershipChanged(PaperDocOwnershipChangedType.C3895a.f20168b.deserialize(jsonParser, true)) : "paper_doc_request_access".equals(readTag) ? EventType.paperDocRequestAccess(PaperDocRequestAccessType.C3897a.f20170b.deserialize(jsonParser, true)) : "paper_doc_resolve_comment".equals(readTag) ? EventType.paperDocResolveComment(PaperDocResolveCommentType.C3899a.f20172b.deserialize(jsonParser, true)) : "paper_doc_revert".equals(readTag) ? EventType.paperDocRevert(PaperDocRevertType.C3901a.f20174b.deserialize(jsonParser, true)) : "paper_doc_slack_share".equals(readTag) ? EventType.paperDocSlackShare(PaperDocSlackShareType.C3903a.f20176b.deserialize(jsonParser, true)) : "paper_doc_team_invite".equals(readTag) ? EventType.paperDocTeamInvite(PaperDocTeamInviteType.C3905a.f20178b.deserialize(jsonParser, true)) : "paper_doc_trashed".equals(readTag) ? EventType.paperDocTrashed(PaperDocTrashedType.C3907a.f20180b.deserialize(jsonParser, true)) : "paper_doc_unresolve_comment".equals(readTag) ? EventType.paperDocUnresolveComment(PaperDocUnresolveCommentType.C3909a.f20182b.deserialize(jsonParser, true)) : "paper_doc_untrashed".equals(readTag) ? EventType.paperDocUntrashed(PaperDocUntrashedType.C3911a.f20184b.deserialize(jsonParser, true)) : "paper_doc_view".equals(readTag) ? EventType.paperDocView(PaperDocViewType.C3913a.f20186b.deserialize(jsonParser, true)) : "paper_external_view_allow".equals(readTag) ? EventType.paperExternalViewAllow(PaperExternalViewAllowType.C3922a.f20195b.deserialize(jsonParser, true)) : "paper_external_view_default_team".equals(readTag) ? EventType.paperExternalViewDefaultTeam(PaperExternalViewDefaultTeamType.C3924a.f20197b.deserialize(jsonParser, true)) : "paper_external_view_forbid".equals(readTag) ? EventType.paperExternalViewForbid(PaperExternalViewForbidType.C3926a.f20199b.deserialize(jsonParser, true)) : "paper_folder_change_subscription".equals(readTag) ? EventType.paperFolderChangeSubscription(PaperFolderChangeSubscriptionType.C3928a.f20201b.deserialize(jsonParser, true)) : "paper_folder_deleted".equals(readTag) ? EventType.paperFolderDeleted(PaperFolderDeletedType.C3930a.f20203b.deserialize(jsonParser, true)) : "paper_folder_followed".equals(readTag) ? EventType.paperFolderFollowed(PaperFolderFollowedType.C3932a.f20205b.deserialize(jsonParser, true)) : "paper_folder_team_invite".equals(readTag) ? EventType.paperFolderTeamInvite(PaperFolderTeamInviteType.C3935a.f20208b.deserialize(jsonParser, true)) : "paper_published_link_change_permission".equals(readTag) ? EventType.paperPublishedLinkChangePermission(PaperPublishedLinkChangePermissionType.C3939a.f20212b.deserialize(jsonParser, true)) : "paper_published_link_create".equals(readTag) ? EventType.paperPublishedLinkCreate(PaperPublishedLinkCreateType.C3941a.f20214b.deserialize(jsonParser, true)) : "paper_published_link_disabled".equals(readTag) ? EventType.paperPublishedLinkDisabled(PaperPublishedLinkDisabledType.C3943a.f20216b.deserialize(jsonParser, true)) : "paper_published_link_view".equals(readTag) ? EventType.paperPublishedLinkView(PaperPublishedLinkViewType.C3945a.f20218b.deserialize(jsonParser, true)) : "password_change".equals(readTag) ? EventType.passwordChange(PasswordChangeType.C3951a.f20227b.deserialize(jsonParser, true)) : AccountVerifyPurpose.PURPOSE_PASSWORD_RESET.equals(readTag) ? EventType.passwordReset(PasswordResetType.C3955a.f20231b.deserialize(jsonParser, true)) : "password_reset_all".equals(readTag) ? EventType.passwordResetAll(PasswordResetAllType.C3953a.f20229b.deserialize(jsonParser, true)) : "emm_create_exceptions_report".equals(readTag) ? EventType.emmCreateExceptionsReport(EmmCreateExceptionsReportType.C3487a.f18880b.deserialize(jsonParser, true)) : "emm_create_usage_report".equals(readTag) ? EventType.emmCreateUsageReport(EmmCreateUsageReportType.C3489a.f18882b.deserialize(jsonParser, true)) : "export_members_report".equals(readTag) ? EventType.exportMembersReport(ExportMembersReportType.C3515a.f19767b.deserialize(jsonParser, true)) : "export_members_report_fail".equals(readTag) ? EventType.exportMembersReportFail(ExportMembersReportFailType.C3514a.f19766b.deserialize(jsonParser, true)) : "external_sharing_create_report".equals(readTag) ? EventType.externalSharingCreateReport(ExternalSharingCreateReportType.C3521a.f19773b.deserialize(jsonParser, true)) : "external_sharing_report_failed".equals(readTag) ? EventType.externalSharingReportFailed(ExternalSharingReportFailedType.C3523a.f19775b.deserialize(jsonParser, true)) : "no_expiration_link_gen_create_report".equals(readTag) ? EventType.noExpirationLinkGenCreateReport(NoExpirationLinkGenCreateReportType.C3802a.f20075b.deserialize(jsonParser, true)) : "no_expiration_link_gen_report_failed".equals(readTag) ? EventType.noExpirationLinkGenReportFailed(NoExpirationLinkGenReportFailedType.C3804a.f20077b.deserialize(jsonParser, true)) : "no_password_link_gen_create_report".equals(readTag) ? EventType.noPasswordLinkGenCreateReport(NoPasswordLinkGenCreateReportType.C3806a.f20079b.deserialize(jsonParser, true)) : "no_password_link_gen_report_failed".equals(readTag) ? EventType.noPasswordLinkGenReportFailed(NoPasswordLinkGenReportFailedType.C3808a.f20081b.deserialize(jsonParser, true)) : "no_password_link_view_create_report".equals(readTag) ? EventType.noPasswordLinkViewCreateReport(NoPasswordLinkViewCreateReportType.C3810a.f20083b.deserialize(jsonParser, true)) : "no_password_link_view_report_failed".equals(readTag) ? EventType.noPasswordLinkViewReportFailed(NoPasswordLinkViewReportFailedType.C3812a.f20085b.deserialize(jsonParser, true)) : "outdated_link_view_create_report".equals(readTag) ? EventType.outdatedLinkViewCreateReport(OutdatedLinkViewCreateReportType.C3831a.f20104b.deserialize(jsonParser, true)) : "outdated_link_view_report_failed".equals(readTag) ? EventType.outdatedLinkViewReportFailed(OutdatedLinkViewReportFailedType.C3833a.f20106b.deserialize(jsonParser, true)) : "paper_admin_export_start".equals(readTag) ? EventType.paperAdminExportStart(PaperAdminExportStartType.C3837a.f20110b.deserialize(jsonParser, true)) : "smart_sync_create_admin_privilege_report".equals(readTag) ? EventType.smartSyncCreateAdminPrivilegeReport(SmartSyncCreateAdminPrivilegeReportType.C4224a.f20500b.deserialize(jsonParser, true)) : "team_activity_create_report".equals(readTag) ? EventType.teamActivityCreateReport(TeamActivityCreateReportType.C4266a.f20542b.deserialize(jsonParser, true)) : "team_activity_create_report_fail".equals(readTag) ? EventType.teamActivityCreateReportFail(TeamActivityCreateReportFailType.C4265a.f20541b.deserialize(jsonParser, true)) : "collection_share".equals(readTag) ? EventType.collectionShare(CollectionShareType.C3396a.f18783b.deserialize(jsonParser, true)) : "file_transfers_file_add".equals(readTag) ? EventType.fileTransfersFileAdd(FileTransfersFileAddType.C3607a.f19866b.deserialize(jsonParser, true)) : "file_transfers_transfer_delete".equals(readTag) ? EventType.fileTransfersTransferDelete(FileTransfersTransferDeleteType.C3613a.f19872b.deserialize(jsonParser, true)) : "file_transfers_transfer_download".equals(readTag) ? EventType.fileTransfersTransferDownload(FileTransfersTransferDownloadType.C3615a.f19874b.deserialize(jsonParser, true)) : "file_transfers_transfer_send".equals(readTag) ? EventType.fileTransfersTransferSend(FileTransfersTransferSendType.C3617a.f19876b.deserialize(jsonParser, true)) : "file_transfers_transfer_view".equals(readTag) ? EventType.fileTransfersTransferView(FileTransfersTransferViewType.C3619a.f19878b.deserialize(jsonParser, true)) : "note_acl_invite_only".equals(readTag) ? EventType.noteAclInviteOnly(NoteAclInviteOnlyType.C3816a.f20089b.deserialize(jsonParser, true)) : "note_acl_link".equals(readTag) ? EventType.noteAclLink(NoteAclLinkType.C3818a.f20091b.deserialize(jsonParser, true)) : "note_acl_team_link".equals(readTag) ? EventType.noteAclTeamLink(NoteAclTeamLinkType.C3820a.f20093b.deserialize(jsonParser, true)) : "note_shared".equals(readTag) ? EventType.noteShared(NoteSharedType.C3824a.f20097b.deserialize(jsonParser, true)) : "note_share_receive".equals(readTag) ? EventType.noteShareReceive(NoteShareReceiveType.C3822a.f20095b.deserialize(jsonParser, true)) : "open_note_shared".equals(readTag) ? EventType.openNoteShared(OpenNoteSharedType.C3826a.f20099b.deserialize(jsonParser, true)) : "sf_add_group".equals(readTag) ? EventType.sfAddGroup(SfAddGroupType.C4003a.f20279b.deserialize(jsonParser, true)) : "sf_allow_non_members_to_view_shared_links".equals(readTag) ? EventType.sfAllowNonMembersToViewSharedLinks(SfAllowNonMembersToViewSharedLinksType.C4005a.f20281b.deserialize(jsonParser, true)) : "sf_external_invite_warn".equals(readTag) ? EventType.sfExternalInviteWarn(SfExternalInviteWarnType.C4007a.f20283b.deserialize(jsonParser, true)) : "sf_fb_invite".equals(readTag) ? EventType.sfFbInvite(SfFbInviteType.C4011a.f20287b.deserialize(jsonParser, true)) : "sf_fb_invite_change_role".equals(readTag) ? EventType.sfFbInviteChangeRole(SfFbInviteChangeRoleType.C4009a.f20285b.deserialize(jsonParser, true)) : "sf_fb_uninvite".equals(readTag) ? EventType.sfFbUninvite(SfFbUninviteType.C4013a.f20289b.deserialize(jsonParser, true)) : "sf_invite_group".equals(readTag) ? EventType.sfInviteGroup(SfInviteGroupType.C4015a.f20291b.deserialize(jsonParser, true)) : "sf_team_grant_access".equals(readTag) ? EventType.sfTeamGrantAccess(SfTeamGrantAccessType.C4017a.f20293b.deserialize(jsonParser, true)) : "sf_team_invite".equals(readTag) ? EventType.sfTeamInvite(SfTeamInviteType.C4021a.f20297b.deserialize(jsonParser, true)) : "sf_team_invite_change_role".equals(readTag) ? EventType.sfTeamInviteChangeRole(SfTeamInviteChangeRoleType.C4019a.f20295b.deserialize(jsonParser, true)) : "sf_team_join".equals(readTag) ? EventType.sfTeamJoin(SfTeamJoinType.C4025a.f20301b.deserialize(jsonParser, true)) : "sf_team_join_from_oob_link".equals(readTag) ? EventType.sfTeamJoinFromOobLink(SfTeamJoinFromOobLinkType.C4024a.f20300b.deserialize(jsonParser, true)) : "sf_team_uninvite".equals(readTag) ? EventType.sfTeamUninvite(SfTeamUninviteType.C4027a.f20303b.deserialize(jsonParser, true)) : "shared_content_add_invitees".equals(readTag) ? EventType.sharedContentAddInvitees(SharedContentAddInviteesType.C4029a.f20305b.deserialize(jsonParser, true)) : "shared_content_add_link_expiry".equals(readTag) ? EventType.sharedContentAddLinkExpiry(SharedContentAddLinkExpiryType.C4031a.f20307b.deserialize(jsonParser, true)) : "shared_content_add_link_password".equals(readTag) ? EventType.sharedContentAddLinkPassword(SharedContentAddLinkPasswordType.C4033a.f20309b.deserialize(jsonParser, true)) : "shared_content_add_member".equals(readTag) ? EventType.sharedContentAddMember(SharedContentAddMemberType.C4035a.f20311b.deserialize(jsonParser, true)) : "shared_content_change_downloads_policy".equals(readTag) ? EventType.sharedContentChangeDownloadsPolicy(SharedContentChangeDownloadsPolicyType.C4037a.f20313b.deserialize(jsonParser, true)) : "shared_content_change_invitee_role".equals(readTag) ? EventType.sharedContentChangeInviteeRole(SharedContentChangeInviteeRoleType.C4039a.f20315b.deserialize(jsonParser, true)) : "shared_content_change_link_audience".equals(readTag) ? EventType.sharedContentChangeLinkAudience(SharedContentChangeLinkAudienceType.C4041a.f20317b.deserialize(jsonParser, true)) : "shared_content_change_link_expiry".equals(readTag) ? EventType.sharedContentChangeLinkExpiry(SharedContentChangeLinkExpiryType.C4043a.f20319b.deserialize(jsonParser, true)) : "shared_content_change_link_password".equals(readTag) ? EventType.sharedContentChangeLinkPassword(SharedContentChangeLinkPasswordType.C4045a.f20321b.deserialize(jsonParser, true)) : "shared_content_change_member_role".equals(readTag) ? EventType.sharedContentChangeMemberRole(SharedContentChangeMemberRoleType.C4047a.f20323b.deserialize(jsonParser, true)) : "shared_content_change_viewer_info_policy".equals(readTag) ? EventType.sharedContentChangeViewerInfoPolicy(SharedContentChangeViewerInfoPolicyType.C4049a.f20325b.deserialize(jsonParser, true)) : "shared_content_claim_invitation".equals(readTag) ? EventType.sharedContentClaimInvitation(SharedContentClaimInvitationType.C4051a.f20327b.deserialize(jsonParser, true)) : "shared_content_copy".equals(readTag) ? EventType.sharedContentCopy(SharedContentCopyType.C4053a.f20329b.deserialize(jsonParser, true)) : "shared_content_download".equals(readTag) ? EventType.sharedContentDownload(SharedContentDownloadType.C4055a.f20331b.deserialize(jsonParser, true)) : "shared_content_relinquish_membership".equals(readTag) ? EventType.sharedContentRelinquishMembership(SharedContentRelinquishMembershipType.C4057a.f20333b.deserialize(jsonParser, true)) : "shared_content_remove_invitees".equals(readTag) ? EventType.sharedContentRemoveInvitees(SharedContentRemoveInviteesType.C4059a.f20335b.deserialize(jsonParser, true)) : "shared_content_remove_link_expiry".equals(readTag) ? EventType.sharedContentRemoveLinkExpiry(SharedContentRemoveLinkExpiryType.C4061a.f20337b.deserialize(jsonParser, true)) : "shared_content_remove_link_password".equals(readTag) ? EventType.sharedContentRemoveLinkPassword(SharedContentRemoveLinkPasswordType.C4063a.f20339b.deserialize(jsonParser, true)) : "shared_content_remove_member".equals(readTag) ? EventType.sharedContentRemoveMember(SharedContentRemoveMemberType.C4065a.f20341b.deserialize(jsonParser, true)) : "shared_content_request_access".equals(readTag) ? EventType.sharedContentRequestAccess(SharedContentRequestAccessType.C4067a.f20343b.deserialize(jsonParser, true)) : "shared_content_restore_invitees".equals(readTag) ? EventType.sharedContentRestoreInvitees(SharedContentRestoreInviteesType.C4069a.f20345b.deserialize(jsonParser, true)) : "shared_content_restore_member".equals(readTag) ? EventType.sharedContentRestoreMember(SharedContentRestoreMemberType.C4071a.f20347b.deserialize(jsonParser, true)) : "shared_content_unshare".equals(readTag) ? EventType.sharedContentUnshare(SharedContentUnshareType.C4073a.f20349b.deserialize(jsonParser, true)) : "shared_content_view".equals(readTag) ? EventType.sharedContentView(SharedContentViewType.C4075a.f20351b.deserialize(jsonParser, true)) : "shared_folder_change_link_policy".equals(readTag) ? EventType.sharedFolderChangeLinkPolicy(SharedFolderChangeLinkPolicyType.C4077a.f20353b.deserialize(jsonParser, true)) : "shared_folder_change_members_inheritance_policy".equals(readTag) ? EventType.sharedFolderChangeMembersInheritancePolicy(SharedFolderChangeMembersInheritancePolicyType.C4079a.f20355b.deserialize(jsonParser, true)) : "shared_folder_change_members_management_policy".equals(readTag) ? EventType.sharedFolderChangeMembersManagementPolicy(SharedFolderChangeMembersManagementPolicyType.C4081a.f20357b.deserialize(jsonParser, true)) : "shared_folder_change_members_policy".equals(readTag) ? EventType.sharedFolderChangeMembersPolicy(SharedFolderChangeMembersPolicyType.C4083a.f20359b.deserialize(jsonParser, true)) : "shared_folder_create".equals(readTag) ? EventType.sharedFolderCreate(SharedFolderCreateType.C4085a.f20361b.deserialize(jsonParser, true)) : "shared_folder_decline_invitation".equals(readTag) ? EventType.sharedFolderDeclineInvitation(SharedFolderDeclineInvitationType.C4087a.f20363b.deserialize(jsonParser, true)) : "shared_folder_mount".equals(readTag) ? EventType.sharedFolderMount(SharedFolderMountType.C4091a.f20367b.deserialize(jsonParser, true)) : "shared_folder_nest".equals(readTag) ? EventType.sharedFolderNest(SharedFolderNestType.C4093a.f20369b.deserialize(jsonParser, true)) : "shared_folder_transfer_ownership".equals(readTag) ? EventType.sharedFolderTransferOwnership(SharedFolderTransferOwnershipType.C4095a.f20371b.deserialize(jsonParser, true)) : "shared_folder_unmount".equals(readTag) ? EventType.sharedFolderUnmount(SharedFolderUnmountType.C4097a.f20373b.deserialize(jsonParser, true)) : "shared_link_add_expiry".equals(readTag) ? EventType.sharedLinkAddExpiry(SharedLinkAddExpiryType.C4101a.f20377b.deserialize(jsonParser, true)) : "shared_link_change_expiry".equals(readTag) ? EventType.sharedLinkChangeExpiry(SharedLinkChangeExpiryType.C4103a.f20379b.deserialize(jsonParser, true)) : "shared_link_change_visibility".equals(readTag) ? EventType.sharedLinkChangeVisibility(SharedLinkChangeVisibilityType.C4105a.f20381b.deserialize(jsonParser, true)) : "shared_link_copy".equals(readTag) ? EventType.sharedLinkCopy(SharedLinkCopyType.C4107a.f20383b.deserialize(jsonParser, true)) : "shared_link_create".equals(readTag) ? EventType.sharedLinkCreate(SharedLinkCreateType.C4109a.f20385b.deserialize(jsonParser, true)) : "shared_link_disable".equals(readTag) ? EventType.sharedLinkDisable(SharedLinkDisableType.C4111a.f20387b.deserialize(jsonParser, true)) : "shared_link_download".equals(readTag) ? EventType.sharedLinkDownload(SharedLinkDownloadType.C4113a.f20389b.deserialize(jsonParser, true)) : "shared_link_remove_expiry".equals(readTag) ? EventType.sharedLinkRemoveExpiry(SharedLinkRemoveExpiryType.C4115a.f20391b.deserialize(jsonParser, true)) : "shared_link_settings_add_expiration".equals(readTag) ? EventType.sharedLinkSettingsAddExpiration(SharedLinkSettingsAddExpirationType.C4117a.f20393b.deserialize(jsonParser, true)) : "shared_link_settings_add_password".equals(readTag) ? EventType.sharedLinkSettingsAddPassword(SharedLinkSettingsAddPasswordType.C4119a.f20395b.deserialize(jsonParser, true)) : "shared_link_settings_allow_download_disabled".equals(readTag) ? EventType.sharedLinkSettingsAllowDownloadDisabled(SharedLinkSettingsAllowDownloadDisabledType.C4121a.f20397b.deserialize(jsonParser, true)) : "shared_link_settings_allow_download_enabled".equals(readTag) ? EventType.sharedLinkSettingsAllowDownloadEnabled(SharedLinkSettingsAllowDownloadEnabledType.C4123a.f20399b.deserialize(jsonParser, true)) : "shared_link_settings_change_audience".equals(readTag) ? EventType.sharedLinkSettingsChangeAudience(SharedLinkSettingsChangeAudienceType.C4125a.f20401b.deserialize(jsonParser, true)) : "shared_link_settings_change_expiration".equals(readTag) ? EventType.sharedLinkSettingsChangeExpiration(SharedLinkSettingsChangeExpirationType.C4127a.f20403b.deserialize(jsonParser, true)) : "shared_link_settings_change_password".equals(readTag) ? EventType.sharedLinkSettingsChangePassword(SharedLinkSettingsChangePasswordType.C4129a.f20405b.deserialize(jsonParser, true)) : "shared_link_settings_remove_expiration".equals(readTag) ? EventType.sharedLinkSettingsRemoveExpiration(SharedLinkSettingsRemoveExpirationType.C4131a.f20407b.deserialize(jsonParser, true)) : "shared_link_settings_remove_password".equals(readTag) ? EventType.sharedLinkSettingsRemovePassword(SharedLinkSettingsRemovePasswordType.C4133a.f20409b.deserialize(jsonParser, true)) : "shared_link_share".equals(readTag) ? EventType.sharedLinkShare(SharedLinkShareType.C4135a.f20411b.deserialize(jsonParser, true)) : "shared_link_view".equals(readTag) ? EventType.sharedLinkView(SharedLinkViewType.C4137a.f20413b.deserialize(jsonParser, true)) : "shared_note_opened".equals(readTag) ? EventType.sharedNoteOpened(SharedNoteOpenedType.C4141a.f20417b.deserialize(jsonParser, true)) : "shmodel_group_share".equals(readTag) ? EventType.shmodelGroupShare(ShmodelGroupShareType.C4155a.f20431b.deserialize(jsonParser, true)) : "showcase_access_granted".equals(readTag) ? EventType.showcaseAccessGranted(ShowcaseAccessGrantedType.C4157a.f20433b.deserialize(jsonParser, true)) : "showcase_add_member".equals(readTag) ? EventType.showcaseAddMember(ShowcaseAddMemberType.C4159a.f20435b.deserialize(jsonParser, true)) : "showcase_archived".equals(readTag) ? EventType.showcaseArchived(ShowcaseArchivedType.C4161a.f20437b.deserialize(jsonParser, true)) : "showcase_created".equals(readTag) ? EventType.showcaseCreated(ShowcaseCreatedType.C4169a.f20445b.deserialize(jsonParser, true)) : "showcase_delete_comment".equals(readTag) ? EventType.showcaseDeleteComment(ShowcaseDeleteCommentType.C4171a.f20447b.deserialize(jsonParser, true)) : "showcase_edited".equals(readTag) ? EventType.showcaseEdited(ShowcaseEditedType.C4178a.f20454b.deserialize(jsonParser, true)) : "showcase_edit_comment".equals(readTag) ? EventType.showcaseEditComment(ShowcaseEditCommentType.C4176a.f20452b.deserialize(jsonParser, true)) : "showcase_file_added".equals(readTag) ? EventType.showcaseFileAdded(ShowcaseFileAddedType.C4184a.f20460b.deserialize(jsonParser, true)) : "showcase_file_download".equals(readTag) ? EventType.showcaseFileDownload(ShowcaseFileDownloadType.C4186a.f20462b.deserialize(jsonParser, true)) : "showcase_file_removed".equals(readTag) ? EventType.showcaseFileRemoved(ShowcaseFileRemovedType.C4188a.f20464b.deserialize(jsonParser, true)) : "showcase_file_view".equals(readTag) ? EventType.showcaseFileView(ShowcaseFileViewType.C4190a.f20466b.deserialize(jsonParser, true)) : "showcase_permanently_deleted".equals(readTag) ? EventType.showcasePermanentlyDeleted(ShowcasePermanentlyDeletedType.C4192a.f20468b.deserialize(jsonParser, true)) : "showcase_post_comment".equals(readTag) ? EventType.showcasePostComment(ShowcasePostCommentType.C4194a.f20470b.deserialize(jsonParser, true)) : "showcase_remove_member".equals(readTag) ? EventType.showcaseRemoveMember(ShowcaseRemoveMemberType.C4196a.f20472b.deserialize(jsonParser, true)) : "showcase_renamed".equals(readTag) ? EventType.showcaseRenamed(ShowcaseRenamedType.C4198a.f20474b.deserialize(jsonParser, true)) : "showcase_request_access".equals(readTag) ? EventType.showcaseRequestAccess(ShowcaseRequestAccessType.C4200a.f20476b.deserialize(jsonParser, true)) : "showcase_resolve_comment".equals(readTag) ? EventType.showcaseResolveComment(ShowcaseResolveCommentType.C4202a.f20478b.deserialize(jsonParser, true)) : "showcase_restored".equals(readTag) ? EventType.showcaseRestored(ShowcaseRestoredType.C4204a.f20480b.deserialize(jsonParser, true)) : "showcase_trashed".equals(readTag) ? EventType.showcaseTrashed(ShowcaseTrashedType.C4208a.f20484b.deserialize(jsonParser, true)) : "showcase_trashed_deprecated".equals(readTag) ? EventType.showcaseTrashedDeprecated(ShowcaseTrashedDeprecatedType.C4206a.f20482b.deserialize(jsonParser, true)) : "showcase_unresolve_comment".equals(readTag) ? EventType.showcaseUnresolveComment(ShowcaseUnresolveCommentType.C4210a.f20486b.deserialize(jsonParser, true)) : "showcase_untrashed".equals(readTag) ? EventType.showcaseUntrashed(ShowcaseUntrashedType.C4214a.f20490b.deserialize(jsonParser, true)) : "showcase_untrashed_deprecated".equals(readTag) ? EventType.showcaseUntrashedDeprecated(ShowcaseUntrashedDeprecatedType.C4212a.f20488b.deserialize(jsonParser, true)) : "showcase_view".equals(readTag) ? EventType.showcaseView(ShowcaseViewType.C4216a.f20492b.deserialize(jsonParser, true)) : "sso_add_cert".equals(readTag) ? EventType.ssoAddCert(SsoAddCertType.C4238a.f20514b.deserialize(jsonParser, true)) : "sso_add_login_url".equals(readTag) ? EventType.ssoAddLoginUrl(SsoAddLoginUrlType.C4240a.f20516b.deserialize(jsonParser, true)) : "sso_add_logout_url".equals(readTag) ? EventType.ssoAddLogoutUrl(SsoAddLogoutUrlType.C4242a.f20518b.deserialize(jsonParser, true)) : "sso_change_cert".equals(readTag) ? EventType.ssoChangeCert(SsoChangeCertType.C4244a.f20520b.deserialize(jsonParser, true)) : "sso_change_login_url".equals(readTag) ? EventType.ssoChangeLoginUrl(SsoChangeLoginUrlType.C4246a.f20522b.deserialize(jsonParser, true)) : "sso_change_logout_url".equals(readTag) ? EventType.ssoChangeLogoutUrl(SsoChangeLogoutUrlType.C4248a.f20524b.deserialize(jsonParser, true)) : "sso_change_saml_identity_mode".equals(readTag) ? EventType.ssoChangeSamlIdentityMode(SsoChangeSamlIdentityModeType.C4252a.f20528b.deserialize(jsonParser, true)) : "sso_remove_cert".equals(readTag) ? EventType.ssoRemoveCert(SsoRemoveCertType.C4256a.f20532b.deserialize(jsonParser, true)) : "sso_remove_login_url".equals(readTag) ? EventType.ssoRemoveLoginUrl(SsoRemoveLoginUrlType.C4258a.f20534b.deserialize(jsonParser, true)) : "sso_remove_logout_url".equals(readTag) ? EventType.ssoRemoveLogoutUrl(SsoRemoveLogoutUrlType.C4260a.f20536b.deserialize(jsonParser, true)) : "team_folder_change_status".equals(readTag) ? EventType.teamFolderChangeStatus(TeamFolderChangeStatusType.C4274a.f20550b.deserialize(jsonParser, true)) : "team_folder_create".equals(readTag) ? EventType.teamFolderCreate(TeamFolderCreateType.C4276a.f20552b.deserialize(jsonParser, true)) : "team_folder_downgrade".equals(readTag) ? EventType.teamFolderDowngrade(TeamFolderDowngradeType.C4278a.f20554b.deserialize(jsonParser, true)) : "team_folder_permanently_delete".equals(readTag) ? EventType.teamFolderPermanentlyDelete(TeamFolderPermanentlyDeleteType.C4280a.f20556b.deserialize(jsonParser, true)) : "team_folder_rename".equals(readTag) ? EventType.teamFolderRename(TeamFolderRenameType.C4282a.f20558b.deserialize(jsonParser, true)) : "team_selective_sync_settings_changed".equals(readTag) ? EventType.teamSelectiveSyncSettingsChanged(TeamSelectiveSyncSettingsChangedType.C4353a.f20641b.deserialize(jsonParser, true)) : "account_capture_change_policy".equals(readTag) ? EventType.accountCaptureChangePolicy(AccountCaptureChangePolicyType.C3333a.f18705b.deserialize(jsonParser, true)) : "allow_download_disabled".equals(readTag) ? EventType.allowDownloadDisabled(AllowDownloadDisabledType.C3355a.f18736b.deserialize(jsonParser, true)) : "allow_download_enabled".equals(readTag) ? EventType.allowDownloadEnabled(AllowDownloadEnabledType.C3357a.f18738b.deserialize(jsonParser, true)) : "camera_uploads_policy_changed".equals(readTag) ? EventType.cameraUploadsPolicyChanged(CameraUploadsPolicyChangedType.C3389a.f18776b.deserialize(jsonParser, true)) : "content_administration_policy_changed".equals(readTag) ? EventType.contentAdministrationPolicyChanged(ContentAdministrationPolicyChangedType.C3399a.f18786b.deserialize(jsonParser, true)) : "data_placement_restriction_change_policy".equals(readTag) ? EventType.dataPlacementRestrictionChangePolicy(DataPlacementRestrictionChangePolicyType.C3409a.f18801b.deserialize(jsonParser, true)) : "data_placement_restriction_satisfy_policy".equals(readTag) ? EventType.dataPlacementRestrictionSatisfyPolicy(DataPlacementRestrictionSatisfyPolicyType.C3411a.f18803b.deserialize(jsonParser, true)) : "device_approvals_add_exception".equals(readTag) ? EventType.deviceApprovalsAddException(DeviceApprovalsAddExceptionType.C3417a.f18810b.deserialize(jsonParser, true)) : "device_approvals_change_desktop_policy".equals(readTag) ? EventType.deviceApprovalsChangeDesktopPolicy(DeviceApprovalsChangeDesktopPolicyType.C3419a.f18812b.deserialize(jsonParser, true)) : "device_approvals_change_mobile_policy".equals(readTag) ? EventType.deviceApprovalsChangeMobilePolicy(DeviceApprovalsChangeMobilePolicyType.C3421a.f18814b.deserialize(jsonParser, true)) : "device_approvals_change_overage_action".equals(readTag) ? EventType.deviceApprovalsChangeOverageAction(DeviceApprovalsChangeOverageActionType.C3423a.f18816b.deserialize(jsonParser, true)) : "device_approvals_change_unlink_action".equals(readTag) ? EventType.deviceApprovalsChangeUnlinkAction(DeviceApprovalsChangeUnlinkActionType.C3425a.f18818b.deserialize(jsonParser, true)) : "device_approvals_remove_exception".equals(readTag) ? EventType.deviceApprovalsRemoveException(DeviceApprovalsRemoveExceptionType.C3429a.f18822b.deserialize(jsonParser, true)) : "directory_restrictions_add_members".equals(readTag) ? EventType.directoryRestrictionsAddMembers(DirectoryRestrictionsAddMembersType.C3456a.f18849b.deserialize(jsonParser, true)) : "directory_restrictions_remove_members".equals(readTag) ? EventType.directoryRestrictionsRemoveMembers(DirectoryRestrictionsRemoveMembersType.C3458a.f18851b.deserialize(jsonParser, true)) : "emm_add_exception".equals(readTag) ? EventType.emmAddException(EmmAddExceptionType.C3483a.f18876b.deserialize(jsonParser, true)) : "emm_change_policy".equals(readTag) ? EventType.emmChangePolicy(EmmChangePolicyType.C3485a.f18878b.deserialize(jsonParser, true)) : "emm_remove_exception".equals(readTag) ? EventType.emmRemoveException(EmmRemoveExceptionType.C3495a.f18888b.deserialize(jsonParser, true)) : "extended_version_history_change_policy".equals(readTag) ? EventType.extendedVersionHistoryChangePolicy(ExtendedVersionHistoryChangePolicyType.C3517a.f19769b.deserialize(jsonParser, true)) : "file_comments_change_policy".equals(readTag) ? EventType.fileCommentsChangePolicy(FileCommentsChangePolicyType.C3543a.f19802b.deserialize(jsonParser, true)) : "file_locking_policy_changed".equals(readTag) ? EventType.fileLockingPolicyChanged(FileLockingPolicyChangedType.C3565a.f19824b.deserialize(jsonParser, true)) : "file_requests_change_policy".equals(readTag) ? EventType.fileRequestsChangePolicy(FileRequestsChangePolicyType.C3589a.f19848b.deserialize(jsonParser, true)) : "file_requests_emails_enabled".equals(readTag) ? EventType.fileRequestsEmailsEnabled(FileRequestsEmailsEnabledType.C3591a.f19850b.deserialize(jsonParser, true)) : "file_requests_emails_restricted_to_team_only".equals(readTag) ? EventType.fileRequestsEmailsRestrictedToTeamOnly(FileRequestsEmailsRestrictedToTeamOnlyType.C3593a.f19852b.deserialize(jsonParser, true)) : "file_transfers_policy_changed".equals(readTag) ? EventType.fileTransfersPolicyChanged(FileTransfersPolicyChangedType.C3611a.f19870b.deserialize(jsonParser, true)) : "google_sso_change_policy".equals(readTag) ? EventType.googleSsoChangePolicy(GoogleSsoChangePolicyType.C3639a.f19907b.deserialize(jsonParser, true)) : "group_user_management_change_policy".equals(readTag) ? EventType.groupUserManagementChangePolicy(GroupUserManagementChangePolicyType.C3672a.f19940b.deserialize(jsonParser, true)) : "integration_policy_changed".equals(readTag) ? EventType.integrationPolicyChanged(IntegrationPolicyChangedType.C3688a.f19956b.deserialize(jsonParser, true)) : "member_requests_change_policy".equals(readTag) ? EventType.memberRequestsChangePolicy(MemberRequestsChangePolicyType.C3754a.f20027b.deserialize(jsonParser, true)) : "member_send_invite_policy_changed".equals(readTag) ? EventType.memberSendInvitePolicyChanged(MemberSendInvitePolicyChangedType.C3760a.f20033b.deserialize(jsonParser, true)) : "member_space_limits_add_exception".equals(readTag) ? EventType.memberSpaceLimitsAddException(MemberSpaceLimitsAddExceptionType.C3766a.f20039b.deserialize(jsonParser, true)) : "member_space_limits_change_caps_type_policy".equals(readTag) ? EventType.memberSpaceLimitsChangeCapsTypePolicy(MemberSpaceLimitsChangeCapsTypePolicyType.C3768a.f20041b.deserialize(jsonParser, true)) : "member_space_limits_change_policy".equals(readTag) ? EventType.memberSpaceLimitsChangePolicy(MemberSpaceLimitsChangePolicyType.C3772a.f20045b.deserialize(jsonParser, true)) : "member_space_limits_remove_exception".equals(readTag) ? EventType.memberSpaceLimitsRemoveException(MemberSpaceLimitsRemoveExceptionType.C3778a.f20051b.deserialize(jsonParser, true)) : "member_suggestions_change_policy".equals(readTag) ? EventType.memberSuggestionsChangePolicy(MemberSuggestionsChangePolicyType.C3784a.f20057b.deserialize(jsonParser, true)) : "microsoft_office_addin_change_policy".equals(readTag) ? EventType.microsoftOfficeAddinChangePolicy(MicrosoftOfficeAddinChangePolicyType.C3790a.f20063b.deserialize(jsonParser, true)) : "network_control_change_policy".equals(readTag) ? EventType.networkControlChangePolicy(NetworkControlChangePolicyType.C3798a.f20071b.deserialize(jsonParser, true)) : "paper_change_deployment_policy".equals(readTag) ? EventType.paperChangeDeploymentPolicy(PaperChangeDeploymentPolicyType.C3839a.f20112b.deserialize(jsonParser, true)) : "paper_change_member_link_policy".equals(readTag) ? EventType.paperChangeMemberLinkPolicy(PaperChangeMemberLinkPolicyType.C3841a.f20114b.deserialize(jsonParser, true)) : "paper_change_member_policy".equals(readTag) ? EventType.paperChangeMemberPolicy(PaperChangeMemberPolicyType.C3843a.f20116b.deserialize(jsonParser, true)) : "paper_change_policy".equals(readTag) ? EventType.paperChangePolicy(PaperChangePolicyType.C3845a.f20118b.deserialize(jsonParser, true)) : "paper_default_folder_policy_changed".equals(readTag) ? EventType.paperDefaultFolderPolicyChanged(PaperDefaultFolderPolicyChangedType.C3867a.f20140b.deserialize(jsonParser, true)) : "paper_desktop_policy_changed".equals(readTag) ? EventType.paperDesktopPolicyChanged(PaperDesktopPolicyChangedType.C3871a.f20144b.deserialize(jsonParser, true)) : "paper_enabled_users_group_addition".equals(readTag) ? EventType.paperEnabledUsersGroupAddition(PaperEnabledUsersGroupAdditionType.C3918a.f20191b.deserialize(jsonParser, true)) : "paper_enabled_users_group_removal".equals(readTag) ? EventType.paperEnabledUsersGroupRemoval(PaperEnabledUsersGroupRemovalType.C3920a.f20193b.deserialize(jsonParser, true)) : "password_strength_requirements_change_policy".equals(readTag) ? EventType.passwordStrengthRequirementsChangePolicy(PasswordStrengthRequirementsChangePolicyType.C3957a.f20233b.deserialize(jsonParser, true)) : "permanent_delete_change_policy".equals(readTag) ? EventType.permanentDeleteChangePolicy(PermanentDeleteChangePolicyType.C3962a.f20238b.deserialize(jsonParser, true)) : "reseller_support_change_policy".equals(readTag) ? EventType.resellerSupportChangePolicy(ResellerSupportChangePolicyType.C3972a.f20248b.deserialize(jsonParser, true)) : "rewind_policy_changed".equals(readTag) ? EventType.rewindPolicyChanged(RewindPolicyChangedType.C3984a.f20260b.deserialize(jsonParser, true)) : "send_for_signature_policy_changed".equals(readTag) ? EventType.sendForSignaturePolicyChanged(SendForSignaturePolicyChangedType.C4000a.f20276b.deserialize(jsonParser, true)) : "sharing_change_folder_join_policy".equals(readTag) ? EventType.sharingChangeFolderJoinPolicy(SharingChangeFolderJoinPolicyType.C4143a.f20419b.deserialize(jsonParser, true)) : "sharing_change_link_policy".equals(readTag) ? EventType.sharingChangeLinkPolicy(SharingChangeLinkPolicyType.C4145a.f20421b.deserialize(jsonParser, true)) : "sharing_change_member_policy".equals(readTag) ? EventType.sharingChangeMemberPolicy(SharingChangeMemberPolicyType.C4147a.f20423b.deserialize(jsonParser, true)) : "showcase_change_download_policy".equals(readTag) ? EventType.showcaseChangeDownloadPolicy(ShowcaseChangeDownloadPolicyType.C4163a.f20439b.deserialize(jsonParser, true)) : "showcase_change_enabled_policy".equals(readTag) ? EventType.showcaseChangeEnabledPolicy(ShowcaseChangeEnabledPolicyType.C4165a.f20441b.deserialize(jsonParser, true)) : "showcase_change_external_sharing_policy".equals(readTag) ? EventType.showcaseChangeExternalSharingPolicy(ShowcaseChangeExternalSharingPolicyType.C4167a.f20443b.deserialize(jsonParser, true)) : "smarter_smart_sync_policy_changed".equals(readTag) ? EventType.smarterSmartSyncPolicyChanged(SmarterSmartSyncPolicyChangedType.C4232a.f20508b.deserialize(jsonParser, true)) : "smart_sync_change_policy".equals(readTag) ? EventType.smartSyncChangePolicy(SmartSyncChangePolicyType.C4222a.f20498b.deserialize(jsonParser, true)) : "smart_sync_not_opt_out".equals(readTag) ? EventType.smartSyncNotOptOut(SmartSyncNotOptOutType.C4226a.f20502b.deserialize(jsonParser, true)) : "smart_sync_opt_out".equals(readTag) ? EventType.smartSyncOptOut(SmartSyncOptOutType.C4230a.f20506b.deserialize(jsonParser, true)) : "sso_change_policy".equals(readTag) ? EventType.ssoChangePolicy(SsoChangePolicyType.C4250a.f20526b.deserialize(jsonParser, true)) : "team_extensions_policy_changed".equals(readTag) ? EventType.teamExtensionsPolicyChanged(TeamExtensionsPolicyChangedType.C4272a.f20548b.deserialize(jsonParser, true)) : "team_selective_sync_policy_changed".equals(readTag) ? EventType.teamSelectiveSyncPolicyChanged(TeamSelectiveSyncPolicyChangedType.C4351a.f20639b.deserialize(jsonParser, true)) : "team_sharing_whitelist_subjects_changed".equals(readTag) ? EventType.teamSharingWhitelistSubjectsChanged(TeamSharingWhitelistSubjectsChangedType.C4355a.f20643b.deserialize(jsonParser, true)) : "tfa_add_exception".equals(readTag) ? EventType.tfaAddException(TfaAddExceptionType.C4359a.f20647b.deserialize(jsonParser, true)) : "tfa_change_policy".equals(readTag) ? EventType.tfaChangePolicy(TfaChangePolicyType.C4365a.f20653b.deserialize(jsonParser, true)) : "tfa_remove_exception".equals(readTag) ? EventType.tfaRemoveException(TfaRemoveExceptionType.C4373a.f20661b.deserialize(jsonParser, true)) : "two_account_change_policy".equals(readTag) ? EventType.twoAccountChangePolicy(TwoAccountChangePolicyType.C4388a.f20676b.deserialize(jsonParser, true)) : "viewer_info_policy_changed".equals(readTag) ? EventType.viewerInfoPolicyChanged(ViewerInfoPolicyChangedType.C4396a.f20684b.deserialize(jsonParser, true)) : "watermarking_policy_changed".equals(readTag) ? EventType.watermarkingPolicyChanged(WatermarkingPolicyChangedType.C4400a.f20688b.deserialize(jsonParser, true)) : "web_sessions_change_active_session_limit".equals(readTag) ? EventType.webSessionsChangeActiveSessionLimit(WebSessionsChangeActiveSessionLimitType.C4404a.f20694b.deserialize(jsonParser, true)) : "web_sessions_change_fixed_length_policy".equals(readTag) ? EventType.webSessionsChangeFixedLengthPolicy(WebSessionsChangeFixedLengthPolicyType.C4406a.f20696b.deserialize(jsonParser, true)) : "web_sessions_change_idle_length_policy".equals(readTag) ? EventType.webSessionsChangeIdleLengthPolicy(WebSessionsChangeIdleLengthPolicyType.C4408a.f20698b.deserialize(jsonParser, true)) : "team_merge_from".equals(readTag) ? EventType.teamMergeFrom(TeamMergeFromType.C4290a.f20566b.deserialize(jsonParser, true)) : "team_merge_to".equals(readTag) ? EventType.teamMergeTo(TeamMergeToType.C4336a.f20624b.deserialize(jsonParser, true)) : "team_profile_add_logo".equals(readTag) ? EventType.teamProfileAddLogo(TeamProfileAddLogoType.C4339a.f20627b.deserialize(jsonParser, true)) : "team_profile_change_default_language".equals(readTag) ? EventType.teamProfileChangeDefaultLanguage(TeamProfileChangeDefaultLanguageType.C4341a.f20629b.deserialize(jsonParser, true)) : "team_profile_change_logo".equals(readTag) ? EventType.teamProfileChangeLogo(TeamProfileChangeLogoType.C4343a.f20631b.deserialize(jsonParser, true)) : "team_profile_change_name".equals(readTag) ? EventType.teamProfileChangeName(TeamProfileChangeNameType.C4345a.f20633b.deserialize(jsonParser, true)) : "team_profile_remove_logo".equals(readTag) ? EventType.teamProfileRemoveLogo(TeamProfileRemoveLogoType.C4347a.f20635b.deserialize(jsonParser, true)) : "tfa_add_backup_phone".equals(readTag) ? EventType.tfaAddBackupPhone(TfaAddBackupPhoneType.C4357a.f20645b.deserialize(jsonParser, true)) : "tfa_add_security_key".equals(readTag) ? EventType.tfaAddSecurityKey(TfaAddSecurityKeyType.C4361a.f20649b.deserialize(jsonParser, true)) : "tfa_change_backup_phone".equals(readTag) ? EventType.tfaChangeBackupPhone(TfaChangeBackupPhoneType.C4363a.f20651b.deserialize(jsonParser, true)) : "tfa_change_status".equals(readTag) ? EventType.tfaChangeStatus(TfaChangeStatusType.C4367a.f20655b.deserialize(jsonParser, true)) : "tfa_remove_backup_phone".equals(readTag) ? EventType.tfaRemoveBackupPhone(TfaRemoveBackupPhoneType.C4371a.f20659b.deserialize(jsonParser, true)) : "tfa_remove_security_key".equals(readTag) ? EventType.tfaRemoveSecurityKey(TfaRemoveSecurityKeyType.C4375a.f20663b.deserialize(jsonParser, true)) : "tfa_reset".equals(readTag) ? EventType.tfaReset(TfaResetType.C4377a.f20665b.deserialize(jsonParser, true)) : "changed_enterprise_admin_role".equals(readTag) ? EventType.changedEnterpriseAdminRole(ChangedEnterpriseAdminRoleType.C3392a.f18779b.deserialize(jsonParser, true)) : "changed_enterprise_connected_team_status".equals(readTag) ? EventType.changedEnterpriseConnectedTeamStatus(ChangedEnterpriseConnectedTeamStatusType.C3394a.f18781b.deserialize(jsonParser, true)) : "ended_enterprise_admin_session".equals(readTag) ? EventType.endedEnterpriseAdminSession(EndedEnterpriseAdminSessionType.C3501a.f18894b.deserialize(jsonParser, true)) : "ended_enterprise_admin_session_deprecated".equals(readTag) ? EventType.endedEnterpriseAdminSessionDeprecated(EndedEnterpriseAdminSessionDeprecatedType.C3499a.f18892b.deserialize(jsonParser, true)) : "enterprise_settings_locking".equals(readTag) ? EventType.enterpriseSettingsLocking(EnterpriseSettingsLockingType.C3503a.f18896b.deserialize(jsonParser, true)) : "guest_admin_change_status".equals(readTag) ? EventType.guestAdminChangeStatus(GuestAdminChangeStatusType.C3674a.f19942b.deserialize(jsonParser, true)) : "started_enterprise_admin_session".equals(readTag) ? EventType.startedEnterpriseAdminSession(StartedEnterpriseAdminSessionType.C4262a.f20538b.deserialize(jsonParser, true)) : "team_merge_request_accepted".equals(readTag) ? EventType.teamMergeRequestAccepted(TeamMergeRequestAcceptedType.C4298a.f20577b.deserialize(jsonParser, true)) : "team_merge_request_accepted_shown_to_primary_team".equals(readTag) ? EventType.teamMergeRequestAcceptedShownToPrimaryTeam(TeamMergeRequestAcceptedShownToPrimaryTeamType.C4295a.f20574b.deserialize(jsonParser, true)) : "team_merge_request_accepted_shown_to_secondary_team".equals(readTag) ? EventType.teamMergeRequestAcceptedShownToSecondaryTeam(TeamMergeRequestAcceptedShownToSecondaryTeamType.C4297a.f20576b.deserialize(jsonParser, true)) : "team_merge_request_auto_canceled".equals(readTag) ? EventType.teamMergeRequestAutoCanceled(TeamMergeRequestAutoCanceledType.C4300a.f20579b.deserialize(jsonParser, true)) : "team_merge_request_canceled".equals(readTag) ? EventType.teamMergeRequestCanceled(TeamMergeRequestCanceledType.C4308a.f20590b.deserialize(jsonParser, true)) : "team_merge_request_canceled_shown_to_primary_team".equals(readTag) ? EventType.teamMergeRequestCanceledShownToPrimaryTeam(TeamMergeRequestCanceledShownToPrimaryTeamType.C4305a.f20587b.deserialize(jsonParser, true)) : "team_merge_request_canceled_shown_to_secondary_team".equals(readTag) ? EventType.teamMergeRequestCanceledShownToSecondaryTeam(TeamMergeRequestCanceledShownToSecondaryTeamType.C4307a.f20589b.deserialize(jsonParser, true)) : "team_merge_request_expired".equals(readTag) ? EventType.teamMergeRequestExpired(TeamMergeRequestExpiredType.C4316a.f20601b.deserialize(jsonParser, true)) : "team_merge_request_expired_shown_to_primary_team".equals(readTag) ? EventType.teamMergeRequestExpiredShownToPrimaryTeam(TeamMergeRequestExpiredShownToPrimaryTeamType.C4313a.f20598b.deserialize(jsonParser, true)) : "team_merge_request_expired_shown_to_secondary_team".equals(readTag) ? EventType.teamMergeRequestExpiredShownToSecondaryTeam(TeamMergeRequestExpiredShownToSecondaryTeamType.C4315a.f20600b.deserialize(jsonParser, true)) : "team_merge_request_rejected_shown_to_primary_team".equals(readTag) ? EventType.teamMergeRequestRejectedShownToPrimaryTeam(TeamMergeRequestRejectedShownToPrimaryTeamType.C4318a.f20603b.deserialize(jsonParser, true)) : "team_merge_request_rejected_shown_to_secondary_team".equals(readTag) ? EventType.teamMergeRequestRejectedShownToSecondaryTeam(TeamMergeRequestRejectedShownToSecondaryTeamType.C4320a.f20605b.deserialize(jsonParser, true)) : "team_merge_request_reminder".equals(readTag) ? EventType.teamMergeRequestReminder(TeamMergeRequestReminderType.C4328a.f20616b.deserialize(jsonParser, true)) : "team_merge_request_reminder_shown_to_primary_team".equals(readTag) ? EventType.teamMergeRequestReminderShownToPrimaryTeam(TeamMergeRequestReminderShownToPrimaryTeamType.C4325a.f20613b.deserialize(jsonParser, true)) : "team_merge_request_reminder_shown_to_secondary_team".equals(readTag) ? EventType.teamMergeRequestReminderShownToSecondaryTeam(TeamMergeRequestReminderShownToSecondaryTeamType.C4327a.f20615b.deserialize(jsonParser, true)) : "team_merge_request_revoked".equals(readTag) ? EventType.teamMergeRequestRevoked(TeamMergeRequestRevokedType.C4330a.f20618b.deserialize(jsonParser, true)) : "team_merge_request_sent_shown_to_primary_team".equals(readTag) ? EventType.teamMergeRequestSentShownToPrimaryTeam(TeamMergeRequestSentShownToPrimaryTeamType.C4332a.f20620b.deserialize(jsonParser, true)) : "team_merge_request_sent_shown_to_secondary_team".equals(readTag) ? EventType.teamMergeRequestSentShownToSecondaryTeam(TeamMergeRequestSentShownToSecondaryTeamType.C4334a.f20622b.deserialize(jsonParser, true)) : EventType.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return appLinkTeam;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(EventType eventType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3508a.f19760a[eventType.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("app_link_team", jsonGenerator);
                    AppLinkTeamType.C3360a.f18741b.serialize(eventType.f19548b, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("app_link_user", jsonGenerator);
                    AppLinkUserType.C3362a.f18743b.serialize(eventType.f19557c, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("app_unlink_team", jsonGenerator);
                    AppUnlinkTeamType.C3365a.f18746b.serialize(eventType.f19566d, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeStartObject();
                    writeTag("app_unlink_user", jsonGenerator);
                    AppUnlinkUserType.C3367a.f18748b.serialize(eventType.f19575e, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeStartObject();
                    writeTag("integration_connected", jsonGenerator);
                    IntegrationConnectedType.C3682a.f19950b.serialize(eventType.f19584f, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("integration_disconnected", jsonGenerator);
                    IntegrationDisconnectedType.C3684a.f19952b.serialize(eventType.f19593g, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("file_add_comment", jsonGenerator);
                    FileAddCommentType.C3535a.f19794b.serialize(eventType.f19602h, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 8:
                    jsonGenerator.writeStartObject();
                    writeTag("file_change_comment_subscription", jsonGenerator);
                    FileChangeCommentSubscriptionType.C3539a.f19798b.serialize(eventType.f19611i, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 9:
                    jsonGenerator.writeStartObject();
                    writeTag("file_delete_comment", jsonGenerator);
                    FileDeleteCommentType.C3549a.f19808b.serialize(eventType.f19620j, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 10:
                    jsonGenerator.writeStartObject();
                    writeTag("file_edit_comment", jsonGenerator);
                    FileEditCommentType.C3555a.f19814b.serialize(eventType.f19629k, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 11:
                    jsonGenerator.writeStartObject();
                    writeTag("file_like_comment", jsonGenerator);
                    FileLikeCommentType.C3561a.f19820b.serialize(eventType.f19638l, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 12:
                    jsonGenerator.writeStartObject();
                    writeTag("file_resolve_comment", jsonGenerator);
                    FileResolveCommentType.C3597a.f19856b.serialize(eventType.f19647m, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 13:
                    jsonGenerator.writeStartObject();
                    writeTag("file_unlike_comment", jsonGenerator);
                    FileUnlikeCommentType.C3621a.f19880b.serialize(eventType.f19656n, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 14:
                    jsonGenerator.writeStartObject();
                    writeTag("file_unresolve_comment", jsonGenerator);
                    FileUnresolveCommentType.C3623a.f19882b.serialize(eventType.f19664o, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 15:
                    jsonGenerator.writeStartObject();
                    writeTag("device_change_ip_desktop", jsonGenerator);
                    DeviceChangeIpDesktopType.C3431a.f18824b.serialize(eventType.f19672p, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 16:
                    jsonGenerator.writeStartObject();
                    writeTag("device_change_ip_mobile", jsonGenerator);
                    DeviceChangeIpMobileType.C3433a.f18826b.serialize(eventType.f19680q, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 17:
                    jsonGenerator.writeStartObject();
                    writeTag("device_change_ip_web", jsonGenerator);
                    DeviceChangeIpWebType.C3435a.f18828b.serialize(eventType.f19688r, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 18:
                    jsonGenerator.writeStartObject();
                    writeTag("device_delete_on_unlink_fail", jsonGenerator);
                    DeviceDeleteOnUnlinkFailType.C3437a.f18830b.serialize(eventType.f19696s, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 19:
                    jsonGenerator.writeStartObject();
                    writeTag("device_delete_on_unlink_success", jsonGenerator);
                    DeviceDeleteOnUnlinkSuccessType.C3439a.f18832b.serialize(eventType.f19704t, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 20:
                    jsonGenerator.writeStartObject();
                    writeTag("device_link_fail", jsonGenerator);
                    DeviceLinkFailType.C3441a.f18834b.serialize(eventType.f19712u, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 21:
                    jsonGenerator.writeStartObject();
                    writeTag("device_link_success", jsonGenerator);
                    DeviceLinkSuccessType.C3443a.f18836b.serialize(eventType.f19720v, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 22:
                    jsonGenerator.writeStartObject();
                    writeTag("device_management_disabled", jsonGenerator);
                    DeviceManagementDisabledType.C3445a.f18838b.serialize(eventType.f19728w, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 23:
                    jsonGenerator.writeStartObject();
                    writeTag("device_management_enabled", jsonGenerator);
                    DeviceManagementEnabledType.C3447a.f18840b.serialize(eventType.f19736x, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 24:
                    jsonGenerator.writeStartObject();
                    writeTag("device_unlink", jsonGenerator);
                    DeviceUnlinkType.C3454a.f18847b.serialize(eventType.f19744y, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 25:
                    jsonGenerator.writeStartObject();
                    writeTag("emm_refresh_auth_token", jsonGenerator);
                    EmmRefreshAuthTokenType.C3493a.f18886b.serialize(eventType.f19752z, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 26:
                    jsonGenerator.writeStartObject();
                    writeTag("account_capture_change_availability", jsonGenerator);
                    AccountCaptureChangeAvailabilityType.C3331a.f18703b.serialize(eventType.f19331A, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 27:
                    jsonGenerator.writeStartObject();
                    writeTag("account_capture_migrate_account", jsonGenerator);
                    AccountCaptureMigrateAccountType.C3335a.f18707b.serialize(eventType.f19339B, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 28:
                    jsonGenerator.writeStartObject();
                    writeTag("account_capture_notification_emails_sent", jsonGenerator);
                    AccountCaptureNotificationEmailsSentType.C3337a.f18709b.serialize(eventType.f19347C, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 29:
                    jsonGenerator.writeStartObject();
                    writeTag("account_capture_relinquish_account", jsonGenerator);
                    AccountCaptureRelinquishAccountType.C3343a.f18715b.serialize(eventType.f19355D, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 30:
                    jsonGenerator.writeStartObject();
                    writeTag("disabled_domain_invites", jsonGenerator);
                    DisabledDomainInvitesType.C3460a.f18853b.serialize(eventType.f19363E, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 31:
                    jsonGenerator.writeStartObject();
                    writeTag("domain_invites_approve_request_to_join_team", jsonGenerator);
                    DomainInvitesApproveRequestToJoinTeamType.C3462a.f18855b.serialize(eventType.f19371F, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 32:
                    jsonGenerator.writeStartObject();
                    writeTag("domain_invites_decline_request_to_join_team", jsonGenerator);
                    DomainInvitesDeclineRequestToJoinTeamType.C3464a.f18857b.serialize(eventType.f19379G, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 33:
                    jsonGenerator.writeStartObject();
                    writeTag("domain_invites_email_existing_users", jsonGenerator);
                    DomainInvitesEmailExistingUsersType.C3466a.f18859b.serialize(eventType.f19387H, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 34:
                    jsonGenerator.writeStartObject();
                    writeTag("domain_invites_request_to_join_team", jsonGenerator);
                    DomainInvitesRequestToJoinTeamType.C3468a.f18861b.serialize(eventType.f19395I, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 35:
                    jsonGenerator.writeStartObject();
                    writeTag("domain_invites_set_invite_new_user_pref_to_no", jsonGenerator);
                    DomainInvitesSetInviteNewUserPrefToNoType.C3470a.f18863b.serialize(eventType.f19403J, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 36:
                    jsonGenerator.writeStartObject();
                    writeTag("domain_invites_set_invite_new_user_pref_to_yes", jsonGenerator);
                    DomainInvitesSetInviteNewUserPrefToYesType.C3472a.f18865b.serialize(eventType.f19411K, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 37:
                    jsonGenerator.writeStartObject();
                    writeTag("domain_verification_add_domain_fail", jsonGenerator);
                    DomainVerificationAddDomainFailType.C3474a.f18867b.serialize(eventType.f19419L, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 38:
                    jsonGenerator.writeStartObject();
                    writeTag("domain_verification_add_domain_success", jsonGenerator);
                    DomainVerificationAddDomainSuccessType.C3476a.f18869b.serialize(eventType.f19427M, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 39:
                    jsonGenerator.writeStartObject();
                    writeTag("domain_verification_remove_domain", jsonGenerator);
                    DomainVerificationRemoveDomainType.C3478a.f18871b.serialize(eventType.f19435N, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 40:
                    jsonGenerator.writeStartObject();
                    writeTag("enabled_domain_invites", jsonGenerator);
                    EnabledDomainInvitesType.C3497a.f18890b.serialize(eventType.f19443O, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 41:
                    jsonGenerator.writeStartObject();
                    writeTag("create_folder", jsonGenerator);
                    CreateFolderType.C3405a.f18797b.serialize(eventType.f19451P, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 42:
                    jsonGenerator.writeStartObject();
                    writeTag("file_add", jsonGenerator);
                    FileAddType.C3537a.f19796b.serialize(eventType.f19459Q, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 43:
                    jsonGenerator.writeStartObject();
                    writeTag("file_copy", jsonGenerator);
                    FileCopyType.C3547a.f19806b.serialize(eventType.f19467R, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 44:
                    jsonGenerator.writeStartObject();
                    writeTag("file_delete", jsonGenerator);
                    FileDeleteType.C3551a.f19810b.serialize(eventType.f19475S, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 45:
                    jsonGenerator.writeStartObject();
                    writeTag("file_download", jsonGenerator);
                    FileDownloadType.C3553a.f19812b.serialize(eventType.f19483T, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 46:
                    jsonGenerator.writeStartObject();
                    writeTag("file_edit", jsonGenerator);
                    FileEditType.C3557a.f19816b.serialize(eventType.f19491U, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 47:
                    jsonGenerator.writeStartObject();
                    writeTag("file_get_copy_reference", jsonGenerator);
                    FileGetCopyReferenceType.C3559a.f19818b.serialize(eventType.f19499V, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 48:
                    jsonGenerator.writeStartObject();
                    writeTag("file_locking_lock_status_changed", jsonGenerator);
                    FileLockingLockStatusChangedType.C3563a.f19822b.serialize(eventType.f19507W, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 49:
                    jsonGenerator.writeStartObject();
                    writeTag("file_move", jsonGenerator);
                    FileMoveType.C3568a.f19827b.serialize(eventType.f19515X, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 50:
                    jsonGenerator.writeStartObject();
                    writeTag("file_permanently_delete", jsonGenerator);
                    FilePermanentlyDeleteType.C3571a.f19830b.serialize(eventType.f19523Y, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 51:
                    jsonGenerator.writeStartObject();
                    writeTag("file_preview", jsonGenerator);
                    FilePreviewType.C3573a.f19832b.serialize(eventType.f19531Z, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 52:
                    jsonGenerator.writeStartObject();
                    writeTag("file_rename", jsonGenerator);
                    FileRenameType.C3575a.f19834b.serialize(eventType.f19540a0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 53:
                    jsonGenerator.writeStartObject();
                    writeTag("file_restore", jsonGenerator);
                    FileRestoreType.C3599a.f19858b.serialize(eventType.f19549b0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 54:
                    jsonGenerator.writeStartObject();
                    writeTag("file_revert", jsonGenerator);
                    FileRevertType.C3601a.f19860b.serialize(eventType.f19558c0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 55:
                    jsonGenerator.writeStartObject();
                    writeTag("file_rollback_changes", jsonGenerator);
                    FileRollbackChangesType.C3603a.f19862b.serialize(eventType.f19567d0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 56:
                    jsonGenerator.writeStartObject();
                    writeTag("file_save_copy_reference", jsonGenerator);
                    FileSaveCopyReferenceType.C3605a.f19864b.serialize(eventType.f19576e0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 57:
                    jsonGenerator.writeStartObject();
                    writeTag("folder_overview_description_changed", jsonGenerator);
                    FolderOverviewDescriptionChangedType.C3626a.f19885b.serialize(eventType.f19585f0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 58:
                    jsonGenerator.writeStartObject();
                    writeTag("folder_overview_item_pinned", jsonGenerator);
                    FolderOverviewItemPinnedType.C3628a.f19887b.serialize(eventType.f19594g0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 59:
                    jsonGenerator.writeStartObject();
                    writeTag("folder_overview_item_unpinned", jsonGenerator);
                    FolderOverviewItemUnpinnedType.C3630a.f19889b.serialize(eventType.f19603h0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 60:
                    jsonGenerator.writeStartObject();
                    writeTag("rewind_folder", jsonGenerator);
                    RewindFolderType.C3980a.f20256b.serialize(eventType.f19612i0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 61:
                    jsonGenerator.writeStartObject();
                    writeTag("file_request_change", jsonGenerator);
                    FileRequestChangeType.C3577a.f19836b.serialize(eventType.f19621j0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 62:
                    jsonGenerator.writeStartObject();
                    writeTag("file_request_close", jsonGenerator);
                    FileRequestCloseType.C3579a.f19838b.serialize(eventType.f19630k0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 63:
                    jsonGenerator.writeStartObject();
                    writeTag("file_request_create", jsonGenerator);
                    FileRequestCreateType.C3581a.f19840b.serialize(eventType.f19639l0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 64:
                    jsonGenerator.writeStartObject();
                    writeTag("file_request_delete", jsonGenerator);
                    FileRequestDeleteType.C3584a.f19843b.serialize(eventType.f19648m0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 65:
                    jsonGenerator.writeStartObject();
                    writeTag("file_request_receive_file", jsonGenerator);
                    FileRequestReceiveFileType.C3587a.f19846b.serialize(eventType.f19657n0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 66:
                    jsonGenerator.writeStartObject();
                    writeTag("group_add_external_id", jsonGenerator);
                    GroupAddExternalIdType.C3643a.f19911b.serialize(eventType.f19665o0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 67:
                    jsonGenerator.writeStartObject();
                    writeTag("group_add_member", jsonGenerator);
                    GroupAddMemberType.C3645a.f19913b.serialize(eventType.f19673p0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 68:
                    jsonGenerator.writeStartObject();
                    writeTag("group_change_external_id", jsonGenerator);
                    GroupChangeExternalIdType.C3647a.f19915b.serialize(eventType.f19681q0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 69:
                    jsonGenerator.writeStartObject();
                    writeTag("group_change_management_type", jsonGenerator);
                    GroupChangeManagementTypeType.C3649a.f19917b.serialize(eventType.f19689r0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 70:
                    jsonGenerator.writeStartObject();
                    writeTag("group_change_member_role", jsonGenerator);
                    GroupChangeMemberRoleType.C3651a.f19919b.serialize(eventType.f19697s0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 71:
                    jsonGenerator.writeStartObject();
                    writeTag("group_create", jsonGenerator);
                    GroupCreateType.C3653a.f19921b.serialize(eventType.f19705t0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 72:
                    jsonGenerator.writeStartObject();
                    writeTag("group_delete", jsonGenerator);
                    GroupDeleteType.C3655a.f19923b.serialize(eventType.f19713u0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 73:
                    jsonGenerator.writeStartObject();
                    writeTag("group_description_updated", jsonGenerator);
                    GroupDescriptionUpdatedType.C3657a.f19925b.serialize(eventType.f19721v0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 74:
                    jsonGenerator.writeStartObject();
                    writeTag("group_join_policy_updated", jsonGenerator);
                    GroupJoinPolicyUpdatedType.C3661a.f19929b.serialize(eventType.f19729w0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 75:
                    jsonGenerator.writeStartObject();
                    writeTag("group_moved", jsonGenerator);
                    GroupMovedType.C3664a.f19932b.serialize(eventType.f19737x0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 76:
                    jsonGenerator.writeStartObject();
                    writeTag("group_remove_external_id", jsonGenerator);
                    GroupRemoveExternalIdType.C3666a.f19934b.serialize(eventType.f19745y0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 77:
                    jsonGenerator.writeStartObject();
                    writeTag("group_remove_member", jsonGenerator);
                    GroupRemoveMemberType.C3668a.f19936b.serialize(eventType.f19753z0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 78:
                    jsonGenerator.writeStartObject();
                    writeTag("group_rename", jsonGenerator);
                    GroupRenameType.C3670a.f19938b.serialize(eventType.f19332A0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 79:
                    jsonGenerator.writeStartObject();
                    writeTag("legal_holds_activate_a_hold", jsonGenerator);
                    LegalHoldsActivateAHoldType.C3694a.f19962b.serialize(eventType.f19340B0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 80:
                    jsonGenerator.writeStartObject();
                    writeTag("legal_holds_add_members", jsonGenerator);
                    LegalHoldsAddMembersType.C3696a.f19964b.serialize(eventType.f19348C0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 81:
                    jsonGenerator.writeStartObject();
                    writeTag("legal_holds_change_hold_details", jsonGenerator);
                    LegalHoldsChangeHoldDetailsType.C3698a.f19966b.serialize(eventType.f19356D0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 82:
                    jsonGenerator.writeStartObject();
                    writeTag("legal_holds_change_hold_name", jsonGenerator);
                    LegalHoldsChangeHoldNameType.C3700a.f19968b.serialize(eventType.f19364E0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 83:
                    jsonGenerator.writeStartObject();
                    writeTag("legal_holds_export_a_hold", jsonGenerator);
                    LegalHoldsExportAHoldType.C3702a.f19970b.serialize(eventType.f19372F0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 84:
                    jsonGenerator.writeStartObject();
                    writeTag("legal_holds_export_cancelled", jsonGenerator);
                    LegalHoldsExportCancelledType.C3704a.f19972b.serialize(eventType.f19380G0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 85:
                    jsonGenerator.writeStartObject();
                    writeTag("legal_holds_export_downloaded", jsonGenerator);
                    LegalHoldsExportDownloadedType.C3706a.f19974b.serialize(eventType.f19388H0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 86:
                    jsonGenerator.writeStartObject();
                    writeTag("legal_holds_export_removed", jsonGenerator);
                    LegalHoldsExportRemovedType.C3708a.f19976b.serialize(eventType.f19396I0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 87:
                    jsonGenerator.writeStartObject();
                    writeTag("legal_holds_release_a_hold", jsonGenerator);
                    LegalHoldsReleaseAHoldType.C3710a.f19978b.serialize(eventType.f19404J0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 88:
                    jsonGenerator.writeStartObject();
                    writeTag("legal_holds_remove_members", jsonGenerator);
                    LegalHoldsRemoveMembersType.C3712a.f19980b.serialize(eventType.f19412K0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 89:
                    jsonGenerator.writeStartObject();
                    writeTag("legal_holds_report_a_hold", jsonGenerator);
                    LegalHoldsReportAHoldType.C3714a.f19982b.serialize(eventType.f19420L0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 90:
                    jsonGenerator.writeStartObject();
                    writeTag("account_lock_or_unlocked", jsonGenerator);
                    AccountLockOrUnlockedType.C3345a.f18717b.serialize(eventType.f19428M0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 91:
                    jsonGenerator.writeStartObject();
                    writeTag("emm_error", jsonGenerator);
                    EmmErrorType.C3491a.f18884b.serialize(eventType.f19436N0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 92:
                    jsonGenerator.writeStartObject();
                    writeTag("guest_admin_signed_in_via_trusted_teams", jsonGenerator);
                    GuestAdminSignedInViaTrustedTeamsType.C3676a.f19944b.serialize(eventType.f19444O0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 93:
                    jsonGenerator.writeStartObject();
                    writeTag("guest_admin_signed_out_via_trusted_teams", jsonGenerator);
                    GuestAdminSignedOutViaTrustedTeamsType.C3678a.f19946b.serialize(eventType.f19452P0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 94:
                    jsonGenerator.writeStartObject();
                    writeTag("login_fail", jsonGenerator);
                    LoginFailType.C3720a.f19993b.serialize(eventType.f19460Q0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 95:
                    jsonGenerator.writeStartObject();
                    writeTag("login_success", jsonGenerator);
                    LoginSuccessType.C3724a.f19997b.serialize(eventType.f19468R0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 96:
                    jsonGenerator.writeStartObject();
                    writeTag("logout", jsonGenerator);
                    LogoutType.C3726a.f19999b.serialize(eventType.f19476S0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 97:
                    jsonGenerator.writeStartObject();
                    writeTag("reseller_support_session_end", jsonGenerator);
                    ResellerSupportSessionEndType.C3976a.f20252b.serialize(eventType.f19484T0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 98:
                    jsonGenerator.writeStartObject();
                    writeTag("reseller_support_session_start", jsonGenerator);
                    ResellerSupportSessionStartType.C3978a.f20254b.serialize(eventType.f19492U0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 99:
                    jsonGenerator.writeStartObject();
                    writeTag("sign_in_as_session_end", jsonGenerator);
                    SignInAsSessionEndType.C4218a.f20494b.serialize(eventType.f19500V0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 100:
                    jsonGenerator.writeStartObject();
                    writeTag("sign_in_as_session_start", jsonGenerator);
                    SignInAsSessionStartType.C4220a.f20496b.serialize(eventType.f19508W0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 101:
                    jsonGenerator.writeStartObject();
                    writeTag("sso_error", jsonGenerator);
                    SsoErrorType.C4254a.f20530b.serialize(eventType.f19516X0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 102:
                    jsonGenerator.writeStartObject();
                    writeTag("create_team_invite_link", jsonGenerator);
                    CreateTeamInviteLinkType.C3407a.f18799b.serialize(eventType.f19524Y0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 103:
                    jsonGenerator.writeStartObject();
                    writeTag("delete_team_invite_link", jsonGenerator);
                    DeleteTeamInviteLinkType.C3413a.f18806b.serialize(eventType.f19532Z0, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 104:
                    jsonGenerator.writeStartObject();
                    writeTag("member_add_external_id", jsonGenerator);
                    MemberAddExternalIdType.C3728a.f20001b.serialize(eventType.f19541a1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 105:
                    jsonGenerator.writeStartObject();
                    writeTag("member_add_name", jsonGenerator);
                    MemberAddNameType.C3730a.f20003b.serialize(eventType.f19550b1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 106:
                    jsonGenerator.writeStartObject();
                    writeTag("member_change_admin_role", jsonGenerator);
                    MemberChangeAdminRoleType.C3732a.f20005b.serialize(eventType.f19559c1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 107:
                    jsonGenerator.writeStartObject();
                    writeTag("member_change_email", jsonGenerator);
                    MemberChangeEmailType.C3734a.f20007b.serialize(eventType.f19568d1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 108:
                    jsonGenerator.writeStartObject();
                    writeTag("member_change_external_id", jsonGenerator);
                    MemberChangeExternalIdType.C3736a.f20009b.serialize(eventType.f19577e1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 109:
                    jsonGenerator.writeStartObject();
                    writeTag("member_change_membership_type", jsonGenerator);
                    MemberChangeMembershipTypeType.C3738a.f20011b.serialize(eventType.f19586f1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 110:
                    jsonGenerator.writeStartObject();
                    writeTag("member_change_name", jsonGenerator);
                    MemberChangeNameType.C3740a.f20013b.serialize(eventType.f19595g1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 111:
                    jsonGenerator.writeStartObject();
                    writeTag("member_change_status", jsonGenerator);
                    MemberChangeStatusType.C3742a.f20015b.serialize(eventType.f19604h1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 112:
                    jsonGenerator.writeStartObject();
                    writeTag("member_delete_manual_contacts", jsonGenerator);
                    MemberDeleteManualContactsType.C3744a.f20017b.serialize(eventType.f19613i1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 113:
                    jsonGenerator.writeStartObject();
                    writeTag("member_delete_profile_photo", jsonGenerator);
                    MemberDeleteProfilePhotoType.C3746a.f20019b.serialize(eventType.f19622j1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 114:
                    jsonGenerator.writeStartObject();
                    writeTag("member_permanently_delete_account_contents", jsonGenerator);
                    MemberPermanentlyDeleteAccountContentsType.C3748a.f20021b.serialize(eventType.f19631k1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 115:
                    jsonGenerator.writeStartObject();
                    writeTag("member_remove_external_id", jsonGenerator);
                    MemberRemoveExternalIdType.C3752a.f20025b.serialize(eventType.f19640l1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 116:
                    jsonGenerator.writeStartObject();
                    writeTag("member_set_profile_photo", jsonGenerator);
                    MemberSetProfilePhotoType.C3762a.f20035b.serialize(eventType.f19649m1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 117:
                    jsonGenerator.writeStartObject();
                    writeTag("member_space_limits_add_custom_quota", jsonGenerator);
                    MemberSpaceLimitsAddCustomQuotaType.C3764a.f20037b.serialize(eventType.f19658n1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 118:
                    jsonGenerator.writeStartObject();
                    writeTag("member_space_limits_change_custom_quota", jsonGenerator);
                    MemberSpaceLimitsChangeCustomQuotaType.C3770a.f20043b.serialize(eventType.f19666o1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 119:
                    jsonGenerator.writeStartObject();
                    writeTag("member_space_limits_change_status", jsonGenerator);
                    MemberSpaceLimitsChangeStatusType.C3774a.f20047b.serialize(eventType.f19674p1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 120:
                    jsonGenerator.writeStartObject();
                    writeTag("member_space_limits_remove_custom_quota", jsonGenerator);
                    MemberSpaceLimitsRemoveCustomQuotaType.C3776a.f20049b.serialize(eventType.f19682q1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 121:
                    jsonGenerator.writeStartObject();
                    writeTag("member_suggest", jsonGenerator);
                    MemberSuggestType.C3782a.f20055b.serialize(eventType.f19690r1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 122:
                    jsonGenerator.writeStartObject();
                    writeTag("member_transfer_account_contents", jsonGenerator);
                    MemberTransferAccountContentsType.C3788a.f20061b.serialize(eventType.f19698s1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 123:
                    jsonGenerator.writeStartObject();
                    writeTag("pending_secondary_email_added", jsonGenerator);
                    PendingSecondaryEmailAddedType.C3960a.f20236b.serialize(eventType.f19706t1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 124:
                    jsonGenerator.writeStartObject();
                    writeTag("secondary_email_deleted", jsonGenerator);
                    SecondaryEmailDeletedType.C3986a.f20262b.serialize(eventType.f19714u1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 125:
                    jsonGenerator.writeStartObject();
                    writeTag("secondary_email_verified", jsonGenerator);
                    SecondaryEmailVerifiedType.C3988a.f20264b.serialize(eventType.f19722v1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 126:
                    jsonGenerator.writeStartObject();
                    writeTag("secondary_mails_policy_changed", jsonGenerator);
                    SecondaryMailsPolicyChangedType.C3992a.f20268b.serialize(eventType.f19730w1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 127:
                    jsonGenerator.writeStartObject();
                    writeTag("binder_add_page", jsonGenerator);
                    BinderAddPageType.C3371a.f18758b.serialize(eventType.f19738x1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 128:
                    jsonGenerator.writeStartObject();
                    writeTag("binder_add_section", jsonGenerator);
                    BinderAddSectionType.C3373a.f18760b.serialize(eventType.f19746y1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 129:
                    jsonGenerator.writeStartObject();
                    writeTag("binder_remove_page", jsonGenerator);
                    BinderRemovePageType.C3375a.f18762b.serialize(eventType.f19754z1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 130:
                    jsonGenerator.writeStartObject();
                    writeTag("binder_remove_section", jsonGenerator);
                    BinderRemoveSectionType.C3377a.f18764b.serialize(eventType.f19333A1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 131:
                    jsonGenerator.writeStartObject();
                    writeTag("binder_rename_page", jsonGenerator);
                    BinderRenamePageType.C3379a.f18766b.serialize(eventType.f19341B1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 132:
                    jsonGenerator.writeStartObject();
                    writeTag("binder_rename_section", jsonGenerator);
                    BinderRenameSectionType.C3381a.f18768b.serialize(eventType.f19349C1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 133:
                    jsonGenerator.writeStartObject();
                    writeTag("binder_reorder_page", jsonGenerator);
                    BinderReorderPageType.C3383a.f18770b.serialize(eventType.f19357D1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 134:
                    jsonGenerator.writeStartObject();
                    writeTag("binder_reorder_section", jsonGenerator);
                    BinderReorderSectionType.C3385a.f18772b.serialize(eventType.f19365E1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 135:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_content_add_member", jsonGenerator);
                    PaperContentAddMemberType.C3847a.f20120b.serialize(eventType.f19373F1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 136:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_content_add_to_folder", jsonGenerator);
                    PaperContentAddToFolderType.C3849a.f20122b.serialize(eventType.f19381G1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 137:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_content_archive", jsonGenerator);
                    PaperContentArchiveType.C3851a.f20124b.serialize(eventType.f19389H1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 138:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_content_create", jsonGenerator);
                    PaperContentCreateType.C3853a.f20126b.serialize(eventType.f19397I1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 139:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_content_permanently_delete", jsonGenerator);
                    PaperContentPermanentlyDeleteType.C3855a.f20128b.serialize(eventType.f19405J1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 140:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_content_remove_from_folder", jsonGenerator);
                    PaperContentRemoveFromFolderType.C3857a.f20130b.serialize(eventType.f19413K1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 141:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_content_remove_member", jsonGenerator);
                    PaperContentRemoveMemberType.C3859a.f20132b.serialize(eventType.f19421L1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 142:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_content_rename", jsonGenerator);
                    PaperContentRenameType.C3861a.f20134b.serialize(eventType.f19429M1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 143:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_content_restore", jsonGenerator);
                    PaperContentRestoreType.C3863a.f20136b.serialize(eventType.f19437N1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 144:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_add_comment", jsonGenerator);
                    PaperDocAddCommentType.C3873a.f20146b.serialize(eventType.f19445O1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 145:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_change_member_role", jsonGenerator);
                    PaperDocChangeMemberRoleType.C3875a.f20148b.serialize(eventType.f19453P1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 146:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_change_sharing_policy", jsonGenerator);
                    PaperDocChangeSharingPolicyType.C3877a.f20150b.serialize(eventType.f19461Q1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 147:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_change_subscription", jsonGenerator);
                    PaperDocChangeSubscriptionType.C3879a.f20152b.serialize(eventType.f19469R1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 148:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_deleted", jsonGenerator);
                    PaperDocDeletedType.C3883a.f20156b.serialize(eventType.f19477S1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 149:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_delete_comment", jsonGenerator);
                    PaperDocDeleteCommentType.C3881a.f20154b.serialize(eventType.f19485T1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 150:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_download", jsonGenerator);
                    PaperDocDownloadType.C3885a.f20158b.serialize(eventType.f19493U1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 151:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_edit", jsonGenerator);
                    PaperDocEditType.C3889a.f20162b.serialize(eventType.f19501V1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 152:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_edit_comment", jsonGenerator);
                    PaperDocEditCommentType.C3887a.f20160b.serialize(eventType.f19509W1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 153:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_followed", jsonGenerator);
                    PaperDocFollowedType.C3891a.f20164b.serialize(eventType.f19517X1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 154:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_mention", jsonGenerator);
                    PaperDocMentionType.C3893a.f20166b.serialize(eventType.f19525Y1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 155:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_ownership_changed", jsonGenerator);
                    PaperDocOwnershipChangedType.C3895a.f20168b.serialize(eventType.f19533Z1, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 156:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_request_access", jsonGenerator);
                    PaperDocRequestAccessType.C3897a.f20170b.serialize(eventType.f19542a2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 157:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_resolve_comment", jsonGenerator);
                    PaperDocResolveCommentType.C3899a.f20172b.serialize(eventType.f19551b2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 158:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_revert", jsonGenerator);
                    PaperDocRevertType.C3901a.f20174b.serialize(eventType.f19560c2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 159:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_slack_share", jsonGenerator);
                    PaperDocSlackShareType.C3903a.f20176b.serialize(eventType.f19569d2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 160:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_team_invite", jsonGenerator);
                    PaperDocTeamInviteType.C3905a.f20178b.serialize(eventType.f19578e2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 161:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_trashed", jsonGenerator);
                    PaperDocTrashedType.C3907a.f20180b.serialize(eventType.f19587f2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 162:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_unresolve_comment", jsonGenerator);
                    PaperDocUnresolveCommentType.C3909a.f20182b.serialize(eventType.f19596g2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 163:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_untrashed", jsonGenerator);
                    PaperDocUntrashedType.C3911a.f20184b.serialize(eventType.f19605h2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 164:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_doc_view", jsonGenerator);
                    PaperDocViewType.C3913a.f20186b.serialize(eventType.f19614i2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 165:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_external_view_allow", jsonGenerator);
                    PaperExternalViewAllowType.C3922a.f20195b.serialize(eventType.f19623j2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 166:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_external_view_default_team", jsonGenerator);
                    PaperExternalViewDefaultTeamType.C3924a.f20197b.serialize(eventType.f19632k2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 167:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_external_view_forbid", jsonGenerator);
                    PaperExternalViewForbidType.C3926a.f20199b.serialize(eventType.f19641l2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 168:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_folder_change_subscription", jsonGenerator);
                    PaperFolderChangeSubscriptionType.C3928a.f20201b.serialize(eventType.f19650m2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 169:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_folder_deleted", jsonGenerator);
                    PaperFolderDeletedType.C3930a.f20203b.serialize(eventType.f19659n2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 170:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_folder_followed", jsonGenerator);
                    PaperFolderFollowedType.C3932a.f20205b.serialize(eventType.f19667o2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 171:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_folder_team_invite", jsonGenerator);
                    PaperFolderTeamInviteType.C3935a.f20208b.serialize(eventType.f19675p2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 172:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_published_link_change_permission", jsonGenerator);
                    PaperPublishedLinkChangePermissionType.C3939a.f20212b.serialize(eventType.f19683q2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 173:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_published_link_create", jsonGenerator);
                    PaperPublishedLinkCreateType.C3941a.f20214b.serialize(eventType.f19691r2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 174:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_published_link_disabled", jsonGenerator);
                    PaperPublishedLinkDisabledType.C3943a.f20216b.serialize(eventType.f19699s2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 175:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_published_link_view", jsonGenerator);
                    PaperPublishedLinkViewType.C3945a.f20218b.serialize(eventType.f19707t2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 176:
                    jsonGenerator.writeStartObject();
                    writeTag("password_change", jsonGenerator);
                    PasswordChangeType.C3951a.f20227b.serialize(eventType.f19715u2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 177:
                    jsonGenerator.writeStartObject();
                    writeTag(AccountVerifyPurpose.PURPOSE_PASSWORD_RESET, jsonGenerator);
                    PasswordResetType.C3955a.f20231b.serialize(eventType.f19723v2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 178:
                    jsonGenerator.writeStartObject();
                    writeTag("password_reset_all", jsonGenerator);
                    PasswordResetAllType.C3953a.f20229b.serialize(eventType.f19731w2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 179:
                    jsonGenerator.writeStartObject();
                    writeTag("emm_create_exceptions_report", jsonGenerator);
                    EmmCreateExceptionsReportType.C3487a.f18880b.serialize(eventType.f19739x2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 180:
                    jsonGenerator.writeStartObject();
                    writeTag("emm_create_usage_report", jsonGenerator);
                    EmmCreateUsageReportType.C3489a.f18882b.serialize(eventType.f19747y2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 181:
                    jsonGenerator.writeStartObject();
                    writeTag("export_members_report", jsonGenerator);
                    ExportMembersReportType.C3515a.f19767b.serialize(eventType.f19755z2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 182:
                    jsonGenerator.writeStartObject();
                    writeTag("export_members_report_fail", jsonGenerator);
                    ExportMembersReportFailType.C3514a.f19766b.serialize(eventType.f19334A2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 183:
                    jsonGenerator.writeStartObject();
                    writeTag("external_sharing_create_report", jsonGenerator);
                    ExternalSharingCreateReportType.C3521a.f19773b.serialize(eventType.f19342B2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 184:
                    jsonGenerator.writeStartObject();
                    writeTag("external_sharing_report_failed", jsonGenerator);
                    ExternalSharingReportFailedType.C3523a.f19775b.serialize(eventType.f19350C2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 185:
                    jsonGenerator.writeStartObject();
                    writeTag("no_expiration_link_gen_create_report", jsonGenerator);
                    NoExpirationLinkGenCreateReportType.C3802a.f20075b.serialize(eventType.f19358D2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 186:
                    jsonGenerator.writeStartObject();
                    writeTag("no_expiration_link_gen_report_failed", jsonGenerator);
                    NoExpirationLinkGenReportFailedType.C3804a.f20077b.serialize(eventType.f19366E2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 187:
                    jsonGenerator.writeStartObject();
                    writeTag("no_password_link_gen_create_report", jsonGenerator);
                    NoPasswordLinkGenCreateReportType.C3806a.f20079b.serialize(eventType.f19374F2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 188:
                    jsonGenerator.writeStartObject();
                    writeTag("no_password_link_gen_report_failed", jsonGenerator);
                    NoPasswordLinkGenReportFailedType.C3808a.f20081b.serialize(eventType.f19382G2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 189:
                    jsonGenerator.writeStartObject();
                    writeTag("no_password_link_view_create_report", jsonGenerator);
                    NoPasswordLinkViewCreateReportType.C3810a.f20083b.serialize(eventType.f19390H2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 190:
                    jsonGenerator.writeStartObject();
                    writeTag("no_password_link_view_report_failed", jsonGenerator);
                    NoPasswordLinkViewReportFailedType.C3812a.f20085b.serialize(eventType.f19398I2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 191:
                    jsonGenerator.writeStartObject();
                    writeTag("outdated_link_view_create_report", jsonGenerator);
                    OutdatedLinkViewCreateReportType.C3831a.f20104b.serialize(eventType.f19406J2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 192:
                    jsonGenerator.writeStartObject();
                    writeTag("outdated_link_view_report_failed", jsonGenerator);
                    OutdatedLinkViewReportFailedType.C3833a.f20106b.serialize(eventType.f19414K2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 193:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_admin_export_start", jsonGenerator);
                    PaperAdminExportStartType.C3837a.f20110b.serialize(eventType.f19422L2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 194:
                    jsonGenerator.writeStartObject();
                    writeTag("smart_sync_create_admin_privilege_report", jsonGenerator);
                    SmartSyncCreateAdminPrivilegeReportType.C4224a.f20500b.serialize(eventType.f19430M2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 195:
                    jsonGenerator.writeStartObject();
                    writeTag("team_activity_create_report", jsonGenerator);
                    TeamActivityCreateReportType.C4266a.f20542b.serialize(eventType.f19438N2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 196:
                    jsonGenerator.writeStartObject();
                    writeTag("team_activity_create_report_fail", jsonGenerator);
                    TeamActivityCreateReportFailType.C4265a.f20541b.serialize(eventType.f19446O2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 197:
                    jsonGenerator.writeStartObject();
                    writeTag("collection_share", jsonGenerator);
                    CollectionShareType.C3396a.f18783b.serialize(eventType.f19454P2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 198:
                    jsonGenerator.writeStartObject();
                    writeTag("file_transfers_file_add", jsonGenerator);
                    FileTransfersFileAddType.C3607a.f19866b.serialize(eventType.f19462Q2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 199:
                    jsonGenerator.writeStartObject();
                    writeTag("file_transfers_transfer_delete", jsonGenerator);
                    FileTransfersTransferDeleteType.C3613a.f19872b.serialize(eventType.f19470R2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 200:
                    jsonGenerator.writeStartObject();
                    writeTag("file_transfers_transfer_download", jsonGenerator);
                    FileTransfersTransferDownloadType.C3615a.f19874b.serialize(eventType.f19478S2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 201:
                    jsonGenerator.writeStartObject();
                    writeTag("file_transfers_transfer_send", jsonGenerator);
                    FileTransfersTransferSendType.C3617a.f19876b.serialize(eventType.f19486T2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 202:
                    jsonGenerator.writeStartObject();
                    writeTag("file_transfers_transfer_view", jsonGenerator);
                    FileTransfersTransferViewType.C3619a.f19878b.serialize(eventType.f19494U2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 203:
                    jsonGenerator.writeStartObject();
                    writeTag("note_acl_invite_only", jsonGenerator);
                    NoteAclInviteOnlyType.C3816a.f20089b.serialize(eventType.f19502V2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 204:
                    jsonGenerator.writeStartObject();
                    writeTag("note_acl_link", jsonGenerator);
                    NoteAclLinkType.C3818a.f20091b.serialize(eventType.f19510W2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 205:
                    jsonGenerator.writeStartObject();
                    writeTag("note_acl_team_link", jsonGenerator);
                    NoteAclTeamLinkType.C3820a.f20093b.serialize(eventType.f19518X2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 206:
                    jsonGenerator.writeStartObject();
                    writeTag("note_shared", jsonGenerator);
                    NoteSharedType.C3824a.f20097b.serialize(eventType.f19526Y2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 207:
                    jsonGenerator.writeStartObject();
                    writeTag("note_share_receive", jsonGenerator);
                    NoteShareReceiveType.C3822a.f20095b.serialize(eventType.f19534Z2, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 208:
                    jsonGenerator.writeStartObject();
                    writeTag("open_note_shared", jsonGenerator);
                    OpenNoteSharedType.C3826a.f20099b.serialize(eventType.f19543a3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 209:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_add_group", jsonGenerator);
                    SfAddGroupType.C4003a.f20279b.serialize(eventType.f19552b3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 210:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_allow_non_members_to_view_shared_links", jsonGenerator);
                    SfAllowNonMembersToViewSharedLinksType.C4005a.f20281b.serialize(eventType.f19561c3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 211:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_external_invite_warn", jsonGenerator);
                    SfExternalInviteWarnType.C4007a.f20283b.serialize(eventType.f19570d3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 212:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_fb_invite", jsonGenerator);
                    SfFbInviteType.C4011a.f20287b.serialize(eventType.f19579e3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 213:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_fb_invite_change_role", jsonGenerator);
                    SfFbInviteChangeRoleType.C4009a.f20285b.serialize(eventType.f19588f3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 214:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_fb_uninvite", jsonGenerator);
                    SfFbUninviteType.C4013a.f20289b.serialize(eventType.f19597g3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 215:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_invite_group", jsonGenerator);
                    SfInviteGroupType.C4015a.f20291b.serialize(eventType.f19606h3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 216:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_team_grant_access", jsonGenerator);
                    SfTeamGrantAccessType.C4017a.f20293b.serialize(eventType.f19615i3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 217:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_team_invite", jsonGenerator);
                    SfTeamInviteType.C4021a.f20297b.serialize(eventType.f19624j3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 218:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_team_invite_change_role", jsonGenerator);
                    SfTeamInviteChangeRoleType.C4019a.f20295b.serialize(eventType.f19633k3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 219:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_team_join", jsonGenerator);
                    SfTeamJoinType.C4025a.f20301b.serialize(eventType.f19642l3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 220:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_team_join_from_oob_link", jsonGenerator);
                    SfTeamJoinFromOobLinkType.C4024a.f20300b.serialize(eventType.f19651m3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 221:
                    jsonGenerator.writeStartObject();
                    writeTag("sf_team_uninvite", jsonGenerator);
                    SfTeamUninviteType.C4027a.f20303b.serialize(eventType.f19660n3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 222:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_add_invitees", jsonGenerator);
                    SharedContentAddInviteesType.C4029a.f20305b.serialize(eventType.f19668o3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 223:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_add_link_expiry", jsonGenerator);
                    SharedContentAddLinkExpiryType.C4031a.f20307b.serialize(eventType.f19676p3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 224:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_add_link_password", jsonGenerator);
                    SharedContentAddLinkPasswordType.C4033a.f20309b.serialize(eventType.f19684q3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 225:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_add_member", jsonGenerator);
                    SharedContentAddMemberType.C4035a.f20311b.serialize(eventType.f19692r3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 226:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_change_downloads_policy", jsonGenerator);
                    SharedContentChangeDownloadsPolicyType.C4037a.f20313b.serialize(eventType.f19700s3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 227:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_change_invitee_role", jsonGenerator);
                    SharedContentChangeInviteeRoleType.C4039a.f20315b.serialize(eventType.f19708t3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 228:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_change_link_audience", jsonGenerator);
                    SharedContentChangeLinkAudienceType.C4041a.f20317b.serialize(eventType.f19716u3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 229:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_change_link_expiry", jsonGenerator);
                    SharedContentChangeLinkExpiryType.C4043a.f20319b.serialize(eventType.f19724v3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 230:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_change_link_password", jsonGenerator);
                    SharedContentChangeLinkPasswordType.C4045a.f20321b.serialize(eventType.f19732w3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 231:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_change_member_role", jsonGenerator);
                    SharedContentChangeMemberRoleType.C4047a.f20323b.serialize(eventType.f19740x3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 232:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_change_viewer_info_policy", jsonGenerator);
                    SharedContentChangeViewerInfoPolicyType.C4049a.f20325b.serialize(eventType.f19748y3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 233:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_claim_invitation", jsonGenerator);
                    SharedContentClaimInvitationType.C4051a.f20327b.serialize(eventType.f19756z3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 234:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_copy", jsonGenerator);
                    SharedContentCopyType.C4053a.f20329b.serialize(eventType.f19335A3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 235:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_download", jsonGenerator);
                    SharedContentDownloadType.C4055a.f20331b.serialize(eventType.f19343B3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 236:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_relinquish_membership", jsonGenerator);
                    SharedContentRelinquishMembershipType.C4057a.f20333b.serialize(eventType.f19351C3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 237:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_remove_invitees", jsonGenerator);
                    SharedContentRemoveInviteesType.C4059a.f20335b.serialize(eventType.f19359D3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 238:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_remove_link_expiry", jsonGenerator);
                    SharedContentRemoveLinkExpiryType.C4061a.f20337b.serialize(eventType.f19367E3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 239:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_remove_link_password", jsonGenerator);
                    SharedContentRemoveLinkPasswordType.C4063a.f20339b.serialize(eventType.f19375F3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 240:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_remove_member", jsonGenerator);
                    SharedContentRemoveMemberType.C4065a.f20341b.serialize(eventType.f19383G3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 241:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_request_access", jsonGenerator);
                    SharedContentRequestAccessType.C4067a.f20343b.serialize(eventType.f19391H3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53038H3 /* 242 */:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_restore_invitees", jsonGenerator);
                    SharedContentRestoreInviteesType.C4069a.f20345b.serialize(eventType.f19399I3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 243:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_restore_member", jsonGenerator);
                    SharedContentRestoreMemberType.C4071a.f20347b.serialize(eventType.f19407J3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 244:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_unshare", jsonGenerator);
                    SharedContentUnshareType.C4073a.f20349b.serialize(eventType.f19415K3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 245:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_content_view", jsonGenerator);
                    SharedContentViewType.C4075a.f20351b.serialize(eventType.f19423L3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 246:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_folder_change_link_policy", jsonGenerator);
                    SharedFolderChangeLinkPolicyType.C4077a.f20353b.serialize(eventType.f19431M3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53073M3 /* 247 */:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_folder_change_members_inheritance_policy", jsonGenerator);
                    SharedFolderChangeMembersInheritancePolicyType.C4079a.f20355b.serialize(eventType.f19439N3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 248:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_folder_change_members_management_policy", jsonGenerator);
                    SharedFolderChangeMembersManagementPolicyType.C4081a.f20357b.serialize(eventType.f19447O3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 249:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_folder_change_members_policy", jsonGenerator);
                    SharedFolderChangeMembersPolicyType.C4083a.f20359b.serialize(eventType.f19455P3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 250:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_folder_create", jsonGenerator);
                    SharedFolderCreateType.C4085a.f20361b.serialize(eventType.f19463Q3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 251:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_folder_decline_invitation", jsonGenerator);
                    SharedFolderDeclineInvitationType.C4087a.f20363b.serialize(eventType.f19471R3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 252:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_folder_mount", jsonGenerator);
                    SharedFolderMountType.C4091a.f20367b.serialize(eventType.f19479S3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 253:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_folder_nest", jsonGenerator);
                    SharedFolderNestType.C4093a.f20369b.serialize(eventType.f19487T3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 254:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_folder_transfer_ownership", jsonGenerator);
                    SharedFolderTransferOwnershipType.C4095a.f20371b.serialize(eventType.f19495U3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 255:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_folder_unmount", jsonGenerator);
                    SharedFolderUnmountType.C4097a.f20373b.serialize(eventType.f19503V3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 256:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_add_expiry", jsonGenerator);
                    SharedLinkAddExpiryType.C4101a.f20377b.serialize(eventType.f19511W3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 257:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_change_expiry", jsonGenerator);
                    SharedLinkChangeExpiryType.C4103a.f20379b.serialize(eventType.f19519X3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 258:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_change_visibility", jsonGenerator);
                    SharedLinkChangeVisibilityType.C4105a.f20381b.serialize(eventType.f19527Y3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 259:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_copy", jsonGenerator);
                    SharedLinkCopyType.C4107a.f20383b.serialize(eventType.f19535Z3, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53157Z3 /* 260 */:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_create", jsonGenerator);
                    SharedLinkCreateType.C4109a.f20385b.serialize(eventType.f19544a4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 261:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_disable", jsonGenerator);
                    SharedLinkDisableType.C4111a.f20387b.serialize(eventType.f19553b4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 262:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_download", jsonGenerator);
                    SharedLinkDownloadType.C4113a.f20389b.serialize(eventType.f19562c4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 263:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_remove_expiry", jsonGenerator);
                    SharedLinkRemoveExpiryType.C4115a.f20391b.serialize(eventType.f19571d4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 264:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_settings_add_expiration", jsonGenerator);
                    SharedLinkSettingsAddExpirationType.C4117a.f20393b.serialize(eventType.f19580e4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 265:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_settings_add_password", jsonGenerator);
                    SharedLinkSettingsAddPasswordType.C4119a.f20395b.serialize(eventType.f19589f4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 266:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_settings_allow_download_disabled", jsonGenerator);
                    SharedLinkSettingsAllowDownloadDisabledType.C4121a.f20397b.serialize(eventType.f19598g4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53206g4 /* 267 */:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_settings_allow_download_enabled", jsonGenerator);
                    SharedLinkSettingsAllowDownloadEnabledType.C4123a.f20399b.serialize(eventType.f19607h4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53213h4 /* 268 */:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_settings_change_audience", jsonGenerator);
                    SharedLinkSettingsChangeAudienceType.C4125a.f20401b.serialize(eventType.f19616i4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 269:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_settings_change_expiration", jsonGenerator);
                    SharedLinkSettingsChangeExpirationType.C4127a.f20403b.serialize(eventType.f19625j4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 270:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_settings_change_password", jsonGenerator);
                    SharedLinkSettingsChangePasswordType.C4129a.f20405b.serialize(eventType.f19634k4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 271:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_settings_remove_expiration", jsonGenerator);
                    SharedLinkSettingsRemoveExpirationType.C4131a.f20407b.serialize(eventType.f19643l4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 272:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_settings_remove_password", jsonGenerator);
                    SharedLinkSettingsRemovePasswordType.C4133a.f20409b.serialize(eventType.f19652m4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 273:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_share", jsonGenerator);
                    SharedLinkShareType.C4135a.f20411b.serialize(eventType.f19661n4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 274:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_link_view", jsonGenerator);
                    SharedLinkViewType.C4137a.f20413b.serialize(eventType.f19669o4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53262o4 /* 275 */:
                    jsonGenerator.writeStartObject();
                    writeTag("shared_note_opened", jsonGenerator);
                    SharedNoteOpenedType.C4141a.f20417b.serialize(eventType.f19677p4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 276:
                    jsonGenerator.writeStartObject();
                    writeTag("shmodel_group_share", jsonGenerator);
                    ShmodelGroupShareType.C4155a.f20431b.serialize(eventType.f19685q4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 277:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_access_granted", jsonGenerator);
                    ShowcaseAccessGrantedType.C4157a.f20433b.serialize(eventType.f19693r4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 278:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_add_member", jsonGenerator);
                    ShowcaseAddMemberType.C4159a.f20435b.serialize(eventType.f19701s4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 279:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_archived", jsonGenerator);
                    ShowcaseArchivedType.C4161a.f20437b.serialize(eventType.f19709t4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 280:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_created", jsonGenerator);
                    ShowcaseCreatedType.C4169a.f20445b.serialize(eventType.f19717u4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 281:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_delete_comment", jsonGenerator);
                    ShowcaseDeleteCommentType.C4171a.f20447b.serialize(eventType.f19725v4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 282:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_edited", jsonGenerator);
                    ShowcaseEditedType.C4178a.f20454b.serialize(eventType.f19733w4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 283:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_edit_comment", jsonGenerator);
                    ShowcaseEditCommentType.C4176a.f20452b.serialize(eventType.f19741x4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 284:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_file_added", jsonGenerator);
                    ShowcaseFileAddedType.C4184a.f20460b.serialize(eventType.f19749y4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 285:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_file_download", jsonGenerator);
                    ShowcaseFileDownloadType.C4186a.f20462b.serialize(eventType.f19757z4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 286:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_file_removed", jsonGenerator);
                    ShowcaseFileRemovedType.C4188a.f20464b.serialize(eventType.f19336A4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 287:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_file_view", jsonGenerator);
                    ShowcaseFileViewType.C4190a.f20466b.serialize(eventType.f19344B4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 288:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_permanently_deleted", jsonGenerator);
                    ShowcasePermanentlyDeletedType.C4192a.f20468b.serialize(eventType.f19352C4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 289:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_post_comment", jsonGenerator);
                    ShowcasePostCommentType.C4194a.f20470b.serialize(eventType.f19360D4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 290:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_remove_member", jsonGenerator);
                    ShowcaseRemoveMemberType.C4196a.f20472b.serialize(eventType.f19368E4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 291:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_renamed", jsonGenerator);
                    ShowcaseRenamedType.C4198a.f20474b.serialize(eventType.f19376F4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 292:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_request_access", jsonGenerator);
                    ShowcaseRequestAccessType.C4200a.f20476b.serialize(eventType.f19384G4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 293:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_resolve_comment", jsonGenerator);
                    ShowcaseResolveCommentType.C4202a.f20478b.serialize(eventType.f19392H4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 294:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_restored", jsonGenerator);
                    ShowcaseRestoredType.C4204a.f20480b.serialize(eventType.f19400I4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53046I4 /* 295 */:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_trashed", jsonGenerator);
                    ShowcaseTrashedType.C4208a.f20484b.serialize(eventType.f19408J4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 296:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_trashed_deprecated", jsonGenerator);
                    ShowcaseTrashedDeprecatedType.C4206a.f20482b.serialize(eventType.f19416K4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 297:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_unresolve_comment", jsonGenerator);
                    ShowcaseUnresolveCommentType.C4210a.f20486b.serialize(eventType.f19424L4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53067L4 /* 298 */:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_untrashed", jsonGenerator);
                    ShowcaseUntrashedType.C4214a.f20490b.serialize(eventType.f19432M4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 299:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_untrashed_deprecated", jsonGenerator);
                    ShowcaseUntrashedDeprecatedType.C4212a.f20488b.serialize(eventType.f19440N4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 300:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_view", jsonGenerator);
                    ShowcaseViewType.C4216a.f20492b.serialize(eventType.f19448O4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 301:
                    jsonGenerator.writeStartObject();
                    writeTag("sso_add_cert", jsonGenerator);
                    SsoAddCertType.C4238a.f20514b.serialize(eventType.f19456P4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 302:
                    jsonGenerator.writeStartObject();
                    writeTag("sso_add_login_url", jsonGenerator);
                    SsoAddLoginUrlType.C4240a.f20516b.serialize(eventType.f19464Q4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 303:
                    jsonGenerator.writeStartObject();
                    writeTag("sso_add_logout_url", jsonGenerator);
                    SsoAddLogoutUrlType.C4242a.f20518b.serialize(eventType.f19472R4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 304:
                    jsonGenerator.writeStartObject();
                    writeTag("sso_change_cert", jsonGenerator);
                    SsoChangeCertType.C4244a.f20520b.serialize(eventType.f19480S4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 305:
                    jsonGenerator.writeStartObject();
                    writeTag("sso_change_login_url", jsonGenerator);
                    SsoChangeLoginUrlType.C4246a.f20522b.serialize(eventType.f19488T4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 306:
                    jsonGenerator.writeStartObject();
                    writeTag("sso_change_logout_url", jsonGenerator);
                    SsoChangeLogoutUrlType.C4248a.f20524b.serialize(eventType.f19496U4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 307:
                    jsonGenerator.writeStartObject();
                    writeTag("sso_change_saml_identity_mode", jsonGenerator);
                    SsoChangeSamlIdentityModeType.C4252a.f20528b.serialize(eventType.f19504V4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 308:
                    jsonGenerator.writeStartObject();
                    writeTag("sso_remove_cert", jsonGenerator);
                    SsoRemoveCertType.C4256a.f20532b.serialize(eventType.f19512W4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 309:
                    jsonGenerator.writeStartObject();
                    writeTag("sso_remove_login_url", jsonGenerator);
                    SsoRemoveLoginUrlType.C4258a.f20534b.serialize(eventType.f19520X4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 310:
                    jsonGenerator.writeStartObject();
                    writeTag("sso_remove_logout_url", jsonGenerator);
                    SsoRemoveLogoutUrlType.C4260a.f20536b.serialize(eventType.f19528Y4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 311:
                    jsonGenerator.writeStartObject();
                    writeTag("team_folder_change_status", jsonGenerator);
                    TeamFolderChangeStatusType.C4274a.f20550b.serialize(eventType.f19536Z4, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 312:
                    jsonGenerator.writeStartObject();
                    writeTag("team_folder_create", jsonGenerator);
                    TeamFolderCreateType.C4276a.f20552b.serialize(eventType.f19545a5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 313:
                    jsonGenerator.writeStartObject();
                    writeTag("team_folder_downgrade", jsonGenerator);
                    TeamFolderDowngradeType.C4278a.f20554b.serialize(eventType.f19554b5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 314:
                    jsonGenerator.writeStartObject();
                    writeTag("team_folder_permanently_delete", jsonGenerator);
                    TeamFolderPermanentlyDeleteType.C4280a.f20556b.serialize(eventType.f19563c5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 315:
                    jsonGenerator.writeStartObject();
                    writeTag("team_folder_rename", jsonGenerator);
                    TeamFolderRenameType.C4282a.f20558b.serialize(eventType.f19572d5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 316:
                    jsonGenerator.writeStartObject();
                    writeTag("team_selective_sync_settings_changed", jsonGenerator);
                    TeamSelectiveSyncSettingsChangedType.C4353a.f20641b.serialize(eventType.f19581e5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 317:
                    jsonGenerator.writeStartObject();
                    writeTag("account_capture_change_policy", jsonGenerator);
                    AccountCaptureChangePolicyType.C3333a.f18705b.serialize(eventType.f19590f5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 318:
                    jsonGenerator.writeStartObject();
                    writeTag("allow_download_disabled", jsonGenerator);
                    AllowDownloadDisabledType.C3355a.f18736b.serialize(eventType.f19599g5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 319:
                    jsonGenerator.writeStartObject();
                    writeTag("allow_download_enabled", jsonGenerator);
                    AllowDownloadEnabledType.C3357a.f18738b.serialize(eventType.f19608h5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 320:
                    jsonGenerator.writeStartObject();
                    writeTag("camera_uploads_policy_changed", jsonGenerator);
                    CameraUploadsPolicyChangedType.C3389a.f18776b.serialize(eventType.f19617i5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 321:
                    jsonGenerator.writeStartObject();
                    writeTag("content_administration_policy_changed", jsonGenerator);
                    ContentAdministrationPolicyChangedType.C3399a.f18786b.serialize(eventType.f19626j5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 322:
                    jsonGenerator.writeStartObject();
                    writeTag("data_placement_restriction_change_policy", jsonGenerator);
                    DataPlacementRestrictionChangePolicyType.C3409a.f18801b.serialize(eventType.f19635k5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 323:
                    jsonGenerator.writeStartObject();
                    writeTag("data_placement_restriction_satisfy_policy", jsonGenerator);
                    DataPlacementRestrictionSatisfyPolicyType.C3411a.f18803b.serialize(eventType.f19644l5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 324:
                    jsonGenerator.writeStartObject();
                    writeTag("device_approvals_add_exception", jsonGenerator);
                    DeviceApprovalsAddExceptionType.C3417a.f18810b.serialize(eventType.f19653m5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 325:
                    jsonGenerator.writeStartObject();
                    writeTag("device_approvals_change_desktop_policy", jsonGenerator);
                    DeviceApprovalsChangeDesktopPolicyType.C3419a.f18812b.serialize(eventType.f19662n5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 326:
                    jsonGenerator.writeStartObject();
                    writeTag("device_approvals_change_mobile_policy", jsonGenerator);
                    DeviceApprovalsChangeMobilePolicyType.C3421a.f18814b.serialize(eventType.f19670o5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 327:
                    jsonGenerator.writeStartObject();
                    writeTag("device_approvals_change_overage_action", jsonGenerator);
                    DeviceApprovalsChangeOverageActionType.C3423a.f18816b.serialize(eventType.f19678p5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 328:
                    jsonGenerator.writeStartObject();
                    writeTag("device_approvals_change_unlink_action", jsonGenerator);
                    DeviceApprovalsChangeUnlinkActionType.C3425a.f18818b.serialize(eventType.f19686q5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53277q5 /* 329 */:
                    jsonGenerator.writeStartObject();
                    writeTag("device_approvals_remove_exception", jsonGenerator);
                    DeviceApprovalsRemoveExceptionType.C3429a.f18822b.serialize(eventType.f19694r5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 330:
                    jsonGenerator.writeStartObject();
                    writeTag("directory_restrictions_add_members", jsonGenerator);
                    DirectoryRestrictionsAddMembersType.C3456a.f18849b.serialize(eventType.f19702s5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53291s5 /* 331 */:
                    jsonGenerator.writeStartObject();
                    writeTag("directory_restrictions_remove_members", jsonGenerator);
                    DirectoryRestrictionsRemoveMembersType.C3458a.f18851b.serialize(eventType.f19710t5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 332:
                    jsonGenerator.writeStartObject();
                    writeTag("emm_add_exception", jsonGenerator);
                    EmmAddExceptionType.C3483a.f18876b.serialize(eventType.f19718u5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 333:
                    jsonGenerator.writeStartObject();
                    writeTag("emm_change_policy", jsonGenerator);
                    EmmChangePolicyType.C3485a.f18878b.serialize(eventType.f19726v5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 334:
                    jsonGenerator.writeStartObject();
                    writeTag("emm_remove_exception", jsonGenerator);
                    EmmRemoveExceptionType.C3495a.f18888b.serialize(eventType.f19734w5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53319w5 /* 335 */:
                    jsonGenerator.writeStartObject();
                    writeTag("extended_version_history_change_policy", jsonGenerator);
                    ExtendedVersionHistoryChangePolicyType.C3517a.f19769b.serialize(eventType.f19742x5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 336:
                    jsonGenerator.writeStartObject();
                    writeTag("file_comments_change_policy", jsonGenerator);
                    FileCommentsChangePolicyType.C3543a.f19802b.serialize(eventType.f19750y5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 337:
                    jsonGenerator.writeStartObject();
                    writeTag("file_locking_policy_changed", jsonGenerator);
                    FileLockingPolicyChangedType.C3565a.f19824b.serialize(eventType.f19758z5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 338:
                    jsonGenerator.writeStartObject();
                    writeTag("file_requests_change_policy", jsonGenerator);
                    FileRequestsChangePolicyType.C3589a.f19848b.serialize(eventType.f19337A5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 339:
                    jsonGenerator.writeStartObject();
                    writeTag("file_requests_emails_enabled", jsonGenerator);
                    FileRequestsEmailsEnabledType.C3591a.f19850b.serialize(eventType.f19345B5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 340:
                    jsonGenerator.writeStartObject();
                    writeTag("file_requests_emails_restricted_to_team_only", jsonGenerator);
                    FileRequestsEmailsRestrictedToTeamOnlyType.C3593a.f19852b.serialize(eventType.f19353C5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 341:
                    jsonGenerator.writeStartObject();
                    writeTag("file_transfers_policy_changed", jsonGenerator);
                    FileTransfersPolicyChangedType.C3611a.f19870b.serialize(eventType.f19361D5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 342:
                    jsonGenerator.writeStartObject();
                    writeTag("google_sso_change_policy", jsonGenerator);
                    GoogleSsoChangePolicyType.C3639a.f19907b.serialize(eventType.f19369E5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53019E5 /* 343 */:
                    jsonGenerator.writeStartObject();
                    writeTag("group_user_management_change_policy", jsonGenerator);
                    GroupUserManagementChangePolicyType.C3672a.f19940b.serialize(eventType.f19377F5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53026F5 /* 344 */:
                    jsonGenerator.writeStartObject();
                    writeTag("integration_policy_changed", jsonGenerator);
                    IntegrationPolicyChangedType.C3688a.f19956b.serialize(eventType.f19385G5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 345:
                    jsonGenerator.writeStartObject();
                    writeTag("member_requests_change_policy", jsonGenerator);
                    MemberRequestsChangePolicyType.C3754a.f20027b.serialize(eventType.f19393H5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 346:
                    jsonGenerator.writeStartObject();
                    writeTag("member_send_invite_policy_changed", jsonGenerator);
                    MemberSendInvitePolicyChangedType.C3760a.f20033b.serialize(eventType.f19401I5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 347:
                    jsonGenerator.writeStartObject();
                    writeTag("member_space_limits_add_exception", jsonGenerator);
                    MemberSpaceLimitsAddExceptionType.C3766a.f20039b.serialize(eventType.f19409J5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53054J5 /* 348 */:
                    jsonGenerator.writeStartObject();
                    writeTag("member_space_limits_change_caps_type_policy", jsonGenerator);
                    MemberSpaceLimitsChangeCapsTypePolicyType.C3768a.f20041b.serialize(eventType.f19417K5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53061K5 /* 349 */:
                    jsonGenerator.writeStartObject();
                    writeTag("member_space_limits_change_policy", jsonGenerator);
                    MemberSpaceLimitsChangePolicyType.C3772a.f20045b.serialize(eventType.f19425L5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53068L5 /* 350 */:
                    jsonGenerator.writeStartObject();
                    writeTag("member_space_limits_remove_exception", jsonGenerator);
                    MemberSpaceLimitsRemoveExceptionType.C3778a.f20051b.serialize(eventType.f19433M5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 351:
                    jsonGenerator.writeStartObject();
                    writeTag("member_suggestions_change_policy", jsonGenerator);
                    MemberSuggestionsChangePolicyType.C3784a.f20057b.serialize(eventType.f19441N5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53082N5 /* 352 */:
                    jsonGenerator.writeStartObject();
                    writeTag("microsoft_office_addin_change_policy", jsonGenerator);
                    MicrosoftOfficeAddinChangePolicyType.C3790a.f20063b.serialize(eventType.f19449O5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53089O5 /* 353 */:
                    jsonGenerator.writeStartObject();
                    writeTag("network_control_change_policy", jsonGenerator);
                    NetworkControlChangePolicyType.C3798a.f20071b.serialize(eventType.f19457P5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53096P5 /* 354 */:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_change_deployment_policy", jsonGenerator);
                    PaperChangeDeploymentPolicyType.C3839a.f20112b.serialize(eventType.f19465Q5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case DataBinderMapperImpl.f53103Q5 /* 355 */:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_change_member_link_policy", jsonGenerator);
                    PaperChangeMemberLinkPolicyType.C3841a.f20114b.serialize(eventType.f19473R5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 356:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_change_member_policy", jsonGenerator);
                    PaperChangeMemberPolicyType.C3843a.f20116b.serialize(eventType.f19481S5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 357:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_change_policy", jsonGenerator);
                    PaperChangePolicyType.C3845a.f20118b.serialize(eventType.f19489T5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 358:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_default_folder_policy_changed", jsonGenerator);
                    PaperDefaultFolderPolicyChangedType.C3867a.f20140b.serialize(eventType.f19497U5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 359:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_desktop_policy_changed", jsonGenerator);
                    PaperDesktopPolicyChangedType.C3871a.f20144b.serialize(eventType.f19505V5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 360:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_enabled_users_group_addition", jsonGenerator);
                    PaperEnabledUsersGroupAdditionType.C3918a.f20191b.serialize(eventType.f19513W5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 361:
                    jsonGenerator.writeStartObject();
                    writeTag("paper_enabled_users_group_removal", jsonGenerator);
                    PaperEnabledUsersGroupRemovalType.C3920a.f20193b.serialize(eventType.f19521X5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 362:
                    jsonGenerator.writeStartObject();
                    writeTag("password_strength_requirements_change_policy", jsonGenerator);
                    PasswordStrengthRequirementsChangePolicyType.C3957a.f20233b.serialize(eventType.f19529Y5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 363:
                    jsonGenerator.writeStartObject();
                    writeTag("permanent_delete_change_policy", jsonGenerator);
                    PermanentDeleteChangePolicyType.C3962a.f20238b.serialize(eventType.f19537Z5, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 364:
                    jsonGenerator.writeStartObject();
                    writeTag("reseller_support_change_policy", jsonGenerator);
                    ResellerSupportChangePolicyType.C3972a.f20248b.serialize(eventType.f19546a6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 365:
                    jsonGenerator.writeStartObject();
                    writeTag("rewind_policy_changed", jsonGenerator);
                    RewindPolicyChangedType.C3984a.f20260b.serialize(eventType.f19555b6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 366:
                    jsonGenerator.writeStartObject();
                    writeTag("send_for_signature_policy_changed", jsonGenerator);
                    SendForSignaturePolicyChangedType.C4000a.f20276b.serialize(eventType.f19564c6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 367:
                    jsonGenerator.writeStartObject();
                    writeTag("sharing_change_folder_join_policy", jsonGenerator);
                    SharingChangeFolderJoinPolicyType.C4143a.f20419b.serialize(eventType.f19573d6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 368:
                    jsonGenerator.writeStartObject();
                    writeTag("sharing_change_link_policy", jsonGenerator);
                    SharingChangeLinkPolicyType.C4145a.f20421b.serialize(eventType.f19582e6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 369:
                    jsonGenerator.writeStartObject();
                    writeTag("sharing_change_member_policy", jsonGenerator);
                    SharingChangeMemberPolicyType.C4147a.f20423b.serialize(eventType.f19591f6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 370:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_change_download_policy", jsonGenerator);
                    ShowcaseChangeDownloadPolicyType.C4163a.f20439b.serialize(eventType.f19600g6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 371:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_change_enabled_policy", jsonGenerator);
                    ShowcaseChangeEnabledPolicyType.C4165a.f20441b.serialize(eventType.f19609h6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 372:
                    jsonGenerator.writeStartObject();
                    writeTag("showcase_change_external_sharing_policy", jsonGenerator);
                    ShowcaseChangeExternalSharingPolicyType.C4167a.f20443b.serialize(eventType.f19618i6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 373:
                    jsonGenerator.writeStartObject();
                    writeTag("smarter_smart_sync_policy_changed", jsonGenerator);
                    SmarterSmartSyncPolicyChangedType.C4232a.f20508b.serialize(eventType.f19627j6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 374:
                    jsonGenerator.writeStartObject();
                    writeTag("smart_sync_change_policy", jsonGenerator);
                    SmartSyncChangePolicyType.C4222a.f20498b.serialize(eventType.f19636k6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 375:
                    jsonGenerator.writeStartObject();
                    writeTag("smart_sync_not_opt_out", jsonGenerator);
                    SmartSyncNotOptOutType.C4226a.f20502b.serialize(eventType.f19645l6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 376:
                    jsonGenerator.writeStartObject();
                    writeTag("smart_sync_opt_out", jsonGenerator);
                    SmartSyncOptOutType.C4230a.f20506b.serialize(eventType.f19654m6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 377:
                    jsonGenerator.writeStartObject();
                    writeTag("sso_change_policy", jsonGenerator);
                    SsoChangePolicyType.C4250a.f20526b.serialize(eventType.f19663n6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 378:
                    jsonGenerator.writeStartObject();
                    writeTag("team_extensions_policy_changed", jsonGenerator);
                    TeamExtensionsPolicyChangedType.C4272a.f20548b.serialize(eventType.f19671o6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 379:
                    jsonGenerator.writeStartObject();
                    writeTag("team_selective_sync_policy_changed", jsonGenerator);
                    TeamSelectiveSyncPolicyChangedType.C4351a.f20639b.serialize(eventType.f19679p6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 380:
                    jsonGenerator.writeStartObject();
                    writeTag("team_sharing_whitelist_subjects_changed", jsonGenerator);
                    TeamSharingWhitelistSubjectsChangedType.C4355a.f20643b.serialize(eventType.f19687q6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 381:
                    jsonGenerator.writeStartObject();
                    writeTag("tfa_add_exception", jsonGenerator);
                    TfaAddExceptionType.C4359a.f20647b.serialize(eventType.f19695r6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 382:
                    jsonGenerator.writeStartObject();
                    writeTag("tfa_change_policy", jsonGenerator);
                    TfaChangePolicyType.C4365a.f20653b.serialize(eventType.f19703s6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 383:
                    jsonGenerator.writeStartObject();
                    writeTag("tfa_remove_exception", jsonGenerator);
                    TfaRemoveExceptionType.C4373a.f20661b.serialize(eventType.f19711t6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 384:
                    jsonGenerator.writeStartObject();
                    writeTag("two_account_change_policy", jsonGenerator);
                    TwoAccountChangePolicyType.C4388a.f20676b.serialize(eventType.f19719u6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case StandardNames.XML_BASE /* 385 */:
                    jsonGenerator.writeStartObject();
                    writeTag("viewer_info_policy_changed", jsonGenerator);
                    ViewerInfoPolicyChangedType.C4396a.f20684b.serialize(eventType.f19727v6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case StandardNames.XML_SPACE /* 386 */:
                    jsonGenerator.writeStartObject();
                    writeTag("watermarking_policy_changed", jsonGenerator);
                    WatermarkingPolicyChangedType.C4400a.f20688b.serialize(eventType.f19735w6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case StandardNames.XML_LANG /* 387 */:
                    jsonGenerator.writeStartObject();
                    writeTag("web_sessions_change_active_session_limit", jsonGenerator);
                    WebSessionsChangeActiveSessionLimitType.C4404a.f20694b.serialize(eventType.f19743x6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case StandardNames.XML_ID /* 388 */:
                    jsonGenerator.writeStartObject();
                    writeTag("web_sessions_change_fixed_length_policy", jsonGenerator);
                    WebSessionsChangeFixedLengthPolicyType.C4406a.f20696b.serialize(eventType.f19751y6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case StandardNames.XML_LANG_TYPE /* 389 */:
                    jsonGenerator.writeStartObject();
                    writeTag("web_sessions_change_idle_length_policy", jsonGenerator);
                    WebSessionsChangeIdleLengthPolicyType.C4408a.f20698b.serialize(eventType.f19759z6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 390:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_from", jsonGenerator);
                    TeamMergeFromType.C4290a.f20566b.serialize(eventType.f19338A6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 391:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_to", jsonGenerator);
                    TeamMergeToType.C4336a.f20624b.serialize(eventType.f19346B6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 392:
                    jsonGenerator.writeStartObject();
                    writeTag("team_profile_add_logo", jsonGenerator);
                    TeamProfileAddLogoType.C4339a.f20627b.serialize(eventType.f19354C6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 393:
                    jsonGenerator.writeStartObject();
                    writeTag("team_profile_change_default_language", jsonGenerator);
                    TeamProfileChangeDefaultLanguageType.C4341a.f20629b.serialize(eventType.f19362D6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 394:
                    jsonGenerator.writeStartObject();
                    writeTag("team_profile_change_logo", jsonGenerator);
                    TeamProfileChangeLogoType.C4343a.f20631b.serialize(eventType.f19370E6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 395:
                    jsonGenerator.writeStartObject();
                    writeTag("team_profile_change_name", jsonGenerator);
                    TeamProfileChangeNameType.C4345a.f20633b.serialize(eventType.f19378F6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 396:
                    jsonGenerator.writeStartObject();
                    writeTag("team_profile_remove_logo", jsonGenerator);
                    TeamProfileRemoveLogoType.C4347a.f20635b.serialize(eventType.f19386G6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 397:
                    jsonGenerator.writeStartObject();
                    writeTag("tfa_add_backup_phone", jsonGenerator);
                    TfaAddBackupPhoneType.C4357a.f20645b.serialize(eventType.f19394H6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 398:
                    jsonGenerator.writeStartObject();
                    writeTag("tfa_add_security_key", jsonGenerator);
                    TfaAddSecurityKeyType.C4361a.f20649b.serialize(eventType.f19402I6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 399:
                    jsonGenerator.writeStartObject();
                    writeTag("tfa_change_backup_phone", jsonGenerator);
                    TfaChangeBackupPhoneType.C4363a.f20651b.serialize(eventType.f19410J6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 400:
                    jsonGenerator.writeStartObject();
                    writeTag("tfa_change_status", jsonGenerator);
                    TfaChangeStatusType.C4367a.f20655b.serialize(eventType.f19418K6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 401:
                    jsonGenerator.writeStartObject();
                    writeTag("tfa_remove_backup_phone", jsonGenerator);
                    TfaRemoveBackupPhoneType.C4371a.f20659b.serialize(eventType.f19426L6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 402:
                    jsonGenerator.writeStartObject();
                    writeTag("tfa_remove_security_key", jsonGenerator);
                    TfaRemoveSecurityKeyType.C4375a.f20663b.serialize(eventType.f19434M6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 403:
                    jsonGenerator.writeStartObject();
                    writeTag("tfa_reset", jsonGenerator);
                    TfaResetType.C4377a.f20665b.serialize(eventType.f19442N6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 404:
                    jsonGenerator.writeStartObject();
                    writeTag("changed_enterprise_admin_role", jsonGenerator);
                    ChangedEnterpriseAdminRoleType.C3392a.f18779b.serialize(eventType.f19450O6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 405:
                    jsonGenerator.writeStartObject();
                    writeTag("changed_enterprise_connected_team_status", jsonGenerator);
                    ChangedEnterpriseConnectedTeamStatusType.C3394a.f18781b.serialize(eventType.f19458P6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 406:
                    jsonGenerator.writeStartObject();
                    writeTag("ended_enterprise_admin_session", jsonGenerator);
                    EndedEnterpriseAdminSessionType.C3501a.f18894b.serialize(eventType.f19466Q6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 407:
                    jsonGenerator.writeStartObject();
                    writeTag("ended_enterprise_admin_session_deprecated", jsonGenerator);
                    EndedEnterpriseAdminSessionDeprecatedType.C3499a.f18892b.serialize(eventType.f19474R6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 408:
                    jsonGenerator.writeStartObject();
                    writeTag("enterprise_settings_locking", jsonGenerator);
                    EnterpriseSettingsLockingType.C3503a.f18896b.serialize(eventType.f19482S6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 409:
                    jsonGenerator.writeStartObject();
                    writeTag("guest_admin_change_status", jsonGenerator);
                    GuestAdminChangeStatusType.C3674a.f19942b.serialize(eventType.f19490T6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 410:
                    jsonGenerator.writeStartObject();
                    writeTag("started_enterprise_admin_session", jsonGenerator);
                    StartedEnterpriseAdminSessionType.C4262a.f20538b.serialize(eventType.f19498U6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 411:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_accepted", jsonGenerator);
                    TeamMergeRequestAcceptedType.C4298a.f20577b.serialize(eventType.f19506V6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 412:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_accepted_shown_to_primary_team", jsonGenerator);
                    TeamMergeRequestAcceptedShownToPrimaryTeamType.C4295a.f20574b.serialize(eventType.f19514W6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 413:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_accepted_shown_to_secondary_team", jsonGenerator);
                    TeamMergeRequestAcceptedShownToSecondaryTeamType.C4297a.f20576b.serialize(eventType.f19522X6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 414:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_auto_canceled", jsonGenerator);
                    TeamMergeRequestAutoCanceledType.C4300a.f20579b.serialize(eventType.f19530Y6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 415:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_canceled", jsonGenerator);
                    TeamMergeRequestCanceledType.C4308a.f20590b.serialize(eventType.f19538Z6, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 416:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_canceled_shown_to_primary_team", jsonGenerator);
                    TeamMergeRequestCanceledShownToPrimaryTeamType.C4305a.f20587b.serialize(eventType.f19547a7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 417:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_canceled_shown_to_secondary_team", jsonGenerator);
                    TeamMergeRequestCanceledShownToSecondaryTeamType.C4307a.f20589b.serialize(eventType.f19556b7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 418:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_expired", jsonGenerator);
                    TeamMergeRequestExpiredType.C4316a.f20601b.serialize(eventType.f19565c7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 419:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_expired_shown_to_primary_team", jsonGenerator);
                    TeamMergeRequestExpiredShownToPrimaryTeamType.C4313a.f20598b.serialize(eventType.f19574d7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 420:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_expired_shown_to_secondary_team", jsonGenerator);
                    TeamMergeRequestExpiredShownToSecondaryTeamType.C4315a.f20600b.serialize(eventType.f19583e7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 421:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_rejected_shown_to_primary_team", jsonGenerator);
                    TeamMergeRequestRejectedShownToPrimaryTeamType.C4318a.f20603b.serialize(eventType.f19592f7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 422:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_rejected_shown_to_secondary_team", jsonGenerator);
                    TeamMergeRequestRejectedShownToSecondaryTeamType.C4320a.f20605b.serialize(eventType.f19601g7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 423:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_reminder", jsonGenerator);
                    TeamMergeRequestReminderType.C4328a.f20616b.serialize(eventType.f19610h7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 424:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_reminder_shown_to_primary_team", jsonGenerator);
                    TeamMergeRequestReminderShownToPrimaryTeamType.C4325a.f20613b.serialize(eventType.f19619i7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case TypedValues.CycleType.TYPE_WAVE_PHASE /* 425 */:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_reminder_shown_to_secondary_team", jsonGenerator);
                    TeamMergeRequestReminderShownToSecondaryTeamType.C4327a.f20615b.serialize(eventType.f19628j7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 426:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_revoked", jsonGenerator);
                    TeamMergeRequestRevokedType.C4330a.f20618b.serialize(eventType.f19637k7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 427:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_sent_shown_to_primary_team", jsonGenerator);
                    TeamMergeRequestSentShownToPrimaryTeamType.C4332a.f20620b.serialize(eventType.f19646l7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 428:
                    jsonGenerator.writeStartObject();
                    writeTag("team_merge_request_sent_shown_to_secondary_team", jsonGenerator);
                    TeamMergeRequestSentShownToSecondaryTeamType.C4334a.f20622b.serialize(eventType.f19655m7, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static EventType accountCaptureChangeAvailability(AccountCaptureChangeAvailabilityType accountCaptureChangeAvailabilityType) {
        if (accountCaptureChangeAvailabilityType != null) {
            return new EventType().m14988n7(Tag.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY, accountCaptureChangeAvailabilityType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType accountCaptureChangePolicy(AccountCaptureChangePolicyType accountCaptureChangePolicyType) {
        if (accountCaptureChangePolicyType != null) {
            return new EventType().m14997o7(Tag.ACCOUNT_CAPTURE_CHANGE_POLICY, accountCaptureChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType accountCaptureMigrateAccount(AccountCaptureMigrateAccountType accountCaptureMigrateAccountType) {
        if (accountCaptureMigrateAccountType != null) {
            return new EventType().m15006p7(Tag.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT, accountCaptureMigrateAccountType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType accountCaptureNotificationEmailsSent(AccountCaptureNotificationEmailsSentType accountCaptureNotificationEmailsSentType) {
        if (accountCaptureNotificationEmailsSentType != null) {
            return new EventType().m15015q7(Tag.ACCOUNT_CAPTURE_NOTIFICATION_EMAILS_SENT, accountCaptureNotificationEmailsSentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType accountCaptureRelinquishAccount(AccountCaptureRelinquishAccountType accountCaptureRelinquishAccountType) {
        if (accountCaptureRelinquishAccountType != null) {
            return new EventType().m15024r7(Tag.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT, accountCaptureRelinquishAccountType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType accountLockOrUnlocked(AccountLockOrUnlockedType accountLockOrUnlockedType) {
        if (accountLockOrUnlockedType != null) {
            return new EventType().m15033s7(Tag.ACCOUNT_LOCK_OR_UNLOCKED, accountLockOrUnlockedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType allowDownloadDisabled(AllowDownloadDisabledType allowDownloadDisabledType) {
        if (allowDownloadDisabledType != null) {
            return new EventType().m15042t7(Tag.ALLOW_DOWNLOAD_DISABLED, allowDownloadDisabledType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType allowDownloadEnabled(AllowDownloadEnabledType allowDownloadEnabledType) {
        if (allowDownloadEnabledType != null) {
            return new EventType().m15051u7(Tag.ALLOW_DOWNLOAD_ENABLED, allowDownloadEnabledType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType appLinkTeam(AppLinkTeamType appLinkTeamType) {
        if (appLinkTeamType != null) {
            return new EventType().m15060v7(Tag.APP_LINK_TEAM, appLinkTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType appLinkUser(AppLinkUserType appLinkUserType) {
        if (appLinkUserType != null) {
            return new EventType().m15069w7(Tag.APP_LINK_USER, appLinkUserType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType appUnlinkTeam(AppUnlinkTeamType appUnlinkTeamType) {
        if (appUnlinkTeamType != null) {
            return new EventType().m15078x7(Tag.APP_UNLINK_TEAM, appUnlinkTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType appUnlinkUser(AppUnlinkUserType appUnlinkUserType) {
        if (appUnlinkUserType != null) {
            return new EventType().m15087y7(Tag.APP_UNLINK_USER, appUnlinkUserType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType binderAddPage(BinderAddPageType binderAddPageType) {
        if (binderAddPageType != null) {
            return new EventType().m15096z7(Tag.BINDER_ADD_PAGE, binderAddPageType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType binderAddSection(BinderAddSectionType binderAddSectionType) {
        if (binderAddSectionType != null) {
            return new EventType().m14675A7(Tag.BINDER_ADD_SECTION, binderAddSectionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType binderRemovePage(BinderRemovePageType binderRemovePageType) {
        if (binderRemovePageType != null) {
            return new EventType().m14683B7(Tag.BINDER_REMOVE_PAGE, binderRemovePageType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType binderRemoveSection(BinderRemoveSectionType binderRemoveSectionType) {
        if (binderRemoveSectionType != null) {
            return new EventType().m14691C7(Tag.BINDER_REMOVE_SECTION, binderRemoveSectionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType binderRenamePage(BinderRenamePageType binderRenamePageType) {
        if (binderRenamePageType != null) {
            return new EventType().m14699D7(Tag.BINDER_RENAME_PAGE, binderRenamePageType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType binderRenameSection(BinderRenameSectionType binderRenameSectionType) {
        if (binderRenameSectionType != null) {
            return new EventType().m14707E7(Tag.BINDER_RENAME_SECTION, binderRenameSectionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType binderReorderPage(BinderReorderPageType binderReorderPageType) {
        if (binderReorderPageType != null) {
            return new EventType().m14715F7(Tag.BINDER_REORDER_PAGE, binderReorderPageType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType binderReorderSection(BinderReorderSectionType binderReorderSectionType) {
        if (binderReorderSectionType != null) {
            return new EventType().m14723G7(Tag.BINDER_REORDER_SECTION, binderReorderSectionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType cameraUploadsPolicyChanged(CameraUploadsPolicyChangedType cameraUploadsPolicyChangedType) {
        if (cameraUploadsPolicyChangedType != null) {
            return new EventType().m14731H7(Tag.CAMERA_UPLOADS_POLICY_CHANGED, cameraUploadsPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType changedEnterpriseAdminRole(ChangedEnterpriseAdminRoleType changedEnterpriseAdminRoleType) {
        if (changedEnterpriseAdminRoleType != null) {
            return new EventType().m14739I7(Tag.CHANGED_ENTERPRISE_ADMIN_ROLE, changedEnterpriseAdminRoleType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType changedEnterpriseConnectedTeamStatus(ChangedEnterpriseConnectedTeamStatusType changedEnterpriseConnectedTeamStatusType) {
        if (changedEnterpriseConnectedTeamStatusType != null) {
            return new EventType().m14747J7(Tag.CHANGED_ENTERPRISE_CONNECTED_TEAM_STATUS, changedEnterpriseConnectedTeamStatusType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType collectionShare(CollectionShareType collectionShareType) {
        if (collectionShareType != null) {
            return new EventType().m14755K7(Tag.COLLECTION_SHARE, collectionShareType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType contentAdministrationPolicyChanged(ContentAdministrationPolicyChangedType contentAdministrationPolicyChangedType) {
        if (contentAdministrationPolicyChangedType != null) {
            return new EventType().m14763L7(Tag.CONTENT_ADMINISTRATION_POLICY_CHANGED, contentAdministrationPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType createFolder(CreateFolderType createFolderType) {
        if (createFolderType != null) {
            return new EventType().m14771M7(Tag.CREATE_FOLDER, createFolderType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType createTeamInviteLink(CreateTeamInviteLinkType createTeamInviteLinkType) {
        if (createTeamInviteLinkType != null) {
            return new EventType().m14779N7(Tag.CREATE_TEAM_INVITE_LINK, createTeamInviteLinkType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType dataPlacementRestrictionChangePolicy(DataPlacementRestrictionChangePolicyType dataPlacementRestrictionChangePolicyType) {
        if (dataPlacementRestrictionChangePolicyType != null) {
            return new EventType().m14787O7(Tag.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY, dataPlacementRestrictionChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType dataPlacementRestrictionSatisfyPolicy(DataPlacementRestrictionSatisfyPolicyType dataPlacementRestrictionSatisfyPolicyType) {
        if (dataPlacementRestrictionSatisfyPolicyType != null) {
            return new EventType().m14795P7(Tag.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY, dataPlacementRestrictionSatisfyPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deleteTeamInviteLink(DeleteTeamInviteLinkType deleteTeamInviteLinkType) {
        if (deleteTeamInviteLinkType != null) {
            return new EventType().m14803Q7(Tag.DELETE_TEAM_INVITE_LINK, deleteTeamInviteLinkType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceApprovalsAddException(DeviceApprovalsAddExceptionType deviceApprovalsAddExceptionType) {
        if (deviceApprovalsAddExceptionType != null) {
            return new EventType().m14811R7(Tag.DEVICE_APPROVALS_ADD_EXCEPTION, deviceApprovalsAddExceptionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceApprovalsChangeDesktopPolicy(DeviceApprovalsChangeDesktopPolicyType deviceApprovalsChangeDesktopPolicyType) {
        if (deviceApprovalsChangeDesktopPolicyType != null) {
            return new EventType().m14819S7(Tag.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY, deviceApprovalsChangeDesktopPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceApprovalsChangeMobilePolicy(DeviceApprovalsChangeMobilePolicyType deviceApprovalsChangeMobilePolicyType) {
        if (deviceApprovalsChangeMobilePolicyType != null) {
            return new EventType().m14827T7(Tag.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY, deviceApprovalsChangeMobilePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceApprovalsChangeOverageAction(DeviceApprovalsChangeOverageActionType deviceApprovalsChangeOverageActionType) {
        if (deviceApprovalsChangeOverageActionType != null) {
            return new EventType().m14835U7(Tag.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION, deviceApprovalsChangeOverageActionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceApprovalsChangeUnlinkAction(DeviceApprovalsChangeUnlinkActionType deviceApprovalsChangeUnlinkActionType) {
        if (deviceApprovalsChangeUnlinkActionType != null) {
            return new EventType().m14843V7(Tag.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION, deviceApprovalsChangeUnlinkActionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceApprovalsRemoveException(DeviceApprovalsRemoveExceptionType deviceApprovalsRemoveExceptionType) {
        if (deviceApprovalsRemoveExceptionType != null) {
            return new EventType().m14851W7(Tag.DEVICE_APPROVALS_REMOVE_EXCEPTION, deviceApprovalsRemoveExceptionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceChangeIpDesktop(DeviceChangeIpDesktopType deviceChangeIpDesktopType) {
        if (deviceChangeIpDesktopType != null) {
            return new EventType().m14859X7(Tag.DEVICE_CHANGE_IP_DESKTOP, deviceChangeIpDesktopType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceChangeIpMobile(DeviceChangeIpMobileType deviceChangeIpMobileType) {
        if (deviceChangeIpMobileType != null) {
            return new EventType().m14867Y7(Tag.DEVICE_CHANGE_IP_MOBILE, deviceChangeIpMobileType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceChangeIpWeb(DeviceChangeIpWebType deviceChangeIpWebType) {
        if (deviceChangeIpWebType != null) {
            return new EventType().m14875Z7(Tag.DEVICE_CHANGE_IP_WEB, deviceChangeIpWebType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceDeleteOnUnlinkFail(DeviceDeleteOnUnlinkFailType deviceDeleteOnUnlinkFailType) {
        if (deviceDeleteOnUnlinkFailType != null) {
            return new EventType().m14883a8(Tag.DEVICE_DELETE_ON_UNLINK_FAIL, deviceDeleteOnUnlinkFailType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceDeleteOnUnlinkSuccess(DeviceDeleteOnUnlinkSuccessType deviceDeleteOnUnlinkSuccessType) {
        if (deviceDeleteOnUnlinkSuccessType != null) {
            return new EventType().m14891b8(Tag.DEVICE_DELETE_ON_UNLINK_SUCCESS, deviceDeleteOnUnlinkSuccessType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceLinkFail(DeviceLinkFailType deviceLinkFailType) {
        if (deviceLinkFailType != null) {
            return new EventType().m14899c8(Tag.DEVICE_LINK_FAIL, deviceLinkFailType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceLinkSuccess(DeviceLinkSuccessType deviceLinkSuccessType) {
        if (deviceLinkSuccessType != null) {
            return new EventType().m14907d8(Tag.DEVICE_LINK_SUCCESS, deviceLinkSuccessType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceManagementDisabled(DeviceManagementDisabledType deviceManagementDisabledType) {
        if (deviceManagementDisabledType != null) {
            return new EventType().m14915e8(Tag.DEVICE_MANAGEMENT_DISABLED, deviceManagementDisabledType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceManagementEnabled(DeviceManagementEnabledType deviceManagementEnabledType) {
        if (deviceManagementEnabledType != null) {
            return new EventType().m14923f8(Tag.DEVICE_MANAGEMENT_ENABLED, deviceManagementEnabledType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType deviceUnlink(DeviceUnlinkType deviceUnlinkType) {
        if (deviceUnlinkType != null) {
            return new EventType().m14931g8(Tag.DEVICE_UNLINK, deviceUnlinkType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType directoryRestrictionsAddMembers(DirectoryRestrictionsAddMembersType directoryRestrictionsAddMembersType) {
        if (directoryRestrictionsAddMembersType != null) {
            return new EventType().m14939h8(Tag.DIRECTORY_RESTRICTIONS_ADD_MEMBERS, directoryRestrictionsAddMembersType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType directoryRestrictionsRemoveMembers(DirectoryRestrictionsRemoveMembersType directoryRestrictionsRemoveMembersType) {
        if (directoryRestrictionsRemoveMembersType != null) {
            return new EventType().m14947i8(Tag.DIRECTORY_RESTRICTIONS_REMOVE_MEMBERS, directoryRestrictionsRemoveMembersType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType disabledDomainInvites(DisabledDomainInvitesType disabledDomainInvitesType) {
        if (disabledDomainInvitesType != null) {
            return new EventType().m14955j8(Tag.DISABLED_DOMAIN_INVITES, disabledDomainInvitesType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType domainInvitesApproveRequestToJoinTeam(DomainInvitesApproveRequestToJoinTeamType domainInvitesApproveRequestToJoinTeamType) {
        if (domainInvitesApproveRequestToJoinTeamType != null) {
            return new EventType().m14963k8(Tag.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM, domainInvitesApproveRequestToJoinTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType domainInvitesDeclineRequestToJoinTeam(DomainInvitesDeclineRequestToJoinTeamType domainInvitesDeclineRequestToJoinTeamType) {
        if (domainInvitesDeclineRequestToJoinTeamType != null) {
            return new EventType().m14971l8(Tag.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM, domainInvitesDeclineRequestToJoinTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType domainInvitesEmailExistingUsers(DomainInvitesEmailExistingUsersType domainInvitesEmailExistingUsersType) {
        if (domainInvitesEmailExistingUsersType != null) {
            return new EventType().m14980m8(Tag.DOMAIN_INVITES_EMAIL_EXISTING_USERS, domainInvitesEmailExistingUsersType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType domainInvitesRequestToJoinTeam(DomainInvitesRequestToJoinTeamType domainInvitesRequestToJoinTeamType) {
        if (domainInvitesRequestToJoinTeamType != null) {
            return new EventType().m14989n8(Tag.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM, domainInvitesRequestToJoinTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType domainInvitesSetInviteNewUserPrefToNo(DomainInvitesSetInviteNewUserPrefToNoType domainInvitesSetInviteNewUserPrefToNoType) {
        if (domainInvitesSetInviteNewUserPrefToNoType != null) {
            return new EventType().m14998o8(Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO, domainInvitesSetInviteNewUserPrefToNoType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType domainInvitesSetInviteNewUserPrefToYes(DomainInvitesSetInviteNewUserPrefToYesType domainInvitesSetInviteNewUserPrefToYesType) {
        if (domainInvitesSetInviteNewUserPrefToYesType != null) {
            return new EventType().m15007p8(Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES, domainInvitesSetInviteNewUserPrefToYesType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType domainVerificationAddDomainFail(DomainVerificationAddDomainFailType domainVerificationAddDomainFailType) {
        if (domainVerificationAddDomainFailType != null) {
            return new EventType().m15016q8(Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL, domainVerificationAddDomainFailType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType domainVerificationAddDomainSuccess(DomainVerificationAddDomainSuccessType domainVerificationAddDomainSuccessType) {
        if (domainVerificationAddDomainSuccessType != null) {
            return new EventType().m15025r8(Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS, domainVerificationAddDomainSuccessType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType domainVerificationRemoveDomain(DomainVerificationRemoveDomainType domainVerificationRemoveDomainType) {
        if (domainVerificationRemoveDomainType != null) {
            return new EventType().m15034s8(Tag.DOMAIN_VERIFICATION_REMOVE_DOMAIN, domainVerificationRemoveDomainType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType emmAddException(EmmAddExceptionType emmAddExceptionType) {
        if (emmAddExceptionType != null) {
            return new EventType().m15043t8(Tag.EMM_ADD_EXCEPTION, emmAddExceptionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType emmChangePolicy(EmmChangePolicyType emmChangePolicyType) {
        if (emmChangePolicyType != null) {
            return new EventType().m15052u8(Tag.EMM_CHANGE_POLICY, emmChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType emmCreateExceptionsReport(EmmCreateExceptionsReportType emmCreateExceptionsReportType) {
        if (emmCreateExceptionsReportType != null) {
            return new EventType().m15061v8(Tag.EMM_CREATE_EXCEPTIONS_REPORT, emmCreateExceptionsReportType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType emmCreateUsageReport(EmmCreateUsageReportType emmCreateUsageReportType) {
        if (emmCreateUsageReportType != null) {
            return new EventType().m15070w8(Tag.EMM_CREATE_USAGE_REPORT, emmCreateUsageReportType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType emmError(EmmErrorType emmErrorType) {
        if (emmErrorType != null) {
            return new EventType().m15079x8(Tag.EMM_ERROR, emmErrorType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType emmRefreshAuthToken(EmmRefreshAuthTokenType emmRefreshAuthTokenType) {
        if (emmRefreshAuthTokenType != null) {
            return new EventType().m15088y8(Tag.EMM_REFRESH_AUTH_TOKEN, emmRefreshAuthTokenType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType emmRemoveException(EmmRemoveExceptionType emmRemoveExceptionType) {
        if (emmRemoveExceptionType != null) {
            return new EventType().m15097z8(Tag.EMM_REMOVE_EXCEPTION, emmRemoveExceptionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType enabledDomainInvites(EnabledDomainInvitesType enabledDomainInvitesType) {
        if (enabledDomainInvitesType != null) {
            return new EventType().m14676A8(Tag.ENABLED_DOMAIN_INVITES, enabledDomainInvitesType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType endedEnterpriseAdminSession(EndedEnterpriseAdminSessionType endedEnterpriseAdminSessionType) {
        if (endedEnterpriseAdminSessionType != null) {
            return new EventType().m14684B8(Tag.ENDED_ENTERPRISE_ADMIN_SESSION, endedEnterpriseAdminSessionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType endedEnterpriseAdminSessionDeprecated(EndedEnterpriseAdminSessionDeprecatedType endedEnterpriseAdminSessionDeprecatedType) {
        if (endedEnterpriseAdminSessionDeprecatedType != null) {
            return new EventType().m14692C8(Tag.ENDED_ENTERPRISE_ADMIN_SESSION_DEPRECATED, endedEnterpriseAdminSessionDeprecatedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType enterpriseSettingsLocking(EnterpriseSettingsLockingType enterpriseSettingsLockingType) {
        if (enterpriseSettingsLockingType != null) {
            return new EventType().m14700D8(Tag.ENTERPRISE_SETTINGS_LOCKING, enterpriseSettingsLockingType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType exportMembersReport(ExportMembersReportType exportMembersReportType) {
        if (exportMembersReportType != null) {
            return new EventType().m14708E8(Tag.EXPORT_MEMBERS_REPORT, exportMembersReportType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType exportMembersReportFail(ExportMembersReportFailType exportMembersReportFailType) {
        if (exportMembersReportFailType != null) {
            return new EventType().m14716F8(Tag.EXPORT_MEMBERS_REPORT_FAIL, exportMembersReportFailType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType extendedVersionHistoryChangePolicy(ExtendedVersionHistoryChangePolicyType extendedVersionHistoryChangePolicyType) {
        if (extendedVersionHistoryChangePolicyType != null) {
            return new EventType().m14724G8(Tag.EXTENDED_VERSION_HISTORY_CHANGE_POLICY, extendedVersionHistoryChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType externalSharingCreateReport(ExternalSharingCreateReportType externalSharingCreateReportType) {
        if (externalSharingCreateReportType != null) {
            return new EventType().m14732H8(Tag.EXTERNAL_SHARING_CREATE_REPORT, externalSharingCreateReportType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType externalSharingReportFailed(ExternalSharingReportFailedType externalSharingReportFailedType) {
        if (externalSharingReportFailedType != null) {
            return new EventType().m14740I8(Tag.EXTERNAL_SHARING_REPORT_FAILED, externalSharingReportFailedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileAdd(FileAddType fileAddType) {
        if (fileAddType != null) {
            return new EventType().m14748J8(Tag.FILE_ADD, fileAddType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileAddComment(FileAddCommentType fileAddCommentType) {
        if (fileAddCommentType != null) {
            return new EventType().m14756K8(Tag.FILE_ADD_COMMENT, fileAddCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileChangeCommentSubscription(FileChangeCommentSubscriptionType fileChangeCommentSubscriptionType) {
        if (fileChangeCommentSubscriptionType != null) {
            return new EventType().m14764L8(Tag.FILE_CHANGE_COMMENT_SUBSCRIPTION, fileChangeCommentSubscriptionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileCommentsChangePolicy(FileCommentsChangePolicyType fileCommentsChangePolicyType) {
        if (fileCommentsChangePolicyType != null) {
            return new EventType().m14772M8(Tag.FILE_COMMENTS_CHANGE_POLICY, fileCommentsChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileCopy(FileCopyType fileCopyType) {
        if (fileCopyType != null) {
            return new EventType().m14780N8(Tag.FILE_COPY, fileCopyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileDelete(FileDeleteType fileDeleteType) {
        if (fileDeleteType != null) {
            return new EventType().m14788O8(Tag.FILE_DELETE, fileDeleteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileDeleteComment(FileDeleteCommentType fileDeleteCommentType) {
        if (fileDeleteCommentType != null) {
            return new EventType().m14796P8(Tag.FILE_DELETE_COMMENT, fileDeleteCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileDownload(FileDownloadType fileDownloadType) {
        if (fileDownloadType != null) {
            return new EventType().m14804Q8(Tag.FILE_DOWNLOAD, fileDownloadType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileEdit(FileEditType fileEditType) {
        if (fileEditType != null) {
            return new EventType().m14812R8(Tag.FILE_EDIT, fileEditType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileEditComment(FileEditCommentType fileEditCommentType) {
        if (fileEditCommentType != null) {
            return new EventType().m14820S8(Tag.FILE_EDIT_COMMENT, fileEditCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileGetCopyReference(FileGetCopyReferenceType fileGetCopyReferenceType) {
        if (fileGetCopyReferenceType != null) {
            return new EventType().m14828T8(Tag.FILE_GET_COPY_REFERENCE, fileGetCopyReferenceType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileLikeComment(FileLikeCommentType fileLikeCommentType) {
        if (fileLikeCommentType != null) {
            return new EventType().m14836U8(Tag.FILE_LIKE_COMMENT, fileLikeCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileLockingLockStatusChanged(FileLockingLockStatusChangedType fileLockingLockStatusChangedType) {
        if (fileLockingLockStatusChangedType != null) {
            return new EventType().m14844V8(Tag.FILE_LOCKING_LOCK_STATUS_CHANGED, fileLockingLockStatusChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileLockingPolicyChanged(FileLockingPolicyChangedType fileLockingPolicyChangedType) {
        if (fileLockingPolicyChangedType != null) {
            return new EventType().m14852W8(Tag.FILE_LOCKING_POLICY_CHANGED, fileLockingPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileMove(FileMoveType fileMoveType) {
        if (fileMoveType != null) {
            return new EventType().m14860X8(Tag.FILE_MOVE, fileMoveType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType filePermanentlyDelete(FilePermanentlyDeleteType filePermanentlyDeleteType) {
        if (filePermanentlyDeleteType != null) {
            return new EventType().m14868Y8(Tag.FILE_PERMANENTLY_DELETE, filePermanentlyDeleteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType filePreview(FilePreviewType filePreviewType) {
        if (filePreviewType != null) {
            return new EventType().m14876Z8(Tag.FILE_PREVIEW, filePreviewType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileRename(FileRenameType fileRenameType) {
        if (fileRenameType != null) {
            return new EventType().m14884a9(Tag.FILE_RENAME, fileRenameType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileRequestChange(FileRequestChangeType fileRequestChangeType) {
        if (fileRequestChangeType != null) {
            return new EventType().m14892b9(Tag.FILE_REQUEST_CHANGE, fileRequestChangeType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileRequestClose(FileRequestCloseType fileRequestCloseType) {
        if (fileRequestCloseType != null) {
            return new EventType().m14900c9(Tag.FILE_REQUEST_CLOSE, fileRequestCloseType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileRequestCreate(FileRequestCreateType fileRequestCreateType) {
        if (fileRequestCreateType != null) {
            return new EventType().m14908d9(Tag.FILE_REQUEST_CREATE, fileRequestCreateType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileRequestDelete(FileRequestDeleteType fileRequestDeleteType) {
        if (fileRequestDeleteType != null) {
            return new EventType().m14916e9(Tag.FILE_REQUEST_DELETE, fileRequestDeleteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileRequestReceiveFile(FileRequestReceiveFileType fileRequestReceiveFileType) {
        if (fileRequestReceiveFileType != null) {
            return new EventType().m14924f9(Tag.FILE_REQUEST_RECEIVE_FILE, fileRequestReceiveFileType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileRequestsChangePolicy(FileRequestsChangePolicyType fileRequestsChangePolicyType) {
        if (fileRequestsChangePolicyType != null) {
            return new EventType().m14932g9(Tag.FILE_REQUESTS_CHANGE_POLICY, fileRequestsChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileRequestsEmailsEnabled(FileRequestsEmailsEnabledType fileRequestsEmailsEnabledType) {
        if (fileRequestsEmailsEnabledType != null) {
            return new EventType().m14940h9(Tag.FILE_REQUESTS_EMAILS_ENABLED, fileRequestsEmailsEnabledType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileRequestsEmailsRestrictedToTeamOnly(FileRequestsEmailsRestrictedToTeamOnlyType fileRequestsEmailsRestrictedToTeamOnlyType) {
        if (fileRequestsEmailsRestrictedToTeamOnlyType != null) {
            return new EventType().m14948i9(Tag.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY, fileRequestsEmailsRestrictedToTeamOnlyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileResolveComment(FileResolveCommentType fileResolveCommentType) {
        if (fileResolveCommentType != null) {
            return new EventType().m14956j9(Tag.FILE_RESOLVE_COMMENT, fileResolveCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileRestore(FileRestoreType fileRestoreType) {
        if (fileRestoreType != null) {
            return new EventType().m14964k9(Tag.FILE_RESTORE, fileRestoreType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileRevert(FileRevertType fileRevertType) {
        if (fileRevertType != null) {
            return new EventType().m14972l9(Tag.FILE_REVERT, fileRevertType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileRollbackChanges(FileRollbackChangesType fileRollbackChangesType) {
        if (fileRollbackChangesType != null) {
            return new EventType().m14981m9(Tag.FILE_ROLLBACK_CHANGES, fileRollbackChangesType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileSaveCopyReference(FileSaveCopyReferenceType fileSaveCopyReferenceType) {
        if (fileSaveCopyReferenceType != null) {
            return new EventType().m14990n9(Tag.FILE_SAVE_COPY_REFERENCE, fileSaveCopyReferenceType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileTransfersFileAdd(FileTransfersFileAddType fileTransfersFileAddType) {
        if (fileTransfersFileAddType != null) {
            return new EventType().m14999o9(Tag.FILE_TRANSFERS_FILE_ADD, fileTransfersFileAddType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileTransfersPolicyChanged(FileTransfersPolicyChangedType fileTransfersPolicyChangedType) {
        if (fileTransfersPolicyChangedType != null) {
            return new EventType().m15008p9(Tag.FILE_TRANSFERS_POLICY_CHANGED, fileTransfersPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileTransfersTransferDelete(FileTransfersTransferDeleteType fileTransfersTransferDeleteType) {
        if (fileTransfersTransferDeleteType != null) {
            return new EventType().m15017q9(Tag.FILE_TRANSFERS_TRANSFER_DELETE, fileTransfersTransferDeleteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileTransfersTransferDownload(FileTransfersTransferDownloadType fileTransfersTransferDownloadType) {
        if (fileTransfersTransferDownloadType != null) {
            return new EventType().m15026r9(Tag.FILE_TRANSFERS_TRANSFER_DOWNLOAD, fileTransfersTransferDownloadType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileTransfersTransferSend(FileTransfersTransferSendType fileTransfersTransferSendType) {
        if (fileTransfersTransferSendType != null) {
            return new EventType().m15035s9(Tag.FILE_TRANSFERS_TRANSFER_SEND, fileTransfersTransferSendType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileTransfersTransferView(FileTransfersTransferViewType fileTransfersTransferViewType) {
        if (fileTransfersTransferViewType != null) {
            return new EventType().m15044t9(Tag.FILE_TRANSFERS_TRANSFER_VIEW, fileTransfersTransferViewType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileUnlikeComment(FileUnlikeCommentType fileUnlikeCommentType) {
        if (fileUnlikeCommentType != null) {
            return new EventType().m15053u9(Tag.FILE_UNLIKE_COMMENT, fileUnlikeCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType fileUnresolveComment(FileUnresolveCommentType fileUnresolveCommentType) {
        if (fileUnresolveCommentType != null) {
            return new EventType().m15062v9(Tag.FILE_UNRESOLVE_COMMENT, fileUnresolveCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType folderOverviewDescriptionChanged(FolderOverviewDescriptionChangedType folderOverviewDescriptionChangedType) {
        if (folderOverviewDescriptionChangedType != null) {
            return new EventType().m15071w9(Tag.FOLDER_OVERVIEW_DESCRIPTION_CHANGED, folderOverviewDescriptionChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType folderOverviewItemPinned(FolderOverviewItemPinnedType folderOverviewItemPinnedType) {
        if (folderOverviewItemPinnedType != null) {
            return new EventType().m15080x9(Tag.FOLDER_OVERVIEW_ITEM_PINNED, folderOverviewItemPinnedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType folderOverviewItemUnpinned(FolderOverviewItemUnpinnedType folderOverviewItemUnpinnedType) {
        if (folderOverviewItemUnpinnedType != null) {
            return new EventType().m15089y9(Tag.FOLDER_OVERVIEW_ITEM_UNPINNED, folderOverviewItemUnpinnedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType googleSsoChangePolicy(GoogleSsoChangePolicyType googleSsoChangePolicyType) {
        if (googleSsoChangePolicyType != null) {
            return new EventType().m15098z9(Tag.GOOGLE_SSO_CHANGE_POLICY, googleSsoChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupAddExternalId(GroupAddExternalIdType groupAddExternalIdType) {
        if (groupAddExternalIdType != null) {
            return new EventType().m14677A9(Tag.GROUP_ADD_EXTERNAL_ID, groupAddExternalIdType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupAddMember(GroupAddMemberType groupAddMemberType) {
        if (groupAddMemberType != null) {
            return new EventType().m14685B9(Tag.GROUP_ADD_MEMBER, groupAddMemberType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupChangeExternalId(GroupChangeExternalIdType groupChangeExternalIdType) {
        if (groupChangeExternalIdType != null) {
            return new EventType().m14693C9(Tag.GROUP_CHANGE_EXTERNAL_ID, groupChangeExternalIdType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupChangeManagementType(GroupChangeManagementTypeType groupChangeManagementTypeType) {
        if (groupChangeManagementTypeType != null) {
            return new EventType().m14701D9(Tag.GROUP_CHANGE_MANAGEMENT_TYPE, groupChangeManagementTypeType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupChangeMemberRole(GroupChangeMemberRoleType groupChangeMemberRoleType) {
        if (groupChangeMemberRoleType != null) {
            return new EventType().m14709E9(Tag.GROUP_CHANGE_MEMBER_ROLE, groupChangeMemberRoleType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupCreate(GroupCreateType groupCreateType) {
        if (groupCreateType != null) {
            return new EventType().m14717F9(Tag.GROUP_CREATE, groupCreateType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupDelete(GroupDeleteType groupDeleteType) {
        if (groupDeleteType != null) {
            return new EventType().m14725G9(Tag.GROUP_DELETE, groupDeleteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupDescriptionUpdated(GroupDescriptionUpdatedType groupDescriptionUpdatedType) {
        if (groupDescriptionUpdatedType != null) {
            return new EventType().m14733H9(Tag.GROUP_DESCRIPTION_UPDATED, groupDescriptionUpdatedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupJoinPolicyUpdated(GroupJoinPolicyUpdatedType groupJoinPolicyUpdatedType) {
        if (groupJoinPolicyUpdatedType != null) {
            return new EventType().m14741I9(Tag.GROUP_JOIN_POLICY_UPDATED, groupJoinPolicyUpdatedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupMoved(GroupMovedType groupMovedType) {
        if (groupMovedType != null) {
            return new EventType().m14749J9(Tag.GROUP_MOVED, groupMovedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupRemoveExternalId(GroupRemoveExternalIdType groupRemoveExternalIdType) {
        if (groupRemoveExternalIdType != null) {
            return new EventType().m14757K9(Tag.GROUP_REMOVE_EXTERNAL_ID, groupRemoveExternalIdType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupRemoveMember(GroupRemoveMemberType groupRemoveMemberType) {
        if (groupRemoveMemberType != null) {
            return new EventType().m14765L9(Tag.GROUP_REMOVE_MEMBER, groupRemoveMemberType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupRename(GroupRenameType groupRenameType) {
        if (groupRenameType != null) {
            return new EventType().m14773M9(Tag.GROUP_RENAME, groupRenameType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType groupUserManagementChangePolicy(GroupUserManagementChangePolicyType groupUserManagementChangePolicyType) {
        if (groupUserManagementChangePolicyType != null) {
            return new EventType().m14781N9(Tag.GROUP_USER_MANAGEMENT_CHANGE_POLICY, groupUserManagementChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType guestAdminChangeStatus(GuestAdminChangeStatusType guestAdminChangeStatusType) {
        if (guestAdminChangeStatusType != null) {
            return new EventType().m14789O9(Tag.GUEST_ADMIN_CHANGE_STATUS, guestAdminChangeStatusType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType guestAdminSignedInViaTrustedTeams(GuestAdminSignedInViaTrustedTeamsType guestAdminSignedInViaTrustedTeamsType) {
        if (guestAdminSignedInViaTrustedTeamsType != null) {
            return new EventType().m14797P9(Tag.GUEST_ADMIN_SIGNED_IN_VIA_TRUSTED_TEAMS, guestAdminSignedInViaTrustedTeamsType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType guestAdminSignedOutViaTrustedTeams(GuestAdminSignedOutViaTrustedTeamsType guestAdminSignedOutViaTrustedTeamsType) {
        if (guestAdminSignedOutViaTrustedTeamsType != null) {
            return new EventType().m14805Q9(Tag.GUEST_ADMIN_SIGNED_OUT_VIA_TRUSTED_TEAMS, guestAdminSignedOutViaTrustedTeamsType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType integrationConnected(IntegrationConnectedType integrationConnectedType) {
        if (integrationConnectedType != null) {
            return new EventType().m14813R9(Tag.INTEGRATION_CONNECTED, integrationConnectedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType integrationDisconnected(IntegrationDisconnectedType integrationDisconnectedType) {
        if (integrationDisconnectedType != null) {
            return new EventType().m14821S9(Tag.INTEGRATION_DISCONNECTED, integrationDisconnectedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType integrationPolicyChanged(IntegrationPolicyChangedType integrationPolicyChangedType) {
        if (integrationPolicyChangedType != null) {
            return new EventType().m14829T9(Tag.INTEGRATION_POLICY_CHANGED, integrationPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType legalHoldsActivateAHold(LegalHoldsActivateAHoldType legalHoldsActivateAHoldType) {
        if (legalHoldsActivateAHoldType != null) {
            return new EventType().m14837U9(Tag.LEGAL_HOLDS_ACTIVATE_A_HOLD, legalHoldsActivateAHoldType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType legalHoldsAddMembers(LegalHoldsAddMembersType legalHoldsAddMembersType) {
        if (legalHoldsAddMembersType != null) {
            return new EventType().m14845V9(Tag.LEGAL_HOLDS_ADD_MEMBERS, legalHoldsAddMembersType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType legalHoldsChangeHoldDetails(LegalHoldsChangeHoldDetailsType legalHoldsChangeHoldDetailsType) {
        if (legalHoldsChangeHoldDetailsType != null) {
            return new EventType().m14853W9(Tag.LEGAL_HOLDS_CHANGE_HOLD_DETAILS, legalHoldsChangeHoldDetailsType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType legalHoldsChangeHoldName(LegalHoldsChangeHoldNameType legalHoldsChangeHoldNameType) {
        if (legalHoldsChangeHoldNameType != null) {
            return new EventType().m14861X9(Tag.LEGAL_HOLDS_CHANGE_HOLD_NAME, legalHoldsChangeHoldNameType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType legalHoldsExportAHold(LegalHoldsExportAHoldType legalHoldsExportAHoldType) {
        if (legalHoldsExportAHoldType != null) {
            return new EventType().m14869Y9(Tag.LEGAL_HOLDS_EXPORT_A_HOLD, legalHoldsExportAHoldType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType legalHoldsExportCancelled(LegalHoldsExportCancelledType legalHoldsExportCancelledType) {
        if (legalHoldsExportCancelledType != null) {
            return new EventType().m14877Z9(Tag.LEGAL_HOLDS_EXPORT_CANCELLED, legalHoldsExportCancelledType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType legalHoldsExportDownloaded(LegalHoldsExportDownloadedType legalHoldsExportDownloadedType) {
        if (legalHoldsExportDownloadedType != null) {
            return new EventType().m14885aa(Tag.LEGAL_HOLDS_EXPORT_DOWNLOADED, legalHoldsExportDownloadedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType legalHoldsExportRemoved(LegalHoldsExportRemovedType legalHoldsExportRemovedType) {
        if (legalHoldsExportRemovedType != null) {
            return new EventType().m14893ba(Tag.LEGAL_HOLDS_EXPORT_REMOVED, legalHoldsExportRemovedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType legalHoldsReleaseAHold(LegalHoldsReleaseAHoldType legalHoldsReleaseAHoldType) {
        if (legalHoldsReleaseAHoldType != null) {
            return new EventType().m14901ca(Tag.LEGAL_HOLDS_RELEASE_A_HOLD, legalHoldsReleaseAHoldType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType legalHoldsRemoveMembers(LegalHoldsRemoveMembersType legalHoldsRemoveMembersType) {
        if (legalHoldsRemoveMembersType != null) {
            return new EventType().m14909da(Tag.LEGAL_HOLDS_REMOVE_MEMBERS, legalHoldsRemoveMembersType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType legalHoldsReportAHold(LegalHoldsReportAHoldType legalHoldsReportAHoldType) {
        if (legalHoldsReportAHoldType != null) {
            return new EventType().m14917ea(Tag.LEGAL_HOLDS_REPORT_A_HOLD, legalHoldsReportAHoldType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType loginFail(LoginFailType loginFailType) {
        if (loginFailType != null) {
            return new EventType().m14925fa(Tag.LOGIN_FAIL, loginFailType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType loginSuccess(LoginSuccessType loginSuccessType) {
        if (loginSuccessType != null) {
            return new EventType().m14933ga(Tag.LOGIN_SUCCESS, loginSuccessType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType logout(LogoutType logoutType) {
        if (logoutType != null) {
            return new EventType().m14941ha(Tag.LOGOUT, logoutType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberAddExternalId(MemberAddExternalIdType memberAddExternalIdType) {
        if (memberAddExternalIdType != null) {
            return new EventType().m14949ia(Tag.MEMBER_ADD_EXTERNAL_ID, memberAddExternalIdType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberAddName(MemberAddNameType memberAddNameType) {
        if (memberAddNameType != null) {
            return new EventType().m14957ja(Tag.MEMBER_ADD_NAME, memberAddNameType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberChangeAdminRole(MemberChangeAdminRoleType memberChangeAdminRoleType) {
        if (memberChangeAdminRoleType != null) {
            return new EventType().m14965ka(Tag.MEMBER_CHANGE_ADMIN_ROLE, memberChangeAdminRoleType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberChangeEmail(MemberChangeEmailType memberChangeEmailType) {
        if (memberChangeEmailType != null) {
            return new EventType().m14973la(Tag.MEMBER_CHANGE_EMAIL, memberChangeEmailType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberChangeExternalId(MemberChangeExternalIdType memberChangeExternalIdType) {
        if (memberChangeExternalIdType != null) {
            return new EventType().m14982ma(Tag.MEMBER_CHANGE_EXTERNAL_ID, memberChangeExternalIdType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberChangeMembershipType(MemberChangeMembershipTypeType memberChangeMembershipTypeType) {
        if (memberChangeMembershipTypeType != null) {
            return new EventType().m14991na(Tag.MEMBER_CHANGE_MEMBERSHIP_TYPE, memberChangeMembershipTypeType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberChangeName(MemberChangeNameType memberChangeNameType) {
        if (memberChangeNameType != null) {
            return new EventType().m15000oa(Tag.MEMBER_CHANGE_NAME, memberChangeNameType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberChangeStatus(MemberChangeStatusType memberChangeStatusType) {
        if (memberChangeStatusType != null) {
            return new EventType().m15009pa(Tag.MEMBER_CHANGE_STATUS, memberChangeStatusType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberDeleteManualContacts(MemberDeleteManualContactsType memberDeleteManualContactsType) {
        if (memberDeleteManualContactsType != null) {
            return new EventType().m15018qa(Tag.MEMBER_DELETE_MANUAL_CONTACTS, memberDeleteManualContactsType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberDeleteProfilePhoto(MemberDeleteProfilePhotoType memberDeleteProfilePhotoType) {
        if (memberDeleteProfilePhotoType != null) {
            return new EventType().m15027ra(Tag.MEMBER_DELETE_PROFILE_PHOTO, memberDeleteProfilePhotoType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberPermanentlyDeleteAccountContents(MemberPermanentlyDeleteAccountContentsType memberPermanentlyDeleteAccountContentsType) {
        if (memberPermanentlyDeleteAccountContentsType != null) {
            return new EventType().m15036sa(Tag.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS, memberPermanentlyDeleteAccountContentsType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberRemoveExternalId(MemberRemoveExternalIdType memberRemoveExternalIdType) {
        if (memberRemoveExternalIdType != null) {
            return new EventType().m15045ta(Tag.MEMBER_REMOVE_EXTERNAL_ID, memberRemoveExternalIdType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberRequestsChangePolicy(MemberRequestsChangePolicyType memberRequestsChangePolicyType) {
        if (memberRequestsChangePolicyType != null) {
            return new EventType().m15054ua(Tag.MEMBER_REQUESTS_CHANGE_POLICY, memberRequestsChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberSendInvitePolicyChanged(MemberSendInvitePolicyChangedType memberSendInvitePolicyChangedType) {
        if (memberSendInvitePolicyChangedType != null) {
            return new EventType().m15063va(Tag.MEMBER_SEND_INVITE_POLICY_CHANGED, memberSendInvitePolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberSetProfilePhoto(MemberSetProfilePhotoType memberSetProfilePhotoType) {
        if (memberSetProfilePhotoType != null) {
            return new EventType().m15072wa(Tag.MEMBER_SET_PROFILE_PHOTO, memberSetProfilePhotoType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberSpaceLimitsAddCustomQuota(MemberSpaceLimitsAddCustomQuotaType memberSpaceLimitsAddCustomQuotaType) {
        if (memberSpaceLimitsAddCustomQuotaType != null) {
            return new EventType().m15081xa(Tag.MEMBER_SPACE_LIMITS_ADD_CUSTOM_QUOTA, memberSpaceLimitsAddCustomQuotaType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberSpaceLimitsAddException(MemberSpaceLimitsAddExceptionType memberSpaceLimitsAddExceptionType) {
        if (memberSpaceLimitsAddExceptionType != null) {
            return new EventType().m15090ya(Tag.MEMBER_SPACE_LIMITS_ADD_EXCEPTION, memberSpaceLimitsAddExceptionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberSpaceLimitsChangeCapsTypePolicy(MemberSpaceLimitsChangeCapsTypePolicyType memberSpaceLimitsChangeCapsTypePolicyType) {
        if (memberSpaceLimitsChangeCapsTypePolicyType != null) {
            return new EventType().m15099za(Tag.MEMBER_SPACE_LIMITS_CHANGE_CAPS_TYPE_POLICY, memberSpaceLimitsChangeCapsTypePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberSpaceLimitsChangeCustomQuota(MemberSpaceLimitsChangeCustomQuotaType memberSpaceLimitsChangeCustomQuotaType) {
        if (memberSpaceLimitsChangeCustomQuotaType != null) {
            return new EventType().m14678Aa(Tag.MEMBER_SPACE_LIMITS_CHANGE_CUSTOM_QUOTA, memberSpaceLimitsChangeCustomQuotaType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberSpaceLimitsChangePolicy(MemberSpaceLimitsChangePolicyType memberSpaceLimitsChangePolicyType) {
        if (memberSpaceLimitsChangePolicyType != null) {
            return new EventType().m14686Ba(Tag.MEMBER_SPACE_LIMITS_CHANGE_POLICY, memberSpaceLimitsChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberSpaceLimitsChangeStatus(MemberSpaceLimitsChangeStatusType memberSpaceLimitsChangeStatusType) {
        if (memberSpaceLimitsChangeStatusType != null) {
            return new EventType().m14694Ca(Tag.MEMBER_SPACE_LIMITS_CHANGE_STATUS, memberSpaceLimitsChangeStatusType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberSpaceLimitsRemoveCustomQuota(MemberSpaceLimitsRemoveCustomQuotaType memberSpaceLimitsRemoveCustomQuotaType) {
        if (memberSpaceLimitsRemoveCustomQuotaType != null) {
            return new EventType().m14702Da(Tag.MEMBER_SPACE_LIMITS_REMOVE_CUSTOM_QUOTA, memberSpaceLimitsRemoveCustomQuotaType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberSpaceLimitsRemoveException(MemberSpaceLimitsRemoveExceptionType memberSpaceLimitsRemoveExceptionType) {
        if (memberSpaceLimitsRemoveExceptionType != null) {
            return new EventType().m14710Ea(Tag.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION, memberSpaceLimitsRemoveExceptionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberSuggest(MemberSuggestType memberSuggestType) {
        if (memberSuggestType != null) {
            return new EventType().m14718Fa(Tag.MEMBER_SUGGEST, memberSuggestType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberSuggestionsChangePolicy(MemberSuggestionsChangePolicyType memberSuggestionsChangePolicyType) {
        if (memberSuggestionsChangePolicyType != null) {
            return new EventType().m14726Ga(Tag.MEMBER_SUGGESTIONS_CHANGE_POLICY, memberSuggestionsChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType memberTransferAccountContents(MemberTransferAccountContentsType memberTransferAccountContentsType) {
        if (memberTransferAccountContentsType != null) {
            return new EventType().m14734Ha(Tag.MEMBER_TRANSFER_ACCOUNT_CONTENTS, memberTransferAccountContentsType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType microsoftOfficeAddinChangePolicy(MicrosoftOfficeAddinChangePolicyType microsoftOfficeAddinChangePolicyType) {
        if (microsoftOfficeAddinChangePolicyType != null) {
            return new EventType().m14742Ia(Tag.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY, microsoftOfficeAddinChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType networkControlChangePolicy(NetworkControlChangePolicyType networkControlChangePolicyType) {
        if (networkControlChangePolicyType != null) {
            return new EventType().m14750Ja(Tag.NETWORK_CONTROL_CHANGE_POLICY, networkControlChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType noExpirationLinkGenCreateReport(NoExpirationLinkGenCreateReportType noExpirationLinkGenCreateReportType) {
        if (noExpirationLinkGenCreateReportType != null) {
            return new EventType().m14758Ka(Tag.NO_EXPIRATION_LINK_GEN_CREATE_REPORT, noExpirationLinkGenCreateReportType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType noExpirationLinkGenReportFailed(NoExpirationLinkGenReportFailedType noExpirationLinkGenReportFailedType) {
        if (noExpirationLinkGenReportFailedType != null) {
            return new EventType().m14766La(Tag.NO_EXPIRATION_LINK_GEN_REPORT_FAILED, noExpirationLinkGenReportFailedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType noPasswordLinkGenCreateReport(NoPasswordLinkGenCreateReportType noPasswordLinkGenCreateReportType) {
        if (noPasswordLinkGenCreateReportType != null) {
            return new EventType().m14774Ma(Tag.NO_PASSWORD_LINK_GEN_CREATE_REPORT, noPasswordLinkGenCreateReportType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType noPasswordLinkGenReportFailed(NoPasswordLinkGenReportFailedType noPasswordLinkGenReportFailedType) {
        if (noPasswordLinkGenReportFailedType != null) {
            return new EventType().m14782Na(Tag.NO_PASSWORD_LINK_GEN_REPORT_FAILED, noPasswordLinkGenReportFailedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType noPasswordLinkViewCreateReport(NoPasswordLinkViewCreateReportType noPasswordLinkViewCreateReportType) {
        if (noPasswordLinkViewCreateReportType != null) {
            return new EventType().m14790Oa(Tag.NO_PASSWORD_LINK_VIEW_CREATE_REPORT, noPasswordLinkViewCreateReportType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType noPasswordLinkViewReportFailed(NoPasswordLinkViewReportFailedType noPasswordLinkViewReportFailedType) {
        if (noPasswordLinkViewReportFailedType != null) {
            return new EventType().m14798Pa(Tag.NO_PASSWORD_LINK_VIEW_REPORT_FAILED, noPasswordLinkViewReportFailedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType noteAclInviteOnly(NoteAclInviteOnlyType noteAclInviteOnlyType) {
        if (noteAclInviteOnlyType != null) {
            return new EventType().m14806Qa(Tag.NOTE_ACL_INVITE_ONLY, noteAclInviteOnlyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType noteAclLink(NoteAclLinkType noteAclLinkType) {
        if (noteAclLinkType != null) {
            return new EventType().m14814Ra(Tag.NOTE_ACL_LINK, noteAclLinkType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType noteAclTeamLink(NoteAclTeamLinkType noteAclTeamLinkType) {
        if (noteAclTeamLinkType != null) {
            return new EventType().m14822Sa(Tag.NOTE_ACL_TEAM_LINK, noteAclTeamLinkType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType noteShareReceive(NoteShareReceiveType noteShareReceiveType) {
        if (noteShareReceiveType != null) {
            return new EventType().m14830Ta(Tag.NOTE_SHARE_RECEIVE, noteShareReceiveType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType noteShared(NoteSharedType noteSharedType) {
        if (noteSharedType != null) {
            return new EventType().m14838Ua(Tag.NOTE_SHARED, noteSharedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType openNoteShared(OpenNoteSharedType openNoteSharedType) {
        if (openNoteSharedType != null) {
            return new EventType().m14846Va(Tag.OPEN_NOTE_SHARED, openNoteSharedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType outdatedLinkViewCreateReport(OutdatedLinkViewCreateReportType outdatedLinkViewCreateReportType) {
        if (outdatedLinkViewCreateReportType != null) {
            return new EventType().m14854Wa(Tag.OUTDATED_LINK_VIEW_CREATE_REPORT, outdatedLinkViewCreateReportType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType outdatedLinkViewReportFailed(OutdatedLinkViewReportFailedType outdatedLinkViewReportFailedType) {
        if (outdatedLinkViewReportFailedType != null) {
            return new EventType().m14862Xa(Tag.OUTDATED_LINK_VIEW_REPORT_FAILED, outdatedLinkViewReportFailedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperAdminExportStart(PaperAdminExportStartType paperAdminExportStartType) {
        if (paperAdminExportStartType != null) {
            return new EventType().m14870Ya(Tag.PAPER_ADMIN_EXPORT_START, paperAdminExportStartType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperChangeDeploymentPolicy(PaperChangeDeploymentPolicyType paperChangeDeploymentPolicyType) {
        if (paperChangeDeploymentPolicyType != null) {
            return new EventType().m14878Za(Tag.PAPER_CHANGE_DEPLOYMENT_POLICY, paperChangeDeploymentPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperChangeMemberLinkPolicy(PaperChangeMemberLinkPolicyType paperChangeMemberLinkPolicyType) {
        if (paperChangeMemberLinkPolicyType != null) {
            return new EventType().m14886ab(Tag.PAPER_CHANGE_MEMBER_LINK_POLICY, paperChangeMemberLinkPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperChangeMemberPolicy(PaperChangeMemberPolicyType paperChangeMemberPolicyType) {
        if (paperChangeMemberPolicyType != null) {
            return new EventType().m14894bb(Tag.PAPER_CHANGE_MEMBER_POLICY, paperChangeMemberPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperChangePolicy(PaperChangePolicyType paperChangePolicyType) {
        if (paperChangePolicyType != null) {
            return new EventType().m14902cb(Tag.PAPER_CHANGE_POLICY, paperChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperContentAddMember(PaperContentAddMemberType paperContentAddMemberType) {
        if (paperContentAddMemberType != null) {
            return new EventType().m14910db(Tag.PAPER_CONTENT_ADD_MEMBER, paperContentAddMemberType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperContentAddToFolder(PaperContentAddToFolderType paperContentAddToFolderType) {
        if (paperContentAddToFolderType != null) {
            return new EventType().m14918eb(Tag.PAPER_CONTENT_ADD_TO_FOLDER, paperContentAddToFolderType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperContentArchive(PaperContentArchiveType paperContentArchiveType) {
        if (paperContentArchiveType != null) {
            return new EventType().m14926fb(Tag.PAPER_CONTENT_ARCHIVE, paperContentArchiveType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperContentCreate(PaperContentCreateType paperContentCreateType) {
        if (paperContentCreateType != null) {
            return new EventType().m14934gb(Tag.PAPER_CONTENT_CREATE, paperContentCreateType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperContentPermanentlyDelete(PaperContentPermanentlyDeleteType paperContentPermanentlyDeleteType) {
        if (paperContentPermanentlyDeleteType != null) {
            return new EventType().m14942hb(Tag.PAPER_CONTENT_PERMANENTLY_DELETE, paperContentPermanentlyDeleteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperContentRemoveFromFolder(PaperContentRemoveFromFolderType paperContentRemoveFromFolderType) {
        if (paperContentRemoveFromFolderType != null) {
            return new EventType().m14950ib(Tag.PAPER_CONTENT_REMOVE_FROM_FOLDER, paperContentRemoveFromFolderType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperContentRemoveMember(PaperContentRemoveMemberType paperContentRemoveMemberType) {
        if (paperContentRemoveMemberType != null) {
            return new EventType().m14958jb(Tag.PAPER_CONTENT_REMOVE_MEMBER, paperContentRemoveMemberType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperContentRename(PaperContentRenameType paperContentRenameType) {
        if (paperContentRenameType != null) {
            return new EventType().m14966kb(Tag.PAPER_CONTENT_RENAME, paperContentRenameType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperContentRestore(PaperContentRestoreType paperContentRestoreType) {
        if (paperContentRestoreType != null) {
            return new EventType().m14974lb(Tag.PAPER_CONTENT_RESTORE, paperContentRestoreType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDefaultFolderPolicyChanged(PaperDefaultFolderPolicyChangedType paperDefaultFolderPolicyChangedType) {
        if (paperDefaultFolderPolicyChangedType != null) {
            return new EventType().m14983mb(Tag.PAPER_DEFAULT_FOLDER_POLICY_CHANGED, paperDefaultFolderPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDesktopPolicyChanged(PaperDesktopPolicyChangedType paperDesktopPolicyChangedType) {
        if (paperDesktopPolicyChangedType != null) {
            return new EventType().m14992nb(Tag.PAPER_DESKTOP_POLICY_CHANGED, paperDesktopPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocAddComment(PaperDocAddCommentType paperDocAddCommentType) {
        if (paperDocAddCommentType != null) {
            return new EventType().m15001ob(Tag.PAPER_DOC_ADD_COMMENT, paperDocAddCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocChangeMemberRole(PaperDocChangeMemberRoleType paperDocChangeMemberRoleType) {
        if (paperDocChangeMemberRoleType != null) {
            return new EventType().m15010pb(Tag.PAPER_DOC_CHANGE_MEMBER_ROLE, paperDocChangeMemberRoleType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocChangeSharingPolicy(PaperDocChangeSharingPolicyType paperDocChangeSharingPolicyType) {
        if (paperDocChangeSharingPolicyType != null) {
            return new EventType().m15019qb(Tag.PAPER_DOC_CHANGE_SHARING_POLICY, paperDocChangeSharingPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocChangeSubscription(PaperDocChangeSubscriptionType paperDocChangeSubscriptionType) {
        if (paperDocChangeSubscriptionType != null) {
            return new EventType().m15028rb(Tag.PAPER_DOC_CHANGE_SUBSCRIPTION, paperDocChangeSubscriptionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocDeleteComment(PaperDocDeleteCommentType paperDocDeleteCommentType) {
        if (paperDocDeleteCommentType != null) {
            return new EventType().m15037sb(Tag.PAPER_DOC_DELETE_COMMENT, paperDocDeleteCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocDeleted(PaperDocDeletedType paperDocDeletedType) {
        if (paperDocDeletedType != null) {
            return new EventType().m15046tb(Tag.PAPER_DOC_DELETED, paperDocDeletedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocDownload(PaperDocDownloadType paperDocDownloadType) {
        if (paperDocDownloadType != null) {
            return new EventType().m15055ub(Tag.PAPER_DOC_DOWNLOAD, paperDocDownloadType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocEdit(PaperDocEditType paperDocEditType) {
        if (paperDocEditType != null) {
            return new EventType().m15064vb(Tag.PAPER_DOC_EDIT, paperDocEditType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocEditComment(PaperDocEditCommentType paperDocEditCommentType) {
        if (paperDocEditCommentType != null) {
            return new EventType().m15073wb(Tag.PAPER_DOC_EDIT_COMMENT, paperDocEditCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocFollowed(PaperDocFollowedType paperDocFollowedType) {
        if (paperDocFollowedType != null) {
            return new EventType().m15082xb(Tag.PAPER_DOC_FOLLOWED, paperDocFollowedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocMention(PaperDocMentionType paperDocMentionType) {
        if (paperDocMentionType != null) {
            return new EventType().m15091yb(Tag.PAPER_DOC_MENTION, paperDocMentionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocOwnershipChanged(PaperDocOwnershipChangedType paperDocOwnershipChangedType) {
        if (paperDocOwnershipChangedType != null) {
            return new EventType().m15100zb(Tag.PAPER_DOC_OWNERSHIP_CHANGED, paperDocOwnershipChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocRequestAccess(PaperDocRequestAccessType paperDocRequestAccessType) {
        if (paperDocRequestAccessType != null) {
            return new EventType().m14679Ab(Tag.PAPER_DOC_REQUEST_ACCESS, paperDocRequestAccessType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocResolveComment(PaperDocResolveCommentType paperDocResolveCommentType) {
        if (paperDocResolveCommentType != null) {
            return new EventType().m14687Bb(Tag.PAPER_DOC_RESOLVE_COMMENT, paperDocResolveCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocRevert(PaperDocRevertType paperDocRevertType) {
        if (paperDocRevertType != null) {
            return new EventType().m14695Cb(Tag.PAPER_DOC_REVERT, paperDocRevertType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocSlackShare(PaperDocSlackShareType paperDocSlackShareType) {
        if (paperDocSlackShareType != null) {
            return new EventType().m14703Db(Tag.PAPER_DOC_SLACK_SHARE, paperDocSlackShareType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocTeamInvite(PaperDocTeamInviteType paperDocTeamInviteType) {
        if (paperDocTeamInviteType != null) {
            return new EventType().m14711Eb(Tag.PAPER_DOC_TEAM_INVITE, paperDocTeamInviteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocTrashed(PaperDocTrashedType paperDocTrashedType) {
        if (paperDocTrashedType != null) {
            return new EventType().m14719Fb(Tag.PAPER_DOC_TRASHED, paperDocTrashedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocUnresolveComment(PaperDocUnresolveCommentType paperDocUnresolveCommentType) {
        if (paperDocUnresolveCommentType != null) {
            return new EventType().m14727Gb(Tag.PAPER_DOC_UNRESOLVE_COMMENT, paperDocUnresolveCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocUntrashed(PaperDocUntrashedType paperDocUntrashedType) {
        if (paperDocUntrashedType != null) {
            return new EventType().m14735Hb(Tag.PAPER_DOC_UNTRASHED, paperDocUntrashedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperDocView(PaperDocViewType paperDocViewType) {
        if (paperDocViewType != null) {
            return new EventType().m14743Ib(Tag.PAPER_DOC_VIEW, paperDocViewType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperEnabledUsersGroupAddition(PaperEnabledUsersGroupAdditionType paperEnabledUsersGroupAdditionType) {
        if (paperEnabledUsersGroupAdditionType != null) {
            return new EventType().m14751Jb(Tag.PAPER_ENABLED_USERS_GROUP_ADDITION, paperEnabledUsersGroupAdditionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperEnabledUsersGroupRemoval(PaperEnabledUsersGroupRemovalType paperEnabledUsersGroupRemovalType) {
        if (paperEnabledUsersGroupRemovalType != null) {
            return new EventType().m14759Kb(Tag.PAPER_ENABLED_USERS_GROUP_REMOVAL, paperEnabledUsersGroupRemovalType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperExternalViewAllow(PaperExternalViewAllowType paperExternalViewAllowType) {
        if (paperExternalViewAllowType != null) {
            return new EventType().m14767Lb(Tag.PAPER_EXTERNAL_VIEW_ALLOW, paperExternalViewAllowType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperExternalViewDefaultTeam(PaperExternalViewDefaultTeamType paperExternalViewDefaultTeamType) {
        if (paperExternalViewDefaultTeamType != null) {
            return new EventType().m14775Mb(Tag.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM, paperExternalViewDefaultTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperExternalViewForbid(PaperExternalViewForbidType paperExternalViewForbidType) {
        if (paperExternalViewForbidType != null) {
            return new EventType().m14783Nb(Tag.PAPER_EXTERNAL_VIEW_FORBID, paperExternalViewForbidType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperFolderChangeSubscription(PaperFolderChangeSubscriptionType paperFolderChangeSubscriptionType) {
        if (paperFolderChangeSubscriptionType != null) {
            return new EventType().m14791Ob(Tag.PAPER_FOLDER_CHANGE_SUBSCRIPTION, paperFolderChangeSubscriptionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperFolderDeleted(PaperFolderDeletedType paperFolderDeletedType) {
        if (paperFolderDeletedType != null) {
            return new EventType().m14799Pb(Tag.PAPER_FOLDER_DELETED, paperFolderDeletedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperFolderFollowed(PaperFolderFollowedType paperFolderFollowedType) {
        if (paperFolderFollowedType != null) {
            return new EventType().m14807Qb(Tag.PAPER_FOLDER_FOLLOWED, paperFolderFollowedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperFolderTeamInvite(PaperFolderTeamInviteType paperFolderTeamInviteType) {
        if (paperFolderTeamInviteType != null) {
            return new EventType().m14815Rb(Tag.PAPER_FOLDER_TEAM_INVITE, paperFolderTeamInviteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperPublishedLinkChangePermission(PaperPublishedLinkChangePermissionType paperPublishedLinkChangePermissionType) {
        if (paperPublishedLinkChangePermissionType != null) {
            return new EventType().m14823Sb(Tag.PAPER_PUBLISHED_LINK_CHANGE_PERMISSION, paperPublishedLinkChangePermissionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperPublishedLinkCreate(PaperPublishedLinkCreateType paperPublishedLinkCreateType) {
        if (paperPublishedLinkCreateType != null) {
            return new EventType().m14831Tb(Tag.PAPER_PUBLISHED_LINK_CREATE, paperPublishedLinkCreateType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperPublishedLinkDisabled(PaperPublishedLinkDisabledType paperPublishedLinkDisabledType) {
        if (paperPublishedLinkDisabledType != null) {
            return new EventType().m14839Ub(Tag.PAPER_PUBLISHED_LINK_DISABLED, paperPublishedLinkDisabledType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType paperPublishedLinkView(PaperPublishedLinkViewType paperPublishedLinkViewType) {
        if (paperPublishedLinkViewType != null) {
            return new EventType().m14847Vb(Tag.PAPER_PUBLISHED_LINK_VIEW, paperPublishedLinkViewType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType passwordChange(PasswordChangeType passwordChangeType) {
        if (passwordChangeType != null) {
            return new EventType().m14855Wb(Tag.PASSWORD_CHANGE, passwordChangeType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType passwordReset(PasswordResetType passwordResetType) {
        if (passwordResetType != null) {
            return new EventType().m14863Xb(Tag.PASSWORD_RESET, passwordResetType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType passwordResetAll(PasswordResetAllType passwordResetAllType) {
        if (passwordResetAllType != null) {
            return new EventType().m14871Yb(Tag.PASSWORD_RESET_ALL, passwordResetAllType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType passwordStrengthRequirementsChangePolicy(PasswordStrengthRequirementsChangePolicyType passwordStrengthRequirementsChangePolicyType) {
        if (passwordStrengthRequirementsChangePolicyType != null) {
            return new EventType().m14879Zb(Tag.PASSWORD_STRENGTH_REQUIREMENTS_CHANGE_POLICY, passwordStrengthRequirementsChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType pendingSecondaryEmailAdded(PendingSecondaryEmailAddedType pendingSecondaryEmailAddedType) {
        if (pendingSecondaryEmailAddedType != null) {
            return new EventType().m14887ac(Tag.PENDING_SECONDARY_EMAIL_ADDED, pendingSecondaryEmailAddedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType permanentDeleteChangePolicy(PermanentDeleteChangePolicyType permanentDeleteChangePolicyType) {
        if (permanentDeleteChangePolicyType != null) {
            return new EventType().m14895bc(Tag.PERMANENT_DELETE_CHANGE_POLICY, permanentDeleteChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType resellerSupportChangePolicy(ResellerSupportChangePolicyType resellerSupportChangePolicyType) {
        if (resellerSupportChangePolicyType != null) {
            return new EventType().m14903cc(Tag.RESELLER_SUPPORT_CHANGE_POLICY, resellerSupportChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType resellerSupportSessionEnd(ResellerSupportSessionEndType resellerSupportSessionEndType) {
        if (resellerSupportSessionEndType != null) {
            return new EventType().m14911dc(Tag.RESELLER_SUPPORT_SESSION_END, resellerSupportSessionEndType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType resellerSupportSessionStart(ResellerSupportSessionStartType resellerSupportSessionStartType) {
        if (resellerSupportSessionStartType != null) {
            return new EventType().m14919ec(Tag.RESELLER_SUPPORT_SESSION_START, resellerSupportSessionStartType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType rewindFolder(RewindFolderType rewindFolderType) {
        if (rewindFolderType != null) {
            return new EventType().m14927fc(Tag.REWIND_FOLDER, rewindFolderType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType rewindPolicyChanged(RewindPolicyChangedType rewindPolicyChangedType) {
        if (rewindPolicyChangedType != null) {
            return new EventType().m14935gc(Tag.REWIND_POLICY_CHANGED, rewindPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType secondaryEmailDeleted(SecondaryEmailDeletedType secondaryEmailDeletedType) {
        if (secondaryEmailDeletedType != null) {
            return new EventType().m14943hc(Tag.SECONDARY_EMAIL_DELETED, secondaryEmailDeletedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType secondaryEmailVerified(SecondaryEmailVerifiedType secondaryEmailVerifiedType) {
        if (secondaryEmailVerifiedType != null) {
            return new EventType().m14951ic(Tag.SECONDARY_EMAIL_VERIFIED, secondaryEmailVerifiedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType secondaryMailsPolicyChanged(SecondaryMailsPolicyChangedType secondaryMailsPolicyChangedType) {
        if (secondaryMailsPolicyChangedType != null) {
            return new EventType().m14959jc(Tag.SECONDARY_MAILS_POLICY_CHANGED, secondaryMailsPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sendForSignaturePolicyChanged(SendForSignaturePolicyChangedType sendForSignaturePolicyChangedType) {
        if (sendForSignaturePolicyChangedType != null) {
            return new EventType().m14967kc(Tag.SEND_FOR_SIGNATURE_POLICY_CHANGED, sendForSignaturePolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfAddGroup(SfAddGroupType sfAddGroupType) {
        if (sfAddGroupType != null) {
            return new EventType().m14975lc(Tag.SF_ADD_GROUP, sfAddGroupType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfAllowNonMembersToViewSharedLinks(SfAllowNonMembersToViewSharedLinksType sfAllowNonMembersToViewSharedLinksType) {
        if (sfAllowNonMembersToViewSharedLinksType != null) {
            return new EventType().m14984mc(Tag.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS, sfAllowNonMembersToViewSharedLinksType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfExternalInviteWarn(SfExternalInviteWarnType sfExternalInviteWarnType) {
        if (sfExternalInviteWarnType != null) {
            return new EventType().m14993nc(Tag.SF_EXTERNAL_INVITE_WARN, sfExternalInviteWarnType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfFbInvite(SfFbInviteType sfFbInviteType) {
        if (sfFbInviteType != null) {
            return new EventType().m15002oc(Tag.SF_FB_INVITE, sfFbInviteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfFbInviteChangeRole(SfFbInviteChangeRoleType sfFbInviteChangeRoleType) {
        if (sfFbInviteChangeRoleType != null) {
            return new EventType().m15011pc(Tag.SF_FB_INVITE_CHANGE_ROLE, sfFbInviteChangeRoleType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfFbUninvite(SfFbUninviteType sfFbUninviteType) {
        if (sfFbUninviteType != null) {
            return new EventType().m15020qc(Tag.SF_FB_UNINVITE, sfFbUninviteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfInviteGroup(SfInviteGroupType sfInviteGroupType) {
        if (sfInviteGroupType != null) {
            return new EventType().m15029rc(Tag.SF_INVITE_GROUP, sfInviteGroupType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfTeamGrantAccess(SfTeamGrantAccessType sfTeamGrantAccessType) {
        if (sfTeamGrantAccessType != null) {
            return new EventType().m15038sc(Tag.SF_TEAM_GRANT_ACCESS, sfTeamGrantAccessType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfTeamInvite(SfTeamInviteType sfTeamInviteType) {
        if (sfTeamInviteType != null) {
            return new EventType().m15047tc(Tag.SF_TEAM_INVITE, sfTeamInviteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfTeamInviteChangeRole(SfTeamInviteChangeRoleType sfTeamInviteChangeRoleType) {
        if (sfTeamInviteChangeRoleType != null) {
            return new EventType().m15056uc(Tag.SF_TEAM_INVITE_CHANGE_ROLE, sfTeamInviteChangeRoleType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfTeamJoin(SfTeamJoinType sfTeamJoinType) {
        if (sfTeamJoinType != null) {
            return new EventType().m15065vc(Tag.SF_TEAM_JOIN, sfTeamJoinType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfTeamJoinFromOobLink(SfTeamJoinFromOobLinkType sfTeamJoinFromOobLinkType) {
        if (sfTeamJoinFromOobLinkType != null) {
            return new EventType().m15074wc(Tag.SF_TEAM_JOIN_FROM_OOB_LINK, sfTeamJoinFromOobLinkType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sfTeamUninvite(SfTeamUninviteType sfTeamUninviteType) {
        if (sfTeamUninviteType != null) {
            return new EventType().m15083xc(Tag.SF_TEAM_UNINVITE, sfTeamUninviteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentAddInvitees(SharedContentAddInviteesType sharedContentAddInviteesType) {
        if (sharedContentAddInviteesType != null) {
            return new EventType().m15092yc(Tag.SHARED_CONTENT_ADD_INVITEES, sharedContentAddInviteesType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentAddLinkExpiry(SharedContentAddLinkExpiryType sharedContentAddLinkExpiryType) {
        if (sharedContentAddLinkExpiryType != null) {
            return new EventType().m15101zc(Tag.SHARED_CONTENT_ADD_LINK_EXPIRY, sharedContentAddLinkExpiryType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentAddLinkPassword(SharedContentAddLinkPasswordType sharedContentAddLinkPasswordType) {
        if (sharedContentAddLinkPasswordType != null) {
            return new EventType().m14680Ac(Tag.SHARED_CONTENT_ADD_LINK_PASSWORD, sharedContentAddLinkPasswordType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentAddMember(SharedContentAddMemberType sharedContentAddMemberType) {
        if (sharedContentAddMemberType != null) {
            return new EventType().m14688Bc(Tag.SHARED_CONTENT_ADD_MEMBER, sharedContentAddMemberType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentChangeDownloadsPolicy(SharedContentChangeDownloadsPolicyType sharedContentChangeDownloadsPolicyType) {
        if (sharedContentChangeDownloadsPolicyType != null) {
            return new EventType().m14696Cc(Tag.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY, sharedContentChangeDownloadsPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentChangeInviteeRole(SharedContentChangeInviteeRoleType sharedContentChangeInviteeRoleType) {
        if (sharedContentChangeInviteeRoleType != null) {
            return new EventType().m14704Dc(Tag.SHARED_CONTENT_CHANGE_INVITEE_ROLE, sharedContentChangeInviteeRoleType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentChangeLinkAudience(SharedContentChangeLinkAudienceType sharedContentChangeLinkAudienceType) {
        if (sharedContentChangeLinkAudienceType != null) {
            return new EventType().m14712Ec(Tag.SHARED_CONTENT_CHANGE_LINK_AUDIENCE, sharedContentChangeLinkAudienceType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentChangeLinkExpiry(SharedContentChangeLinkExpiryType sharedContentChangeLinkExpiryType) {
        if (sharedContentChangeLinkExpiryType != null) {
            return new EventType().m14720Fc(Tag.SHARED_CONTENT_CHANGE_LINK_EXPIRY, sharedContentChangeLinkExpiryType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentChangeLinkPassword(SharedContentChangeLinkPasswordType sharedContentChangeLinkPasswordType) {
        if (sharedContentChangeLinkPasswordType != null) {
            return new EventType().m14728Gc(Tag.SHARED_CONTENT_CHANGE_LINK_PASSWORD, sharedContentChangeLinkPasswordType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentChangeMemberRole(SharedContentChangeMemberRoleType sharedContentChangeMemberRoleType) {
        if (sharedContentChangeMemberRoleType != null) {
            return new EventType().m14736Hc(Tag.SHARED_CONTENT_CHANGE_MEMBER_ROLE, sharedContentChangeMemberRoleType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentChangeViewerInfoPolicy(SharedContentChangeViewerInfoPolicyType sharedContentChangeViewerInfoPolicyType) {
        if (sharedContentChangeViewerInfoPolicyType != null) {
            return new EventType().m14744Ic(Tag.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY, sharedContentChangeViewerInfoPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentClaimInvitation(SharedContentClaimInvitationType sharedContentClaimInvitationType) {
        if (sharedContentClaimInvitationType != null) {
            return new EventType().m14752Jc(Tag.SHARED_CONTENT_CLAIM_INVITATION, sharedContentClaimInvitationType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentCopy(SharedContentCopyType sharedContentCopyType) {
        if (sharedContentCopyType != null) {
            return new EventType().m14760Kc(Tag.SHARED_CONTENT_COPY, sharedContentCopyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentDownload(SharedContentDownloadType sharedContentDownloadType) {
        if (sharedContentDownloadType != null) {
            return new EventType().m14768Lc(Tag.SHARED_CONTENT_DOWNLOAD, sharedContentDownloadType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentRelinquishMembership(SharedContentRelinquishMembershipType sharedContentRelinquishMembershipType) {
        if (sharedContentRelinquishMembershipType != null) {
            return new EventType().m14776Mc(Tag.SHARED_CONTENT_RELINQUISH_MEMBERSHIP, sharedContentRelinquishMembershipType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentRemoveInvitees(SharedContentRemoveInviteesType sharedContentRemoveInviteesType) {
        if (sharedContentRemoveInviteesType != null) {
            return new EventType().m14784Nc(Tag.SHARED_CONTENT_REMOVE_INVITEES, sharedContentRemoveInviteesType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentRemoveLinkExpiry(SharedContentRemoveLinkExpiryType sharedContentRemoveLinkExpiryType) {
        if (sharedContentRemoveLinkExpiryType != null) {
            return new EventType().m14792Oc(Tag.SHARED_CONTENT_REMOVE_LINK_EXPIRY, sharedContentRemoveLinkExpiryType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentRemoveLinkPassword(SharedContentRemoveLinkPasswordType sharedContentRemoveLinkPasswordType) {
        if (sharedContentRemoveLinkPasswordType != null) {
            return new EventType().m14800Pc(Tag.SHARED_CONTENT_REMOVE_LINK_PASSWORD, sharedContentRemoveLinkPasswordType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentRemoveMember(SharedContentRemoveMemberType sharedContentRemoveMemberType) {
        if (sharedContentRemoveMemberType != null) {
            return new EventType().m14808Qc(Tag.SHARED_CONTENT_REMOVE_MEMBER, sharedContentRemoveMemberType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentRequestAccess(SharedContentRequestAccessType sharedContentRequestAccessType) {
        if (sharedContentRequestAccessType != null) {
            return new EventType().m14816Rc(Tag.SHARED_CONTENT_REQUEST_ACCESS, sharedContentRequestAccessType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentRestoreInvitees(SharedContentRestoreInviteesType sharedContentRestoreInviteesType) {
        if (sharedContentRestoreInviteesType != null) {
            return new EventType().m14824Sc(Tag.SHARED_CONTENT_RESTORE_INVITEES, sharedContentRestoreInviteesType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentRestoreMember(SharedContentRestoreMemberType sharedContentRestoreMemberType) {
        if (sharedContentRestoreMemberType != null) {
            return new EventType().m14832Tc(Tag.SHARED_CONTENT_RESTORE_MEMBER, sharedContentRestoreMemberType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentUnshare(SharedContentUnshareType sharedContentUnshareType) {
        if (sharedContentUnshareType != null) {
            return new EventType().m14840Uc(Tag.SHARED_CONTENT_UNSHARE, sharedContentUnshareType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedContentView(SharedContentViewType sharedContentViewType) {
        if (sharedContentViewType != null) {
            return new EventType().m14848Vc(Tag.SHARED_CONTENT_VIEW, sharedContentViewType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedFolderChangeLinkPolicy(SharedFolderChangeLinkPolicyType sharedFolderChangeLinkPolicyType) {
        if (sharedFolderChangeLinkPolicyType != null) {
            return new EventType().m14856Wc(Tag.SHARED_FOLDER_CHANGE_LINK_POLICY, sharedFolderChangeLinkPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedFolderChangeMembersInheritancePolicy(SharedFolderChangeMembersInheritancePolicyType sharedFolderChangeMembersInheritancePolicyType) {
        if (sharedFolderChangeMembersInheritancePolicyType != null) {
            return new EventType().m14864Xc(Tag.SHARED_FOLDER_CHANGE_MEMBERS_INHERITANCE_POLICY, sharedFolderChangeMembersInheritancePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedFolderChangeMembersManagementPolicy(SharedFolderChangeMembersManagementPolicyType sharedFolderChangeMembersManagementPolicyType) {
        if (sharedFolderChangeMembersManagementPolicyType != null) {
            return new EventType().m14872Yc(Tag.SHARED_FOLDER_CHANGE_MEMBERS_MANAGEMENT_POLICY, sharedFolderChangeMembersManagementPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedFolderChangeMembersPolicy(SharedFolderChangeMembersPolicyType sharedFolderChangeMembersPolicyType) {
        if (sharedFolderChangeMembersPolicyType != null) {
            return new EventType().m14880Zc(Tag.SHARED_FOLDER_CHANGE_MEMBERS_POLICY, sharedFolderChangeMembersPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedFolderCreate(SharedFolderCreateType sharedFolderCreateType) {
        if (sharedFolderCreateType != null) {
            return new EventType().m14888ad(Tag.SHARED_FOLDER_CREATE, sharedFolderCreateType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedFolderDeclineInvitation(SharedFolderDeclineInvitationType sharedFolderDeclineInvitationType) {
        if (sharedFolderDeclineInvitationType != null) {
            return new EventType().m14896bd(Tag.SHARED_FOLDER_DECLINE_INVITATION, sharedFolderDeclineInvitationType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedFolderMount(SharedFolderMountType sharedFolderMountType) {
        if (sharedFolderMountType != null) {
            return new EventType().m14904cd(Tag.SHARED_FOLDER_MOUNT, sharedFolderMountType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedFolderNest(SharedFolderNestType sharedFolderNestType) {
        if (sharedFolderNestType != null) {
            return new EventType().m14912dd(Tag.SHARED_FOLDER_NEST, sharedFolderNestType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedFolderTransferOwnership(SharedFolderTransferOwnershipType sharedFolderTransferOwnershipType) {
        if (sharedFolderTransferOwnershipType != null) {
            return new EventType().m14920ed(Tag.SHARED_FOLDER_TRANSFER_OWNERSHIP, sharedFolderTransferOwnershipType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedFolderUnmount(SharedFolderUnmountType sharedFolderUnmountType) {
        if (sharedFolderUnmountType != null) {
            return new EventType().m14928fd(Tag.SHARED_FOLDER_UNMOUNT, sharedFolderUnmountType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkAddExpiry(SharedLinkAddExpiryType sharedLinkAddExpiryType) {
        if (sharedLinkAddExpiryType != null) {
            return new EventType().m14936gd(Tag.SHARED_LINK_ADD_EXPIRY, sharedLinkAddExpiryType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkChangeExpiry(SharedLinkChangeExpiryType sharedLinkChangeExpiryType) {
        if (sharedLinkChangeExpiryType != null) {
            return new EventType().m14944hd(Tag.SHARED_LINK_CHANGE_EXPIRY, sharedLinkChangeExpiryType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkChangeVisibility(SharedLinkChangeVisibilityType sharedLinkChangeVisibilityType) {
        if (sharedLinkChangeVisibilityType != null) {
            return new EventType().m14952id(Tag.SHARED_LINK_CHANGE_VISIBILITY, sharedLinkChangeVisibilityType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkCopy(SharedLinkCopyType sharedLinkCopyType) {
        if (sharedLinkCopyType != null) {
            return new EventType().m14960jd(Tag.SHARED_LINK_COPY, sharedLinkCopyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkCreate(SharedLinkCreateType sharedLinkCreateType) {
        if (sharedLinkCreateType != null) {
            return new EventType().m14968kd(Tag.SHARED_LINK_CREATE, sharedLinkCreateType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkDisable(SharedLinkDisableType sharedLinkDisableType) {
        if (sharedLinkDisableType != null) {
            return new EventType().m14976ld(Tag.SHARED_LINK_DISABLE, sharedLinkDisableType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkDownload(SharedLinkDownloadType sharedLinkDownloadType) {
        if (sharedLinkDownloadType != null) {
            return new EventType().m14985md(Tag.SHARED_LINK_DOWNLOAD, sharedLinkDownloadType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkRemoveExpiry(SharedLinkRemoveExpiryType sharedLinkRemoveExpiryType) {
        if (sharedLinkRemoveExpiryType != null) {
            return new EventType().m14994nd(Tag.SHARED_LINK_REMOVE_EXPIRY, sharedLinkRemoveExpiryType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkSettingsAddExpiration(SharedLinkSettingsAddExpirationType sharedLinkSettingsAddExpirationType) {
        if (sharedLinkSettingsAddExpirationType != null) {
            return new EventType().m15003od(Tag.SHARED_LINK_SETTINGS_ADD_EXPIRATION, sharedLinkSettingsAddExpirationType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkSettingsAddPassword(SharedLinkSettingsAddPasswordType sharedLinkSettingsAddPasswordType) {
        if (sharedLinkSettingsAddPasswordType != null) {
            return new EventType().m15012pd(Tag.SHARED_LINK_SETTINGS_ADD_PASSWORD, sharedLinkSettingsAddPasswordType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkSettingsAllowDownloadDisabled(SharedLinkSettingsAllowDownloadDisabledType sharedLinkSettingsAllowDownloadDisabledType) {
        if (sharedLinkSettingsAllowDownloadDisabledType != null) {
            return new EventType().m15021qd(Tag.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_DISABLED, sharedLinkSettingsAllowDownloadDisabledType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkSettingsAllowDownloadEnabled(SharedLinkSettingsAllowDownloadEnabledType sharedLinkSettingsAllowDownloadEnabledType) {
        if (sharedLinkSettingsAllowDownloadEnabledType != null) {
            return new EventType().m15030rd(Tag.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_ENABLED, sharedLinkSettingsAllowDownloadEnabledType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkSettingsChangeAudience(SharedLinkSettingsChangeAudienceType sharedLinkSettingsChangeAudienceType) {
        if (sharedLinkSettingsChangeAudienceType != null) {
            return new EventType().m15039sd(Tag.SHARED_LINK_SETTINGS_CHANGE_AUDIENCE, sharedLinkSettingsChangeAudienceType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkSettingsChangeExpiration(SharedLinkSettingsChangeExpirationType sharedLinkSettingsChangeExpirationType) {
        if (sharedLinkSettingsChangeExpirationType != null) {
            return new EventType().m15048td(Tag.SHARED_LINK_SETTINGS_CHANGE_EXPIRATION, sharedLinkSettingsChangeExpirationType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkSettingsChangePassword(SharedLinkSettingsChangePasswordType sharedLinkSettingsChangePasswordType) {
        if (sharedLinkSettingsChangePasswordType != null) {
            return new EventType().m15057ud(Tag.SHARED_LINK_SETTINGS_CHANGE_PASSWORD, sharedLinkSettingsChangePasswordType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkSettingsRemoveExpiration(SharedLinkSettingsRemoveExpirationType sharedLinkSettingsRemoveExpirationType) {
        if (sharedLinkSettingsRemoveExpirationType != null) {
            return new EventType().m15066vd(Tag.SHARED_LINK_SETTINGS_REMOVE_EXPIRATION, sharedLinkSettingsRemoveExpirationType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkSettingsRemovePassword(SharedLinkSettingsRemovePasswordType sharedLinkSettingsRemovePasswordType) {
        if (sharedLinkSettingsRemovePasswordType != null) {
            return new EventType().m15075wd(Tag.SHARED_LINK_SETTINGS_REMOVE_PASSWORD, sharedLinkSettingsRemovePasswordType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkShare(SharedLinkShareType sharedLinkShareType) {
        if (sharedLinkShareType != null) {
            return new EventType().m15084xd(Tag.SHARED_LINK_SHARE, sharedLinkShareType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedLinkView(SharedLinkViewType sharedLinkViewType) {
        if (sharedLinkViewType != null) {
            return new EventType().m15093yd(Tag.SHARED_LINK_VIEW, sharedLinkViewType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharedNoteOpened(SharedNoteOpenedType sharedNoteOpenedType) {
        if (sharedNoteOpenedType != null) {
            return new EventType().m15102zd(Tag.SHARED_NOTE_OPENED, sharedNoteOpenedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharingChangeFolderJoinPolicy(SharingChangeFolderJoinPolicyType sharingChangeFolderJoinPolicyType) {
        if (sharingChangeFolderJoinPolicyType != null) {
            return new EventType().m14681Ad(Tag.SHARING_CHANGE_FOLDER_JOIN_POLICY, sharingChangeFolderJoinPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharingChangeLinkPolicy(SharingChangeLinkPolicyType sharingChangeLinkPolicyType) {
        if (sharingChangeLinkPolicyType != null) {
            return new EventType().m14689Bd(Tag.SHARING_CHANGE_LINK_POLICY, sharingChangeLinkPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType sharingChangeMemberPolicy(SharingChangeMemberPolicyType sharingChangeMemberPolicyType) {
        if (sharingChangeMemberPolicyType != null) {
            return new EventType().m14697Cd(Tag.SHARING_CHANGE_MEMBER_POLICY, sharingChangeMemberPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType shmodelGroupShare(ShmodelGroupShareType shmodelGroupShareType) {
        if (shmodelGroupShareType != null) {
            return new EventType().m14705Dd(Tag.SHMODEL_GROUP_SHARE, shmodelGroupShareType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseAccessGranted(ShowcaseAccessGrantedType showcaseAccessGrantedType) {
        if (showcaseAccessGrantedType != null) {
            return new EventType().m14713Ed(Tag.SHOWCASE_ACCESS_GRANTED, showcaseAccessGrantedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseAddMember(ShowcaseAddMemberType showcaseAddMemberType) {
        if (showcaseAddMemberType != null) {
            return new EventType().m14721Fd(Tag.SHOWCASE_ADD_MEMBER, showcaseAddMemberType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseArchived(ShowcaseArchivedType showcaseArchivedType) {
        if (showcaseArchivedType != null) {
            return new EventType().m14729Gd(Tag.SHOWCASE_ARCHIVED, showcaseArchivedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseChangeDownloadPolicy(ShowcaseChangeDownloadPolicyType showcaseChangeDownloadPolicyType) {
        if (showcaseChangeDownloadPolicyType != null) {
            return new EventType().m14737Hd(Tag.SHOWCASE_CHANGE_DOWNLOAD_POLICY, showcaseChangeDownloadPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseChangeEnabledPolicy(ShowcaseChangeEnabledPolicyType showcaseChangeEnabledPolicyType) {
        if (showcaseChangeEnabledPolicyType != null) {
            return new EventType().m14745Id(Tag.SHOWCASE_CHANGE_ENABLED_POLICY, showcaseChangeEnabledPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseChangeExternalSharingPolicy(ShowcaseChangeExternalSharingPolicyType showcaseChangeExternalSharingPolicyType) {
        if (showcaseChangeExternalSharingPolicyType != null) {
            return new EventType().m14753Jd(Tag.SHOWCASE_CHANGE_EXTERNAL_SHARING_POLICY, showcaseChangeExternalSharingPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseCreated(ShowcaseCreatedType showcaseCreatedType) {
        if (showcaseCreatedType != null) {
            return new EventType().m14761Kd(Tag.SHOWCASE_CREATED, showcaseCreatedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseDeleteComment(ShowcaseDeleteCommentType showcaseDeleteCommentType) {
        if (showcaseDeleteCommentType != null) {
            return new EventType().m14769Ld(Tag.SHOWCASE_DELETE_COMMENT, showcaseDeleteCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseEditComment(ShowcaseEditCommentType showcaseEditCommentType) {
        if (showcaseEditCommentType != null) {
            return new EventType().m14777Md(Tag.SHOWCASE_EDIT_COMMENT, showcaseEditCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseEdited(ShowcaseEditedType showcaseEditedType) {
        if (showcaseEditedType != null) {
            return new EventType().m14785Nd(Tag.SHOWCASE_EDITED, showcaseEditedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseFileAdded(ShowcaseFileAddedType showcaseFileAddedType) {
        if (showcaseFileAddedType != null) {
            return new EventType().m14793Od(Tag.SHOWCASE_FILE_ADDED, showcaseFileAddedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseFileDownload(ShowcaseFileDownloadType showcaseFileDownloadType) {
        if (showcaseFileDownloadType != null) {
            return new EventType().m14801Pd(Tag.SHOWCASE_FILE_DOWNLOAD, showcaseFileDownloadType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseFileRemoved(ShowcaseFileRemovedType showcaseFileRemovedType) {
        if (showcaseFileRemovedType != null) {
            return new EventType().m14809Qd(Tag.SHOWCASE_FILE_REMOVED, showcaseFileRemovedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseFileView(ShowcaseFileViewType showcaseFileViewType) {
        if (showcaseFileViewType != null) {
            return new EventType().m14817Rd(Tag.SHOWCASE_FILE_VIEW, showcaseFileViewType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcasePermanentlyDeleted(ShowcasePermanentlyDeletedType showcasePermanentlyDeletedType) {
        if (showcasePermanentlyDeletedType != null) {
            return new EventType().m14825Sd(Tag.SHOWCASE_PERMANENTLY_DELETED, showcasePermanentlyDeletedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcasePostComment(ShowcasePostCommentType showcasePostCommentType) {
        if (showcasePostCommentType != null) {
            return new EventType().m14833Td(Tag.SHOWCASE_POST_COMMENT, showcasePostCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseRemoveMember(ShowcaseRemoveMemberType showcaseRemoveMemberType) {
        if (showcaseRemoveMemberType != null) {
            return new EventType().m14841Ud(Tag.SHOWCASE_REMOVE_MEMBER, showcaseRemoveMemberType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseRenamed(ShowcaseRenamedType showcaseRenamedType) {
        if (showcaseRenamedType != null) {
            return new EventType().m14849Vd(Tag.SHOWCASE_RENAMED, showcaseRenamedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseRequestAccess(ShowcaseRequestAccessType showcaseRequestAccessType) {
        if (showcaseRequestAccessType != null) {
            return new EventType().m14857Wd(Tag.SHOWCASE_REQUEST_ACCESS, showcaseRequestAccessType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseResolveComment(ShowcaseResolveCommentType showcaseResolveCommentType) {
        if (showcaseResolveCommentType != null) {
            return new EventType().m14865Xd(Tag.SHOWCASE_RESOLVE_COMMENT, showcaseResolveCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseRestored(ShowcaseRestoredType showcaseRestoredType) {
        if (showcaseRestoredType != null) {
            return new EventType().m14873Yd(Tag.SHOWCASE_RESTORED, showcaseRestoredType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseTrashed(ShowcaseTrashedType showcaseTrashedType) {
        if (showcaseTrashedType != null) {
            return new EventType().m14881Zd(Tag.SHOWCASE_TRASHED, showcaseTrashedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseTrashedDeprecated(ShowcaseTrashedDeprecatedType showcaseTrashedDeprecatedType) {
        if (showcaseTrashedDeprecatedType != null) {
            return new EventType().m14889ae(Tag.SHOWCASE_TRASHED_DEPRECATED, showcaseTrashedDeprecatedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseUnresolveComment(ShowcaseUnresolveCommentType showcaseUnresolveCommentType) {
        if (showcaseUnresolveCommentType != null) {
            return new EventType().m14897be(Tag.SHOWCASE_UNRESOLVE_COMMENT, showcaseUnresolveCommentType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseUntrashed(ShowcaseUntrashedType showcaseUntrashedType) {
        if (showcaseUntrashedType != null) {
            return new EventType().m14905ce(Tag.SHOWCASE_UNTRASHED, showcaseUntrashedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseUntrashedDeprecated(ShowcaseUntrashedDeprecatedType showcaseUntrashedDeprecatedType) {
        if (showcaseUntrashedDeprecatedType != null) {
            return new EventType().m14913de(Tag.SHOWCASE_UNTRASHED_DEPRECATED, showcaseUntrashedDeprecatedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType showcaseView(ShowcaseViewType showcaseViewType) {
        if (showcaseViewType != null) {
            return new EventType().m14921ee(Tag.SHOWCASE_VIEW, showcaseViewType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType signInAsSessionEnd(SignInAsSessionEndType signInAsSessionEndType) {
        if (signInAsSessionEndType != null) {
            return new EventType().m14929fe(Tag.SIGN_IN_AS_SESSION_END, signInAsSessionEndType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType signInAsSessionStart(SignInAsSessionStartType signInAsSessionStartType) {
        if (signInAsSessionStartType != null) {
            return new EventType().m14937ge(Tag.SIGN_IN_AS_SESSION_START, signInAsSessionStartType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType smartSyncChangePolicy(SmartSyncChangePolicyType smartSyncChangePolicyType) {
        if (smartSyncChangePolicyType != null) {
            return new EventType().m14945he(Tag.SMART_SYNC_CHANGE_POLICY, smartSyncChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType smartSyncCreateAdminPrivilegeReport(SmartSyncCreateAdminPrivilegeReportType smartSyncCreateAdminPrivilegeReportType) {
        if (smartSyncCreateAdminPrivilegeReportType != null) {
            return new EventType().m14953ie(Tag.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT, smartSyncCreateAdminPrivilegeReportType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType smartSyncNotOptOut(SmartSyncNotOptOutType smartSyncNotOptOutType) {
        if (smartSyncNotOptOutType != null) {
            return new EventType().m14961je(Tag.SMART_SYNC_NOT_OPT_OUT, smartSyncNotOptOutType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType smartSyncOptOut(SmartSyncOptOutType smartSyncOptOutType) {
        if (smartSyncOptOutType != null) {
            return new EventType().m14969ke(Tag.SMART_SYNC_OPT_OUT, smartSyncOptOutType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType smarterSmartSyncPolicyChanged(SmarterSmartSyncPolicyChangedType smarterSmartSyncPolicyChangedType) {
        if (smarterSmartSyncPolicyChangedType != null) {
            return new EventType().m14977le(Tag.SMARTER_SMART_SYNC_POLICY_CHANGED, smarterSmartSyncPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType ssoAddCert(SsoAddCertType ssoAddCertType) {
        if (ssoAddCertType != null) {
            return new EventType().m14986me(Tag.SSO_ADD_CERT, ssoAddCertType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType ssoAddLoginUrl(SsoAddLoginUrlType ssoAddLoginUrlType) {
        if (ssoAddLoginUrlType != null) {
            return new EventType().m14995ne(Tag.SSO_ADD_LOGIN_URL, ssoAddLoginUrlType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType ssoAddLogoutUrl(SsoAddLogoutUrlType ssoAddLogoutUrlType) {
        if (ssoAddLogoutUrlType != null) {
            return new EventType().m15004oe(Tag.SSO_ADD_LOGOUT_URL, ssoAddLogoutUrlType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType ssoChangeCert(SsoChangeCertType ssoChangeCertType) {
        if (ssoChangeCertType != null) {
            return new EventType().m15013pe(Tag.SSO_CHANGE_CERT, ssoChangeCertType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType ssoChangeLoginUrl(SsoChangeLoginUrlType ssoChangeLoginUrlType) {
        if (ssoChangeLoginUrlType != null) {
            return new EventType().m15022qe(Tag.SSO_CHANGE_LOGIN_URL, ssoChangeLoginUrlType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType ssoChangeLogoutUrl(SsoChangeLogoutUrlType ssoChangeLogoutUrlType) {
        if (ssoChangeLogoutUrlType != null) {
            return new EventType().m15031re(Tag.SSO_CHANGE_LOGOUT_URL, ssoChangeLogoutUrlType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType ssoChangePolicy(SsoChangePolicyType ssoChangePolicyType) {
        if (ssoChangePolicyType != null) {
            return new EventType().m15040se(Tag.SSO_CHANGE_POLICY, ssoChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType ssoChangeSamlIdentityMode(SsoChangeSamlIdentityModeType ssoChangeSamlIdentityModeType) {
        if (ssoChangeSamlIdentityModeType != null) {
            return new EventType().m15049te(Tag.SSO_CHANGE_SAML_IDENTITY_MODE, ssoChangeSamlIdentityModeType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType ssoError(SsoErrorType ssoErrorType) {
        if (ssoErrorType != null) {
            return new EventType().m15058ue(Tag.SSO_ERROR, ssoErrorType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType ssoRemoveCert(SsoRemoveCertType ssoRemoveCertType) {
        if (ssoRemoveCertType != null) {
            return new EventType().m15067ve(Tag.SSO_REMOVE_CERT, ssoRemoveCertType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType ssoRemoveLoginUrl(SsoRemoveLoginUrlType ssoRemoveLoginUrlType) {
        if (ssoRemoveLoginUrlType != null) {
            return new EventType().m15076we(Tag.SSO_REMOVE_LOGIN_URL, ssoRemoveLoginUrlType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType ssoRemoveLogoutUrl(SsoRemoveLogoutUrlType ssoRemoveLogoutUrlType) {
        if (ssoRemoveLogoutUrlType != null) {
            return new EventType().m15085xe(Tag.SSO_REMOVE_LOGOUT_URL, ssoRemoveLogoutUrlType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType startedEnterpriseAdminSession(StartedEnterpriseAdminSessionType startedEnterpriseAdminSessionType) {
        if (startedEnterpriseAdminSessionType != null) {
            return new EventType().m15094ye(Tag.STARTED_ENTERPRISE_ADMIN_SESSION, startedEnterpriseAdminSessionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamActivityCreateReport(TeamActivityCreateReportType teamActivityCreateReportType) {
        if (teamActivityCreateReportType != null) {
            return new EventType().m15103ze(Tag.TEAM_ACTIVITY_CREATE_REPORT, teamActivityCreateReportType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamActivityCreateReportFail(TeamActivityCreateReportFailType teamActivityCreateReportFailType) {
        if (teamActivityCreateReportFailType != null) {
            return new EventType().m14682Ae(Tag.TEAM_ACTIVITY_CREATE_REPORT_FAIL, teamActivityCreateReportFailType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamExtensionsPolicyChanged(TeamExtensionsPolicyChangedType teamExtensionsPolicyChangedType) {
        if (teamExtensionsPolicyChangedType != null) {
            return new EventType().m14690Be(Tag.TEAM_EXTENSIONS_POLICY_CHANGED, teamExtensionsPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamFolderChangeStatus(TeamFolderChangeStatusType teamFolderChangeStatusType) {
        if (teamFolderChangeStatusType != null) {
            return new EventType().m14698Ce(Tag.TEAM_FOLDER_CHANGE_STATUS, teamFolderChangeStatusType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamFolderCreate(TeamFolderCreateType teamFolderCreateType) {
        if (teamFolderCreateType != null) {
            return new EventType().m14706De(Tag.TEAM_FOLDER_CREATE, teamFolderCreateType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamFolderDowngrade(TeamFolderDowngradeType teamFolderDowngradeType) {
        if (teamFolderDowngradeType != null) {
            return new EventType().m14714Ee(Tag.TEAM_FOLDER_DOWNGRADE, teamFolderDowngradeType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamFolderPermanentlyDelete(TeamFolderPermanentlyDeleteType teamFolderPermanentlyDeleteType) {
        if (teamFolderPermanentlyDeleteType != null) {
            return new EventType().m14722Fe(Tag.TEAM_FOLDER_PERMANENTLY_DELETE, teamFolderPermanentlyDeleteType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamFolderRename(TeamFolderRenameType teamFolderRenameType) {
        if (teamFolderRenameType != null) {
            return new EventType().m14730Ge(Tag.TEAM_FOLDER_RENAME, teamFolderRenameType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeFrom(TeamMergeFromType teamMergeFromType) {
        if (teamMergeFromType != null) {
            return new EventType().m14738He(Tag.TEAM_MERGE_FROM, teamMergeFromType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestAccepted(TeamMergeRequestAcceptedType teamMergeRequestAcceptedType) {
        if (teamMergeRequestAcceptedType != null) {
            return new EventType().m14746Ie(Tag.TEAM_MERGE_REQUEST_ACCEPTED, teamMergeRequestAcceptedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestAcceptedShownToPrimaryTeam(TeamMergeRequestAcceptedShownToPrimaryTeamType teamMergeRequestAcceptedShownToPrimaryTeamType) {
        if (teamMergeRequestAcceptedShownToPrimaryTeamType != null) {
            return new EventType().m14754Je(Tag.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_PRIMARY_TEAM, teamMergeRequestAcceptedShownToPrimaryTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestAcceptedShownToSecondaryTeam(TeamMergeRequestAcceptedShownToSecondaryTeamType teamMergeRequestAcceptedShownToSecondaryTeamType) {
        if (teamMergeRequestAcceptedShownToSecondaryTeamType != null) {
            return new EventType().m14762Ke(Tag.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_SECONDARY_TEAM, teamMergeRequestAcceptedShownToSecondaryTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestAutoCanceled(TeamMergeRequestAutoCanceledType teamMergeRequestAutoCanceledType) {
        if (teamMergeRequestAutoCanceledType != null) {
            return new EventType().m14770Le(Tag.TEAM_MERGE_REQUEST_AUTO_CANCELED, teamMergeRequestAutoCanceledType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestCanceled(TeamMergeRequestCanceledType teamMergeRequestCanceledType) {
        if (teamMergeRequestCanceledType != null) {
            return new EventType().m14778Me(Tag.TEAM_MERGE_REQUEST_CANCELED, teamMergeRequestCanceledType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestCanceledShownToPrimaryTeam(TeamMergeRequestCanceledShownToPrimaryTeamType teamMergeRequestCanceledShownToPrimaryTeamType) {
        if (teamMergeRequestCanceledShownToPrimaryTeamType != null) {
            return new EventType().m14786Ne(Tag.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_PRIMARY_TEAM, teamMergeRequestCanceledShownToPrimaryTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestCanceledShownToSecondaryTeam(TeamMergeRequestCanceledShownToSecondaryTeamType teamMergeRequestCanceledShownToSecondaryTeamType) {
        if (teamMergeRequestCanceledShownToSecondaryTeamType != null) {
            return new EventType().m14794Oe(Tag.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_SECONDARY_TEAM, teamMergeRequestCanceledShownToSecondaryTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestExpired(TeamMergeRequestExpiredType teamMergeRequestExpiredType) {
        if (teamMergeRequestExpiredType != null) {
            return new EventType().m14802Pe(Tag.TEAM_MERGE_REQUEST_EXPIRED, teamMergeRequestExpiredType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestExpiredShownToPrimaryTeam(TeamMergeRequestExpiredShownToPrimaryTeamType teamMergeRequestExpiredShownToPrimaryTeamType) {
        if (teamMergeRequestExpiredShownToPrimaryTeamType != null) {
            return new EventType().m14810Qe(Tag.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_PRIMARY_TEAM, teamMergeRequestExpiredShownToPrimaryTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestExpiredShownToSecondaryTeam(TeamMergeRequestExpiredShownToSecondaryTeamType teamMergeRequestExpiredShownToSecondaryTeamType) {
        if (teamMergeRequestExpiredShownToSecondaryTeamType != null) {
            return new EventType().m14818Re(Tag.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_SECONDARY_TEAM, teamMergeRequestExpiredShownToSecondaryTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestRejectedShownToPrimaryTeam(TeamMergeRequestRejectedShownToPrimaryTeamType teamMergeRequestRejectedShownToPrimaryTeamType) {
        if (teamMergeRequestRejectedShownToPrimaryTeamType != null) {
            return new EventType().m14826Se(Tag.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_PRIMARY_TEAM, teamMergeRequestRejectedShownToPrimaryTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestRejectedShownToSecondaryTeam(TeamMergeRequestRejectedShownToSecondaryTeamType teamMergeRequestRejectedShownToSecondaryTeamType) {
        if (teamMergeRequestRejectedShownToSecondaryTeamType != null) {
            return new EventType().m14834Te(Tag.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_SECONDARY_TEAM, teamMergeRequestRejectedShownToSecondaryTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestReminder(TeamMergeRequestReminderType teamMergeRequestReminderType) {
        if (teamMergeRequestReminderType != null) {
            return new EventType().m14842Ue(Tag.TEAM_MERGE_REQUEST_REMINDER, teamMergeRequestReminderType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestReminderShownToPrimaryTeam(TeamMergeRequestReminderShownToPrimaryTeamType teamMergeRequestReminderShownToPrimaryTeamType) {
        if (teamMergeRequestReminderShownToPrimaryTeamType != null) {
            return new EventType().m14850Ve(Tag.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_PRIMARY_TEAM, teamMergeRequestReminderShownToPrimaryTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestReminderShownToSecondaryTeam(TeamMergeRequestReminderShownToSecondaryTeamType teamMergeRequestReminderShownToSecondaryTeamType) {
        if (teamMergeRequestReminderShownToSecondaryTeamType != null) {
            return new EventType().m14858We(Tag.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_SECONDARY_TEAM, teamMergeRequestReminderShownToSecondaryTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestRevoked(TeamMergeRequestRevokedType teamMergeRequestRevokedType) {
        if (teamMergeRequestRevokedType != null) {
            return new EventType().m14866Xe(Tag.TEAM_MERGE_REQUEST_REVOKED, teamMergeRequestRevokedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestSentShownToPrimaryTeam(TeamMergeRequestSentShownToPrimaryTeamType teamMergeRequestSentShownToPrimaryTeamType) {
        if (teamMergeRequestSentShownToPrimaryTeamType != null) {
            return new EventType().m14874Ye(Tag.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_PRIMARY_TEAM, teamMergeRequestSentShownToPrimaryTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeRequestSentShownToSecondaryTeam(TeamMergeRequestSentShownToSecondaryTeamType teamMergeRequestSentShownToSecondaryTeamType) {
        if (teamMergeRequestSentShownToSecondaryTeamType != null) {
            return new EventType().m14882Ze(Tag.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_SECONDARY_TEAM, teamMergeRequestSentShownToSecondaryTeamType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamMergeTo(TeamMergeToType teamMergeToType) {
        if (teamMergeToType != null) {
            return new EventType().m14890af(Tag.TEAM_MERGE_TO, teamMergeToType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamProfileAddLogo(TeamProfileAddLogoType teamProfileAddLogoType) {
        if (teamProfileAddLogoType != null) {
            return new EventType().m14898bf(Tag.TEAM_PROFILE_ADD_LOGO, teamProfileAddLogoType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamProfileChangeDefaultLanguage(TeamProfileChangeDefaultLanguageType teamProfileChangeDefaultLanguageType) {
        if (teamProfileChangeDefaultLanguageType != null) {
            return new EventType().m14906cf(Tag.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE, teamProfileChangeDefaultLanguageType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamProfileChangeLogo(TeamProfileChangeLogoType teamProfileChangeLogoType) {
        if (teamProfileChangeLogoType != null) {
            return new EventType().m14914df(Tag.TEAM_PROFILE_CHANGE_LOGO, teamProfileChangeLogoType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamProfileChangeName(TeamProfileChangeNameType teamProfileChangeNameType) {
        if (teamProfileChangeNameType != null) {
            return new EventType().m14922ef(Tag.TEAM_PROFILE_CHANGE_NAME, teamProfileChangeNameType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamProfileRemoveLogo(TeamProfileRemoveLogoType teamProfileRemoveLogoType) {
        if (teamProfileRemoveLogoType != null) {
            return new EventType().m14930ff(Tag.TEAM_PROFILE_REMOVE_LOGO, teamProfileRemoveLogoType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamSelectiveSyncPolicyChanged(TeamSelectiveSyncPolicyChangedType teamSelectiveSyncPolicyChangedType) {
        if (teamSelectiveSyncPolicyChangedType != null) {
            return new EventType().m14938gf(Tag.TEAM_SELECTIVE_SYNC_POLICY_CHANGED, teamSelectiveSyncPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamSelectiveSyncSettingsChanged(TeamSelectiveSyncSettingsChangedType teamSelectiveSyncSettingsChangedType) {
        if (teamSelectiveSyncSettingsChangedType != null) {
            return new EventType().m14946hf(Tag.TEAM_SELECTIVE_SYNC_SETTINGS_CHANGED, teamSelectiveSyncSettingsChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType teamSharingWhitelistSubjectsChanged(TeamSharingWhitelistSubjectsChangedType teamSharingWhitelistSubjectsChangedType) {
        if (teamSharingWhitelistSubjectsChangedType != null) {
            return new EventType().m14954if(Tag.TEAM_SHARING_WHITELIST_SUBJECTS_CHANGED, teamSharingWhitelistSubjectsChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType tfaAddBackupPhone(TfaAddBackupPhoneType tfaAddBackupPhoneType) {
        if (tfaAddBackupPhoneType != null) {
            return new EventType().m14962jf(Tag.TFA_ADD_BACKUP_PHONE, tfaAddBackupPhoneType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType tfaAddException(TfaAddExceptionType tfaAddExceptionType) {
        if (tfaAddExceptionType != null) {
            return new EventType().m14970kf(Tag.TFA_ADD_EXCEPTION, tfaAddExceptionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType tfaAddSecurityKey(TfaAddSecurityKeyType tfaAddSecurityKeyType) {
        if (tfaAddSecurityKeyType != null) {
            return new EventType().m14978lf(Tag.TFA_ADD_SECURITY_KEY, tfaAddSecurityKeyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType tfaChangeBackupPhone(TfaChangeBackupPhoneType tfaChangeBackupPhoneType) {
        if (tfaChangeBackupPhoneType != null) {
            return new EventType().m14987mf(Tag.TFA_CHANGE_BACKUP_PHONE, tfaChangeBackupPhoneType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType tfaChangePolicy(TfaChangePolicyType tfaChangePolicyType) {
        if (tfaChangePolicyType != null) {
            return new EventType().m14996nf(Tag.TFA_CHANGE_POLICY, tfaChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType tfaChangeStatus(TfaChangeStatusType tfaChangeStatusType) {
        if (tfaChangeStatusType != null) {
            return new EventType().m15005of(Tag.TFA_CHANGE_STATUS, tfaChangeStatusType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType tfaRemoveBackupPhone(TfaRemoveBackupPhoneType tfaRemoveBackupPhoneType) {
        if (tfaRemoveBackupPhoneType != null) {
            return new EventType().m15014pf(Tag.TFA_REMOVE_BACKUP_PHONE, tfaRemoveBackupPhoneType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType tfaRemoveException(TfaRemoveExceptionType tfaRemoveExceptionType) {
        if (tfaRemoveExceptionType != null) {
            return new EventType().m15023qf(Tag.TFA_REMOVE_EXCEPTION, tfaRemoveExceptionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType tfaRemoveSecurityKey(TfaRemoveSecurityKeyType tfaRemoveSecurityKeyType) {
        if (tfaRemoveSecurityKeyType != null) {
            return new EventType().m15032rf(Tag.TFA_REMOVE_SECURITY_KEY, tfaRemoveSecurityKeyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType tfaReset(TfaResetType tfaResetType) {
        if (tfaResetType != null) {
            return new EventType().m15041sf(Tag.TFA_RESET, tfaResetType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType twoAccountChangePolicy(TwoAccountChangePolicyType twoAccountChangePolicyType) {
        if (twoAccountChangePolicyType != null) {
            return new EventType().m15050tf(Tag.TWO_ACCOUNT_CHANGE_POLICY, twoAccountChangePolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType viewerInfoPolicyChanged(ViewerInfoPolicyChangedType viewerInfoPolicyChangedType) {
        if (viewerInfoPolicyChangedType != null) {
            return new EventType().m15059uf(Tag.VIEWER_INFO_POLICY_CHANGED, viewerInfoPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType watermarkingPolicyChanged(WatermarkingPolicyChangedType watermarkingPolicyChangedType) {
        if (watermarkingPolicyChangedType != null) {
            return new EventType().m15068vf(Tag.WATERMARKING_POLICY_CHANGED, watermarkingPolicyChangedType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType webSessionsChangeActiveSessionLimit(WebSessionsChangeActiveSessionLimitType webSessionsChangeActiveSessionLimitType) {
        if (webSessionsChangeActiveSessionLimitType != null) {
            return new EventType().m15077wf(Tag.WEB_SESSIONS_CHANGE_ACTIVE_SESSION_LIMIT, webSessionsChangeActiveSessionLimitType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType webSessionsChangeFixedLengthPolicy(WebSessionsChangeFixedLengthPolicyType webSessionsChangeFixedLengthPolicyType) {
        if (webSessionsChangeFixedLengthPolicyType != null) {
            return new EventType().m15086xf(Tag.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY, webSessionsChangeFixedLengthPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static EventType webSessionsChangeIdleLengthPolicy(WebSessionsChangeIdleLengthPolicyType webSessionsChangeIdleLengthPolicyType) {
        if (webSessionsChangeIdleLengthPolicyType != null) {
            return new EventType().m15095yf(Tag.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY, webSessionsChangeIdleLengthPolicyType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: A7 */
    public final EventType m14675A7(Tag tag, BinderAddSectionType binderAddSectionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19746y1 = binderAddSectionType;
        return eventType;
    }

    /* renamed from: A8 */
    public final EventType m14676A8(Tag tag, EnabledDomainInvitesType enabledDomainInvitesType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19443O = enabledDomainInvitesType;
        return eventType;
    }

    /* renamed from: A9 */
    public final EventType m14677A9(Tag tag, GroupAddExternalIdType groupAddExternalIdType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19665o0 = groupAddExternalIdType;
        return eventType;
    }

    /* renamed from: Aa */
    public final EventType m14678Aa(Tag tag, MemberSpaceLimitsChangeCustomQuotaType memberSpaceLimitsChangeCustomQuotaType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19666o1 = memberSpaceLimitsChangeCustomQuotaType;
        return eventType;
    }

    /* renamed from: Ab */
    public final EventType m14679Ab(Tag tag, PaperDocRequestAccessType paperDocRequestAccessType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19542a2 = paperDocRequestAccessType;
        return eventType;
    }

    /* renamed from: Ac */
    public final EventType m14680Ac(Tag tag, SharedContentAddLinkPasswordType sharedContentAddLinkPasswordType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19684q3 = sharedContentAddLinkPasswordType;
        return eventType;
    }

    /* renamed from: Ad */
    public final EventType m14681Ad(Tag tag, SharingChangeFolderJoinPolicyType sharingChangeFolderJoinPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19573d6 = sharingChangeFolderJoinPolicyType;
        return eventType;
    }

    /* renamed from: Ae */
    public final EventType m14682Ae(Tag tag, TeamActivityCreateReportFailType teamActivityCreateReportFailType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19446O2 = teamActivityCreateReportFailType;
        return eventType;
    }

    /* renamed from: B7 */
    public final EventType m14683B7(Tag tag, BinderRemovePageType binderRemovePageType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19754z1 = binderRemovePageType;
        return eventType;
    }

    /* renamed from: B8 */
    public final EventType m14684B8(Tag tag, EndedEnterpriseAdminSessionType endedEnterpriseAdminSessionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19466Q6 = endedEnterpriseAdminSessionType;
        return eventType;
    }

    /* renamed from: B9 */
    public final EventType m14685B9(Tag tag, GroupAddMemberType groupAddMemberType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19673p0 = groupAddMemberType;
        return eventType;
    }

    /* renamed from: Ba */
    public final EventType m14686Ba(Tag tag, MemberSpaceLimitsChangePolicyType memberSpaceLimitsChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19425L5 = memberSpaceLimitsChangePolicyType;
        return eventType;
    }

    /* renamed from: Bb */
    public final EventType m14687Bb(Tag tag, PaperDocResolveCommentType paperDocResolveCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19551b2 = paperDocResolveCommentType;
        return eventType;
    }

    /* renamed from: Bc */
    public final EventType m14688Bc(Tag tag, SharedContentAddMemberType sharedContentAddMemberType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19692r3 = sharedContentAddMemberType;
        return eventType;
    }

    /* renamed from: Bd */
    public final EventType m14689Bd(Tag tag, SharingChangeLinkPolicyType sharingChangeLinkPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19582e6 = sharingChangeLinkPolicyType;
        return eventType;
    }

    /* renamed from: Be */
    public final EventType m14690Be(Tag tag, TeamExtensionsPolicyChangedType teamExtensionsPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19671o6 = teamExtensionsPolicyChangedType;
        return eventType;
    }

    /* renamed from: C7 */
    public final EventType m14691C7(Tag tag, BinderRemoveSectionType binderRemoveSectionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19333A1 = binderRemoveSectionType;
        return eventType;
    }

    /* renamed from: C8 */
    public final EventType m14692C8(Tag tag, EndedEnterpriseAdminSessionDeprecatedType endedEnterpriseAdminSessionDeprecatedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19474R6 = endedEnterpriseAdminSessionDeprecatedType;
        return eventType;
    }

    /* renamed from: C9 */
    public final EventType m14693C9(Tag tag, GroupChangeExternalIdType groupChangeExternalIdType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19681q0 = groupChangeExternalIdType;
        return eventType;
    }

    /* renamed from: Ca */
    public final EventType m14694Ca(Tag tag, MemberSpaceLimitsChangeStatusType memberSpaceLimitsChangeStatusType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19674p1 = memberSpaceLimitsChangeStatusType;
        return eventType;
    }

    /* renamed from: Cb */
    public final EventType m14695Cb(Tag tag, PaperDocRevertType paperDocRevertType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19560c2 = paperDocRevertType;
        return eventType;
    }

    /* renamed from: Cc */
    public final EventType m14696Cc(Tag tag, SharedContentChangeDownloadsPolicyType sharedContentChangeDownloadsPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19700s3 = sharedContentChangeDownloadsPolicyType;
        return eventType;
    }

    /* renamed from: Cd */
    public final EventType m14697Cd(Tag tag, SharingChangeMemberPolicyType sharingChangeMemberPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19591f6 = sharingChangeMemberPolicyType;
        return eventType;
    }

    /* renamed from: Ce */
    public final EventType m14698Ce(Tag tag, TeamFolderChangeStatusType teamFolderChangeStatusType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19536Z4 = teamFolderChangeStatusType;
        return eventType;
    }

    /* renamed from: D7 */
    public final EventType m14699D7(Tag tag, BinderRenamePageType binderRenamePageType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19341B1 = binderRenamePageType;
        return eventType;
    }

    /* renamed from: D8 */
    public final EventType m14700D8(Tag tag, EnterpriseSettingsLockingType enterpriseSettingsLockingType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19482S6 = enterpriseSettingsLockingType;
        return eventType;
    }

    /* renamed from: D9 */
    public final EventType m14701D9(Tag tag, GroupChangeManagementTypeType groupChangeManagementTypeType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19689r0 = groupChangeManagementTypeType;
        return eventType;
    }

    /* renamed from: Da */
    public final EventType m14702Da(Tag tag, MemberSpaceLimitsRemoveCustomQuotaType memberSpaceLimitsRemoveCustomQuotaType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19682q1 = memberSpaceLimitsRemoveCustomQuotaType;
        return eventType;
    }

    /* renamed from: Db */
    public final EventType m14703Db(Tag tag, PaperDocSlackShareType paperDocSlackShareType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19569d2 = paperDocSlackShareType;
        return eventType;
    }

    /* renamed from: Dc */
    public final EventType m14704Dc(Tag tag, SharedContentChangeInviteeRoleType sharedContentChangeInviteeRoleType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19708t3 = sharedContentChangeInviteeRoleType;
        return eventType;
    }

    /* renamed from: Dd */
    public final EventType m14705Dd(Tag tag, ShmodelGroupShareType shmodelGroupShareType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19685q4 = shmodelGroupShareType;
        return eventType;
    }

    /* renamed from: De */
    public final EventType m14706De(Tag tag, TeamFolderCreateType teamFolderCreateType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19545a5 = teamFolderCreateType;
        return eventType;
    }

    /* renamed from: E7 */
    public final EventType m14707E7(Tag tag, BinderRenameSectionType binderRenameSectionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19349C1 = binderRenameSectionType;
        return eventType;
    }

    /* renamed from: E8 */
    public final EventType m14708E8(Tag tag, ExportMembersReportType exportMembersReportType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19755z2 = exportMembersReportType;
        return eventType;
    }

    /* renamed from: E9 */
    public final EventType m14709E9(Tag tag, GroupChangeMemberRoleType groupChangeMemberRoleType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19697s0 = groupChangeMemberRoleType;
        return eventType;
    }

    /* renamed from: Ea */
    public final EventType m14710Ea(Tag tag, MemberSpaceLimitsRemoveExceptionType memberSpaceLimitsRemoveExceptionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19433M5 = memberSpaceLimitsRemoveExceptionType;
        return eventType;
    }

    /* renamed from: Eb */
    public final EventType m14711Eb(Tag tag, PaperDocTeamInviteType paperDocTeamInviteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19578e2 = paperDocTeamInviteType;
        return eventType;
    }

    /* renamed from: Ec */
    public final EventType m14712Ec(Tag tag, SharedContentChangeLinkAudienceType sharedContentChangeLinkAudienceType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19716u3 = sharedContentChangeLinkAudienceType;
        return eventType;
    }

    /* renamed from: Ed */
    public final EventType m14713Ed(Tag tag, ShowcaseAccessGrantedType showcaseAccessGrantedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19693r4 = showcaseAccessGrantedType;
        return eventType;
    }

    /* renamed from: Ee */
    public final EventType m14714Ee(Tag tag, TeamFolderDowngradeType teamFolderDowngradeType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19554b5 = teamFolderDowngradeType;
        return eventType;
    }

    /* renamed from: F7 */
    public final EventType m14715F7(Tag tag, BinderReorderPageType binderReorderPageType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19357D1 = binderReorderPageType;
        return eventType;
    }

    /* renamed from: F8 */
    public final EventType m14716F8(Tag tag, ExportMembersReportFailType exportMembersReportFailType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19334A2 = exportMembersReportFailType;
        return eventType;
    }

    /* renamed from: F9 */
    public final EventType m14717F9(Tag tag, GroupCreateType groupCreateType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19705t0 = groupCreateType;
        return eventType;
    }

    /* renamed from: Fa */
    public final EventType m14718Fa(Tag tag, MemberSuggestType memberSuggestType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19690r1 = memberSuggestType;
        return eventType;
    }

    /* renamed from: Fb */
    public final EventType m14719Fb(Tag tag, PaperDocTrashedType paperDocTrashedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19587f2 = paperDocTrashedType;
        return eventType;
    }

    /* renamed from: Fc */
    public final EventType m14720Fc(Tag tag, SharedContentChangeLinkExpiryType sharedContentChangeLinkExpiryType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19724v3 = sharedContentChangeLinkExpiryType;
        return eventType;
    }

    /* renamed from: Fd */
    public final EventType m14721Fd(Tag tag, ShowcaseAddMemberType showcaseAddMemberType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19701s4 = showcaseAddMemberType;
        return eventType;
    }

    /* renamed from: Fe */
    public final EventType m14722Fe(Tag tag, TeamFolderPermanentlyDeleteType teamFolderPermanentlyDeleteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19563c5 = teamFolderPermanentlyDeleteType;
        return eventType;
    }

    /* renamed from: G7 */
    public final EventType m14723G7(Tag tag, BinderReorderSectionType binderReorderSectionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19365E1 = binderReorderSectionType;
        return eventType;
    }

    /* renamed from: G8 */
    public final EventType m14724G8(Tag tag, ExtendedVersionHistoryChangePolicyType extendedVersionHistoryChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19742x5 = extendedVersionHistoryChangePolicyType;
        return eventType;
    }

    /* renamed from: G9 */
    public final EventType m14725G9(Tag tag, GroupDeleteType groupDeleteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19713u0 = groupDeleteType;
        return eventType;
    }

    /* renamed from: Ga */
    public final EventType m14726Ga(Tag tag, MemberSuggestionsChangePolicyType memberSuggestionsChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19441N5 = memberSuggestionsChangePolicyType;
        return eventType;
    }

    /* renamed from: Gb */
    public final EventType m14727Gb(Tag tag, PaperDocUnresolveCommentType paperDocUnresolveCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19596g2 = paperDocUnresolveCommentType;
        return eventType;
    }

    /* renamed from: Gc */
    public final EventType m14728Gc(Tag tag, SharedContentChangeLinkPasswordType sharedContentChangeLinkPasswordType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19732w3 = sharedContentChangeLinkPasswordType;
        return eventType;
    }

    /* renamed from: Gd */
    public final EventType m14729Gd(Tag tag, ShowcaseArchivedType showcaseArchivedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19709t4 = showcaseArchivedType;
        return eventType;
    }

    /* renamed from: Ge */
    public final EventType m14730Ge(Tag tag, TeamFolderRenameType teamFolderRenameType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19572d5 = teamFolderRenameType;
        return eventType;
    }

    /* renamed from: H7 */
    public final EventType m14731H7(Tag tag, CameraUploadsPolicyChangedType cameraUploadsPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19617i5 = cameraUploadsPolicyChangedType;
        return eventType;
    }

    /* renamed from: H8 */
    public final EventType m14732H8(Tag tag, ExternalSharingCreateReportType externalSharingCreateReportType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19342B2 = externalSharingCreateReportType;
        return eventType;
    }

    /* renamed from: H9 */
    public final EventType m14733H9(Tag tag, GroupDescriptionUpdatedType groupDescriptionUpdatedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19721v0 = groupDescriptionUpdatedType;
        return eventType;
    }

    /* renamed from: Ha */
    public final EventType m14734Ha(Tag tag, MemberTransferAccountContentsType memberTransferAccountContentsType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19698s1 = memberTransferAccountContentsType;
        return eventType;
    }

    /* renamed from: Hb */
    public final EventType m14735Hb(Tag tag, PaperDocUntrashedType paperDocUntrashedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19605h2 = paperDocUntrashedType;
        return eventType;
    }

    /* renamed from: Hc */
    public final EventType m14736Hc(Tag tag, SharedContentChangeMemberRoleType sharedContentChangeMemberRoleType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19740x3 = sharedContentChangeMemberRoleType;
        return eventType;
    }

    /* renamed from: Hd */
    public final EventType m14737Hd(Tag tag, ShowcaseChangeDownloadPolicyType showcaseChangeDownloadPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19600g6 = showcaseChangeDownloadPolicyType;
        return eventType;
    }

    /* renamed from: He */
    public final EventType m14738He(Tag tag, TeamMergeFromType teamMergeFromType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19338A6 = teamMergeFromType;
        return eventType;
    }

    /* renamed from: I7 */
    public final EventType m14739I7(Tag tag, ChangedEnterpriseAdminRoleType changedEnterpriseAdminRoleType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19450O6 = changedEnterpriseAdminRoleType;
        return eventType;
    }

    /* renamed from: I8 */
    public final EventType m14740I8(Tag tag, ExternalSharingReportFailedType externalSharingReportFailedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19350C2 = externalSharingReportFailedType;
        return eventType;
    }

    /* renamed from: I9 */
    public final EventType m14741I9(Tag tag, GroupJoinPolicyUpdatedType groupJoinPolicyUpdatedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19729w0 = groupJoinPolicyUpdatedType;
        return eventType;
    }

    /* renamed from: Ia */
    public final EventType m14742Ia(Tag tag, MicrosoftOfficeAddinChangePolicyType microsoftOfficeAddinChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19449O5 = microsoftOfficeAddinChangePolicyType;
        return eventType;
    }

    /* renamed from: Ib */
    public final EventType m14743Ib(Tag tag, PaperDocViewType paperDocViewType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19614i2 = paperDocViewType;
        return eventType;
    }

    /* renamed from: Ic */
    public final EventType m14744Ic(Tag tag, SharedContentChangeViewerInfoPolicyType sharedContentChangeViewerInfoPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19748y3 = sharedContentChangeViewerInfoPolicyType;
        return eventType;
    }

    /* renamed from: Id */
    public final EventType m14745Id(Tag tag, ShowcaseChangeEnabledPolicyType showcaseChangeEnabledPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19609h6 = showcaseChangeEnabledPolicyType;
        return eventType;
    }

    /* renamed from: Ie */
    public final EventType m14746Ie(Tag tag, TeamMergeRequestAcceptedType teamMergeRequestAcceptedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19506V6 = teamMergeRequestAcceptedType;
        return eventType;
    }

    /* renamed from: J7 */
    public final EventType m14747J7(Tag tag, ChangedEnterpriseConnectedTeamStatusType changedEnterpriseConnectedTeamStatusType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19458P6 = changedEnterpriseConnectedTeamStatusType;
        return eventType;
    }

    /* renamed from: J8 */
    public final EventType m14748J8(Tag tag, FileAddType fileAddType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19459Q = fileAddType;
        return eventType;
    }

    /* renamed from: J9 */
    public final EventType m14749J9(Tag tag, GroupMovedType groupMovedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19737x0 = groupMovedType;
        return eventType;
    }

    /* renamed from: Ja */
    public final EventType m14750Ja(Tag tag, NetworkControlChangePolicyType networkControlChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19457P5 = networkControlChangePolicyType;
        return eventType;
    }

    /* renamed from: Jb */
    public final EventType m14751Jb(Tag tag, PaperEnabledUsersGroupAdditionType paperEnabledUsersGroupAdditionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19513W5 = paperEnabledUsersGroupAdditionType;
        return eventType;
    }

    /* renamed from: Jc */
    public final EventType m14752Jc(Tag tag, SharedContentClaimInvitationType sharedContentClaimInvitationType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19756z3 = sharedContentClaimInvitationType;
        return eventType;
    }

    /* renamed from: Jd */
    public final EventType m14753Jd(Tag tag, ShowcaseChangeExternalSharingPolicyType showcaseChangeExternalSharingPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19618i6 = showcaseChangeExternalSharingPolicyType;
        return eventType;
    }

    /* renamed from: Je */
    public final EventType m14754Je(Tag tag, TeamMergeRequestAcceptedShownToPrimaryTeamType teamMergeRequestAcceptedShownToPrimaryTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19514W6 = teamMergeRequestAcceptedShownToPrimaryTeamType;
        return eventType;
    }

    /* renamed from: K7 */
    public final EventType m14755K7(Tag tag, CollectionShareType collectionShareType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19454P2 = collectionShareType;
        return eventType;
    }

    /* renamed from: K8 */
    public final EventType m14756K8(Tag tag, FileAddCommentType fileAddCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19602h = fileAddCommentType;
        return eventType;
    }

    /* renamed from: K9 */
    public final EventType m14757K9(Tag tag, GroupRemoveExternalIdType groupRemoveExternalIdType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19745y0 = groupRemoveExternalIdType;
        return eventType;
    }

    /* renamed from: Ka */
    public final EventType m14758Ka(Tag tag, NoExpirationLinkGenCreateReportType noExpirationLinkGenCreateReportType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19358D2 = noExpirationLinkGenCreateReportType;
        return eventType;
    }

    /* renamed from: Kb */
    public final EventType m14759Kb(Tag tag, PaperEnabledUsersGroupRemovalType paperEnabledUsersGroupRemovalType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19521X5 = paperEnabledUsersGroupRemovalType;
        return eventType;
    }

    /* renamed from: Kc */
    public final EventType m14760Kc(Tag tag, SharedContentCopyType sharedContentCopyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19335A3 = sharedContentCopyType;
        return eventType;
    }

    /* renamed from: Kd */
    public final EventType m14761Kd(Tag tag, ShowcaseCreatedType showcaseCreatedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19717u4 = showcaseCreatedType;
        return eventType;
    }

    /* renamed from: Ke */
    public final EventType m14762Ke(Tag tag, TeamMergeRequestAcceptedShownToSecondaryTeamType teamMergeRequestAcceptedShownToSecondaryTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19522X6 = teamMergeRequestAcceptedShownToSecondaryTeamType;
        return eventType;
    }

    /* renamed from: L7 */
    public final EventType m14763L7(Tag tag, ContentAdministrationPolicyChangedType contentAdministrationPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19626j5 = contentAdministrationPolicyChangedType;
        return eventType;
    }

    /* renamed from: L8 */
    public final EventType m14764L8(Tag tag, FileChangeCommentSubscriptionType fileChangeCommentSubscriptionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19611i = fileChangeCommentSubscriptionType;
        return eventType;
    }

    /* renamed from: L9 */
    public final EventType m14765L9(Tag tag, GroupRemoveMemberType groupRemoveMemberType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19753z0 = groupRemoveMemberType;
        return eventType;
    }

    /* renamed from: La */
    public final EventType m14766La(Tag tag, NoExpirationLinkGenReportFailedType noExpirationLinkGenReportFailedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19366E2 = noExpirationLinkGenReportFailedType;
        return eventType;
    }

    /* renamed from: Lb */
    public final EventType m14767Lb(Tag tag, PaperExternalViewAllowType paperExternalViewAllowType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19623j2 = paperExternalViewAllowType;
        return eventType;
    }

    /* renamed from: Lc */
    public final EventType m14768Lc(Tag tag, SharedContentDownloadType sharedContentDownloadType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19343B3 = sharedContentDownloadType;
        return eventType;
    }

    /* renamed from: Ld */
    public final EventType m14769Ld(Tag tag, ShowcaseDeleteCommentType showcaseDeleteCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19725v4 = showcaseDeleteCommentType;
        return eventType;
    }

    /* renamed from: Le */
    public final EventType m14770Le(Tag tag, TeamMergeRequestAutoCanceledType teamMergeRequestAutoCanceledType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19530Y6 = teamMergeRequestAutoCanceledType;
        return eventType;
    }

    /* renamed from: M7 */
    public final EventType m14771M7(Tag tag, CreateFolderType createFolderType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19451P = createFolderType;
        return eventType;
    }

    /* renamed from: M8 */
    public final EventType m14772M8(Tag tag, FileCommentsChangePolicyType fileCommentsChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19750y5 = fileCommentsChangePolicyType;
        return eventType;
    }

    /* renamed from: M9 */
    public final EventType m14773M9(Tag tag, GroupRenameType groupRenameType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19332A0 = groupRenameType;
        return eventType;
    }

    /* renamed from: Ma */
    public final EventType m14774Ma(Tag tag, NoPasswordLinkGenCreateReportType noPasswordLinkGenCreateReportType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19374F2 = noPasswordLinkGenCreateReportType;
        return eventType;
    }

    /* renamed from: Mb */
    public final EventType m14775Mb(Tag tag, PaperExternalViewDefaultTeamType paperExternalViewDefaultTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19632k2 = paperExternalViewDefaultTeamType;
        return eventType;
    }

    /* renamed from: Mc */
    public final EventType m14776Mc(Tag tag, SharedContentRelinquishMembershipType sharedContentRelinquishMembershipType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19351C3 = sharedContentRelinquishMembershipType;
        return eventType;
    }

    /* renamed from: Md */
    public final EventType m14777Md(Tag tag, ShowcaseEditCommentType showcaseEditCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19741x4 = showcaseEditCommentType;
        return eventType;
    }

    /* renamed from: Me */
    public final EventType m14778Me(Tag tag, TeamMergeRequestCanceledType teamMergeRequestCanceledType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19538Z6 = teamMergeRequestCanceledType;
        return eventType;
    }

    /* renamed from: N7 */
    public final EventType m14779N7(Tag tag, CreateTeamInviteLinkType createTeamInviteLinkType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19524Y0 = createTeamInviteLinkType;
        return eventType;
    }

    /* renamed from: N8 */
    public final EventType m14780N8(Tag tag, FileCopyType fileCopyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19467R = fileCopyType;
        return eventType;
    }

    /* renamed from: N9 */
    public final EventType m14781N9(Tag tag, GroupUserManagementChangePolicyType groupUserManagementChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19377F5 = groupUserManagementChangePolicyType;
        return eventType;
    }

    /* renamed from: Na */
    public final EventType m14782Na(Tag tag, NoPasswordLinkGenReportFailedType noPasswordLinkGenReportFailedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19382G2 = noPasswordLinkGenReportFailedType;
        return eventType;
    }

    /* renamed from: Nb */
    public final EventType m14783Nb(Tag tag, PaperExternalViewForbidType paperExternalViewForbidType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19641l2 = paperExternalViewForbidType;
        return eventType;
    }

    /* renamed from: Nc */
    public final EventType m14784Nc(Tag tag, SharedContentRemoveInviteesType sharedContentRemoveInviteesType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19359D3 = sharedContentRemoveInviteesType;
        return eventType;
    }

    /* renamed from: Nd */
    public final EventType m14785Nd(Tag tag, ShowcaseEditedType showcaseEditedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19733w4 = showcaseEditedType;
        return eventType;
    }

    /* renamed from: Ne */
    public final EventType m14786Ne(Tag tag, TeamMergeRequestCanceledShownToPrimaryTeamType teamMergeRequestCanceledShownToPrimaryTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19547a7 = teamMergeRequestCanceledShownToPrimaryTeamType;
        return eventType;
    }

    /* renamed from: O7 */
    public final EventType m14787O7(Tag tag, DataPlacementRestrictionChangePolicyType dataPlacementRestrictionChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19635k5 = dataPlacementRestrictionChangePolicyType;
        return eventType;
    }

    /* renamed from: O8 */
    public final EventType m14788O8(Tag tag, FileDeleteType fileDeleteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19475S = fileDeleteType;
        return eventType;
    }

    /* renamed from: O9 */
    public final EventType m14789O9(Tag tag, GuestAdminChangeStatusType guestAdminChangeStatusType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19490T6 = guestAdminChangeStatusType;
        return eventType;
    }

    /* renamed from: Oa */
    public final EventType m14790Oa(Tag tag, NoPasswordLinkViewCreateReportType noPasswordLinkViewCreateReportType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19390H2 = noPasswordLinkViewCreateReportType;
        return eventType;
    }

    /* renamed from: Ob */
    public final EventType m14791Ob(Tag tag, PaperFolderChangeSubscriptionType paperFolderChangeSubscriptionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19650m2 = paperFolderChangeSubscriptionType;
        return eventType;
    }

    /* renamed from: Oc */
    public final EventType m14792Oc(Tag tag, SharedContentRemoveLinkExpiryType sharedContentRemoveLinkExpiryType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19367E3 = sharedContentRemoveLinkExpiryType;
        return eventType;
    }

    /* renamed from: Od */
    public final EventType m14793Od(Tag tag, ShowcaseFileAddedType showcaseFileAddedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19749y4 = showcaseFileAddedType;
        return eventType;
    }

    /* renamed from: Oe */
    public final EventType m14794Oe(Tag tag, TeamMergeRequestCanceledShownToSecondaryTeamType teamMergeRequestCanceledShownToSecondaryTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19556b7 = teamMergeRequestCanceledShownToSecondaryTeamType;
        return eventType;
    }

    /* renamed from: P7 */
    public final EventType m14795P7(Tag tag, DataPlacementRestrictionSatisfyPolicyType dataPlacementRestrictionSatisfyPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19644l5 = dataPlacementRestrictionSatisfyPolicyType;
        return eventType;
    }

    /* renamed from: P8 */
    public final EventType m14796P8(Tag tag, FileDeleteCommentType fileDeleteCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19620j = fileDeleteCommentType;
        return eventType;
    }

    /* renamed from: P9 */
    public final EventType m14797P9(Tag tag, GuestAdminSignedInViaTrustedTeamsType guestAdminSignedInViaTrustedTeamsType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19444O0 = guestAdminSignedInViaTrustedTeamsType;
        return eventType;
    }

    /* renamed from: Pa */
    public final EventType m14798Pa(Tag tag, NoPasswordLinkViewReportFailedType noPasswordLinkViewReportFailedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19398I2 = noPasswordLinkViewReportFailedType;
        return eventType;
    }

    /* renamed from: Pb */
    public final EventType m14799Pb(Tag tag, PaperFolderDeletedType paperFolderDeletedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19659n2 = paperFolderDeletedType;
        return eventType;
    }

    /* renamed from: Pc */
    public final EventType m14800Pc(Tag tag, SharedContentRemoveLinkPasswordType sharedContentRemoveLinkPasswordType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19375F3 = sharedContentRemoveLinkPasswordType;
        return eventType;
    }

    /* renamed from: Pd */
    public final EventType m14801Pd(Tag tag, ShowcaseFileDownloadType showcaseFileDownloadType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19757z4 = showcaseFileDownloadType;
        return eventType;
    }

    /* renamed from: Pe */
    public final EventType m14802Pe(Tag tag, TeamMergeRequestExpiredType teamMergeRequestExpiredType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19565c7 = teamMergeRequestExpiredType;
        return eventType;
    }

    /* renamed from: Q7 */
    public final EventType m14803Q7(Tag tag, DeleteTeamInviteLinkType deleteTeamInviteLinkType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19532Z0 = deleteTeamInviteLinkType;
        return eventType;
    }

    /* renamed from: Q8 */
    public final EventType m14804Q8(Tag tag, FileDownloadType fileDownloadType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19483T = fileDownloadType;
        return eventType;
    }

    /* renamed from: Q9 */
    public final EventType m14805Q9(Tag tag, GuestAdminSignedOutViaTrustedTeamsType guestAdminSignedOutViaTrustedTeamsType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19452P0 = guestAdminSignedOutViaTrustedTeamsType;
        return eventType;
    }

    /* renamed from: Qa */
    public final EventType m14806Qa(Tag tag, NoteAclInviteOnlyType noteAclInviteOnlyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19502V2 = noteAclInviteOnlyType;
        return eventType;
    }

    /* renamed from: Qb */
    public final EventType m14807Qb(Tag tag, PaperFolderFollowedType paperFolderFollowedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19667o2 = paperFolderFollowedType;
        return eventType;
    }

    /* renamed from: Qc */
    public final EventType m14808Qc(Tag tag, SharedContentRemoveMemberType sharedContentRemoveMemberType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19383G3 = sharedContentRemoveMemberType;
        return eventType;
    }

    /* renamed from: Qd */
    public final EventType m14809Qd(Tag tag, ShowcaseFileRemovedType showcaseFileRemovedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19336A4 = showcaseFileRemovedType;
        return eventType;
    }

    /* renamed from: Qe */
    public final EventType m14810Qe(Tag tag, TeamMergeRequestExpiredShownToPrimaryTeamType teamMergeRequestExpiredShownToPrimaryTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19574d7 = teamMergeRequestExpiredShownToPrimaryTeamType;
        return eventType;
    }

    /* renamed from: R7 */
    public final EventType m14811R7(Tag tag, DeviceApprovalsAddExceptionType deviceApprovalsAddExceptionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19653m5 = deviceApprovalsAddExceptionType;
        return eventType;
    }

    /* renamed from: R8 */
    public final EventType m14812R8(Tag tag, FileEditType fileEditType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19491U = fileEditType;
        return eventType;
    }

    /* renamed from: R9 */
    public final EventType m14813R9(Tag tag, IntegrationConnectedType integrationConnectedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19584f = integrationConnectedType;
        return eventType;
    }

    /* renamed from: Ra */
    public final EventType m14814Ra(Tag tag, NoteAclLinkType noteAclLinkType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19510W2 = noteAclLinkType;
        return eventType;
    }

    /* renamed from: Rb */
    public final EventType m14815Rb(Tag tag, PaperFolderTeamInviteType paperFolderTeamInviteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19675p2 = paperFolderTeamInviteType;
        return eventType;
    }

    /* renamed from: Rc */
    public final EventType m14816Rc(Tag tag, SharedContentRequestAccessType sharedContentRequestAccessType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19391H3 = sharedContentRequestAccessType;
        return eventType;
    }

    /* renamed from: Rd */
    public final EventType m14817Rd(Tag tag, ShowcaseFileViewType showcaseFileViewType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19344B4 = showcaseFileViewType;
        return eventType;
    }

    /* renamed from: Re */
    public final EventType m14818Re(Tag tag, TeamMergeRequestExpiredShownToSecondaryTeamType teamMergeRequestExpiredShownToSecondaryTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19583e7 = teamMergeRequestExpiredShownToSecondaryTeamType;
        return eventType;
    }

    /* renamed from: S7 */
    public final EventType m14819S7(Tag tag, DeviceApprovalsChangeDesktopPolicyType deviceApprovalsChangeDesktopPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19662n5 = deviceApprovalsChangeDesktopPolicyType;
        return eventType;
    }

    /* renamed from: S8 */
    public final EventType m14820S8(Tag tag, FileEditCommentType fileEditCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19629k = fileEditCommentType;
        return eventType;
    }

    /* renamed from: S9 */
    public final EventType m14821S9(Tag tag, IntegrationDisconnectedType integrationDisconnectedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19593g = integrationDisconnectedType;
        return eventType;
    }

    /* renamed from: Sa */
    public final EventType m14822Sa(Tag tag, NoteAclTeamLinkType noteAclTeamLinkType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19518X2 = noteAclTeamLinkType;
        return eventType;
    }

    /* renamed from: Sb */
    public final EventType m14823Sb(Tag tag, PaperPublishedLinkChangePermissionType paperPublishedLinkChangePermissionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19683q2 = paperPublishedLinkChangePermissionType;
        return eventType;
    }

    /* renamed from: Sc */
    public final EventType m14824Sc(Tag tag, SharedContentRestoreInviteesType sharedContentRestoreInviteesType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19399I3 = sharedContentRestoreInviteesType;
        return eventType;
    }

    /* renamed from: Sd */
    public final EventType m14825Sd(Tag tag, ShowcasePermanentlyDeletedType showcasePermanentlyDeletedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19352C4 = showcasePermanentlyDeletedType;
        return eventType;
    }

    /* renamed from: Se */
    public final EventType m14826Se(Tag tag, TeamMergeRequestRejectedShownToPrimaryTeamType teamMergeRequestRejectedShownToPrimaryTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19592f7 = teamMergeRequestRejectedShownToPrimaryTeamType;
        return eventType;
    }

    /* renamed from: T7 */
    public final EventType m14827T7(Tag tag, DeviceApprovalsChangeMobilePolicyType deviceApprovalsChangeMobilePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19670o5 = deviceApprovalsChangeMobilePolicyType;
        return eventType;
    }

    /* renamed from: T8 */
    public final EventType m14828T8(Tag tag, FileGetCopyReferenceType fileGetCopyReferenceType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19499V = fileGetCopyReferenceType;
        return eventType;
    }

    /* renamed from: T9 */
    public final EventType m14829T9(Tag tag, IntegrationPolicyChangedType integrationPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19385G5 = integrationPolicyChangedType;
        return eventType;
    }

    /* renamed from: Ta */
    public final EventType m14830Ta(Tag tag, NoteShareReceiveType noteShareReceiveType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19534Z2 = noteShareReceiveType;
        return eventType;
    }

    /* renamed from: Tb */
    public final EventType m14831Tb(Tag tag, PaperPublishedLinkCreateType paperPublishedLinkCreateType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19691r2 = paperPublishedLinkCreateType;
        return eventType;
    }

    /* renamed from: Tc */
    public final EventType m14832Tc(Tag tag, SharedContentRestoreMemberType sharedContentRestoreMemberType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19407J3 = sharedContentRestoreMemberType;
        return eventType;
    }

    /* renamed from: Td */
    public final EventType m14833Td(Tag tag, ShowcasePostCommentType showcasePostCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19360D4 = showcasePostCommentType;
        return eventType;
    }

    /* renamed from: Te */
    public final EventType m14834Te(Tag tag, TeamMergeRequestRejectedShownToSecondaryTeamType teamMergeRequestRejectedShownToSecondaryTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19601g7 = teamMergeRequestRejectedShownToSecondaryTeamType;
        return eventType;
    }

    /* renamed from: U7 */
    public final EventType m14835U7(Tag tag, DeviceApprovalsChangeOverageActionType deviceApprovalsChangeOverageActionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19678p5 = deviceApprovalsChangeOverageActionType;
        return eventType;
    }

    /* renamed from: U8 */
    public final EventType m14836U8(Tag tag, FileLikeCommentType fileLikeCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19638l = fileLikeCommentType;
        return eventType;
    }

    /* renamed from: U9 */
    public final EventType m14837U9(Tag tag, LegalHoldsActivateAHoldType legalHoldsActivateAHoldType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19340B0 = legalHoldsActivateAHoldType;
        return eventType;
    }

    /* renamed from: Ua */
    public final EventType m14838Ua(Tag tag, NoteSharedType noteSharedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19526Y2 = noteSharedType;
        return eventType;
    }

    /* renamed from: Ub */
    public final EventType m14839Ub(Tag tag, PaperPublishedLinkDisabledType paperPublishedLinkDisabledType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19699s2 = paperPublishedLinkDisabledType;
        return eventType;
    }

    /* renamed from: Uc */
    public final EventType m14840Uc(Tag tag, SharedContentUnshareType sharedContentUnshareType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19415K3 = sharedContentUnshareType;
        return eventType;
    }

    /* renamed from: Ud */
    public final EventType m14841Ud(Tag tag, ShowcaseRemoveMemberType showcaseRemoveMemberType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19368E4 = showcaseRemoveMemberType;
        return eventType;
    }

    /* renamed from: Ue */
    public final EventType m14842Ue(Tag tag, TeamMergeRequestReminderType teamMergeRequestReminderType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19610h7 = teamMergeRequestReminderType;
        return eventType;
    }

    /* renamed from: V7 */
    public final EventType m14843V7(Tag tag, DeviceApprovalsChangeUnlinkActionType deviceApprovalsChangeUnlinkActionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19686q5 = deviceApprovalsChangeUnlinkActionType;
        return eventType;
    }

    /* renamed from: V8 */
    public final EventType m14844V8(Tag tag, FileLockingLockStatusChangedType fileLockingLockStatusChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19507W = fileLockingLockStatusChangedType;
        return eventType;
    }

    /* renamed from: V9 */
    public final EventType m14845V9(Tag tag, LegalHoldsAddMembersType legalHoldsAddMembersType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19348C0 = legalHoldsAddMembersType;
        return eventType;
    }

    /* renamed from: Va */
    public final EventType m14846Va(Tag tag, OpenNoteSharedType openNoteSharedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19543a3 = openNoteSharedType;
        return eventType;
    }

    /* renamed from: Vb */
    public final EventType m14847Vb(Tag tag, PaperPublishedLinkViewType paperPublishedLinkViewType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19707t2 = paperPublishedLinkViewType;
        return eventType;
    }

    /* renamed from: Vc */
    public final EventType m14848Vc(Tag tag, SharedContentViewType sharedContentViewType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19423L3 = sharedContentViewType;
        return eventType;
    }

    /* renamed from: Vd */
    public final EventType m14849Vd(Tag tag, ShowcaseRenamedType showcaseRenamedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19376F4 = showcaseRenamedType;
        return eventType;
    }

    /* renamed from: Ve */
    public final EventType m14850Ve(Tag tag, TeamMergeRequestReminderShownToPrimaryTeamType teamMergeRequestReminderShownToPrimaryTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19619i7 = teamMergeRequestReminderShownToPrimaryTeamType;
        return eventType;
    }

    /* renamed from: W7 */
    public final EventType m14851W7(Tag tag, DeviceApprovalsRemoveExceptionType deviceApprovalsRemoveExceptionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19694r5 = deviceApprovalsRemoveExceptionType;
        return eventType;
    }

    /* renamed from: W8 */
    public final EventType m14852W8(Tag tag, FileLockingPolicyChangedType fileLockingPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19758z5 = fileLockingPolicyChangedType;
        return eventType;
    }

    /* renamed from: W9 */
    public final EventType m14853W9(Tag tag, LegalHoldsChangeHoldDetailsType legalHoldsChangeHoldDetailsType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19356D0 = legalHoldsChangeHoldDetailsType;
        return eventType;
    }

    /* renamed from: Wa */
    public final EventType m14854Wa(Tag tag, OutdatedLinkViewCreateReportType outdatedLinkViewCreateReportType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19406J2 = outdatedLinkViewCreateReportType;
        return eventType;
    }

    /* renamed from: Wb */
    public final EventType m14855Wb(Tag tag, PasswordChangeType passwordChangeType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19715u2 = passwordChangeType;
        return eventType;
    }

    /* renamed from: Wc */
    public final EventType m14856Wc(Tag tag, SharedFolderChangeLinkPolicyType sharedFolderChangeLinkPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19431M3 = sharedFolderChangeLinkPolicyType;
        return eventType;
    }

    /* renamed from: Wd */
    public final EventType m14857Wd(Tag tag, ShowcaseRequestAccessType showcaseRequestAccessType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19384G4 = showcaseRequestAccessType;
        return eventType;
    }

    /* renamed from: We */
    public final EventType m14858We(Tag tag, TeamMergeRequestReminderShownToSecondaryTeamType teamMergeRequestReminderShownToSecondaryTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19628j7 = teamMergeRequestReminderShownToSecondaryTeamType;
        return eventType;
    }

    /* renamed from: X7 */
    public final EventType m14859X7(Tag tag, DeviceChangeIpDesktopType deviceChangeIpDesktopType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19672p = deviceChangeIpDesktopType;
        return eventType;
    }

    /* renamed from: X8 */
    public final EventType m14860X8(Tag tag, FileMoveType fileMoveType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19515X = fileMoveType;
        return eventType;
    }

    /* renamed from: X9 */
    public final EventType m14861X9(Tag tag, LegalHoldsChangeHoldNameType legalHoldsChangeHoldNameType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19364E0 = legalHoldsChangeHoldNameType;
        return eventType;
    }

    /* renamed from: Xa */
    public final EventType m14862Xa(Tag tag, OutdatedLinkViewReportFailedType outdatedLinkViewReportFailedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19414K2 = outdatedLinkViewReportFailedType;
        return eventType;
    }

    /* renamed from: Xb */
    public final EventType m14863Xb(Tag tag, PasswordResetType passwordResetType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19723v2 = passwordResetType;
        return eventType;
    }

    /* renamed from: Xc */
    public final EventType m14864Xc(Tag tag, SharedFolderChangeMembersInheritancePolicyType sharedFolderChangeMembersInheritancePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19439N3 = sharedFolderChangeMembersInheritancePolicyType;
        return eventType;
    }

    /* renamed from: Xd */
    public final EventType m14865Xd(Tag tag, ShowcaseResolveCommentType showcaseResolveCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19392H4 = showcaseResolveCommentType;
        return eventType;
    }

    /* renamed from: Xe */
    public final EventType m14866Xe(Tag tag, TeamMergeRequestRevokedType teamMergeRequestRevokedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19637k7 = teamMergeRequestRevokedType;
        return eventType;
    }

    /* renamed from: Y7 */
    public final EventType m14867Y7(Tag tag, DeviceChangeIpMobileType deviceChangeIpMobileType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19680q = deviceChangeIpMobileType;
        return eventType;
    }

    /* renamed from: Y8 */
    public final EventType m14868Y8(Tag tag, FilePermanentlyDeleteType filePermanentlyDeleteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19523Y = filePermanentlyDeleteType;
        return eventType;
    }

    /* renamed from: Y9 */
    public final EventType m14869Y9(Tag tag, LegalHoldsExportAHoldType legalHoldsExportAHoldType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19372F0 = legalHoldsExportAHoldType;
        return eventType;
    }

    /* renamed from: Ya */
    public final EventType m14870Ya(Tag tag, PaperAdminExportStartType paperAdminExportStartType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19422L2 = paperAdminExportStartType;
        return eventType;
    }

    /* renamed from: Yb */
    public final EventType m14871Yb(Tag tag, PasswordResetAllType passwordResetAllType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19731w2 = passwordResetAllType;
        return eventType;
    }

    /* renamed from: Yc */
    public final EventType m14872Yc(Tag tag, SharedFolderChangeMembersManagementPolicyType sharedFolderChangeMembersManagementPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19447O3 = sharedFolderChangeMembersManagementPolicyType;
        return eventType;
    }

    /* renamed from: Yd */
    public final EventType m14873Yd(Tag tag, ShowcaseRestoredType showcaseRestoredType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19400I4 = showcaseRestoredType;
        return eventType;
    }

    /* renamed from: Ye */
    public final EventType m14874Ye(Tag tag, TeamMergeRequestSentShownToPrimaryTeamType teamMergeRequestSentShownToPrimaryTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19646l7 = teamMergeRequestSentShownToPrimaryTeamType;
        return eventType;
    }

    /* renamed from: Z7 */
    public final EventType m14875Z7(Tag tag, DeviceChangeIpWebType deviceChangeIpWebType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19688r = deviceChangeIpWebType;
        return eventType;
    }

    /* renamed from: Z8 */
    public final EventType m14876Z8(Tag tag, FilePreviewType filePreviewType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19531Z = filePreviewType;
        return eventType;
    }

    /* renamed from: Z9 */
    public final EventType m14877Z9(Tag tag, LegalHoldsExportCancelledType legalHoldsExportCancelledType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19380G0 = legalHoldsExportCancelledType;
        return eventType;
    }

    /* renamed from: Za */
    public final EventType m14878Za(Tag tag, PaperChangeDeploymentPolicyType paperChangeDeploymentPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19465Q5 = paperChangeDeploymentPolicyType;
        return eventType;
    }

    /* renamed from: Zb */
    public final EventType m14879Zb(Tag tag, PasswordStrengthRequirementsChangePolicyType passwordStrengthRequirementsChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19529Y5 = passwordStrengthRequirementsChangePolicyType;
        return eventType;
    }

    /* renamed from: Zc */
    public final EventType m14880Zc(Tag tag, SharedFolderChangeMembersPolicyType sharedFolderChangeMembersPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19455P3 = sharedFolderChangeMembersPolicyType;
        return eventType;
    }

    /* renamed from: Zd */
    public final EventType m14881Zd(Tag tag, ShowcaseTrashedType showcaseTrashedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19408J4 = showcaseTrashedType;
        return eventType;
    }

    /* renamed from: Ze */
    public final EventType m14882Ze(Tag tag, TeamMergeRequestSentShownToSecondaryTeamType teamMergeRequestSentShownToSecondaryTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19655m7 = teamMergeRequestSentShownToSecondaryTeamType;
        return eventType;
    }

    /* renamed from: a8 */
    public final EventType m14883a8(Tag tag, DeviceDeleteOnUnlinkFailType deviceDeleteOnUnlinkFailType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19696s = deviceDeleteOnUnlinkFailType;
        return eventType;
    }

    /* renamed from: a9 */
    public final EventType m14884a9(Tag tag, FileRenameType fileRenameType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19540a0 = fileRenameType;
        return eventType;
    }

    /* renamed from: aa */
    public final EventType m14885aa(Tag tag, LegalHoldsExportDownloadedType legalHoldsExportDownloadedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19388H0 = legalHoldsExportDownloadedType;
        return eventType;
    }

    /* renamed from: ab */
    public final EventType m14886ab(Tag tag, PaperChangeMemberLinkPolicyType paperChangeMemberLinkPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19473R5 = paperChangeMemberLinkPolicyType;
        return eventType;
    }

    /* renamed from: ac */
    public final EventType m14887ac(Tag tag, PendingSecondaryEmailAddedType pendingSecondaryEmailAddedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19706t1 = pendingSecondaryEmailAddedType;
        return eventType;
    }

    /* renamed from: ad */
    public final EventType m14888ad(Tag tag, SharedFolderCreateType sharedFolderCreateType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19463Q3 = sharedFolderCreateType;
        return eventType;
    }

    /* renamed from: ae */
    public final EventType m14889ae(Tag tag, ShowcaseTrashedDeprecatedType showcaseTrashedDeprecatedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19416K4 = showcaseTrashedDeprecatedType;
        return eventType;
    }

    /* renamed from: af */
    public final EventType m14890af(Tag tag, TeamMergeToType teamMergeToType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19346B6 = teamMergeToType;
        return eventType;
    }

    /* renamed from: b8 */
    public final EventType m14891b8(Tag tag, DeviceDeleteOnUnlinkSuccessType deviceDeleteOnUnlinkSuccessType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19704t = deviceDeleteOnUnlinkSuccessType;
        return eventType;
    }

    /* renamed from: b9 */
    public final EventType m14892b9(Tag tag, FileRequestChangeType fileRequestChangeType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19621j0 = fileRequestChangeType;
        return eventType;
    }

    /* renamed from: ba */
    public final EventType m14893ba(Tag tag, LegalHoldsExportRemovedType legalHoldsExportRemovedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19396I0 = legalHoldsExportRemovedType;
        return eventType;
    }

    /* renamed from: bb */
    public final EventType m14894bb(Tag tag, PaperChangeMemberPolicyType paperChangeMemberPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19481S5 = paperChangeMemberPolicyType;
        return eventType;
    }

    /* renamed from: bc */
    public final EventType m14895bc(Tag tag, PermanentDeleteChangePolicyType permanentDeleteChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19537Z5 = permanentDeleteChangePolicyType;
        return eventType;
    }

    /* renamed from: bd */
    public final EventType m14896bd(Tag tag, SharedFolderDeclineInvitationType sharedFolderDeclineInvitationType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19471R3 = sharedFolderDeclineInvitationType;
        return eventType;
    }

    /* renamed from: be */
    public final EventType m14897be(Tag tag, ShowcaseUnresolveCommentType showcaseUnresolveCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19424L4 = showcaseUnresolveCommentType;
        return eventType;
    }

    /* renamed from: bf */
    public final EventType m14898bf(Tag tag, TeamProfileAddLogoType teamProfileAddLogoType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19354C6 = teamProfileAddLogoType;
        return eventType;
    }

    /* renamed from: c8 */
    public final EventType m14899c8(Tag tag, DeviceLinkFailType deviceLinkFailType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19712u = deviceLinkFailType;
        return eventType;
    }

    /* renamed from: c9 */
    public final EventType m14900c9(Tag tag, FileRequestCloseType fileRequestCloseType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19630k0 = fileRequestCloseType;
        return eventType;
    }

    /* renamed from: ca */
    public final EventType m14901ca(Tag tag, LegalHoldsReleaseAHoldType legalHoldsReleaseAHoldType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19404J0 = legalHoldsReleaseAHoldType;
        return eventType;
    }

    /* renamed from: cb */
    public final EventType m14902cb(Tag tag, PaperChangePolicyType paperChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19489T5 = paperChangePolicyType;
        return eventType;
    }

    /* renamed from: cc */
    public final EventType m14903cc(Tag tag, ResellerSupportChangePolicyType resellerSupportChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19546a6 = resellerSupportChangePolicyType;
        return eventType;
    }

    /* renamed from: cd */
    public final EventType m14904cd(Tag tag, SharedFolderMountType sharedFolderMountType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19479S3 = sharedFolderMountType;
        return eventType;
    }

    /* renamed from: ce */
    public final EventType m14905ce(Tag tag, ShowcaseUntrashedType showcaseUntrashedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19432M4 = showcaseUntrashedType;
        return eventType;
    }

    /* renamed from: cf */
    public final EventType m14906cf(Tag tag, TeamProfileChangeDefaultLanguageType teamProfileChangeDefaultLanguageType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19362D6 = teamProfileChangeDefaultLanguageType;
        return eventType;
    }

    /* renamed from: d8 */
    public final EventType m14907d8(Tag tag, DeviceLinkSuccessType deviceLinkSuccessType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19720v = deviceLinkSuccessType;
        return eventType;
    }

    /* renamed from: d9 */
    public final EventType m14908d9(Tag tag, FileRequestCreateType fileRequestCreateType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19639l0 = fileRequestCreateType;
        return eventType;
    }

    /* renamed from: da */
    public final EventType m14909da(Tag tag, LegalHoldsRemoveMembersType legalHoldsRemoveMembersType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19412K0 = legalHoldsRemoveMembersType;
        return eventType;
    }

    /* renamed from: db */
    public final EventType m14910db(Tag tag, PaperContentAddMemberType paperContentAddMemberType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19373F1 = paperContentAddMemberType;
        return eventType;
    }

    /* renamed from: dc */
    public final EventType m14911dc(Tag tag, ResellerSupportSessionEndType resellerSupportSessionEndType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19484T0 = resellerSupportSessionEndType;
        return eventType;
    }

    /* renamed from: dd */
    public final EventType m14912dd(Tag tag, SharedFolderNestType sharedFolderNestType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19487T3 = sharedFolderNestType;
        return eventType;
    }

    /* renamed from: de */
    public final EventType m14913de(Tag tag, ShowcaseUntrashedDeprecatedType showcaseUntrashedDeprecatedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19440N4 = showcaseUntrashedDeprecatedType;
        return eventType;
    }

    /* renamed from: df */
    public final EventType m14914df(Tag tag, TeamProfileChangeLogoType teamProfileChangeLogoType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19370E6 = teamProfileChangeLogoType;
        return eventType;
    }

    /* renamed from: e8 */
    public final EventType m14915e8(Tag tag, DeviceManagementDisabledType deviceManagementDisabledType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19728w = deviceManagementDisabledType;
        return eventType;
    }

    /* renamed from: e9 */
    public final EventType m14916e9(Tag tag, FileRequestDeleteType fileRequestDeleteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19648m0 = fileRequestDeleteType;
        return eventType;
    }

    /* renamed from: ea */
    public final EventType m14917ea(Tag tag, LegalHoldsReportAHoldType legalHoldsReportAHoldType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19420L0 = legalHoldsReportAHoldType;
        return eventType;
    }

    /* renamed from: eb */
    public final EventType m14918eb(Tag tag, PaperContentAddToFolderType paperContentAddToFolderType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19381G1 = paperContentAddToFolderType;
        return eventType;
    }

    /* renamed from: ec */
    public final EventType m14919ec(Tag tag, ResellerSupportSessionStartType resellerSupportSessionStartType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19492U0 = resellerSupportSessionStartType;
        return eventType;
    }

    /* renamed from: ed */
    public final EventType m14920ed(Tag tag, SharedFolderTransferOwnershipType sharedFolderTransferOwnershipType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19495U3 = sharedFolderTransferOwnershipType;
        return eventType;
    }

    /* renamed from: ee */
    public final EventType m14921ee(Tag tag, ShowcaseViewType showcaseViewType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19448O4 = showcaseViewType;
        return eventType;
    }

    /* renamed from: ef */
    public final EventType m14922ef(Tag tag, TeamProfileChangeNameType teamProfileChangeNameType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19378F6 = teamProfileChangeNameType;
        return eventType;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof EventType)) {
            return false;
        }
        EventType eventType = (EventType) obj;
        Tag tag = this.f19539a;
        if (tag != eventType.f19539a) {
            return false;
        }
        switch (C3508a.f19760a[tag.ordinal()]) {
            case 1:
                AppLinkTeamType appLinkTeamType = this.f19548b;
                AppLinkTeamType appLinkTeamType2 = eventType.f19548b;
                return appLinkTeamType == appLinkTeamType2 || appLinkTeamType.equals(appLinkTeamType2);
            case 2:
                AppLinkUserType appLinkUserType = this.f19557c;
                AppLinkUserType appLinkUserType2 = eventType.f19557c;
                return appLinkUserType == appLinkUserType2 || appLinkUserType.equals(appLinkUserType2);
            case 3:
                AppUnlinkTeamType appUnlinkTeamType = this.f19566d;
                AppUnlinkTeamType appUnlinkTeamType2 = eventType.f19566d;
                return appUnlinkTeamType == appUnlinkTeamType2 || appUnlinkTeamType.equals(appUnlinkTeamType2);
            case 4:
                AppUnlinkUserType appUnlinkUserType = this.f19575e;
                AppUnlinkUserType appUnlinkUserType2 = eventType.f19575e;
                return appUnlinkUserType == appUnlinkUserType2 || appUnlinkUserType.equals(appUnlinkUserType2);
            case 5:
                IntegrationConnectedType integrationConnectedType = this.f19584f;
                IntegrationConnectedType integrationConnectedType2 = eventType.f19584f;
                return integrationConnectedType == integrationConnectedType2 || integrationConnectedType.equals(integrationConnectedType2);
            case 6:
                IntegrationDisconnectedType integrationDisconnectedType = this.f19593g;
                IntegrationDisconnectedType integrationDisconnectedType2 = eventType.f19593g;
                return integrationDisconnectedType == integrationDisconnectedType2 || integrationDisconnectedType.equals(integrationDisconnectedType2);
            case 7:
                FileAddCommentType fileAddCommentType = this.f19602h;
                FileAddCommentType fileAddCommentType2 = eventType.f19602h;
                return fileAddCommentType == fileAddCommentType2 || fileAddCommentType.equals(fileAddCommentType2);
            case 8:
                FileChangeCommentSubscriptionType fileChangeCommentSubscriptionType = this.f19611i;
                FileChangeCommentSubscriptionType fileChangeCommentSubscriptionType2 = eventType.f19611i;
                return fileChangeCommentSubscriptionType == fileChangeCommentSubscriptionType2 || fileChangeCommentSubscriptionType.equals(fileChangeCommentSubscriptionType2);
            case 9:
                FileDeleteCommentType fileDeleteCommentType = this.f19620j;
                FileDeleteCommentType fileDeleteCommentType2 = eventType.f19620j;
                return fileDeleteCommentType == fileDeleteCommentType2 || fileDeleteCommentType.equals(fileDeleteCommentType2);
            case 10:
                FileEditCommentType fileEditCommentType = this.f19629k;
                FileEditCommentType fileEditCommentType2 = eventType.f19629k;
                return fileEditCommentType == fileEditCommentType2 || fileEditCommentType.equals(fileEditCommentType2);
            case 11:
                FileLikeCommentType fileLikeCommentType = this.f19638l;
                FileLikeCommentType fileLikeCommentType2 = eventType.f19638l;
                return fileLikeCommentType == fileLikeCommentType2 || fileLikeCommentType.equals(fileLikeCommentType2);
            case 12:
                FileResolveCommentType fileResolveCommentType = this.f19647m;
                FileResolveCommentType fileResolveCommentType2 = eventType.f19647m;
                return fileResolveCommentType == fileResolveCommentType2 || fileResolveCommentType.equals(fileResolveCommentType2);
            case 13:
                FileUnlikeCommentType fileUnlikeCommentType = this.f19656n;
                FileUnlikeCommentType fileUnlikeCommentType2 = eventType.f19656n;
                return fileUnlikeCommentType == fileUnlikeCommentType2 || fileUnlikeCommentType.equals(fileUnlikeCommentType2);
            case 14:
                FileUnresolveCommentType fileUnresolveCommentType = this.f19664o;
                FileUnresolveCommentType fileUnresolveCommentType2 = eventType.f19664o;
                return fileUnresolveCommentType == fileUnresolveCommentType2 || fileUnresolveCommentType.equals(fileUnresolveCommentType2);
            case 15:
                DeviceChangeIpDesktopType deviceChangeIpDesktopType = this.f19672p;
                DeviceChangeIpDesktopType deviceChangeIpDesktopType2 = eventType.f19672p;
                return deviceChangeIpDesktopType == deviceChangeIpDesktopType2 || deviceChangeIpDesktopType.equals(deviceChangeIpDesktopType2);
            case 16:
                DeviceChangeIpMobileType deviceChangeIpMobileType = this.f19680q;
                DeviceChangeIpMobileType deviceChangeIpMobileType2 = eventType.f19680q;
                return deviceChangeIpMobileType == deviceChangeIpMobileType2 || deviceChangeIpMobileType.equals(deviceChangeIpMobileType2);
            case 17:
                DeviceChangeIpWebType deviceChangeIpWebType = this.f19688r;
                DeviceChangeIpWebType deviceChangeIpWebType2 = eventType.f19688r;
                return deviceChangeIpWebType == deviceChangeIpWebType2 || deviceChangeIpWebType.equals(deviceChangeIpWebType2);
            case 18:
                DeviceDeleteOnUnlinkFailType deviceDeleteOnUnlinkFailType = this.f19696s;
                DeviceDeleteOnUnlinkFailType deviceDeleteOnUnlinkFailType2 = eventType.f19696s;
                return deviceDeleteOnUnlinkFailType == deviceDeleteOnUnlinkFailType2 || deviceDeleteOnUnlinkFailType.equals(deviceDeleteOnUnlinkFailType2);
            case 19:
                DeviceDeleteOnUnlinkSuccessType deviceDeleteOnUnlinkSuccessType = this.f19704t;
                DeviceDeleteOnUnlinkSuccessType deviceDeleteOnUnlinkSuccessType2 = eventType.f19704t;
                return deviceDeleteOnUnlinkSuccessType == deviceDeleteOnUnlinkSuccessType2 || deviceDeleteOnUnlinkSuccessType.equals(deviceDeleteOnUnlinkSuccessType2);
            case 20:
                DeviceLinkFailType deviceLinkFailType = this.f19712u;
                DeviceLinkFailType deviceLinkFailType2 = eventType.f19712u;
                return deviceLinkFailType == deviceLinkFailType2 || deviceLinkFailType.equals(deviceLinkFailType2);
            case 21:
                DeviceLinkSuccessType deviceLinkSuccessType = this.f19720v;
                DeviceLinkSuccessType deviceLinkSuccessType2 = eventType.f19720v;
                return deviceLinkSuccessType == deviceLinkSuccessType2 || deviceLinkSuccessType.equals(deviceLinkSuccessType2);
            case 22:
                DeviceManagementDisabledType deviceManagementDisabledType = this.f19728w;
                DeviceManagementDisabledType deviceManagementDisabledType2 = eventType.f19728w;
                return deviceManagementDisabledType == deviceManagementDisabledType2 || deviceManagementDisabledType.equals(deviceManagementDisabledType2);
            case 23:
                DeviceManagementEnabledType deviceManagementEnabledType = this.f19736x;
                DeviceManagementEnabledType deviceManagementEnabledType2 = eventType.f19736x;
                return deviceManagementEnabledType == deviceManagementEnabledType2 || deviceManagementEnabledType.equals(deviceManagementEnabledType2);
            case 24:
                DeviceUnlinkType deviceUnlinkType = this.f19744y;
                DeviceUnlinkType deviceUnlinkType2 = eventType.f19744y;
                return deviceUnlinkType == deviceUnlinkType2 || deviceUnlinkType.equals(deviceUnlinkType2);
            case 25:
                EmmRefreshAuthTokenType emmRefreshAuthTokenType = this.f19752z;
                EmmRefreshAuthTokenType emmRefreshAuthTokenType2 = eventType.f19752z;
                return emmRefreshAuthTokenType == emmRefreshAuthTokenType2 || emmRefreshAuthTokenType.equals(emmRefreshAuthTokenType2);
            case 26:
                AccountCaptureChangeAvailabilityType accountCaptureChangeAvailabilityType = this.f19331A;
                AccountCaptureChangeAvailabilityType accountCaptureChangeAvailabilityType2 = eventType.f19331A;
                return accountCaptureChangeAvailabilityType == accountCaptureChangeAvailabilityType2 || accountCaptureChangeAvailabilityType.equals(accountCaptureChangeAvailabilityType2);
            case 27:
                AccountCaptureMigrateAccountType accountCaptureMigrateAccountType = this.f19339B;
                AccountCaptureMigrateAccountType accountCaptureMigrateAccountType2 = eventType.f19339B;
                return accountCaptureMigrateAccountType == accountCaptureMigrateAccountType2 || accountCaptureMigrateAccountType.equals(accountCaptureMigrateAccountType2);
            case 28:
                AccountCaptureNotificationEmailsSentType accountCaptureNotificationEmailsSentType = this.f19347C;
                AccountCaptureNotificationEmailsSentType accountCaptureNotificationEmailsSentType2 = eventType.f19347C;
                return accountCaptureNotificationEmailsSentType == accountCaptureNotificationEmailsSentType2 || accountCaptureNotificationEmailsSentType.equals(accountCaptureNotificationEmailsSentType2);
            case 29:
                AccountCaptureRelinquishAccountType accountCaptureRelinquishAccountType = this.f19355D;
                AccountCaptureRelinquishAccountType accountCaptureRelinquishAccountType2 = eventType.f19355D;
                return accountCaptureRelinquishAccountType == accountCaptureRelinquishAccountType2 || accountCaptureRelinquishAccountType.equals(accountCaptureRelinquishAccountType2);
            case 30:
                DisabledDomainInvitesType disabledDomainInvitesType = this.f19363E;
                DisabledDomainInvitesType disabledDomainInvitesType2 = eventType.f19363E;
                return disabledDomainInvitesType == disabledDomainInvitesType2 || disabledDomainInvitesType.equals(disabledDomainInvitesType2);
            case 31:
                DomainInvitesApproveRequestToJoinTeamType domainInvitesApproveRequestToJoinTeamType = this.f19371F;
                DomainInvitesApproveRequestToJoinTeamType domainInvitesApproveRequestToJoinTeamType2 = eventType.f19371F;
                return domainInvitesApproveRequestToJoinTeamType == domainInvitesApproveRequestToJoinTeamType2 || domainInvitesApproveRequestToJoinTeamType.equals(domainInvitesApproveRequestToJoinTeamType2);
            case 32:
                DomainInvitesDeclineRequestToJoinTeamType domainInvitesDeclineRequestToJoinTeamType = this.f19379G;
                DomainInvitesDeclineRequestToJoinTeamType domainInvitesDeclineRequestToJoinTeamType2 = eventType.f19379G;
                return domainInvitesDeclineRequestToJoinTeamType == domainInvitesDeclineRequestToJoinTeamType2 || domainInvitesDeclineRequestToJoinTeamType.equals(domainInvitesDeclineRequestToJoinTeamType2);
            case 33:
                DomainInvitesEmailExistingUsersType domainInvitesEmailExistingUsersType = this.f19387H;
                DomainInvitesEmailExistingUsersType domainInvitesEmailExistingUsersType2 = eventType.f19387H;
                return domainInvitesEmailExistingUsersType == domainInvitesEmailExistingUsersType2 || domainInvitesEmailExistingUsersType.equals(domainInvitesEmailExistingUsersType2);
            case 34:
                DomainInvitesRequestToJoinTeamType domainInvitesRequestToJoinTeamType = this.f19395I;
                DomainInvitesRequestToJoinTeamType domainInvitesRequestToJoinTeamType2 = eventType.f19395I;
                return domainInvitesRequestToJoinTeamType == domainInvitesRequestToJoinTeamType2 || domainInvitesRequestToJoinTeamType.equals(domainInvitesRequestToJoinTeamType2);
            case 35:
                DomainInvitesSetInviteNewUserPrefToNoType domainInvitesSetInviteNewUserPrefToNoType = this.f19403J;
                DomainInvitesSetInviteNewUserPrefToNoType domainInvitesSetInviteNewUserPrefToNoType2 = eventType.f19403J;
                return domainInvitesSetInviteNewUserPrefToNoType == domainInvitesSetInviteNewUserPrefToNoType2 || domainInvitesSetInviteNewUserPrefToNoType.equals(domainInvitesSetInviteNewUserPrefToNoType2);
            case 36:
                DomainInvitesSetInviteNewUserPrefToYesType domainInvitesSetInviteNewUserPrefToYesType = this.f19411K;
                DomainInvitesSetInviteNewUserPrefToYesType domainInvitesSetInviteNewUserPrefToYesType2 = eventType.f19411K;
                return domainInvitesSetInviteNewUserPrefToYesType == domainInvitesSetInviteNewUserPrefToYesType2 || domainInvitesSetInviteNewUserPrefToYesType.equals(domainInvitesSetInviteNewUserPrefToYesType2);
            case 37:
                DomainVerificationAddDomainFailType domainVerificationAddDomainFailType = this.f19419L;
                DomainVerificationAddDomainFailType domainVerificationAddDomainFailType2 = eventType.f19419L;
                return domainVerificationAddDomainFailType == domainVerificationAddDomainFailType2 || domainVerificationAddDomainFailType.equals(domainVerificationAddDomainFailType2);
            case 38:
                DomainVerificationAddDomainSuccessType domainVerificationAddDomainSuccessType = this.f19427M;
                DomainVerificationAddDomainSuccessType domainVerificationAddDomainSuccessType2 = eventType.f19427M;
                return domainVerificationAddDomainSuccessType == domainVerificationAddDomainSuccessType2 || domainVerificationAddDomainSuccessType.equals(domainVerificationAddDomainSuccessType2);
            case 39:
                DomainVerificationRemoveDomainType domainVerificationRemoveDomainType = this.f19435N;
                DomainVerificationRemoveDomainType domainVerificationRemoveDomainType2 = eventType.f19435N;
                return domainVerificationRemoveDomainType == domainVerificationRemoveDomainType2 || domainVerificationRemoveDomainType.equals(domainVerificationRemoveDomainType2);
            case 40:
                EnabledDomainInvitesType enabledDomainInvitesType = this.f19443O;
                EnabledDomainInvitesType enabledDomainInvitesType2 = eventType.f19443O;
                return enabledDomainInvitesType == enabledDomainInvitesType2 || enabledDomainInvitesType.equals(enabledDomainInvitesType2);
            case 41:
                CreateFolderType createFolderType = this.f19451P;
                CreateFolderType createFolderType2 = eventType.f19451P;
                return createFolderType == createFolderType2 || createFolderType.equals(createFolderType2);
            case 42:
                FileAddType fileAddType = this.f19459Q;
                FileAddType fileAddType2 = eventType.f19459Q;
                return fileAddType == fileAddType2 || fileAddType.equals(fileAddType2);
            case 43:
                FileCopyType fileCopyType = this.f19467R;
                FileCopyType fileCopyType2 = eventType.f19467R;
                return fileCopyType == fileCopyType2 || fileCopyType.equals(fileCopyType2);
            case 44:
                FileDeleteType fileDeleteType = this.f19475S;
                FileDeleteType fileDeleteType2 = eventType.f19475S;
                return fileDeleteType == fileDeleteType2 || fileDeleteType.equals(fileDeleteType2);
            case 45:
                FileDownloadType fileDownloadType = this.f19483T;
                FileDownloadType fileDownloadType2 = eventType.f19483T;
                return fileDownloadType == fileDownloadType2 || fileDownloadType.equals(fileDownloadType2);
            case 46:
                FileEditType fileEditType = this.f19491U;
                FileEditType fileEditType2 = eventType.f19491U;
                return fileEditType == fileEditType2 || fileEditType.equals(fileEditType2);
            case 47:
                FileGetCopyReferenceType fileGetCopyReferenceType = this.f19499V;
                FileGetCopyReferenceType fileGetCopyReferenceType2 = eventType.f19499V;
                return fileGetCopyReferenceType == fileGetCopyReferenceType2 || fileGetCopyReferenceType.equals(fileGetCopyReferenceType2);
            case 48:
                FileLockingLockStatusChangedType fileLockingLockStatusChangedType = this.f19507W;
                FileLockingLockStatusChangedType fileLockingLockStatusChangedType2 = eventType.f19507W;
                return fileLockingLockStatusChangedType == fileLockingLockStatusChangedType2 || fileLockingLockStatusChangedType.equals(fileLockingLockStatusChangedType2);
            case 49:
                FileMoveType fileMoveType = this.f19515X;
                FileMoveType fileMoveType2 = eventType.f19515X;
                return fileMoveType == fileMoveType2 || fileMoveType.equals(fileMoveType2);
            case 50:
                FilePermanentlyDeleteType filePermanentlyDeleteType = this.f19523Y;
                FilePermanentlyDeleteType filePermanentlyDeleteType2 = eventType.f19523Y;
                return filePermanentlyDeleteType == filePermanentlyDeleteType2 || filePermanentlyDeleteType.equals(filePermanentlyDeleteType2);
            case 51:
                FilePreviewType filePreviewType = this.f19531Z;
                FilePreviewType filePreviewType2 = eventType.f19531Z;
                return filePreviewType == filePreviewType2 || filePreviewType.equals(filePreviewType2);
            case 52:
                FileRenameType fileRenameType = this.f19540a0;
                FileRenameType fileRenameType2 = eventType.f19540a0;
                return fileRenameType == fileRenameType2 || fileRenameType.equals(fileRenameType2);
            case 53:
                FileRestoreType fileRestoreType = this.f19549b0;
                FileRestoreType fileRestoreType2 = eventType.f19549b0;
                return fileRestoreType == fileRestoreType2 || fileRestoreType.equals(fileRestoreType2);
            case 54:
                FileRevertType fileRevertType = this.f19558c0;
                FileRevertType fileRevertType2 = eventType.f19558c0;
                return fileRevertType == fileRevertType2 || fileRevertType.equals(fileRevertType2);
            case 55:
                FileRollbackChangesType fileRollbackChangesType = this.f19567d0;
                FileRollbackChangesType fileRollbackChangesType2 = eventType.f19567d0;
                return fileRollbackChangesType == fileRollbackChangesType2 || fileRollbackChangesType.equals(fileRollbackChangesType2);
            case 56:
                FileSaveCopyReferenceType fileSaveCopyReferenceType = this.f19576e0;
                FileSaveCopyReferenceType fileSaveCopyReferenceType2 = eventType.f19576e0;
                return fileSaveCopyReferenceType == fileSaveCopyReferenceType2 || fileSaveCopyReferenceType.equals(fileSaveCopyReferenceType2);
            case 57:
                FolderOverviewDescriptionChangedType folderOverviewDescriptionChangedType = this.f19585f0;
                FolderOverviewDescriptionChangedType folderOverviewDescriptionChangedType2 = eventType.f19585f0;
                return folderOverviewDescriptionChangedType == folderOverviewDescriptionChangedType2 || folderOverviewDescriptionChangedType.equals(folderOverviewDescriptionChangedType2);
            case 58:
                FolderOverviewItemPinnedType folderOverviewItemPinnedType = this.f19594g0;
                FolderOverviewItemPinnedType folderOverviewItemPinnedType2 = eventType.f19594g0;
                return folderOverviewItemPinnedType == folderOverviewItemPinnedType2 || folderOverviewItemPinnedType.equals(folderOverviewItemPinnedType2);
            case 59:
                FolderOverviewItemUnpinnedType folderOverviewItemUnpinnedType = this.f19603h0;
                FolderOverviewItemUnpinnedType folderOverviewItemUnpinnedType2 = eventType.f19603h0;
                return folderOverviewItemUnpinnedType == folderOverviewItemUnpinnedType2 || folderOverviewItemUnpinnedType.equals(folderOverviewItemUnpinnedType2);
            case 60:
                RewindFolderType rewindFolderType = this.f19612i0;
                RewindFolderType rewindFolderType2 = eventType.f19612i0;
                return rewindFolderType == rewindFolderType2 || rewindFolderType.equals(rewindFolderType2);
            case 61:
                FileRequestChangeType fileRequestChangeType = this.f19621j0;
                FileRequestChangeType fileRequestChangeType2 = eventType.f19621j0;
                return fileRequestChangeType == fileRequestChangeType2 || fileRequestChangeType.equals(fileRequestChangeType2);
            case 62:
                FileRequestCloseType fileRequestCloseType = this.f19630k0;
                FileRequestCloseType fileRequestCloseType2 = eventType.f19630k0;
                return fileRequestCloseType == fileRequestCloseType2 || fileRequestCloseType.equals(fileRequestCloseType2);
            case 63:
                FileRequestCreateType fileRequestCreateType = this.f19639l0;
                FileRequestCreateType fileRequestCreateType2 = eventType.f19639l0;
                return fileRequestCreateType == fileRequestCreateType2 || fileRequestCreateType.equals(fileRequestCreateType2);
            case 64:
                FileRequestDeleteType fileRequestDeleteType = this.f19648m0;
                FileRequestDeleteType fileRequestDeleteType2 = eventType.f19648m0;
                return fileRequestDeleteType == fileRequestDeleteType2 || fileRequestDeleteType.equals(fileRequestDeleteType2);
            case 65:
                FileRequestReceiveFileType fileRequestReceiveFileType = this.f19657n0;
                FileRequestReceiveFileType fileRequestReceiveFileType2 = eventType.f19657n0;
                return fileRequestReceiveFileType == fileRequestReceiveFileType2 || fileRequestReceiveFileType.equals(fileRequestReceiveFileType2);
            case 66:
                GroupAddExternalIdType groupAddExternalIdType = this.f19665o0;
                GroupAddExternalIdType groupAddExternalIdType2 = eventType.f19665o0;
                return groupAddExternalIdType == groupAddExternalIdType2 || groupAddExternalIdType.equals(groupAddExternalIdType2);
            case 67:
                GroupAddMemberType groupAddMemberType = this.f19673p0;
                GroupAddMemberType groupAddMemberType2 = eventType.f19673p0;
                return groupAddMemberType == groupAddMemberType2 || groupAddMemberType.equals(groupAddMemberType2);
            case 68:
                GroupChangeExternalIdType groupChangeExternalIdType = this.f19681q0;
                GroupChangeExternalIdType groupChangeExternalIdType2 = eventType.f19681q0;
                return groupChangeExternalIdType == groupChangeExternalIdType2 || groupChangeExternalIdType.equals(groupChangeExternalIdType2);
            case 69:
                GroupChangeManagementTypeType groupChangeManagementTypeType = this.f19689r0;
                GroupChangeManagementTypeType groupChangeManagementTypeType2 = eventType.f19689r0;
                return groupChangeManagementTypeType == groupChangeManagementTypeType2 || groupChangeManagementTypeType.equals(groupChangeManagementTypeType2);
            case 70:
                GroupChangeMemberRoleType groupChangeMemberRoleType = this.f19697s0;
                GroupChangeMemberRoleType groupChangeMemberRoleType2 = eventType.f19697s0;
                return groupChangeMemberRoleType == groupChangeMemberRoleType2 || groupChangeMemberRoleType.equals(groupChangeMemberRoleType2);
            case 71:
                GroupCreateType groupCreateType = this.f19705t0;
                GroupCreateType groupCreateType2 = eventType.f19705t0;
                return groupCreateType == groupCreateType2 || groupCreateType.equals(groupCreateType2);
            case 72:
                GroupDeleteType groupDeleteType = this.f19713u0;
                GroupDeleteType groupDeleteType2 = eventType.f19713u0;
                return groupDeleteType == groupDeleteType2 || groupDeleteType.equals(groupDeleteType2);
            case 73:
                GroupDescriptionUpdatedType groupDescriptionUpdatedType = this.f19721v0;
                GroupDescriptionUpdatedType groupDescriptionUpdatedType2 = eventType.f19721v0;
                return groupDescriptionUpdatedType == groupDescriptionUpdatedType2 || groupDescriptionUpdatedType.equals(groupDescriptionUpdatedType2);
            case 74:
                GroupJoinPolicyUpdatedType groupJoinPolicyUpdatedType = this.f19729w0;
                GroupJoinPolicyUpdatedType groupJoinPolicyUpdatedType2 = eventType.f19729w0;
                return groupJoinPolicyUpdatedType == groupJoinPolicyUpdatedType2 || groupJoinPolicyUpdatedType.equals(groupJoinPolicyUpdatedType2);
            case 75:
                GroupMovedType groupMovedType = this.f19737x0;
                GroupMovedType groupMovedType2 = eventType.f19737x0;
                return groupMovedType == groupMovedType2 || groupMovedType.equals(groupMovedType2);
            case 76:
                GroupRemoveExternalIdType groupRemoveExternalIdType = this.f19745y0;
                GroupRemoveExternalIdType groupRemoveExternalIdType2 = eventType.f19745y0;
                return groupRemoveExternalIdType == groupRemoveExternalIdType2 || groupRemoveExternalIdType.equals(groupRemoveExternalIdType2);
            case 77:
                GroupRemoveMemberType groupRemoveMemberType = this.f19753z0;
                GroupRemoveMemberType groupRemoveMemberType2 = eventType.f19753z0;
                return groupRemoveMemberType == groupRemoveMemberType2 || groupRemoveMemberType.equals(groupRemoveMemberType2);
            case 78:
                GroupRenameType groupRenameType = this.f19332A0;
                GroupRenameType groupRenameType2 = eventType.f19332A0;
                return groupRenameType == groupRenameType2 || groupRenameType.equals(groupRenameType2);
            case 79:
                LegalHoldsActivateAHoldType legalHoldsActivateAHoldType = this.f19340B0;
                LegalHoldsActivateAHoldType legalHoldsActivateAHoldType2 = eventType.f19340B0;
                return legalHoldsActivateAHoldType == legalHoldsActivateAHoldType2 || legalHoldsActivateAHoldType.equals(legalHoldsActivateAHoldType2);
            case 80:
                LegalHoldsAddMembersType legalHoldsAddMembersType = this.f19348C0;
                LegalHoldsAddMembersType legalHoldsAddMembersType2 = eventType.f19348C0;
                return legalHoldsAddMembersType == legalHoldsAddMembersType2 || legalHoldsAddMembersType.equals(legalHoldsAddMembersType2);
            case 81:
                LegalHoldsChangeHoldDetailsType legalHoldsChangeHoldDetailsType = this.f19356D0;
                LegalHoldsChangeHoldDetailsType legalHoldsChangeHoldDetailsType2 = eventType.f19356D0;
                return legalHoldsChangeHoldDetailsType == legalHoldsChangeHoldDetailsType2 || legalHoldsChangeHoldDetailsType.equals(legalHoldsChangeHoldDetailsType2);
            case 82:
                LegalHoldsChangeHoldNameType legalHoldsChangeHoldNameType = this.f19364E0;
                LegalHoldsChangeHoldNameType legalHoldsChangeHoldNameType2 = eventType.f19364E0;
                return legalHoldsChangeHoldNameType == legalHoldsChangeHoldNameType2 || legalHoldsChangeHoldNameType.equals(legalHoldsChangeHoldNameType2);
            case 83:
                LegalHoldsExportAHoldType legalHoldsExportAHoldType = this.f19372F0;
                LegalHoldsExportAHoldType legalHoldsExportAHoldType2 = eventType.f19372F0;
                return legalHoldsExportAHoldType == legalHoldsExportAHoldType2 || legalHoldsExportAHoldType.equals(legalHoldsExportAHoldType2);
            case 84:
                LegalHoldsExportCancelledType legalHoldsExportCancelledType = this.f19380G0;
                LegalHoldsExportCancelledType legalHoldsExportCancelledType2 = eventType.f19380G0;
                return legalHoldsExportCancelledType == legalHoldsExportCancelledType2 || legalHoldsExportCancelledType.equals(legalHoldsExportCancelledType2);
            case 85:
                LegalHoldsExportDownloadedType legalHoldsExportDownloadedType = this.f19388H0;
                LegalHoldsExportDownloadedType legalHoldsExportDownloadedType2 = eventType.f19388H0;
                return legalHoldsExportDownloadedType == legalHoldsExportDownloadedType2 || legalHoldsExportDownloadedType.equals(legalHoldsExportDownloadedType2);
            case 86:
                LegalHoldsExportRemovedType legalHoldsExportRemovedType = this.f19396I0;
                LegalHoldsExportRemovedType legalHoldsExportRemovedType2 = eventType.f19396I0;
                return legalHoldsExportRemovedType == legalHoldsExportRemovedType2 || legalHoldsExportRemovedType.equals(legalHoldsExportRemovedType2);
            case 87:
                LegalHoldsReleaseAHoldType legalHoldsReleaseAHoldType = this.f19404J0;
                LegalHoldsReleaseAHoldType legalHoldsReleaseAHoldType2 = eventType.f19404J0;
                return legalHoldsReleaseAHoldType == legalHoldsReleaseAHoldType2 || legalHoldsReleaseAHoldType.equals(legalHoldsReleaseAHoldType2);
            case 88:
                LegalHoldsRemoveMembersType legalHoldsRemoveMembersType = this.f19412K0;
                LegalHoldsRemoveMembersType legalHoldsRemoveMembersType2 = eventType.f19412K0;
                return legalHoldsRemoveMembersType == legalHoldsRemoveMembersType2 || legalHoldsRemoveMembersType.equals(legalHoldsRemoveMembersType2);
            case 89:
                LegalHoldsReportAHoldType legalHoldsReportAHoldType = this.f19420L0;
                LegalHoldsReportAHoldType legalHoldsReportAHoldType2 = eventType.f19420L0;
                return legalHoldsReportAHoldType == legalHoldsReportAHoldType2 || legalHoldsReportAHoldType.equals(legalHoldsReportAHoldType2);
            case 90:
                AccountLockOrUnlockedType accountLockOrUnlockedType = this.f19428M0;
                AccountLockOrUnlockedType accountLockOrUnlockedType2 = eventType.f19428M0;
                return accountLockOrUnlockedType == accountLockOrUnlockedType2 || accountLockOrUnlockedType.equals(accountLockOrUnlockedType2);
            case 91:
                EmmErrorType emmErrorType = this.f19436N0;
                EmmErrorType emmErrorType2 = eventType.f19436N0;
                return emmErrorType == emmErrorType2 || emmErrorType.equals(emmErrorType2);
            case 92:
                GuestAdminSignedInViaTrustedTeamsType guestAdminSignedInViaTrustedTeamsType = this.f19444O0;
                GuestAdminSignedInViaTrustedTeamsType guestAdminSignedInViaTrustedTeamsType2 = eventType.f19444O0;
                return guestAdminSignedInViaTrustedTeamsType == guestAdminSignedInViaTrustedTeamsType2 || guestAdminSignedInViaTrustedTeamsType.equals(guestAdminSignedInViaTrustedTeamsType2);
            case 93:
                GuestAdminSignedOutViaTrustedTeamsType guestAdminSignedOutViaTrustedTeamsType = this.f19452P0;
                GuestAdminSignedOutViaTrustedTeamsType guestAdminSignedOutViaTrustedTeamsType2 = eventType.f19452P0;
                return guestAdminSignedOutViaTrustedTeamsType == guestAdminSignedOutViaTrustedTeamsType2 || guestAdminSignedOutViaTrustedTeamsType.equals(guestAdminSignedOutViaTrustedTeamsType2);
            case 94:
                LoginFailType loginFailType = this.f19460Q0;
                LoginFailType loginFailType2 = eventType.f19460Q0;
                return loginFailType == loginFailType2 || loginFailType.equals(loginFailType2);
            case 95:
                LoginSuccessType loginSuccessType = this.f19468R0;
                LoginSuccessType loginSuccessType2 = eventType.f19468R0;
                return loginSuccessType == loginSuccessType2 || loginSuccessType.equals(loginSuccessType2);
            case 96:
                LogoutType logoutType = this.f19476S0;
                LogoutType logoutType2 = eventType.f19476S0;
                return logoutType == logoutType2 || logoutType.equals(logoutType2);
            case 97:
                ResellerSupportSessionEndType resellerSupportSessionEndType = this.f19484T0;
                ResellerSupportSessionEndType resellerSupportSessionEndType2 = eventType.f19484T0;
                return resellerSupportSessionEndType == resellerSupportSessionEndType2 || resellerSupportSessionEndType.equals(resellerSupportSessionEndType2);
            case 98:
                ResellerSupportSessionStartType resellerSupportSessionStartType = this.f19492U0;
                ResellerSupportSessionStartType resellerSupportSessionStartType2 = eventType.f19492U0;
                return resellerSupportSessionStartType == resellerSupportSessionStartType2 || resellerSupportSessionStartType.equals(resellerSupportSessionStartType2);
            case 99:
                SignInAsSessionEndType signInAsSessionEndType = this.f19500V0;
                SignInAsSessionEndType signInAsSessionEndType2 = eventType.f19500V0;
                return signInAsSessionEndType == signInAsSessionEndType2 || signInAsSessionEndType.equals(signInAsSessionEndType2);
            case 100:
                SignInAsSessionStartType signInAsSessionStartType = this.f19508W0;
                SignInAsSessionStartType signInAsSessionStartType2 = eventType.f19508W0;
                return signInAsSessionStartType == signInAsSessionStartType2 || signInAsSessionStartType.equals(signInAsSessionStartType2);
            case 101:
                SsoErrorType ssoErrorType = this.f19516X0;
                SsoErrorType ssoErrorType2 = eventType.f19516X0;
                return ssoErrorType == ssoErrorType2 || ssoErrorType.equals(ssoErrorType2);
            case 102:
                CreateTeamInviteLinkType createTeamInviteLinkType = this.f19524Y0;
                CreateTeamInviteLinkType createTeamInviteLinkType2 = eventType.f19524Y0;
                return createTeamInviteLinkType == createTeamInviteLinkType2 || createTeamInviteLinkType.equals(createTeamInviteLinkType2);
            case 103:
                DeleteTeamInviteLinkType deleteTeamInviteLinkType = this.f19532Z0;
                DeleteTeamInviteLinkType deleteTeamInviteLinkType2 = eventType.f19532Z0;
                return deleteTeamInviteLinkType == deleteTeamInviteLinkType2 || deleteTeamInviteLinkType.equals(deleteTeamInviteLinkType2);
            case 104:
                MemberAddExternalIdType memberAddExternalIdType = this.f19541a1;
                MemberAddExternalIdType memberAddExternalIdType2 = eventType.f19541a1;
                return memberAddExternalIdType == memberAddExternalIdType2 || memberAddExternalIdType.equals(memberAddExternalIdType2);
            case 105:
                MemberAddNameType memberAddNameType = this.f19550b1;
                MemberAddNameType memberAddNameType2 = eventType.f19550b1;
                return memberAddNameType == memberAddNameType2 || memberAddNameType.equals(memberAddNameType2);
            case 106:
                MemberChangeAdminRoleType memberChangeAdminRoleType = this.f19559c1;
                MemberChangeAdminRoleType memberChangeAdminRoleType2 = eventType.f19559c1;
                return memberChangeAdminRoleType == memberChangeAdminRoleType2 || memberChangeAdminRoleType.equals(memberChangeAdminRoleType2);
            case 107:
                MemberChangeEmailType memberChangeEmailType = this.f19568d1;
                MemberChangeEmailType memberChangeEmailType2 = eventType.f19568d1;
                return memberChangeEmailType == memberChangeEmailType2 || memberChangeEmailType.equals(memberChangeEmailType2);
            case 108:
                MemberChangeExternalIdType memberChangeExternalIdType = this.f19577e1;
                MemberChangeExternalIdType memberChangeExternalIdType2 = eventType.f19577e1;
                return memberChangeExternalIdType == memberChangeExternalIdType2 || memberChangeExternalIdType.equals(memberChangeExternalIdType2);
            case 109:
                MemberChangeMembershipTypeType memberChangeMembershipTypeType = this.f19586f1;
                MemberChangeMembershipTypeType memberChangeMembershipTypeType2 = eventType.f19586f1;
                return memberChangeMembershipTypeType == memberChangeMembershipTypeType2 || memberChangeMembershipTypeType.equals(memberChangeMembershipTypeType2);
            case 110:
                MemberChangeNameType memberChangeNameType = this.f19595g1;
                MemberChangeNameType memberChangeNameType2 = eventType.f19595g1;
                return memberChangeNameType == memberChangeNameType2 || memberChangeNameType.equals(memberChangeNameType2);
            case 111:
                MemberChangeStatusType memberChangeStatusType = this.f19604h1;
                MemberChangeStatusType memberChangeStatusType2 = eventType.f19604h1;
                return memberChangeStatusType == memberChangeStatusType2 || memberChangeStatusType.equals(memberChangeStatusType2);
            case 112:
                MemberDeleteManualContactsType memberDeleteManualContactsType = this.f19613i1;
                MemberDeleteManualContactsType memberDeleteManualContactsType2 = eventType.f19613i1;
                return memberDeleteManualContactsType == memberDeleteManualContactsType2 || memberDeleteManualContactsType.equals(memberDeleteManualContactsType2);
            case 113:
                MemberDeleteProfilePhotoType memberDeleteProfilePhotoType = this.f19622j1;
                MemberDeleteProfilePhotoType memberDeleteProfilePhotoType2 = eventType.f19622j1;
                return memberDeleteProfilePhotoType == memberDeleteProfilePhotoType2 || memberDeleteProfilePhotoType.equals(memberDeleteProfilePhotoType2);
            case 114:
                MemberPermanentlyDeleteAccountContentsType memberPermanentlyDeleteAccountContentsType = this.f19631k1;
                MemberPermanentlyDeleteAccountContentsType memberPermanentlyDeleteAccountContentsType2 = eventType.f19631k1;
                return memberPermanentlyDeleteAccountContentsType == memberPermanentlyDeleteAccountContentsType2 || memberPermanentlyDeleteAccountContentsType.equals(memberPermanentlyDeleteAccountContentsType2);
            case 115:
                MemberRemoveExternalIdType memberRemoveExternalIdType = this.f19640l1;
                MemberRemoveExternalIdType memberRemoveExternalIdType2 = eventType.f19640l1;
                return memberRemoveExternalIdType == memberRemoveExternalIdType2 || memberRemoveExternalIdType.equals(memberRemoveExternalIdType2);
            case 116:
                MemberSetProfilePhotoType memberSetProfilePhotoType = this.f19649m1;
                MemberSetProfilePhotoType memberSetProfilePhotoType2 = eventType.f19649m1;
                return memberSetProfilePhotoType == memberSetProfilePhotoType2 || memberSetProfilePhotoType.equals(memberSetProfilePhotoType2);
            case 117:
                MemberSpaceLimitsAddCustomQuotaType memberSpaceLimitsAddCustomQuotaType = this.f19658n1;
                MemberSpaceLimitsAddCustomQuotaType memberSpaceLimitsAddCustomQuotaType2 = eventType.f19658n1;
                return memberSpaceLimitsAddCustomQuotaType == memberSpaceLimitsAddCustomQuotaType2 || memberSpaceLimitsAddCustomQuotaType.equals(memberSpaceLimitsAddCustomQuotaType2);
            case 118:
                MemberSpaceLimitsChangeCustomQuotaType memberSpaceLimitsChangeCustomQuotaType = this.f19666o1;
                MemberSpaceLimitsChangeCustomQuotaType memberSpaceLimitsChangeCustomQuotaType2 = eventType.f19666o1;
                return memberSpaceLimitsChangeCustomQuotaType == memberSpaceLimitsChangeCustomQuotaType2 || memberSpaceLimitsChangeCustomQuotaType.equals(memberSpaceLimitsChangeCustomQuotaType2);
            case 119:
                MemberSpaceLimitsChangeStatusType memberSpaceLimitsChangeStatusType = this.f19674p1;
                MemberSpaceLimitsChangeStatusType memberSpaceLimitsChangeStatusType2 = eventType.f19674p1;
                return memberSpaceLimitsChangeStatusType == memberSpaceLimitsChangeStatusType2 || memberSpaceLimitsChangeStatusType.equals(memberSpaceLimitsChangeStatusType2);
            case 120:
                MemberSpaceLimitsRemoveCustomQuotaType memberSpaceLimitsRemoveCustomQuotaType = this.f19682q1;
                MemberSpaceLimitsRemoveCustomQuotaType memberSpaceLimitsRemoveCustomQuotaType2 = eventType.f19682q1;
                return memberSpaceLimitsRemoveCustomQuotaType == memberSpaceLimitsRemoveCustomQuotaType2 || memberSpaceLimitsRemoveCustomQuotaType.equals(memberSpaceLimitsRemoveCustomQuotaType2);
            case 121:
                MemberSuggestType memberSuggestType = this.f19690r1;
                MemberSuggestType memberSuggestType2 = eventType.f19690r1;
                return memberSuggestType == memberSuggestType2 || memberSuggestType.equals(memberSuggestType2);
            case 122:
                MemberTransferAccountContentsType memberTransferAccountContentsType = this.f19698s1;
                MemberTransferAccountContentsType memberTransferAccountContentsType2 = eventType.f19698s1;
                return memberTransferAccountContentsType == memberTransferAccountContentsType2 || memberTransferAccountContentsType.equals(memberTransferAccountContentsType2);
            case 123:
                PendingSecondaryEmailAddedType pendingSecondaryEmailAddedType = this.f19706t1;
                PendingSecondaryEmailAddedType pendingSecondaryEmailAddedType2 = eventType.f19706t1;
                return pendingSecondaryEmailAddedType == pendingSecondaryEmailAddedType2 || pendingSecondaryEmailAddedType.equals(pendingSecondaryEmailAddedType2);
            case 124:
                SecondaryEmailDeletedType secondaryEmailDeletedType = this.f19714u1;
                SecondaryEmailDeletedType secondaryEmailDeletedType2 = eventType.f19714u1;
                return secondaryEmailDeletedType == secondaryEmailDeletedType2 || secondaryEmailDeletedType.equals(secondaryEmailDeletedType2);
            case 125:
                SecondaryEmailVerifiedType secondaryEmailVerifiedType = this.f19722v1;
                SecondaryEmailVerifiedType secondaryEmailVerifiedType2 = eventType.f19722v1;
                return secondaryEmailVerifiedType == secondaryEmailVerifiedType2 || secondaryEmailVerifiedType.equals(secondaryEmailVerifiedType2);
            case 126:
                SecondaryMailsPolicyChangedType secondaryMailsPolicyChangedType = this.f19730w1;
                SecondaryMailsPolicyChangedType secondaryMailsPolicyChangedType2 = eventType.f19730w1;
                return secondaryMailsPolicyChangedType == secondaryMailsPolicyChangedType2 || secondaryMailsPolicyChangedType.equals(secondaryMailsPolicyChangedType2);
            case 127:
                BinderAddPageType binderAddPageType = this.f19738x1;
                BinderAddPageType binderAddPageType2 = eventType.f19738x1;
                return binderAddPageType == binderAddPageType2 || binderAddPageType.equals(binderAddPageType2);
            case 128:
                BinderAddSectionType binderAddSectionType = this.f19746y1;
                BinderAddSectionType binderAddSectionType2 = eventType.f19746y1;
                return binderAddSectionType == binderAddSectionType2 || binderAddSectionType.equals(binderAddSectionType2);
            case 129:
                BinderRemovePageType binderRemovePageType = this.f19754z1;
                BinderRemovePageType binderRemovePageType2 = eventType.f19754z1;
                return binderRemovePageType == binderRemovePageType2 || binderRemovePageType.equals(binderRemovePageType2);
            case 130:
                BinderRemoveSectionType binderRemoveSectionType = this.f19333A1;
                BinderRemoveSectionType binderRemoveSectionType2 = eventType.f19333A1;
                return binderRemoveSectionType == binderRemoveSectionType2 || binderRemoveSectionType.equals(binderRemoveSectionType2);
            case 131:
                BinderRenamePageType binderRenamePageType = this.f19341B1;
                BinderRenamePageType binderRenamePageType2 = eventType.f19341B1;
                return binderRenamePageType == binderRenamePageType2 || binderRenamePageType.equals(binderRenamePageType2);
            case 132:
                BinderRenameSectionType binderRenameSectionType = this.f19349C1;
                BinderRenameSectionType binderRenameSectionType2 = eventType.f19349C1;
                return binderRenameSectionType == binderRenameSectionType2 || binderRenameSectionType.equals(binderRenameSectionType2);
            case 133:
                BinderReorderPageType binderReorderPageType = this.f19357D1;
                BinderReorderPageType binderReorderPageType2 = eventType.f19357D1;
                return binderReorderPageType == binderReorderPageType2 || binderReorderPageType.equals(binderReorderPageType2);
            case 134:
                BinderReorderSectionType binderReorderSectionType = this.f19365E1;
                BinderReorderSectionType binderReorderSectionType2 = eventType.f19365E1;
                return binderReorderSectionType == binderReorderSectionType2 || binderReorderSectionType.equals(binderReorderSectionType2);
            case 135:
                PaperContentAddMemberType paperContentAddMemberType = this.f19373F1;
                PaperContentAddMemberType paperContentAddMemberType2 = eventType.f19373F1;
                return paperContentAddMemberType == paperContentAddMemberType2 || paperContentAddMemberType.equals(paperContentAddMemberType2);
            case 136:
                PaperContentAddToFolderType paperContentAddToFolderType = this.f19381G1;
                PaperContentAddToFolderType paperContentAddToFolderType2 = eventType.f19381G1;
                return paperContentAddToFolderType == paperContentAddToFolderType2 || paperContentAddToFolderType.equals(paperContentAddToFolderType2);
            case 137:
                PaperContentArchiveType paperContentArchiveType = this.f19389H1;
                PaperContentArchiveType paperContentArchiveType2 = eventType.f19389H1;
                return paperContentArchiveType == paperContentArchiveType2 || paperContentArchiveType.equals(paperContentArchiveType2);
            case 138:
                PaperContentCreateType paperContentCreateType = this.f19397I1;
                PaperContentCreateType paperContentCreateType2 = eventType.f19397I1;
                return paperContentCreateType == paperContentCreateType2 || paperContentCreateType.equals(paperContentCreateType2);
            case 139:
                PaperContentPermanentlyDeleteType paperContentPermanentlyDeleteType = this.f19405J1;
                PaperContentPermanentlyDeleteType paperContentPermanentlyDeleteType2 = eventType.f19405J1;
                return paperContentPermanentlyDeleteType == paperContentPermanentlyDeleteType2 || paperContentPermanentlyDeleteType.equals(paperContentPermanentlyDeleteType2);
            case 140:
                PaperContentRemoveFromFolderType paperContentRemoveFromFolderType = this.f19413K1;
                PaperContentRemoveFromFolderType paperContentRemoveFromFolderType2 = eventType.f19413K1;
                return paperContentRemoveFromFolderType == paperContentRemoveFromFolderType2 || paperContentRemoveFromFolderType.equals(paperContentRemoveFromFolderType2);
            case 141:
                PaperContentRemoveMemberType paperContentRemoveMemberType = this.f19421L1;
                PaperContentRemoveMemberType paperContentRemoveMemberType2 = eventType.f19421L1;
                return paperContentRemoveMemberType == paperContentRemoveMemberType2 || paperContentRemoveMemberType.equals(paperContentRemoveMemberType2);
            case 142:
                PaperContentRenameType paperContentRenameType = this.f19429M1;
                PaperContentRenameType paperContentRenameType2 = eventType.f19429M1;
                return paperContentRenameType == paperContentRenameType2 || paperContentRenameType.equals(paperContentRenameType2);
            case 143:
                PaperContentRestoreType paperContentRestoreType = this.f19437N1;
                PaperContentRestoreType paperContentRestoreType2 = eventType.f19437N1;
                return paperContentRestoreType == paperContentRestoreType2 || paperContentRestoreType.equals(paperContentRestoreType2);
            case 144:
                PaperDocAddCommentType paperDocAddCommentType = this.f19445O1;
                PaperDocAddCommentType paperDocAddCommentType2 = eventType.f19445O1;
                return paperDocAddCommentType == paperDocAddCommentType2 || paperDocAddCommentType.equals(paperDocAddCommentType2);
            case 145:
                PaperDocChangeMemberRoleType paperDocChangeMemberRoleType = this.f19453P1;
                PaperDocChangeMemberRoleType paperDocChangeMemberRoleType2 = eventType.f19453P1;
                return paperDocChangeMemberRoleType == paperDocChangeMemberRoleType2 || paperDocChangeMemberRoleType.equals(paperDocChangeMemberRoleType2);
            case 146:
                PaperDocChangeSharingPolicyType paperDocChangeSharingPolicyType = this.f19461Q1;
                PaperDocChangeSharingPolicyType paperDocChangeSharingPolicyType2 = eventType.f19461Q1;
                return paperDocChangeSharingPolicyType == paperDocChangeSharingPolicyType2 || paperDocChangeSharingPolicyType.equals(paperDocChangeSharingPolicyType2);
            case 147:
                PaperDocChangeSubscriptionType paperDocChangeSubscriptionType = this.f19469R1;
                PaperDocChangeSubscriptionType paperDocChangeSubscriptionType2 = eventType.f19469R1;
                return paperDocChangeSubscriptionType == paperDocChangeSubscriptionType2 || paperDocChangeSubscriptionType.equals(paperDocChangeSubscriptionType2);
            case 148:
                PaperDocDeletedType paperDocDeletedType = this.f19477S1;
                PaperDocDeletedType paperDocDeletedType2 = eventType.f19477S1;
                return paperDocDeletedType == paperDocDeletedType2 || paperDocDeletedType.equals(paperDocDeletedType2);
            case 149:
                PaperDocDeleteCommentType paperDocDeleteCommentType = this.f19485T1;
                PaperDocDeleteCommentType paperDocDeleteCommentType2 = eventType.f19485T1;
                return paperDocDeleteCommentType == paperDocDeleteCommentType2 || paperDocDeleteCommentType.equals(paperDocDeleteCommentType2);
            case 150:
                PaperDocDownloadType paperDocDownloadType = this.f19493U1;
                PaperDocDownloadType paperDocDownloadType2 = eventType.f19493U1;
                return paperDocDownloadType == paperDocDownloadType2 || paperDocDownloadType.equals(paperDocDownloadType2);
            case 151:
                PaperDocEditType paperDocEditType = this.f19501V1;
                PaperDocEditType paperDocEditType2 = eventType.f19501V1;
                return paperDocEditType == paperDocEditType2 || paperDocEditType.equals(paperDocEditType2);
            case 152:
                PaperDocEditCommentType paperDocEditCommentType = this.f19509W1;
                PaperDocEditCommentType paperDocEditCommentType2 = eventType.f19509W1;
                return paperDocEditCommentType == paperDocEditCommentType2 || paperDocEditCommentType.equals(paperDocEditCommentType2);
            case 153:
                PaperDocFollowedType paperDocFollowedType = this.f19517X1;
                PaperDocFollowedType paperDocFollowedType2 = eventType.f19517X1;
                return paperDocFollowedType == paperDocFollowedType2 || paperDocFollowedType.equals(paperDocFollowedType2);
            case 154:
                PaperDocMentionType paperDocMentionType = this.f19525Y1;
                PaperDocMentionType paperDocMentionType2 = eventType.f19525Y1;
                return paperDocMentionType == paperDocMentionType2 || paperDocMentionType.equals(paperDocMentionType2);
            case 155:
                PaperDocOwnershipChangedType paperDocOwnershipChangedType = this.f19533Z1;
                PaperDocOwnershipChangedType paperDocOwnershipChangedType2 = eventType.f19533Z1;
                return paperDocOwnershipChangedType == paperDocOwnershipChangedType2 || paperDocOwnershipChangedType.equals(paperDocOwnershipChangedType2);
            case 156:
                PaperDocRequestAccessType paperDocRequestAccessType = this.f19542a2;
                PaperDocRequestAccessType paperDocRequestAccessType2 = eventType.f19542a2;
                return paperDocRequestAccessType == paperDocRequestAccessType2 || paperDocRequestAccessType.equals(paperDocRequestAccessType2);
            case 157:
                PaperDocResolveCommentType paperDocResolveCommentType = this.f19551b2;
                PaperDocResolveCommentType paperDocResolveCommentType2 = eventType.f19551b2;
                return paperDocResolveCommentType == paperDocResolveCommentType2 || paperDocResolveCommentType.equals(paperDocResolveCommentType2);
            case 158:
                PaperDocRevertType paperDocRevertType = this.f19560c2;
                PaperDocRevertType paperDocRevertType2 = eventType.f19560c2;
                return paperDocRevertType == paperDocRevertType2 || paperDocRevertType.equals(paperDocRevertType2);
            case 159:
                PaperDocSlackShareType paperDocSlackShareType = this.f19569d2;
                PaperDocSlackShareType paperDocSlackShareType2 = eventType.f19569d2;
                return paperDocSlackShareType == paperDocSlackShareType2 || paperDocSlackShareType.equals(paperDocSlackShareType2);
            case 160:
                PaperDocTeamInviteType paperDocTeamInviteType = this.f19578e2;
                PaperDocTeamInviteType paperDocTeamInviteType2 = eventType.f19578e2;
                return paperDocTeamInviteType == paperDocTeamInviteType2 || paperDocTeamInviteType.equals(paperDocTeamInviteType2);
            case 161:
                PaperDocTrashedType paperDocTrashedType = this.f19587f2;
                PaperDocTrashedType paperDocTrashedType2 = eventType.f19587f2;
                return paperDocTrashedType == paperDocTrashedType2 || paperDocTrashedType.equals(paperDocTrashedType2);
            case 162:
                PaperDocUnresolveCommentType paperDocUnresolveCommentType = this.f19596g2;
                PaperDocUnresolveCommentType paperDocUnresolveCommentType2 = eventType.f19596g2;
                return paperDocUnresolveCommentType == paperDocUnresolveCommentType2 || paperDocUnresolveCommentType.equals(paperDocUnresolveCommentType2);
            case 163:
                PaperDocUntrashedType paperDocUntrashedType = this.f19605h2;
                PaperDocUntrashedType paperDocUntrashedType2 = eventType.f19605h2;
                return paperDocUntrashedType == paperDocUntrashedType2 || paperDocUntrashedType.equals(paperDocUntrashedType2);
            case 164:
                PaperDocViewType paperDocViewType = this.f19614i2;
                PaperDocViewType paperDocViewType2 = eventType.f19614i2;
                return paperDocViewType == paperDocViewType2 || paperDocViewType.equals(paperDocViewType2);
            case 165:
                PaperExternalViewAllowType paperExternalViewAllowType = this.f19623j2;
                PaperExternalViewAllowType paperExternalViewAllowType2 = eventType.f19623j2;
                return paperExternalViewAllowType == paperExternalViewAllowType2 || paperExternalViewAllowType.equals(paperExternalViewAllowType2);
            case 166:
                PaperExternalViewDefaultTeamType paperExternalViewDefaultTeamType = this.f19632k2;
                PaperExternalViewDefaultTeamType paperExternalViewDefaultTeamType2 = eventType.f19632k2;
                return paperExternalViewDefaultTeamType == paperExternalViewDefaultTeamType2 || paperExternalViewDefaultTeamType.equals(paperExternalViewDefaultTeamType2);
            case 167:
                PaperExternalViewForbidType paperExternalViewForbidType = this.f19641l2;
                PaperExternalViewForbidType paperExternalViewForbidType2 = eventType.f19641l2;
                return paperExternalViewForbidType == paperExternalViewForbidType2 || paperExternalViewForbidType.equals(paperExternalViewForbidType2);
            case 168:
                PaperFolderChangeSubscriptionType paperFolderChangeSubscriptionType = this.f19650m2;
                PaperFolderChangeSubscriptionType paperFolderChangeSubscriptionType2 = eventType.f19650m2;
                return paperFolderChangeSubscriptionType == paperFolderChangeSubscriptionType2 || paperFolderChangeSubscriptionType.equals(paperFolderChangeSubscriptionType2);
            case 169:
                PaperFolderDeletedType paperFolderDeletedType = this.f19659n2;
                PaperFolderDeletedType paperFolderDeletedType2 = eventType.f19659n2;
                return paperFolderDeletedType == paperFolderDeletedType2 || paperFolderDeletedType.equals(paperFolderDeletedType2);
            case 170:
                PaperFolderFollowedType paperFolderFollowedType = this.f19667o2;
                PaperFolderFollowedType paperFolderFollowedType2 = eventType.f19667o2;
                return paperFolderFollowedType == paperFolderFollowedType2 || paperFolderFollowedType.equals(paperFolderFollowedType2);
            case 171:
                PaperFolderTeamInviteType paperFolderTeamInviteType = this.f19675p2;
                PaperFolderTeamInviteType paperFolderTeamInviteType2 = eventType.f19675p2;
                return paperFolderTeamInviteType == paperFolderTeamInviteType2 || paperFolderTeamInviteType.equals(paperFolderTeamInviteType2);
            case 172:
                PaperPublishedLinkChangePermissionType paperPublishedLinkChangePermissionType = this.f19683q2;
                PaperPublishedLinkChangePermissionType paperPublishedLinkChangePermissionType2 = eventType.f19683q2;
                return paperPublishedLinkChangePermissionType == paperPublishedLinkChangePermissionType2 || paperPublishedLinkChangePermissionType.equals(paperPublishedLinkChangePermissionType2);
            case 173:
                PaperPublishedLinkCreateType paperPublishedLinkCreateType = this.f19691r2;
                PaperPublishedLinkCreateType paperPublishedLinkCreateType2 = eventType.f19691r2;
                return paperPublishedLinkCreateType == paperPublishedLinkCreateType2 || paperPublishedLinkCreateType.equals(paperPublishedLinkCreateType2);
            case 174:
                PaperPublishedLinkDisabledType paperPublishedLinkDisabledType = this.f19699s2;
                PaperPublishedLinkDisabledType paperPublishedLinkDisabledType2 = eventType.f19699s2;
                return paperPublishedLinkDisabledType == paperPublishedLinkDisabledType2 || paperPublishedLinkDisabledType.equals(paperPublishedLinkDisabledType2);
            case 175:
                PaperPublishedLinkViewType paperPublishedLinkViewType = this.f19707t2;
                PaperPublishedLinkViewType paperPublishedLinkViewType2 = eventType.f19707t2;
                return paperPublishedLinkViewType == paperPublishedLinkViewType2 || paperPublishedLinkViewType.equals(paperPublishedLinkViewType2);
            case 176:
                PasswordChangeType passwordChangeType = this.f19715u2;
                PasswordChangeType passwordChangeType2 = eventType.f19715u2;
                return passwordChangeType == passwordChangeType2 || passwordChangeType.equals(passwordChangeType2);
            case 177:
                PasswordResetType passwordResetType = this.f19723v2;
                PasswordResetType passwordResetType2 = eventType.f19723v2;
                return passwordResetType == passwordResetType2 || passwordResetType.equals(passwordResetType2);
            case 178:
                PasswordResetAllType passwordResetAllType = this.f19731w2;
                PasswordResetAllType passwordResetAllType2 = eventType.f19731w2;
                return passwordResetAllType == passwordResetAllType2 || passwordResetAllType.equals(passwordResetAllType2);
            case 179:
                EmmCreateExceptionsReportType emmCreateExceptionsReportType = this.f19739x2;
                EmmCreateExceptionsReportType emmCreateExceptionsReportType2 = eventType.f19739x2;
                return emmCreateExceptionsReportType == emmCreateExceptionsReportType2 || emmCreateExceptionsReportType.equals(emmCreateExceptionsReportType2);
            case 180:
                EmmCreateUsageReportType emmCreateUsageReportType = this.f19747y2;
                EmmCreateUsageReportType emmCreateUsageReportType2 = eventType.f19747y2;
                return emmCreateUsageReportType == emmCreateUsageReportType2 || emmCreateUsageReportType.equals(emmCreateUsageReportType2);
            case 181:
                ExportMembersReportType exportMembersReportType = this.f19755z2;
                ExportMembersReportType exportMembersReportType2 = eventType.f19755z2;
                return exportMembersReportType == exportMembersReportType2 || exportMembersReportType.equals(exportMembersReportType2);
            case 182:
                ExportMembersReportFailType exportMembersReportFailType = this.f19334A2;
                ExportMembersReportFailType exportMembersReportFailType2 = eventType.f19334A2;
                return exportMembersReportFailType == exportMembersReportFailType2 || exportMembersReportFailType.equals(exportMembersReportFailType2);
            case 183:
                ExternalSharingCreateReportType externalSharingCreateReportType = this.f19342B2;
                ExternalSharingCreateReportType externalSharingCreateReportType2 = eventType.f19342B2;
                return externalSharingCreateReportType == externalSharingCreateReportType2 || externalSharingCreateReportType.equals(externalSharingCreateReportType2);
            case 184:
                ExternalSharingReportFailedType externalSharingReportFailedType = this.f19350C2;
                ExternalSharingReportFailedType externalSharingReportFailedType2 = eventType.f19350C2;
                return externalSharingReportFailedType == externalSharingReportFailedType2 || externalSharingReportFailedType.equals(externalSharingReportFailedType2);
            case 185:
                NoExpirationLinkGenCreateReportType noExpirationLinkGenCreateReportType = this.f19358D2;
                NoExpirationLinkGenCreateReportType noExpirationLinkGenCreateReportType2 = eventType.f19358D2;
                return noExpirationLinkGenCreateReportType == noExpirationLinkGenCreateReportType2 || noExpirationLinkGenCreateReportType.equals(noExpirationLinkGenCreateReportType2);
            case 186:
                NoExpirationLinkGenReportFailedType noExpirationLinkGenReportFailedType = this.f19366E2;
                NoExpirationLinkGenReportFailedType noExpirationLinkGenReportFailedType2 = eventType.f19366E2;
                return noExpirationLinkGenReportFailedType == noExpirationLinkGenReportFailedType2 || noExpirationLinkGenReportFailedType.equals(noExpirationLinkGenReportFailedType2);
            case 187:
                NoPasswordLinkGenCreateReportType noPasswordLinkGenCreateReportType = this.f19374F2;
                NoPasswordLinkGenCreateReportType noPasswordLinkGenCreateReportType2 = eventType.f19374F2;
                return noPasswordLinkGenCreateReportType == noPasswordLinkGenCreateReportType2 || noPasswordLinkGenCreateReportType.equals(noPasswordLinkGenCreateReportType2);
            case 188:
                NoPasswordLinkGenReportFailedType noPasswordLinkGenReportFailedType = this.f19382G2;
                NoPasswordLinkGenReportFailedType noPasswordLinkGenReportFailedType2 = eventType.f19382G2;
                return noPasswordLinkGenReportFailedType == noPasswordLinkGenReportFailedType2 || noPasswordLinkGenReportFailedType.equals(noPasswordLinkGenReportFailedType2);
            case 189:
                NoPasswordLinkViewCreateReportType noPasswordLinkViewCreateReportType = this.f19390H2;
                NoPasswordLinkViewCreateReportType noPasswordLinkViewCreateReportType2 = eventType.f19390H2;
                return noPasswordLinkViewCreateReportType == noPasswordLinkViewCreateReportType2 || noPasswordLinkViewCreateReportType.equals(noPasswordLinkViewCreateReportType2);
            case 190:
                NoPasswordLinkViewReportFailedType noPasswordLinkViewReportFailedType = this.f19398I2;
                NoPasswordLinkViewReportFailedType noPasswordLinkViewReportFailedType2 = eventType.f19398I2;
                return noPasswordLinkViewReportFailedType == noPasswordLinkViewReportFailedType2 || noPasswordLinkViewReportFailedType.equals(noPasswordLinkViewReportFailedType2);
            case 191:
                OutdatedLinkViewCreateReportType outdatedLinkViewCreateReportType = this.f19406J2;
                OutdatedLinkViewCreateReportType outdatedLinkViewCreateReportType2 = eventType.f19406J2;
                return outdatedLinkViewCreateReportType == outdatedLinkViewCreateReportType2 || outdatedLinkViewCreateReportType.equals(outdatedLinkViewCreateReportType2);
            case 192:
                OutdatedLinkViewReportFailedType outdatedLinkViewReportFailedType = this.f19414K2;
                OutdatedLinkViewReportFailedType outdatedLinkViewReportFailedType2 = eventType.f19414K2;
                return outdatedLinkViewReportFailedType == outdatedLinkViewReportFailedType2 || outdatedLinkViewReportFailedType.equals(outdatedLinkViewReportFailedType2);
            case 193:
                PaperAdminExportStartType paperAdminExportStartType = this.f19422L2;
                PaperAdminExportStartType paperAdminExportStartType2 = eventType.f19422L2;
                return paperAdminExportStartType == paperAdminExportStartType2 || paperAdminExportStartType.equals(paperAdminExportStartType2);
            case 194:
                SmartSyncCreateAdminPrivilegeReportType smartSyncCreateAdminPrivilegeReportType = this.f19430M2;
                SmartSyncCreateAdminPrivilegeReportType smartSyncCreateAdminPrivilegeReportType2 = eventType.f19430M2;
                return smartSyncCreateAdminPrivilegeReportType == smartSyncCreateAdminPrivilegeReportType2 || smartSyncCreateAdminPrivilegeReportType.equals(smartSyncCreateAdminPrivilegeReportType2);
            case 195:
                TeamActivityCreateReportType teamActivityCreateReportType = this.f19438N2;
                TeamActivityCreateReportType teamActivityCreateReportType2 = eventType.f19438N2;
                return teamActivityCreateReportType == teamActivityCreateReportType2 || teamActivityCreateReportType.equals(teamActivityCreateReportType2);
            case 196:
                TeamActivityCreateReportFailType teamActivityCreateReportFailType = this.f19446O2;
                TeamActivityCreateReportFailType teamActivityCreateReportFailType2 = eventType.f19446O2;
                return teamActivityCreateReportFailType == teamActivityCreateReportFailType2 || teamActivityCreateReportFailType.equals(teamActivityCreateReportFailType2);
            case 197:
                CollectionShareType collectionShareType = this.f19454P2;
                CollectionShareType collectionShareType2 = eventType.f19454P2;
                return collectionShareType == collectionShareType2 || collectionShareType.equals(collectionShareType2);
            case 198:
                FileTransfersFileAddType fileTransfersFileAddType = this.f19462Q2;
                FileTransfersFileAddType fileTransfersFileAddType2 = eventType.f19462Q2;
                return fileTransfersFileAddType == fileTransfersFileAddType2 || fileTransfersFileAddType.equals(fileTransfersFileAddType2);
            case 199:
                FileTransfersTransferDeleteType fileTransfersTransferDeleteType = this.f19470R2;
                FileTransfersTransferDeleteType fileTransfersTransferDeleteType2 = eventType.f19470R2;
                return fileTransfersTransferDeleteType == fileTransfersTransferDeleteType2 || fileTransfersTransferDeleteType.equals(fileTransfersTransferDeleteType2);
            case 200:
                FileTransfersTransferDownloadType fileTransfersTransferDownloadType = this.f19478S2;
                FileTransfersTransferDownloadType fileTransfersTransferDownloadType2 = eventType.f19478S2;
                return fileTransfersTransferDownloadType == fileTransfersTransferDownloadType2 || fileTransfersTransferDownloadType.equals(fileTransfersTransferDownloadType2);
            case 201:
                FileTransfersTransferSendType fileTransfersTransferSendType = this.f19486T2;
                FileTransfersTransferSendType fileTransfersTransferSendType2 = eventType.f19486T2;
                return fileTransfersTransferSendType == fileTransfersTransferSendType2 || fileTransfersTransferSendType.equals(fileTransfersTransferSendType2);
            case 202:
                FileTransfersTransferViewType fileTransfersTransferViewType = this.f19494U2;
                FileTransfersTransferViewType fileTransfersTransferViewType2 = eventType.f19494U2;
                return fileTransfersTransferViewType == fileTransfersTransferViewType2 || fileTransfersTransferViewType.equals(fileTransfersTransferViewType2);
            case 203:
                NoteAclInviteOnlyType noteAclInviteOnlyType = this.f19502V2;
                NoteAclInviteOnlyType noteAclInviteOnlyType2 = eventType.f19502V2;
                return noteAclInviteOnlyType == noteAclInviteOnlyType2 || noteAclInviteOnlyType.equals(noteAclInviteOnlyType2);
            case 204:
                NoteAclLinkType noteAclLinkType = this.f19510W2;
                NoteAclLinkType noteAclLinkType2 = eventType.f19510W2;
                return noteAclLinkType == noteAclLinkType2 || noteAclLinkType.equals(noteAclLinkType2);
            case 205:
                NoteAclTeamLinkType noteAclTeamLinkType = this.f19518X2;
                NoteAclTeamLinkType noteAclTeamLinkType2 = eventType.f19518X2;
                return noteAclTeamLinkType == noteAclTeamLinkType2 || noteAclTeamLinkType.equals(noteAclTeamLinkType2);
            case 206:
                NoteSharedType noteSharedType = this.f19526Y2;
                NoteSharedType noteSharedType2 = eventType.f19526Y2;
                return noteSharedType == noteSharedType2 || noteSharedType.equals(noteSharedType2);
            case 207:
                NoteShareReceiveType noteShareReceiveType = this.f19534Z2;
                NoteShareReceiveType noteShareReceiveType2 = eventType.f19534Z2;
                return noteShareReceiveType == noteShareReceiveType2 || noteShareReceiveType.equals(noteShareReceiveType2);
            case 208:
                OpenNoteSharedType openNoteSharedType = this.f19543a3;
                OpenNoteSharedType openNoteSharedType2 = eventType.f19543a3;
                return openNoteSharedType == openNoteSharedType2 || openNoteSharedType.equals(openNoteSharedType2);
            case 209:
                SfAddGroupType sfAddGroupType = this.f19552b3;
                SfAddGroupType sfAddGroupType2 = eventType.f19552b3;
                return sfAddGroupType == sfAddGroupType2 || sfAddGroupType.equals(sfAddGroupType2);
            case 210:
                SfAllowNonMembersToViewSharedLinksType sfAllowNonMembersToViewSharedLinksType = this.f19561c3;
                SfAllowNonMembersToViewSharedLinksType sfAllowNonMembersToViewSharedLinksType2 = eventType.f19561c3;
                return sfAllowNonMembersToViewSharedLinksType == sfAllowNonMembersToViewSharedLinksType2 || sfAllowNonMembersToViewSharedLinksType.equals(sfAllowNonMembersToViewSharedLinksType2);
            case 211:
                SfExternalInviteWarnType sfExternalInviteWarnType = this.f19570d3;
                SfExternalInviteWarnType sfExternalInviteWarnType2 = eventType.f19570d3;
                return sfExternalInviteWarnType == sfExternalInviteWarnType2 || sfExternalInviteWarnType.equals(sfExternalInviteWarnType2);
            case 212:
                SfFbInviteType sfFbInviteType = this.f19579e3;
                SfFbInviteType sfFbInviteType2 = eventType.f19579e3;
                return sfFbInviteType == sfFbInviteType2 || sfFbInviteType.equals(sfFbInviteType2);
            case 213:
                SfFbInviteChangeRoleType sfFbInviteChangeRoleType = this.f19588f3;
                SfFbInviteChangeRoleType sfFbInviteChangeRoleType2 = eventType.f19588f3;
                return sfFbInviteChangeRoleType == sfFbInviteChangeRoleType2 || sfFbInviteChangeRoleType.equals(sfFbInviteChangeRoleType2);
            case 214:
                SfFbUninviteType sfFbUninviteType = this.f19597g3;
                SfFbUninviteType sfFbUninviteType2 = eventType.f19597g3;
                return sfFbUninviteType == sfFbUninviteType2 || sfFbUninviteType.equals(sfFbUninviteType2);
            case 215:
                SfInviteGroupType sfInviteGroupType = this.f19606h3;
                SfInviteGroupType sfInviteGroupType2 = eventType.f19606h3;
                return sfInviteGroupType == sfInviteGroupType2 || sfInviteGroupType.equals(sfInviteGroupType2);
            case 216:
                SfTeamGrantAccessType sfTeamGrantAccessType = this.f19615i3;
                SfTeamGrantAccessType sfTeamGrantAccessType2 = eventType.f19615i3;
                return sfTeamGrantAccessType == sfTeamGrantAccessType2 || sfTeamGrantAccessType.equals(sfTeamGrantAccessType2);
            case 217:
                SfTeamInviteType sfTeamInviteType = this.f19624j3;
                SfTeamInviteType sfTeamInviteType2 = eventType.f19624j3;
                return sfTeamInviteType == sfTeamInviteType2 || sfTeamInviteType.equals(sfTeamInviteType2);
            case 218:
                SfTeamInviteChangeRoleType sfTeamInviteChangeRoleType = this.f19633k3;
                SfTeamInviteChangeRoleType sfTeamInviteChangeRoleType2 = eventType.f19633k3;
                return sfTeamInviteChangeRoleType == sfTeamInviteChangeRoleType2 || sfTeamInviteChangeRoleType.equals(sfTeamInviteChangeRoleType2);
            case 219:
                SfTeamJoinType sfTeamJoinType = this.f19642l3;
                SfTeamJoinType sfTeamJoinType2 = eventType.f19642l3;
                return sfTeamJoinType == sfTeamJoinType2 || sfTeamJoinType.equals(sfTeamJoinType2);
            case 220:
                SfTeamJoinFromOobLinkType sfTeamJoinFromOobLinkType = this.f19651m3;
                SfTeamJoinFromOobLinkType sfTeamJoinFromOobLinkType2 = eventType.f19651m3;
                return sfTeamJoinFromOobLinkType == sfTeamJoinFromOobLinkType2 || sfTeamJoinFromOobLinkType.equals(sfTeamJoinFromOobLinkType2);
            case 221:
                SfTeamUninviteType sfTeamUninviteType = this.f19660n3;
                SfTeamUninviteType sfTeamUninviteType2 = eventType.f19660n3;
                return sfTeamUninviteType == sfTeamUninviteType2 || sfTeamUninviteType.equals(sfTeamUninviteType2);
            case 222:
                SharedContentAddInviteesType sharedContentAddInviteesType = this.f19668o3;
                SharedContentAddInviteesType sharedContentAddInviteesType2 = eventType.f19668o3;
                return sharedContentAddInviteesType == sharedContentAddInviteesType2 || sharedContentAddInviteesType.equals(sharedContentAddInviteesType2);
            case 223:
                SharedContentAddLinkExpiryType sharedContentAddLinkExpiryType = this.f19676p3;
                SharedContentAddLinkExpiryType sharedContentAddLinkExpiryType2 = eventType.f19676p3;
                return sharedContentAddLinkExpiryType == sharedContentAddLinkExpiryType2 || sharedContentAddLinkExpiryType.equals(sharedContentAddLinkExpiryType2);
            case 224:
                SharedContentAddLinkPasswordType sharedContentAddLinkPasswordType = this.f19684q3;
                SharedContentAddLinkPasswordType sharedContentAddLinkPasswordType2 = eventType.f19684q3;
                return sharedContentAddLinkPasswordType == sharedContentAddLinkPasswordType2 || sharedContentAddLinkPasswordType.equals(sharedContentAddLinkPasswordType2);
            case 225:
                SharedContentAddMemberType sharedContentAddMemberType = this.f19692r3;
                SharedContentAddMemberType sharedContentAddMemberType2 = eventType.f19692r3;
                return sharedContentAddMemberType == sharedContentAddMemberType2 || sharedContentAddMemberType.equals(sharedContentAddMemberType2);
            case 226:
                SharedContentChangeDownloadsPolicyType sharedContentChangeDownloadsPolicyType = this.f19700s3;
                SharedContentChangeDownloadsPolicyType sharedContentChangeDownloadsPolicyType2 = eventType.f19700s3;
                return sharedContentChangeDownloadsPolicyType == sharedContentChangeDownloadsPolicyType2 || sharedContentChangeDownloadsPolicyType.equals(sharedContentChangeDownloadsPolicyType2);
            case 227:
                SharedContentChangeInviteeRoleType sharedContentChangeInviteeRoleType = this.f19708t3;
                SharedContentChangeInviteeRoleType sharedContentChangeInviteeRoleType2 = eventType.f19708t3;
                return sharedContentChangeInviteeRoleType == sharedContentChangeInviteeRoleType2 || sharedContentChangeInviteeRoleType.equals(sharedContentChangeInviteeRoleType2);
            case 228:
                SharedContentChangeLinkAudienceType sharedContentChangeLinkAudienceType = this.f19716u3;
                SharedContentChangeLinkAudienceType sharedContentChangeLinkAudienceType2 = eventType.f19716u3;
                return sharedContentChangeLinkAudienceType == sharedContentChangeLinkAudienceType2 || sharedContentChangeLinkAudienceType.equals(sharedContentChangeLinkAudienceType2);
            case 229:
                SharedContentChangeLinkExpiryType sharedContentChangeLinkExpiryType = this.f19724v3;
                SharedContentChangeLinkExpiryType sharedContentChangeLinkExpiryType2 = eventType.f19724v3;
                return sharedContentChangeLinkExpiryType == sharedContentChangeLinkExpiryType2 || sharedContentChangeLinkExpiryType.equals(sharedContentChangeLinkExpiryType2);
            case 230:
                SharedContentChangeLinkPasswordType sharedContentChangeLinkPasswordType = this.f19732w3;
                SharedContentChangeLinkPasswordType sharedContentChangeLinkPasswordType2 = eventType.f19732w3;
                return sharedContentChangeLinkPasswordType == sharedContentChangeLinkPasswordType2 || sharedContentChangeLinkPasswordType.equals(sharedContentChangeLinkPasswordType2);
            case 231:
                SharedContentChangeMemberRoleType sharedContentChangeMemberRoleType = this.f19740x3;
                SharedContentChangeMemberRoleType sharedContentChangeMemberRoleType2 = eventType.f19740x3;
                return sharedContentChangeMemberRoleType == sharedContentChangeMemberRoleType2 || sharedContentChangeMemberRoleType.equals(sharedContentChangeMemberRoleType2);
            case 232:
                SharedContentChangeViewerInfoPolicyType sharedContentChangeViewerInfoPolicyType = this.f19748y3;
                SharedContentChangeViewerInfoPolicyType sharedContentChangeViewerInfoPolicyType2 = eventType.f19748y3;
                return sharedContentChangeViewerInfoPolicyType == sharedContentChangeViewerInfoPolicyType2 || sharedContentChangeViewerInfoPolicyType.equals(sharedContentChangeViewerInfoPolicyType2);
            case 233:
                SharedContentClaimInvitationType sharedContentClaimInvitationType = this.f19756z3;
                SharedContentClaimInvitationType sharedContentClaimInvitationType2 = eventType.f19756z3;
                return sharedContentClaimInvitationType == sharedContentClaimInvitationType2 || sharedContentClaimInvitationType.equals(sharedContentClaimInvitationType2);
            case 234:
                SharedContentCopyType sharedContentCopyType = this.f19335A3;
                SharedContentCopyType sharedContentCopyType2 = eventType.f19335A3;
                return sharedContentCopyType == sharedContentCopyType2 || sharedContentCopyType.equals(sharedContentCopyType2);
            case 235:
                SharedContentDownloadType sharedContentDownloadType = this.f19343B3;
                SharedContentDownloadType sharedContentDownloadType2 = eventType.f19343B3;
                return sharedContentDownloadType == sharedContentDownloadType2 || sharedContentDownloadType.equals(sharedContentDownloadType2);
            case 236:
                SharedContentRelinquishMembershipType sharedContentRelinquishMembershipType = this.f19351C3;
                SharedContentRelinquishMembershipType sharedContentRelinquishMembershipType2 = eventType.f19351C3;
                return sharedContentRelinquishMembershipType == sharedContentRelinquishMembershipType2 || sharedContentRelinquishMembershipType.equals(sharedContentRelinquishMembershipType2);
            case 237:
                SharedContentRemoveInviteesType sharedContentRemoveInviteesType = this.f19359D3;
                SharedContentRemoveInviteesType sharedContentRemoveInviteesType2 = eventType.f19359D3;
                return sharedContentRemoveInviteesType == sharedContentRemoveInviteesType2 || sharedContentRemoveInviteesType.equals(sharedContentRemoveInviteesType2);
            case 238:
                SharedContentRemoveLinkExpiryType sharedContentRemoveLinkExpiryType = this.f19367E3;
                SharedContentRemoveLinkExpiryType sharedContentRemoveLinkExpiryType2 = eventType.f19367E3;
                return sharedContentRemoveLinkExpiryType == sharedContentRemoveLinkExpiryType2 || sharedContentRemoveLinkExpiryType.equals(sharedContentRemoveLinkExpiryType2);
            case 239:
                SharedContentRemoveLinkPasswordType sharedContentRemoveLinkPasswordType = this.f19375F3;
                SharedContentRemoveLinkPasswordType sharedContentRemoveLinkPasswordType2 = eventType.f19375F3;
                return sharedContentRemoveLinkPasswordType == sharedContentRemoveLinkPasswordType2 || sharedContentRemoveLinkPasswordType.equals(sharedContentRemoveLinkPasswordType2);
            case 240:
                SharedContentRemoveMemberType sharedContentRemoveMemberType = this.f19383G3;
                SharedContentRemoveMemberType sharedContentRemoveMemberType2 = eventType.f19383G3;
                return sharedContentRemoveMemberType == sharedContentRemoveMemberType2 || sharedContentRemoveMemberType.equals(sharedContentRemoveMemberType2);
            case 241:
                SharedContentRequestAccessType sharedContentRequestAccessType = this.f19391H3;
                SharedContentRequestAccessType sharedContentRequestAccessType2 = eventType.f19391H3;
                return sharedContentRequestAccessType == sharedContentRequestAccessType2 || sharedContentRequestAccessType.equals(sharedContentRequestAccessType2);
            case DataBinderMapperImpl.f53038H3 /* 242 */:
                SharedContentRestoreInviteesType sharedContentRestoreInviteesType = this.f19399I3;
                SharedContentRestoreInviteesType sharedContentRestoreInviteesType2 = eventType.f19399I3;
                return sharedContentRestoreInviteesType == sharedContentRestoreInviteesType2 || sharedContentRestoreInviteesType.equals(sharedContentRestoreInviteesType2);
            case 243:
                SharedContentRestoreMemberType sharedContentRestoreMemberType = this.f19407J3;
                SharedContentRestoreMemberType sharedContentRestoreMemberType2 = eventType.f19407J3;
                return sharedContentRestoreMemberType == sharedContentRestoreMemberType2 || sharedContentRestoreMemberType.equals(sharedContentRestoreMemberType2);
            case 244:
                SharedContentUnshareType sharedContentUnshareType = this.f19415K3;
                SharedContentUnshareType sharedContentUnshareType2 = eventType.f19415K3;
                return sharedContentUnshareType == sharedContentUnshareType2 || sharedContentUnshareType.equals(sharedContentUnshareType2);
            case 245:
                SharedContentViewType sharedContentViewType = this.f19423L3;
                SharedContentViewType sharedContentViewType2 = eventType.f19423L3;
                return sharedContentViewType == sharedContentViewType2 || sharedContentViewType.equals(sharedContentViewType2);
            case 246:
                SharedFolderChangeLinkPolicyType sharedFolderChangeLinkPolicyType = this.f19431M3;
                SharedFolderChangeLinkPolicyType sharedFolderChangeLinkPolicyType2 = eventType.f19431M3;
                return sharedFolderChangeLinkPolicyType == sharedFolderChangeLinkPolicyType2 || sharedFolderChangeLinkPolicyType.equals(sharedFolderChangeLinkPolicyType2);
            case DataBinderMapperImpl.f53073M3 /* 247 */:
                SharedFolderChangeMembersInheritancePolicyType sharedFolderChangeMembersInheritancePolicyType = this.f19439N3;
                SharedFolderChangeMembersInheritancePolicyType sharedFolderChangeMembersInheritancePolicyType2 = eventType.f19439N3;
                return sharedFolderChangeMembersInheritancePolicyType == sharedFolderChangeMembersInheritancePolicyType2 || sharedFolderChangeMembersInheritancePolicyType.equals(sharedFolderChangeMembersInheritancePolicyType2);
            case 248:
                SharedFolderChangeMembersManagementPolicyType sharedFolderChangeMembersManagementPolicyType = this.f19447O3;
                SharedFolderChangeMembersManagementPolicyType sharedFolderChangeMembersManagementPolicyType2 = eventType.f19447O3;
                return sharedFolderChangeMembersManagementPolicyType == sharedFolderChangeMembersManagementPolicyType2 || sharedFolderChangeMembersManagementPolicyType.equals(sharedFolderChangeMembersManagementPolicyType2);
            case 249:
                SharedFolderChangeMembersPolicyType sharedFolderChangeMembersPolicyType = this.f19455P3;
                SharedFolderChangeMembersPolicyType sharedFolderChangeMembersPolicyType2 = eventType.f19455P3;
                return sharedFolderChangeMembersPolicyType == sharedFolderChangeMembersPolicyType2 || sharedFolderChangeMembersPolicyType.equals(sharedFolderChangeMembersPolicyType2);
            case 250:
                SharedFolderCreateType sharedFolderCreateType = this.f19463Q3;
                SharedFolderCreateType sharedFolderCreateType2 = eventType.f19463Q3;
                return sharedFolderCreateType == sharedFolderCreateType2 || sharedFolderCreateType.equals(sharedFolderCreateType2);
            case 251:
                SharedFolderDeclineInvitationType sharedFolderDeclineInvitationType = this.f19471R3;
                SharedFolderDeclineInvitationType sharedFolderDeclineInvitationType2 = eventType.f19471R3;
                return sharedFolderDeclineInvitationType == sharedFolderDeclineInvitationType2 || sharedFolderDeclineInvitationType.equals(sharedFolderDeclineInvitationType2);
            case 252:
                SharedFolderMountType sharedFolderMountType = this.f19479S3;
                SharedFolderMountType sharedFolderMountType2 = eventType.f19479S3;
                return sharedFolderMountType == sharedFolderMountType2 || sharedFolderMountType.equals(sharedFolderMountType2);
            case 253:
                SharedFolderNestType sharedFolderNestType = this.f19487T3;
                SharedFolderNestType sharedFolderNestType2 = eventType.f19487T3;
                return sharedFolderNestType == sharedFolderNestType2 || sharedFolderNestType.equals(sharedFolderNestType2);
            case 254:
                SharedFolderTransferOwnershipType sharedFolderTransferOwnershipType = this.f19495U3;
                SharedFolderTransferOwnershipType sharedFolderTransferOwnershipType2 = eventType.f19495U3;
                return sharedFolderTransferOwnershipType == sharedFolderTransferOwnershipType2 || sharedFolderTransferOwnershipType.equals(sharedFolderTransferOwnershipType2);
            case 255:
                SharedFolderUnmountType sharedFolderUnmountType = this.f19503V3;
                SharedFolderUnmountType sharedFolderUnmountType2 = eventType.f19503V3;
                return sharedFolderUnmountType == sharedFolderUnmountType2 || sharedFolderUnmountType.equals(sharedFolderUnmountType2);
            case 256:
                SharedLinkAddExpiryType sharedLinkAddExpiryType = this.f19511W3;
                SharedLinkAddExpiryType sharedLinkAddExpiryType2 = eventType.f19511W3;
                return sharedLinkAddExpiryType == sharedLinkAddExpiryType2 || sharedLinkAddExpiryType.equals(sharedLinkAddExpiryType2);
            case 257:
                SharedLinkChangeExpiryType sharedLinkChangeExpiryType = this.f19519X3;
                SharedLinkChangeExpiryType sharedLinkChangeExpiryType2 = eventType.f19519X3;
                return sharedLinkChangeExpiryType == sharedLinkChangeExpiryType2 || sharedLinkChangeExpiryType.equals(sharedLinkChangeExpiryType2);
            case 258:
                SharedLinkChangeVisibilityType sharedLinkChangeVisibilityType = this.f19527Y3;
                SharedLinkChangeVisibilityType sharedLinkChangeVisibilityType2 = eventType.f19527Y3;
                return sharedLinkChangeVisibilityType == sharedLinkChangeVisibilityType2 || sharedLinkChangeVisibilityType.equals(sharedLinkChangeVisibilityType2);
            case 259:
                SharedLinkCopyType sharedLinkCopyType = this.f19535Z3;
                SharedLinkCopyType sharedLinkCopyType2 = eventType.f19535Z3;
                return sharedLinkCopyType == sharedLinkCopyType2 || sharedLinkCopyType.equals(sharedLinkCopyType2);
            case DataBinderMapperImpl.f53157Z3 /* 260 */:
                SharedLinkCreateType sharedLinkCreateType = this.f19544a4;
                SharedLinkCreateType sharedLinkCreateType2 = eventType.f19544a4;
                return sharedLinkCreateType == sharedLinkCreateType2 || sharedLinkCreateType.equals(sharedLinkCreateType2);
            case 261:
                SharedLinkDisableType sharedLinkDisableType = this.f19553b4;
                SharedLinkDisableType sharedLinkDisableType2 = eventType.f19553b4;
                return sharedLinkDisableType == sharedLinkDisableType2 || sharedLinkDisableType.equals(sharedLinkDisableType2);
            case 262:
                SharedLinkDownloadType sharedLinkDownloadType = this.f19562c4;
                SharedLinkDownloadType sharedLinkDownloadType2 = eventType.f19562c4;
                return sharedLinkDownloadType == sharedLinkDownloadType2 || sharedLinkDownloadType.equals(sharedLinkDownloadType2);
            case 263:
                SharedLinkRemoveExpiryType sharedLinkRemoveExpiryType = this.f19571d4;
                SharedLinkRemoveExpiryType sharedLinkRemoveExpiryType2 = eventType.f19571d4;
                return sharedLinkRemoveExpiryType == sharedLinkRemoveExpiryType2 || sharedLinkRemoveExpiryType.equals(sharedLinkRemoveExpiryType2);
            case 264:
                SharedLinkSettingsAddExpirationType sharedLinkSettingsAddExpirationType = this.f19580e4;
                SharedLinkSettingsAddExpirationType sharedLinkSettingsAddExpirationType2 = eventType.f19580e4;
                return sharedLinkSettingsAddExpirationType == sharedLinkSettingsAddExpirationType2 || sharedLinkSettingsAddExpirationType.equals(sharedLinkSettingsAddExpirationType2);
            case 265:
                SharedLinkSettingsAddPasswordType sharedLinkSettingsAddPasswordType = this.f19589f4;
                SharedLinkSettingsAddPasswordType sharedLinkSettingsAddPasswordType2 = eventType.f19589f4;
                return sharedLinkSettingsAddPasswordType == sharedLinkSettingsAddPasswordType2 || sharedLinkSettingsAddPasswordType.equals(sharedLinkSettingsAddPasswordType2);
            case 266:
                SharedLinkSettingsAllowDownloadDisabledType sharedLinkSettingsAllowDownloadDisabledType = this.f19598g4;
                SharedLinkSettingsAllowDownloadDisabledType sharedLinkSettingsAllowDownloadDisabledType2 = eventType.f19598g4;
                return sharedLinkSettingsAllowDownloadDisabledType == sharedLinkSettingsAllowDownloadDisabledType2 || sharedLinkSettingsAllowDownloadDisabledType.equals(sharedLinkSettingsAllowDownloadDisabledType2);
            case DataBinderMapperImpl.f53206g4 /* 267 */:
                SharedLinkSettingsAllowDownloadEnabledType sharedLinkSettingsAllowDownloadEnabledType = this.f19607h4;
                SharedLinkSettingsAllowDownloadEnabledType sharedLinkSettingsAllowDownloadEnabledType2 = eventType.f19607h4;
                return sharedLinkSettingsAllowDownloadEnabledType == sharedLinkSettingsAllowDownloadEnabledType2 || sharedLinkSettingsAllowDownloadEnabledType.equals(sharedLinkSettingsAllowDownloadEnabledType2);
            case DataBinderMapperImpl.f53213h4 /* 268 */:
                SharedLinkSettingsChangeAudienceType sharedLinkSettingsChangeAudienceType = this.f19616i4;
                SharedLinkSettingsChangeAudienceType sharedLinkSettingsChangeAudienceType2 = eventType.f19616i4;
                return sharedLinkSettingsChangeAudienceType == sharedLinkSettingsChangeAudienceType2 || sharedLinkSettingsChangeAudienceType.equals(sharedLinkSettingsChangeAudienceType2);
            case 269:
                SharedLinkSettingsChangeExpirationType sharedLinkSettingsChangeExpirationType = this.f19625j4;
                SharedLinkSettingsChangeExpirationType sharedLinkSettingsChangeExpirationType2 = eventType.f19625j4;
                return sharedLinkSettingsChangeExpirationType == sharedLinkSettingsChangeExpirationType2 || sharedLinkSettingsChangeExpirationType.equals(sharedLinkSettingsChangeExpirationType2);
            case 270:
                SharedLinkSettingsChangePasswordType sharedLinkSettingsChangePasswordType = this.f19634k4;
                SharedLinkSettingsChangePasswordType sharedLinkSettingsChangePasswordType2 = eventType.f19634k4;
                return sharedLinkSettingsChangePasswordType == sharedLinkSettingsChangePasswordType2 || sharedLinkSettingsChangePasswordType.equals(sharedLinkSettingsChangePasswordType2);
            case 271:
                SharedLinkSettingsRemoveExpirationType sharedLinkSettingsRemoveExpirationType = this.f19643l4;
                SharedLinkSettingsRemoveExpirationType sharedLinkSettingsRemoveExpirationType2 = eventType.f19643l4;
                return sharedLinkSettingsRemoveExpirationType == sharedLinkSettingsRemoveExpirationType2 || sharedLinkSettingsRemoveExpirationType.equals(sharedLinkSettingsRemoveExpirationType2);
            case 272:
                SharedLinkSettingsRemovePasswordType sharedLinkSettingsRemovePasswordType = this.f19652m4;
                SharedLinkSettingsRemovePasswordType sharedLinkSettingsRemovePasswordType2 = eventType.f19652m4;
                return sharedLinkSettingsRemovePasswordType == sharedLinkSettingsRemovePasswordType2 || sharedLinkSettingsRemovePasswordType.equals(sharedLinkSettingsRemovePasswordType2);
            case 273:
                SharedLinkShareType sharedLinkShareType = this.f19661n4;
                SharedLinkShareType sharedLinkShareType2 = eventType.f19661n4;
                return sharedLinkShareType == sharedLinkShareType2 || sharedLinkShareType.equals(sharedLinkShareType2);
            case 274:
                SharedLinkViewType sharedLinkViewType = this.f19669o4;
                SharedLinkViewType sharedLinkViewType2 = eventType.f19669o4;
                return sharedLinkViewType == sharedLinkViewType2 || sharedLinkViewType.equals(sharedLinkViewType2);
            case DataBinderMapperImpl.f53262o4 /* 275 */:
                SharedNoteOpenedType sharedNoteOpenedType = this.f19677p4;
                SharedNoteOpenedType sharedNoteOpenedType2 = eventType.f19677p4;
                return sharedNoteOpenedType == sharedNoteOpenedType2 || sharedNoteOpenedType.equals(sharedNoteOpenedType2);
            case 276:
                ShmodelGroupShareType shmodelGroupShareType = this.f19685q4;
                ShmodelGroupShareType shmodelGroupShareType2 = eventType.f19685q4;
                return shmodelGroupShareType == shmodelGroupShareType2 || shmodelGroupShareType.equals(shmodelGroupShareType2);
            case 277:
                ShowcaseAccessGrantedType showcaseAccessGrantedType = this.f19693r4;
                ShowcaseAccessGrantedType showcaseAccessGrantedType2 = eventType.f19693r4;
                return showcaseAccessGrantedType == showcaseAccessGrantedType2 || showcaseAccessGrantedType.equals(showcaseAccessGrantedType2);
            case 278:
                ShowcaseAddMemberType showcaseAddMemberType = this.f19701s4;
                ShowcaseAddMemberType showcaseAddMemberType2 = eventType.f19701s4;
                return showcaseAddMemberType == showcaseAddMemberType2 || showcaseAddMemberType.equals(showcaseAddMemberType2);
            case 279:
                ShowcaseArchivedType showcaseArchivedType = this.f19709t4;
                ShowcaseArchivedType showcaseArchivedType2 = eventType.f19709t4;
                return showcaseArchivedType == showcaseArchivedType2 || showcaseArchivedType.equals(showcaseArchivedType2);
            case 280:
                ShowcaseCreatedType showcaseCreatedType = this.f19717u4;
                ShowcaseCreatedType showcaseCreatedType2 = eventType.f19717u4;
                return showcaseCreatedType == showcaseCreatedType2 || showcaseCreatedType.equals(showcaseCreatedType2);
            case 281:
                ShowcaseDeleteCommentType showcaseDeleteCommentType = this.f19725v4;
                ShowcaseDeleteCommentType showcaseDeleteCommentType2 = eventType.f19725v4;
                return showcaseDeleteCommentType == showcaseDeleteCommentType2 || showcaseDeleteCommentType.equals(showcaseDeleteCommentType2);
            case 282:
                ShowcaseEditedType showcaseEditedType = this.f19733w4;
                ShowcaseEditedType showcaseEditedType2 = eventType.f19733w4;
                return showcaseEditedType == showcaseEditedType2 || showcaseEditedType.equals(showcaseEditedType2);
            case 283:
                ShowcaseEditCommentType showcaseEditCommentType = this.f19741x4;
                ShowcaseEditCommentType showcaseEditCommentType2 = eventType.f19741x4;
                return showcaseEditCommentType == showcaseEditCommentType2 || showcaseEditCommentType.equals(showcaseEditCommentType2);
            case 284:
                ShowcaseFileAddedType showcaseFileAddedType = this.f19749y4;
                ShowcaseFileAddedType showcaseFileAddedType2 = eventType.f19749y4;
                return showcaseFileAddedType == showcaseFileAddedType2 || showcaseFileAddedType.equals(showcaseFileAddedType2);
            case 285:
                ShowcaseFileDownloadType showcaseFileDownloadType = this.f19757z4;
                ShowcaseFileDownloadType showcaseFileDownloadType2 = eventType.f19757z4;
                return showcaseFileDownloadType == showcaseFileDownloadType2 || showcaseFileDownloadType.equals(showcaseFileDownloadType2);
            case 286:
                ShowcaseFileRemovedType showcaseFileRemovedType = this.f19336A4;
                ShowcaseFileRemovedType showcaseFileRemovedType2 = eventType.f19336A4;
                return showcaseFileRemovedType == showcaseFileRemovedType2 || showcaseFileRemovedType.equals(showcaseFileRemovedType2);
            case 287:
                ShowcaseFileViewType showcaseFileViewType = this.f19344B4;
                ShowcaseFileViewType showcaseFileViewType2 = eventType.f19344B4;
                return showcaseFileViewType == showcaseFileViewType2 || showcaseFileViewType.equals(showcaseFileViewType2);
            case 288:
                ShowcasePermanentlyDeletedType showcasePermanentlyDeletedType = this.f19352C4;
                ShowcasePermanentlyDeletedType showcasePermanentlyDeletedType2 = eventType.f19352C4;
                return showcasePermanentlyDeletedType == showcasePermanentlyDeletedType2 || showcasePermanentlyDeletedType.equals(showcasePermanentlyDeletedType2);
            case 289:
                ShowcasePostCommentType showcasePostCommentType = this.f19360D4;
                ShowcasePostCommentType showcasePostCommentType2 = eventType.f19360D4;
                return showcasePostCommentType == showcasePostCommentType2 || showcasePostCommentType.equals(showcasePostCommentType2);
            case 290:
                ShowcaseRemoveMemberType showcaseRemoveMemberType = this.f19368E4;
                ShowcaseRemoveMemberType showcaseRemoveMemberType2 = eventType.f19368E4;
                return showcaseRemoveMemberType == showcaseRemoveMemberType2 || showcaseRemoveMemberType.equals(showcaseRemoveMemberType2);
            case 291:
                ShowcaseRenamedType showcaseRenamedType = this.f19376F4;
                ShowcaseRenamedType showcaseRenamedType2 = eventType.f19376F4;
                return showcaseRenamedType == showcaseRenamedType2 || showcaseRenamedType.equals(showcaseRenamedType2);
            case 292:
                ShowcaseRequestAccessType showcaseRequestAccessType = this.f19384G4;
                ShowcaseRequestAccessType showcaseRequestAccessType2 = eventType.f19384G4;
                return showcaseRequestAccessType == showcaseRequestAccessType2 || showcaseRequestAccessType.equals(showcaseRequestAccessType2);
            case 293:
                ShowcaseResolveCommentType showcaseResolveCommentType = this.f19392H4;
                ShowcaseResolveCommentType showcaseResolveCommentType2 = eventType.f19392H4;
                return showcaseResolveCommentType == showcaseResolveCommentType2 || showcaseResolveCommentType.equals(showcaseResolveCommentType2);
            case 294:
                ShowcaseRestoredType showcaseRestoredType = this.f19400I4;
                ShowcaseRestoredType showcaseRestoredType2 = eventType.f19400I4;
                return showcaseRestoredType == showcaseRestoredType2 || showcaseRestoredType.equals(showcaseRestoredType2);
            case DataBinderMapperImpl.f53046I4 /* 295 */:
                ShowcaseTrashedType showcaseTrashedType = this.f19408J4;
                ShowcaseTrashedType showcaseTrashedType2 = eventType.f19408J4;
                return showcaseTrashedType == showcaseTrashedType2 || showcaseTrashedType.equals(showcaseTrashedType2);
            case 296:
                ShowcaseTrashedDeprecatedType showcaseTrashedDeprecatedType = this.f19416K4;
                ShowcaseTrashedDeprecatedType showcaseTrashedDeprecatedType2 = eventType.f19416K4;
                return showcaseTrashedDeprecatedType == showcaseTrashedDeprecatedType2 || showcaseTrashedDeprecatedType.equals(showcaseTrashedDeprecatedType2);
            case 297:
                ShowcaseUnresolveCommentType showcaseUnresolveCommentType = this.f19424L4;
                ShowcaseUnresolveCommentType showcaseUnresolveCommentType2 = eventType.f19424L4;
                return showcaseUnresolveCommentType == showcaseUnresolveCommentType2 || showcaseUnresolveCommentType.equals(showcaseUnresolveCommentType2);
            case DataBinderMapperImpl.f53067L4 /* 298 */:
                ShowcaseUntrashedType showcaseUntrashedType = this.f19432M4;
                ShowcaseUntrashedType showcaseUntrashedType2 = eventType.f19432M4;
                return showcaseUntrashedType == showcaseUntrashedType2 || showcaseUntrashedType.equals(showcaseUntrashedType2);
            case 299:
                ShowcaseUntrashedDeprecatedType showcaseUntrashedDeprecatedType = this.f19440N4;
                ShowcaseUntrashedDeprecatedType showcaseUntrashedDeprecatedType2 = eventType.f19440N4;
                return showcaseUntrashedDeprecatedType == showcaseUntrashedDeprecatedType2 || showcaseUntrashedDeprecatedType.equals(showcaseUntrashedDeprecatedType2);
            case 300:
                ShowcaseViewType showcaseViewType = this.f19448O4;
                ShowcaseViewType showcaseViewType2 = eventType.f19448O4;
                return showcaseViewType == showcaseViewType2 || showcaseViewType.equals(showcaseViewType2);
            case 301:
                SsoAddCertType ssoAddCertType = this.f19456P4;
                SsoAddCertType ssoAddCertType2 = eventType.f19456P4;
                return ssoAddCertType == ssoAddCertType2 || ssoAddCertType.equals(ssoAddCertType2);
            case 302:
                SsoAddLoginUrlType ssoAddLoginUrlType = this.f19464Q4;
                SsoAddLoginUrlType ssoAddLoginUrlType2 = eventType.f19464Q4;
                return ssoAddLoginUrlType == ssoAddLoginUrlType2 || ssoAddLoginUrlType.equals(ssoAddLoginUrlType2);
            case 303:
                SsoAddLogoutUrlType ssoAddLogoutUrlType = this.f19472R4;
                SsoAddLogoutUrlType ssoAddLogoutUrlType2 = eventType.f19472R4;
                return ssoAddLogoutUrlType == ssoAddLogoutUrlType2 || ssoAddLogoutUrlType.equals(ssoAddLogoutUrlType2);
            case 304:
                SsoChangeCertType ssoChangeCertType = this.f19480S4;
                SsoChangeCertType ssoChangeCertType2 = eventType.f19480S4;
                return ssoChangeCertType == ssoChangeCertType2 || ssoChangeCertType.equals(ssoChangeCertType2);
            case 305:
                SsoChangeLoginUrlType ssoChangeLoginUrlType = this.f19488T4;
                SsoChangeLoginUrlType ssoChangeLoginUrlType2 = eventType.f19488T4;
                return ssoChangeLoginUrlType == ssoChangeLoginUrlType2 || ssoChangeLoginUrlType.equals(ssoChangeLoginUrlType2);
            case 306:
                SsoChangeLogoutUrlType ssoChangeLogoutUrlType = this.f19496U4;
                SsoChangeLogoutUrlType ssoChangeLogoutUrlType2 = eventType.f19496U4;
                return ssoChangeLogoutUrlType == ssoChangeLogoutUrlType2 || ssoChangeLogoutUrlType.equals(ssoChangeLogoutUrlType2);
            case 307:
                SsoChangeSamlIdentityModeType ssoChangeSamlIdentityModeType = this.f19504V4;
                SsoChangeSamlIdentityModeType ssoChangeSamlIdentityModeType2 = eventType.f19504V4;
                return ssoChangeSamlIdentityModeType == ssoChangeSamlIdentityModeType2 || ssoChangeSamlIdentityModeType.equals(ssoChangeSamlIdentityModeType2);
            case 308:
                SsoRemoveCertType ssoRemoveCertType = this.f19512W4;
                SsoRemoveCertType ssoRemoveCertType2 = eventType.f19512W4;
                return ssoRemoveCertType == ssoRemoveCertType2 || ssoRemoveCertType.equals(ssoRemoveCertType2);
            case 309:
                SsoRemoveLoginUrlType ssoRemoveLoginUrlType = this.f19520X4;
                SsoRemoveLoginUrlType ssoRemoveLoginUrlType2 = eventType.f19520X4;
                return ssoRemoveLoginUrlType == ssoRemoveLoginUrlType2 || ssoRemoveLoginUrlType.equals(ssoRemoveLoginUrlType2);
            case 310:
                SsoRemoveLogoutUrlType ssoRemoveLogoutUrlType = this.f19528Y4;
                SsoRemoveLogoutUrlType ssoRemoveLogoutUrlType2 = eventType.f19528Y4;
                return ssoRemoveLogoutUrlType == ssoRemoveLogoutUrlType2 || ssoRemoveLogoutUrlType.equals(ssoRemoveLogoutUrlType2);
            case 311:
                TeamFolderChangeStatusType teamFolderChangeStatusType = this.f19536Z4;
                TeamFolderChangeStatusType teamFolderChangeStatusType2 = eventType.f19536Z4;
                return teamFolderChangeStatusType == teamFolderChangeStatusType2 || teamFolderChangeStatusType.equals(teamFolderChangeStatusType2);
            case 312:
                TeamFolderCreateType teamFolderCreateType = this.f19545a5;
                TeamFolderCreateType teamFolderCreateType2 = eventType.f19545a5;
                return teamFolderCreateType == teamFolderCreateType2 || teamFolderCreateType.equals(teamFolderCreateType2);
            case 313:
                TeamFolderDowngradeType teamFolderDowngradeType = this.f19554b5;
                TeamFolderDowngradeType teamFolderDowngradeType2 = eventType.f19554b5;
                return teamFolderDowngradeType == teamFolderDowngradeType2 || teamFolderDowngradeType.equals(teamFolderDowngradeType2);
            case 314:
                TeamFolderPermanentlyDeleteType teamFolderPermanentlyDeleteType = this.f19563c5;
                TeamFolderPermanentlyDeleteType teamFolderPermanentlyDeleteType2 = eventType.f19563c5;
                return teamFolderPermanentlyDeleteType == teamFolderPermanentlyDeleteType2 || teamFolderPermanentlyDeleteType.equals(teamFolderPermanentlyDeleteType2);
            case 315:
                TeamFolderRenameType teamFolderRenameType = this.f19572d5;
                TeamFolderRenameType teamFolderRenameType2 = eventType.f19572d5;
                return teamFolderRenameType == teamFolderRenameType2 || teamFolderRenameType.equals(teamFolderRenameType2);
            case 316:
                TeamSelectiveSyncSettingsChangedType teamSelectiveSyncSettingsChangedType = this.f19581e5;
                TeamSelectiveSyncSettingsChangedType teamSelectiveSyncSettingsChangedType2 = eventType.f19581e5;
                return teamSelectiveSyncSettingsChangedType == teamSelectiveSyncSettingsChangedType2 || teamSelectiveSyncSettingsChangedType.equals(teamSelectiveSyncSettingsChangedType2);
            case 317:
                AccountCaptureChangePolicyType accountCaptureChangePolicyType = this.f19590f5;
                AccountCaptureChangePolicyType accountCaptureChangePolicyType2 = eventType.f19590f5;
                return accountCaptureChangePolicyType == accountCaptureChangePolicyType2 || accountCaptureChangePolicyType.equals(accountCaptureChangePolicyType2);
            case 318:
                AllowDownloadDisabledType allowDownloadDisabledType = this.f19599g5;
                AllowDownloadDisabledType allowDownloadDisabledType2 = eventType.f19599g5;
                return allowDownloadDisabledType == allowDownloadDisabledType2 || allowDownloadDisabledType.equals(allowDownloadDisabledType2);
            case 319:
                AllowDownloadEnabledType allowDownloadEnabledType = this.f19608h5;
                AllowDownloadEnabledType allowDownloadEnabledType2 = eventType.f19608h5;
                return allowDownloadEnabledType == allowDownloadEnabledType2 || allowDownloadEnabledType.equals(allowDownloadEnabledType2);
            case 320:
                CameraUploadsPolicyChangedType cameraUploadsPolicyChangedType = this.f19617i5;
                CameraUploadsPolicyChangedType cameraUploadsPolicyChangedType2 = eventType.f19617i5;
                return cameraUploadsPolicyChangedType == cameraUploadsPolicyChangedType2 || cameraUploadsPolicyChangedType.equals(cameraUploadsPolicyChangedType2);
            case 321:
                ContentAdministrationPolicyChangedType contentAdministrationPolicyChangedType = this.f19626j5;
                ContentAdministrationPolicyChangedType contentAdministrationPolicyChangedType2 = eventType.f19626j5;
                return contentAdministrationPolicyChangedType == contentAdministrationPolicyChangedType2 || contentAdministrationPolicyChangedType.equals(contentAdministrationPolicyChangedType2);
            case 322:
                DataPlacementRestrictionChangePolicyType dataPlacementRestrictionChangePolicyType = this.f19635k5;
                DataPlacementRestrictionChangePolicyType dataPlacementRestrictionChangePolicyType2 = eventType.f19635k5;
                return dataPlacementRestrictionChangePolicyType == dataPlacementRestrictionChangePolicyType2 || dataPlacementRestrictionChangePolicyType.equals(dataPlacementRestrictionChangePolicyType2);
            case 323:
                DataPlacementRestrictionSatisfyPolicyType dataPlacementRestrictionSatisfyPolicyType = this.f19644l5;
                DataPlacementRestrictionSatisfyPolicyType dataPlacementRestrictionSatisfyPolicyType2 = eventType.f19644l5;
                return dataPlacementRestrictionSatisfyPolicyType == dataPlacementRestrictionSatisfyPolicyType2 || dataPlacementRestrictionSatisfyPolicyType.equals(dataPlacementRestrictionSatisfyPolicyType2);
            case 324:
                DeviceApprovalsAddExceptionType deviceApprovalsAddExceptionType = this.f19653m5;
                DeviceApprovalsAddExceptionType deviceApprovalsAddExceptionType2 = eventType.f19653m5;
                return deviceApprovalsAddExceptionType == deviceApprovalsAddExceptionType2 || deviceApprovalsAddExceptionType.equals(deviceApprovalsAddExceptionType2);
            case 325:
                DeviceApprovalsChangeDesktopPolicyType deviceApprovalsChangeDesktopPolicyType = this.f19662n5;
                DeviceApprovalsChangeDesktopPolicyType deviceApprovalsChangeDesktopPolicyType2 = eventType.f19662n5;
                return deviceApprovalsChangeDesktopPolicyType == deviceApprovalsChangeDesktopPolicyType2 || deviceApprovalsChangeDesktopPolicyType.equals(deviceApprovalsChangeDesktopPolicyType2);
            case 326:
                DeviceApprovalsChangeMobilePolicyType deviceApprovalsChangeMobilePolicyType = this.f19670o5;
                DeviceApprovalsChangeMobilePolicyType deviceApprovalsChangeMobilePolicyType2 = eventType.f19670o5;
                return deviceApprovalsChangeMobilePolicyType == deviceApprovalsChangeMobilePolicyType2 || deviceApprovalsChangeMobilePolicyType.equals(deviceApprovalsChangeMobilePolicyType2);
            case 327:
                DeviceApprovalsChangeOverageActionType deviceApprovalsChangeOverageActionType = this.f19678p5;
                DeviceApprovalsChangeOverageActionType deviceApprovalsChangeOverageActionType2 = eventType.f19678p5;
                return deviceApprovalsChangeOverageActionType == deviceApprovalsChangeOverageActionType2 || deviceApprovalsChangeOverageActionType.equals(deviceApprovalsChangeOverageActionType2);
            case 328:
                DeviceApprovalsChangeUnlinkActionType deviceApprovalsChangeUnlinkActionType = this.f19686q5;
                DeviceApprovalsChangeUnlinkActionType deviceApprovalsChangeUnlinkActionType2 = eventType.f19686q5;
                return deviceApprovalsChangeUnlinkActionType == deviceApprovalsChangeUnlinkActionType2 || deviceApprovalsChangeUnlinkActionType.equals(deviceApprovalsChangeUnlinkActionType2);
            case DataBinderMapperImpl.f53277q5 /* 329 */:
                DeviceApprovalsRemoveExceptionType deviceApprovalsRemoveExceptionType = this.f19694r5;
                DeviceApprovalsRemoveExceptionType deviceApprovalsRemoveExceptionType2 = eventType.f19694r5;
                return deviceApprovalsRemoveExceptionType == deviceApprovalsRemoveExceptionType2 || deviceApprovalsRemoveExceptionType.equals(deviceApprovalsRemoveExceptionType2);
            case 330:
                DirectoryRestrictionsAddMembersType directoryRestrictionsAddMembersType = this.f19702s5;
                DirectoryRestrictionsAddMembersType directoryRestrictionsAddMembersType2 = eventType.f19702s5;
                return directoryRestrictionsAddMembersType == directoryRestrictionsAddMembersType2 || directoryRestrictionsAddMembersType.equals(directoryRestrictionsAddMembersType2);
            case DataBinderMapperImpl.f53291s5 /* 331 */:
                DirectoryRestrictionsRemoveMembersType directoryRestrictionsRemoveMembersType = this.f19710t5;
                DirectoryRestrictionsRemoveMembersType directoryRestrictionsRemoveMembersType2 = eventType.f19710t5;
                return directoryRestrictionsRemoveMembersType == directoryRestrictionsRemoveMembersType2 || directoryRestrictionsRemoveMembersType.equals(directoryRestrictionsRemoveMembersType2);
            case 332:
                EmmAddExceptionType emmAddExceptionType = this.f19718u5;
                EmmAddExceptionType emmAddExceptionType2 = eventType.f19718u5;
                return emmAddExceptionType == emmAddExceptionType2 || emmAddExceptionType.equals(emmAddExceptionType2);
            case 333:
                EmmChangePolicyType emmChangePolicyType = this.f19726v5;
                EmmChangePolicyType emmChangePolicyType2 = eventType.f19726v5;
                return emmChangePolicyType == emmChangePolicyType2 || emmChangePolicyType.equals(emmChangePolicyType2);
            case 334:
                EmmRemoveExceptionType emmRemoveExceptionType = this.f19734w5;
                EmmRemoveExceptionType emmRemoveExceptionType2 = eventType.f19734w5;
                return emmRemoveExceptionType == emmRemoveExceptionType2 || emmRemoveExceptionType.equals(emmRemoveExceptionType2);
            case DataBinderMapperImpl.f53319w5 /* 335 */:
                ExtendedVersionHistoryChangePolicyType extendedVersionHistoryChangePolicyType = this.f19742x5;
                ExtendedVersionHistoryChangePolicyType extendedVersionHistoryChangePolicyType2 = eventType.f19742x5;
                return extendedVersionHistoryChangePolicyType == extendedVersionHistoryChangePolicyType2 || extendedVersionHistoryChangePolicyType.equals(extendedVersionHistoryChangePolicyType2);
            case 336:
                FileCommentsChangePolicyType fileCommentsChangePolicyType = this.f19750y5;
                FileCommentsChangePolicyType fileCommentsChangePolicyType2 = eventType.f19750y5;
                return fileCommentsChangePolicyType == fileCommentsChangePolicyType2 || fileCommentsChangePolicyType.equals(fileCommentsChangePolicyType2);
            case 337:
                FileLockingPolicyChangedType fileLockingPolicyChangedType = this.f19758z5;
                FileLockingPolicyChangedType fileLockingPolicyChangedType2 = eventType.f19758z5;
                return fileLockingPolicyChangedType == fileLockingPolicyChangedType2 || fileLockingPolicyChangedType.equals(fileLockingPolicyChangedType2);
            case 338:
                FileRequestsChangePolicyType fileRequestsChangePolicyType = this.f19337A5;
                FileRequestsChangePolicyType fileRequestsChangePolicyType2 = eventType.f19337A5;
                return fileRequestsChangePolicyType == fileRequestsChangePolicyType2 || fileRequestsChangePolicyType.equals(fileRequestsChangePolicyType2);
            case 339:
                FileRequestsEmailsEnabledType fileRequestsEmailsEnabledType = this.f19345B5;
                FileRequestsEmailsEnabledType fileRequestsEmailsEnabledType2 = eventType.f19345B5;
                return fileRequestsEmailsEnabledType == fileRequestsEmailsEnabledType2 || fileRequestsEmailsEnabledType.equals(fileRequestsEmailsEnabledType2);
            case 340:
                FileRequestsEmailsRestrictedToTeamOnlyType fileRequestsEmailsRestrictedToTeamOnlyType = this.f19353C5;
                FileRequestsEmailsRestrictedToTeamOnlyType fileRequestsEmailsRestrictedToTeamOnlyType2 = eventType.f19353C5;
                return fileRequestsEmailsRestrictedToTeamOnlyType == fileRequestsEmailsRestrictedToTeamOnlyType2 || fileRequestsEmailsRestrictedToTeamOnlyType.equals(fileRequestsEmailsRestrictedToTeamOnlyType2);
            case 341:
                FileTransfersPolicyChangedType fileTransfersPolicyChangedType = this.f19361D5;
                FileTransfersPolicyChangedType fileTransfersPolicyChangedType2 = eventType.f19361D5;
                return fileTransfersPolicyChangedType == fileTransfersPolicyChangedType2 || fileTransfersPolicyChangedType.equals(fileTransfersPolicyChangedType2);
            case 342:
                GoogleSsoChangePolicyType googleSsoChangePolicyType = this.f19369E5;
                GoogleSsoChangePolicyType googleSsoChangePolicyType2 = eventType.f19369E5;
                return googleSsoChangePolicyType == googleSsoChangePolicyType2 || googleSsoChangePolicyType.equals(googleSsoChangePolicyType2);
            case DataBinderMapperImpl.f53019E5 /* 343 */:
                GroupUserManagementChangePolicyType groupUserManagementChangePolicyType = this.f19377F5;
                GroupUserManagementChangePolicyType groupUserManagementChangePolicyType2 = eventType.f19377F5;
                return groupUserManagementChangePolicyType == groupUserManagementChangePolicyType2 || groupUserManagementChangePolicyType.equals(groupUserManagementChangePolicyType2);
            case DataBinderMapperImpl.f53026F5 /* 344 */:
                IntegrationPolicyChangedType integrationPolicyChangedType = this.f19385G5;
                IntegrationPolicyChangedType integrationPolicyChangedType2 = eventType.f19385G5;
                return integrationPolicyChangedType == integrationPolicyChangedType2 || integrationPolicyChangedType.equals(integrationPolicyChangedType2);
            case 345:
                MemberRequestsChangePolicyType memberRequestsChangePolicyType = this.f19393H5;
                MemberRequestsChangePolicyType memberRequestsChangePolicyType2 = eventType.f19393H5;
                return memberRequestsChangePolicyType == memberRequestsChangePolicyType2 || memberRequestsChangePolicyType.equals(memberRequestsChangePolicyType2);
            case 346:
                MemberSendInvitePolicyChangedType memberSendInvitePolicyChangedType = this.f19401I5;
                MemberSendInvitePolicyChangedType memberSendInvitePolicyChangedType2 = eventType.f19401I5;
                return memberSendInvitePolicyChangedType == memberSendInvitePolicyChangedType2 || memberSendInvitePolicyChangedType.equals(memberSendInvitePolicyChangedType2);
            case 347:
                MemberSpaceLimitsAddExceptionType memberSpaceLimitsAddExceptionType = this.f19409J5;
                MemberSpaceLimitsAddExceptionType memberSpaceLimitsAddExceptionType2 = eventType.f19409J5;
                return memberSpaceLimitsAddExceptionType == memberSpaceLimitsAddExceptionType2 || memberSpaceLimitsAddExceptionType.equals(memberSpaceLimitsAddExceptionType2);
            case DataBinderMapperImpl.f53054J5 /* 348 */:
                MemberSpaceLimitsChangeCapsTypePolicyType memberSpaceLimitsChangeCapsTypePolicyType = this.f19417K5;
                MemberSpaceLimitsChangeCapsTypePolicyType memberSpaceLimitsChangeCapsTypePolicyType2 = eventType.f19417K5;
                return memberSpaceLimitsChangeCapsTypePolicyType == memberSpaceLimitsChangeCapsTypePolicyType2 || memberSpaceLimitsChangeCapsTypePolicyType.equals(memberSpaceLimitsChangeCapsTypePolicyType2);
            case DataBinderMapperImpl.f53061K5 /* 349 */:
                MemberSpaceLimitsChangePolicyType memberSpaceLimitsChangePolicyType = this.f19425L5;
                MemberSpaceLimitsChangePolicyType memberSpaceLimitsChangePolicyType2 = eventType.f19425L5;
                return memberSpaceLimitsChangePolicyType == memberSpaceLimitsChangePolicyType2 || memberSpaceLimitsChangePolicyType.equals(memberSpaceLimitsChangePolicyType2);
            case DataBinderMapperImpl.f53068L5 /* 350 */:
                MemberSpaceLimitsRemoveExceptionType memberSpaceLimitsRemoveExceptionType = this.f19433M5;
                MemberSpaceLimitsRemoveExceptionType memberSpaceLimitsRemoveExceptionType2 = eventType.f19433M5;
                return memberSpaceLimitsRemoveExceptionType == memberSpaceLimitsRemoveExceptionType2 || memberSpaceLimitsRemoveExceptionType.equals(memberSpaceLimitsRemoveExceptionType2);
            case 351:
                MemberSuggestionsChangePolicyType memberSuggestionsChangePolicyType = this.f19441N5;
                MemberSuggestionsChangePolicyType memberSuggestionsChangePolicyType2 = eventType.f19441N5;
                return memberSuggestionsChangePolicyType == memberSuggestionsChangePolicyType2 || memberSuggestionsChangePolicyType.equals(memberSuggestionsChangePolicyType2);
            case DataBinderMapperImpl.f53082N5 /* 352 */:
                MicrosoftOfficeAddinChangePolicyType microsoftOfficeAddinChangePolicyType = this.f19449O5;
                MicrosoftOfficeAddinChangePolicyType microsoftOfficeAddinChangePolicyType2 = eventType.f19449O5;
                return microsoftOfficeAddinChangePolicyType == microsoftOfficeAddinChangePolicyType2 || microsoftOfficeAddinChangePolicyType.equals(microsoftOfficeAddinChangePolicyType2);
            case DataBinderMapperImpl.f53089O5 /* 353 */:
                NetworkControlChangePolicyType networkControlChangePolicyType = this.f19457P5;
                NetworkControlChangePolicyType networkControlChangePolicyType2 = eventType.f19457P5;
                return networkControlChangePolicyType == networkControlChangePolicyType2 || networkControlChangePolicyType.equals(networkControlChangePolicyType2);
            case DataBinderMapperImpl.f53096P5 /* 354 */:
                PaperChangeDeploymentPolicyType paperChangeDeploymentPolicyType = this.f19465Q5;
                PaperChangeDeploymentPolicyType paperChangeDeploymentPolicyType2 = eventType.f19465Q5;
                return paperChangeDeploymentPolicyType == paperChangeDeploymentPolicyType2 || paperChangeDeploymentPolicyType.equals(paperChangeDeploymentPolicyType2);
            case DataBinderMapperImpl.f53103Q5 /* 355 */:
                PaperChangeMemberLinkPolicyType paperChangeMemberLinkPolicyType = this.f19473R5;
                PaperChangeMemberLinkPolicyType paperChangeMemberLinkPolicyType2 = eventType.f19473R5;
                return paperChangeMemberLinkPolicyType == paperChangeMemberLinkPolicyType2 || paperChangeMemberLinkPolicyType.equals(paperChangeMemberLinkPolicyType2);
            case 356:
                PaperChangeMemberPolicyType paperChangeMemberPolicyType = this.f19481S5;
                PaperChangeMemberPolicyType paperChangeMemberPolicyType2 = eventType.f19481S5;
                return paperChangeMemberPolicyType == paperChangeMemberPolicyType2 || paperChangeMemberPolicyType.equals(paperChangeMemberPolicyType2);
            case 357:
                PaperChangePolicyType paperChangePolicyType = this.f19489T5;
                PaperChangePolicyType paperChangePolicyType2 = eventType.f19489T5;
                return paperChangePolicyType == paperChangePolicyType2 || paperChangePolicyType.equals(paperChangePolicyType2);
            case 358:
                PaperDefaultFolderPolicyChangedType paperDefaultFolderPolicyChangedType = this.f19497U5;
                PaperDefaultFolderPolicyChangedType paperDefaultFolderPolicyChangedType2 = eventType.f19497U5;
                return paperDefaultFolderPolicyChangedType == paperDefaultFolderPolicyChangedType2 || paperDefaultFolderPolicyChangedType.equals(paperDefaultFolderPolicyChangedType2);
            case 359:
                PaperDesktopPolicyChangedType paperDesktopPolicyChangedType = this.f19505V5;
                PaperDesktopPolicyChangedType paperDesktopPolicyChangedType2 = eventType.f19505V5;
                return paperDesktopPolicyChangedType == paperDesktopPolicyChangedType2 || paperDesktopPolicyChangedType.equals(paperDesktopPolicyChangedType2);
            case 360:
                PaperEnabledUsersGroupAdditionType paperEnabledUsersGroupAdditionType = this.f19513W5;
                PaperEnabledUsersGroupAdditionType paperEnabledUsersGroupAdditionType2 = eventType.f19513W5;
                return paperEnabledUsersGroupAdditionType == paperEnabledUsersGroupAdditionType2 || paperEnabledUsersGroupAdditionType.equals(paperEnabledUsersGroupAdditionType2);
            case 361:
                PaperEnabledUsersGroupRemovalType paperEnabledUsersGroupRemovalType = this.f19521X5;
                PaperEnabledUsersGroupRemovalType paperEnabledUsersGroupRemovalType2 = eventType.f19521X5;
                return paperEnabledUsersGroupRemovalType == paperEnabledUsersGroupRemovalType2 || paperEnabledUsersGroupRemovalType.equals(paperEnabledUsersGroupRemovalType2);
            case 362:
                PasswordStrengthRequirementsChangePolicyType passwordStrengthRequirementsChangePolicyType = this.f19529Y5;
                PasswordStrengthRequirementsChangePolicyType passwordStrengthRequirementsChangePolicyType2 = eventType.f19529Y5;
                return passwordStrengthRequirementsChangePolicyType == passwordStrengthRequirementsChangePolicyType2 || passwordStrengthRequirementsChangePolicyType.equals(passwordStrengthRequirementsChangePolicyType2);
            case 363:
                PermanentDeleteChangePolicyType permanentDeleteChangePolicyType = this.f19537Z5;
                PermanentDeleteChangePolicyType permanentDeleteChangePolicyType2 = eventType.f19537Z5;
                return permanentDeleteChangePolicyType == permanentDeleteChangePolicyType2 || permanentDeleteChangePolicyType.equals(permanentDeleteChangePolicyType2);
            case 364:
                ResellerSupportChangePolicyType resellerSupportChangePolicyType = this.f19546a6;
                ResellerSupportChangePolicyType resellerSupportChangePolicyType2 = eventType.f19546a6;
                return resellerSupportChangePolicyType == resellerSupportChangePolicyType2 || resellerSupportChangePolicyType.equals(resellerSupportChangePolicyType2);
            case 365:
                RewindPolicyChangedType rewindPolicyChangedType = this.f19555b6;
                RewindPolicyChangedType rewindPolicyChangedType2 = eventType.f19555b6;
                return rewindPolicyChangedType == rewindPolicyChangedType2 || rewindPolicyChangedType.equals(rewindPolicyChangedType2);
            case 366:
                SendForSignaturePolicyChangedType sendForSignaturePolicyChangedType = this.f19564c6;
                SendForSignaturePolicyChangedType sendForSignaturePolicyChangedType2 = eventType.f19564c6;
                return sendForSignaturePolicyChangedType == sendForSignaturePolicyChangedType2 || sendForSignaturePolicyChangedType.equals(sendForSignaturePolicyChangedType2);
            case 367:
                SharingChangeFolderJoinPolicyType sharingChangeFolderJoinPolicyType = this.f19573d6;
                SharingChangeFolderJoinPolicyType sharingChangeFolderJoinPolicyType2 = eventType.f19573d6;
                return sharingChangeFolderJoinPolicyType == sharingChangeFolderJoinPolicyType2 || sharingChangeFolderJoinPolicyType.equals(sharingChangeFolderJoinPolicyType2);
            case 368:
                SharingChangeLinkPolicyType sharingChangeLinkPolicyType = this.f19582e6;
                SharingChangeLinkPolicyType sharingChangeLinkPolicyType2 = eventType.f19582e6;
                return sharingChangeLinkPolicyType == sharingChangeLinkPolicyType2 || sharingChangeLinkPolicyType.equals(sharingChangeLinkPolicyType2);
            case 369:
                SharingChangeMemberPolicyType sharingChangeMemberPolicyType = this.f19591f6;
                SharingChangeMemberPolicyType sharingChangeMemberPolicyType2 = eventType.f19591f6;
                return sharingChangeMemberPolicyType == sharingChangeMemberPolicyType2 || sharingChangeMemberPolicyType.equals(sharingChangeMemberPolicyType2);
            case 370:
                ShowcaseChangeDownloadPolicyType showcaseChangeDownloadPolicyType = this.f19600g6;
                ShowcaseChangeDownloadPolicyType showcaseChangeDownloadPolicyType2 = eventType.f19600g6;
                return showcaseChangeDownloadPolicyType == showcaseChangeDownloadPolicyType2 || showcaseChangeDownloadPolicyType.equals(showcaseChangeDownloadPolicyType2);
            case 371:
                ShowcaseChangeEnabledPolicyType showcaseChangeEnabledPolicyType = this.f19609h6;
                ShowcaseChangeEnabledPolicyType showcaseChangeEnabledPolicyType2 = eventType.f19609h6;
                return showcaseChangeEnabledPolicyType == showcaseChangeEnabledPolicyType2 || showcaseChangeEnabledPolicyType.equals(showcaseChangeEnabledPolicyType2);
            case 372:
                ShowcaseChangeExternalSharingPolicyType showcaseChangeExternalSharingPolicyType = this.f19618i6;
                ShowcaseChangeExternalSharingPolicyType showcaseChangeExternalSharingPolicyType2 = eventType.f19618i6;
                return showcaseChangeExternalSharingPolicyType == showcaseChangeExternalSharingPolicyType2 || showcaseChangeExternalSharingPolicyType.equals(showcaseChangeExternalSharingPolicyType2);
            case 373:
                SmarterSmartSyncPolicyChangedType smarterSmartSyncPolicyChangedType = this.f19627j6;
                SmarterSmartSyncPolicyChangedType smarterSmartSyncPolicyChangedType2 = eventType.f19627j6;
                return smarterSmartSyncPolicyChangedType == smarterSmartSyncPolicyChangedType2 || smarterSmartSyncPolicyChangedType.equals(smarterSmartSyncPolicyChangedType2);
            case 374:
                SmartSyncChangePolicyType smartSyncChangePolicyType = this.f19636k6;
                SmartSyncChangePolicyType smartSyncChangePolicyType2 = eventType.f19636k6;
                return smartSyncChangePolicyType == smartSyncChangePolicyType2 || smartSyncChangePolicyType.equals(smartSyncChangePolicyType2);
            case 375:
                SmartSyncNotOptOutType smartSyncNotOptOutType = this.f19645l6;
                SmartSyncNotOptOutType smartSyncNotOptOutType2 = eventType.f19645l6;
                return smartSyncNotOptOutType == smartSyncNotOptOutType2 || smartSyncNotOptOutType.equals(smartSyncNotOptOutType2);
            case 376:
                SmartSyncOptOutType smartSyncOptOutType = this.f19654m6;
                SmartSyncOptOutType smartSyncOptOutType2 = eventType.f19654m6;
                return smartSyncOptOutType == smartSyncOptOutType2 || smartSyncOptOutType.equals(smartSyncOptOutType2);
            case 377:
                SsoChangePolicyType ssoChangePolicyType = this.f19663n6;
                SsoChangePolicyType ssoChangePolicyType2 = eventType.f19663n6;
                return ssoChangePolicyType == ssoChangePolicyType2 || ssoChangePolicyType.equals(ssoChangePolicyType2);
            case 378:
                TeamExtensionsPolicyChangedType teamExtensionsPolicyChangedType = this.f19671o6;
                TeamExtensionsPolicyChangedType teamExtensionsPolicyChangedType2 = eventType.f19671o6;
                return teamExtensionsPolicyChangedType == teamExtensionsPolicyChangedType2 || teamExtensionsPolicyChangedType.equals(teamExtensionsPolicyChangedType2);
            case 379:
                TeamSelectiveSyncPolicyChangedType teamSelectiveSyncPolicyChangedType = this.f19679p6;
                TeamSelectiveSyncPolicyChangedType teamSelectiveSyncPolicyChangedType2 = eventType.f19679p6;
                return teamSelectiveSyncPolicyChangedType == teamSelectiveSyncPolicyChangedType2 || teamSelectiveSyncPolicyChangedType.equals(teamSelectiveSyncPolicyChangedType2);
            case 380:
                TeamSharingWhitelistSubjectsChangedType teamSharingWhitelistSubjectsChangedType = this.f19687q6;
                TeamSharingWhitelistSubjectsChangedType teamSharingWhitelistSubjectsChangedType2 = eventType.f19687q6;
                return teamSharingWhitelistSubjectsChangedType == teamSharingWhitelistSubjectsChangedType2 || teamSharingWhitelistSubjectsChangedType.equals(teamSharingWhitelistSubjectsChangedType2);
            case 381:
                TfaAddExceptionType tfaAddExceptionType = this.f19695r6;
                TfaAddExceptionType tfaAddExceptionType2 = eventType.f19695r6;
                return tfaAddExceptionType == tfaAddExceptionType2 || tfaAddExceptionType.equals(tfaAddExceptionType2);
            case 382:
                TfaChangePolicyType tfaChangePolicyType = this.f19703s6;
                TfaChangePolicyType tfaChangePolicyType2 = eventType.f19703s6;
                return tfaChangePolicyType == tfaChangePolicyType2 || tfaChangePolicyType.equals(tfaChangePolicyType2);
            case 383:
                TfaRemoveExceptionType tfaRemoveExceptionType = this.f19711t6;
                TfaRemoveExceptionType tfaRemoveExceptionType2 = eventType.f19711t6;
                return tfaRemoveExceptionType == tfaRemoveExceptionType2 || tfaRemoveExceptionType.equals(tfaRemoveExceptionType2);
            case 384:
                TwoAccountChangePolicyType twoAccountChangePolicyType = this.f19719u6;
                TwoAccountChangePolicyType twoAccountChangePolicyType2 = eventType.f19719u6;
                return twoAccountChangePolicyType == twoAccountChangePolicyType2 || twoAccountChangePolicyType.equals(twoAccountChangePolicyType2);
            case StandardNames.XML_BASE /* 385 */:
                ViewerInfoPolicyChangedType viewerInfoPolicyChangedType = this.f19727v6;
                ViewerInfoPolicyChangedType viewerInfoPolicyChangedType2 = eventType.f19727v6;
                return viewerInfoPolicyChangedType == viewerInfoPolicyChangedType2 || viewerInfoPolicyChangedType.equals(viewerInfoPolicyChangedType2);
            case StandardNames.XML_SPACE /* 386 */:
                WatermarkingPolicyChangedType watermarkingPolicyChangedType = this.f19735w6;
                WatermarkingPolicyChangedType watermarkingPolicyChangedType2 = eventType.f19735w6;
                return watermarkingPolicyChangedType == watermarkingPolicyChangedType2 || watermarkingPolicyChangedType.equals(watermarkingPolicyChangedType2);
            case StandardNames.XML_LANG /* 387 */:
                WebSessionsChangeActiveSessionLimitType webSessionsChangeActiveSessionLimitType = this.f19743x6;
                WebSessionsChangeActiveSessionLimitType webSessionsChangeActiveSessionLimitType2 = eventType.f19743x6;
                return webSessionsChangeActiveSessionLimitType == webSessionsChangeActiveSessionLimitType2 || webSessionsChangeActiveSessionLimitType.equals(webSessionsChangeActiveSessionLimitType2);
            case StandardNames.XML_ID /* 388 */:
                WebSessionsChangeFixedLengthPolicyType webSessionsChangeFixedLengthPolicyType = this.f19751y6;
                WebSessionsChangeFixedLengthPolicyType webSessionsChangeFixedLengthPolicyType2 = eventType.f19751y6;
                return webSessionsChangeFixedLengthPolicyType == webSessionsChangeFixedLengthPolicyType2 || webSessionsChangeFixedLengthPolicyType.equals(webSessionsChangeFixedLengthPolicyType2);
            case StandardNames.XML_LANG_TYPE /* 389 */:
                WebSessionsChangeIdleLengthPolicyType webSessionsChangeIdleLengthPolicyType = this.f19759z6;
                WebSessionsChangeIdleLengthPolicyType webSessionsChangeIdleLengthPolicyType2 = eventType.f19759z6;
                return webSessionsChangeIdleLengthPolicyType == webSessionsChangeIdleLengthPolicyType2 || webSessionsChangeIdleLengthPolicyType.equals(webSessionsChangeIdleLengthPolicyType2);
            case 390:
                TeamMergeFromType teamMergeFromType = this.f19338A6;
                TeamMergeFromType teamMergeFromType2 = eventType.f19338A6;
                return teamMergeFromType == teamMergeFromType2 || teamMergeFromType.equals(teamMergeFromType2);
            case 391:
                TeamMergeToType teamMergeToType = this.f19346B6;
                TeamMergeToType teamMergeToType2 = eventType.f19346B6;
                return teamMergeToType == teamMergeToType2 || teamMergeToType.equals(teamMergeToType2);
            case 392:
                TeamProfileAddLogoType teamProfileAddLogoType = this.f19354C6;
                TeamProfileAddLogoType teamProfileAddLogoType2 = eventType.f19354C6;
                return teamProfileAddLogoType == teamProfileAddLogoType2 || teamProfileAddLogoType.equals(teamProfileAddLogoType2);
            case 393:
                TeamProfileChangeDefaultLanguageType teamProfileChangeDefaultLanguageType = this.f19362D6;
                TeamProfileChangeDefaultLanguageType teamProfileChangeDefaultLanguageType2 = eventType.f19362D6;
                return teamProfileChangeDefaultLanguageType == teamProfileChangeDefaultLanguageType2 || teamProfileChangeDefaultLanguageType.equals(teamProfileChangeDefaultLanguageType2);
            case 394:
                TeamProfileChangeLogoType teamProfileChangeLogoType = this.f19370E6;
                TeamProfileChangeLogoType teamProfileChangeLogoType2 = eventType.f19370E6;
                return teamProfileChangeLogoType == teamProfileChangeLogoType2 || teamProfileChangeLogoType.equals(teamProfileChangeLogoType2);
            case 395:
                TeamProfileChangeNameType teamProfileChangeNameType = this.f19378F6;
                TeamProfileChangeNameType teamProfileChangeNameType2 = eventType.f19378F6;
                return teamProfileChangeNameType == teamProfileChangeNameType2 || teamProfileChangeNameType.equals(teamProfileChangeNameType2);
            case 396:
                TeamProfileRemoveLogoType teamProfileRemoveLogoType = this.f19386G6;
                TeamProfileRemoveLogoType teamProfileRemoveLogoType2 = eventType.f19386G6;
                return teamProfileRemoveLogoType == teamProfileRemoveLogoType2 || teamProfileRemoveLogoType.equals(teamProfileRemoveLogoType2);
            case 397:
                TfaAddBackupPhoneType tfaAddBackupPhoneType = this.f19394H6;
                TfaAddBackupPhoneType tfaAddBackupPhoneType2 = eventType.f19394H6;
                return tfaAddBackupPhoneType == tfaAddBackupPhoneType2 || tfaAddBackupPhoneType.equals(tfaAddBackupPhoneType2);
            case 398:
                TfaAddSecurityKeyType tfaAddSecurityKeyType = this.f19402I6;
                TfaAddSecurityKeyType tfaAddSecurityKeyType2 = eventType.f19402I6;
                return tfaAddSecurityKeyType == tfaAddSecurityKeyType2 || tfaAddSecurityKeyType.equals(tfaAddSecurityKeyType2);
            case 399:
                TfaChangeBackupPhoneType tfaChangeBackupPhoneType = this.f19410J6;
                TfaChangeBackupPhoneType tfaChangeBackupPhoneType2 = eventType.f19410J6;
                return tfaChangeBackupPhoneType == tfaChangeBackupPhoneType2 || tfaChangeBackupPhoneType.equals(tfaChangeBackupPhoneType2);
            case 400:
                TfaChangeStatusType tfaChangeStatusType = this.f19418K6;
                TfaChangeStatusType tfaChangeStatusType2 = eventType.f19418K6;
                return tfaChangeStatusType == tfaChangeStatusType2 || tfaChangeStatusType.equals(tfaChangeStatusType2);
            case 401:
                TfaRemoveBackupPhoneType tfaRemoveBackupPhoneType = this.f19426L6;
                TfaRemoveBackupPhoneType tfaRemoveBackupPhoneType2 = eventType.f19426L6;
                return tfaRemoveBackupPhoneType == tfaRemoveBackupPhoneType2 || tfaRemoveBackupPhoneType.equals(tfaRemoveBackupPhoneType2);
            case 402:
                TfaRemoveSecurityKeyType tfaRemoveSecurityKeyType = this.f19434M6;
                TfaRemoveSecurityKeyType tfaRemoveSecurityKeyType2 = eventType.f19434M6;
                return tfaRemoveSecurityKeyType == tfaRemoveSecurityKeyType2 || tfaRemoveSecurityKeyType.equals(tfaRemoveSecurityKeyType2);
            case 403:
                TfaResetType tfaResetType = this.f19442N6;
                TfaResetType tfaResetType2 = eventType.f19442N6;
                return tfaResetType == tfaResetType2 || tfaResetType.equals(tfaResetType2);
            case 404:
                ChangedEnterpriseAdminRoleType changedEnterpriseAdminRoleType = this.f19450O6;
                ChangedEnterpriseAdminRoleType changedEnterpriseAdminRoleType2 = eventType.f19450O6;
                return changedEnterpriseAdminRoleType == changedEnterpriseAdminRoleType2 || changedEnterpriseAdminRoleType.equals(changedEnterpriseAdminRoleType2);
            case 405:
                ChangedEnterpriseConnectedTeamStatusType changedEnterpriseConnectedTeamStatusType = this.f19458P6;
                ChangedEnterpriseConnectedTeamStatusType changedEnterpriseConnectedTeamStatusType2 = eventType.f19458P6;
                return changedEnterpriseConnectedTeamStatusType == changedEnterpriseConnectedTeamStatusType2 || changedEnterpriseConnectedTeamStatusType.equals(changedEnterpriseConnectedTeamStatusType2);
            case 406:
                EndedEnterpriseAdminSessionType endedEnterpriseAdminSessionType = this.f19466Q6;
                EndedEnterpriseAdminSessionType endedEnterpriseAdminSessionType2 = eventType.f19466Q6;
                return endedEnterpriseAdminSessionType == endedEnterpriseAdminSessionType2 || endedEnterpriseAdminSessionType.equals(endedEnterpriseAdminSessionType2);
            case 407:
                EndedEnterpriseAdminSessionDeprecatedType endedEnterpriseAdminSessionDeprecatedType = this.f19474R6;
                EndedEnterpriseAdminSessionDeprecatedType endedEnterpriseAdminSessionDeprecatedType2 = eventType.f19474R6;
                return endedEnterpriseAdminSessionDeprecatedType == endedEnterpriseAdminSessionDeprecatedType2 || endedEnterpriseAdminSessionDeprecatedType.equals(endedEnterpriseAdminSessionDeprecatedType2);
            case 408:
                EnterpriseSettingsLockingType enterpriseSettingsLockingType = this.f19482S6;
                EnterpriseSettingsLockingType enterpriseSettingsLockingType2 = eventType.f19482S6;
                return enterpriseSettingsLockingType == enterpriseSettingsLockingType2 || enterpriseSettingsLockingType.equals(enterpriseSettingsLockingType2);
            case 409:
                GuestAdminChangeStatusType guestAdminChangeStatusType = this.f19490T6;
                GuestAdminChangeStatusType guestAdminChangeStatusType2 = eventType.f19490T6;
                return guestAdminChangeStatusType == guestAdminChangeStatusType2 || guestAdminChangeStatusType.equals(guestAdminChangeStatusType2);
            case 410:
                StartedEnterpriseAdminSessionType startedEnterpriseAdminSessionType = this.f19498U6;
                StartedEnterpriseAdminSessionType startedEnterpriseAdminSessionType2 = eventType.f19498U6;
                return startedEnterpriseAdminSessionType == startedEnterpriseAdminSessionType2 || startedEnterpriseAdminSessionType.equals(startedEnterpriseAdminSessionType2);
            case 411:
                TeamMergeRequestAcceptedType teamMergeRequestAcceptedType = this.f19506V6;
                TeamMergeRequestAcceptedType teamMergeRequestAcceptedType2 = eventType.f19506V6;
                return teamMergeRequestAcceptedType == teamMergeRequestAcceptedType2 || teamMergeRequestAcceptedType.equals(teamMergeRequestAcceptedType2);
            case 412:
                TeamMergeRequestAcceptedShownToPrimaryTeamType teamMergeRequestAcceptedShownToPrimaryTeamType = this.f19514W6;
                TeamMergeRequestAcceptedShownToPrimaryTeamType teamMergeRequestAcceptedShownToPrimaryTeamType2 = eventType.f19514W6;
                return teamMergeRequestAcceptedShownToPrimaryTeamType == teamMergeRequestAcceptedShownToPrimaryTeamType2 || teamMergeRequestAcceptedShownToPrimaryTeamType.equals(teamMergeRequestAcceptedShownToPrimaryTeamType2);
            case 413:
                TeamMergeRequestAcceptedShownToSecondaryTeamType teamMergeRequestAcceptedShownToSecondaryTeamType = this.f19522X6;
                TeamMergeRequestAcceptedShownToSecondaryTeamType teamMergeRequestAcceptedShownToSecondaryTeamType2 = eventType.f19522X6;
                return teamMergeRequestAcceptedShownToSecondaryTeamType == teamMergeRequestAcceptedShownToSecondaryTeamType2 || teamMergeRequestAcceptedShownToSecondaryTeamType.equals(teamMergeRequestAcceptedShownToSecondaryTeamType2);
            case 414:
                TeamMergeRequestAutoCanceledType teamMergeRequestAutoCanceledType = this.f19530Y6;
                TeamMergeRequestAutoCanceledType teamMergeRequestAutoCanceledType2 = eventType.f19530Y6;
                return teamMergeRequestAutoCanceledType == teamMergeRequestAutoCanceledType2 || teamMergeRequestAutoCanceledType.equals(teamMergeRequestAutoCanceledType2);
            case 415:
                TeamMergeRequestCanceledType teamMergeRequestCanceledType = this.f19538Z6;
                TeamMergeRequestCanceledType teamMergeRequestCanceledType2 = eventType.f19538Z6;
                return teamMergeRequestCanceledType == teamMergeRequestCanceledType2 || teamMergeRequestCanceledType.equals(teamMergeRequestCanceledType2);
            case 416:
                TeamMergeRequestCanceledShownToPrimaryTeamType teamMergeRequestCanceledShownToPrimaryTeamType = this.f19547a7;
                TeamMergeRequestCanceledShownToPrimaryTeamType teamMergeRequestCanceledShownToPrimaryTeamType2 = eventType.f19547a7;
                return teamMergeRequestCanceledShownToPrimaryTeamType == teamMergeRequestCanceledShownToPrimaryTeamType2 || teamMergeRequestCanceledShownToPrimaryTeamType.equals(teamMergeRequestCanceledShownToPrimaryTeamType2);
            case 417:
                TeamMergeRequestCanceledShownToSecondaryTeamType teamMergeRequestCanceledShownToSecondaryTeamType = this.f19556b7;
                TeamMergeRequestCanceledShownToSecondaryTeamType teamMergeRequestCanceledShownToSecondaryTeamType2 = eventType.f19556b7;
                return teamMergeRequestCanceledShownToSecondaryTeamType == teamMergeRequestCanceledShownToSecondaryTeamType2 || teamMergeRequestCanceledShownToSecondaryTeamType.equals(teamMergeRequestCanceledShownToSecondaryTeamType2);
            case 418:
                TeamMergeRequestExpiredType teamMergeRequestExpiredType = this.f19565c7;
                TeamMergeRequestExpiredType teamMergeRequestExpiredType2 = eventType.f19565c7;
                return teamMergeRequestExpiredType == teamMergeRequestExpiredType2 || teamMergeRequestExpiredType.equals(teamMergeRequestExpiredType2);
            case 419:
                TeamMergeRequestExpiredShownToPrimaryTeamType teamMergeRequestExpiredShownToPrimaryTeamType = this.f19574d7;
                TeamMergeRequestExpiredShownToPrimaryTeamType teamMergeRequestExpiredShownToPrimaryTeamType2 = eventType.f19574d7;
                return teamMergeRequestExpiredShownToPrimaryTeamType == teamMergeRequestExpiredShownToPrimaryTeamType2 || teamMergeRequestExpiredShownToPrimaryTeamType.equals(teamMergeRequestExpiredShownToPrimaryTeamType2);
            case 420:
                TeamMergeRequestExpiredShownToSecondaryTeamType teamMergeRequestExpiredShownToSecondaryTeamType = this.f19583e7;
                TeamMergeRequestExpiredShownToSecondaryTeamType teamMergeRequestExpiredShownToSecondaryTeamType2 = eventType.f19583e7;
                return teamMergeRequestExpiredShownToSecondaryTeamType == teamMergeRequestExpiredShownToSecondaryTeamType2 || teamMergeRequestExpiredShownToSecondaryTeamType.equals(teamMergeRequestExpiredShownToSecondaryTeamType2);
            case 421:
                TeamMergeRequestRejectedShownToPrimaryTeamType teamMergeRequestRejectedShownToPrimaryTeamType = this.f19592f7;
                TeamMergeRequestRejectedShownToPrimaryTeamType teamMergeRequestRejectedShownToPrimaryTeamType2 = eventType.f19592f7;
                return teamMergeRequestRejectedShownToPrimaryTeamType == teamMergeRequestRejectedShownToPrimaryTeamType2 || teamMergeRequestRejectedShownToPrimaryTeamType.equals(teamMergeRequestRejectedShownToPrimaryTeamType2);
            case 422:
                TeamMergeRequestRejectedShownToSecondaryTeamType teamMergeRequestRejectedShownToSecondaryTeamType = this.f19601g7;
                TeamMergeRequestRejectedShownToSecondaryTeamType teamMergeRequestRejectedShownToSecondaryTeamType2 = eventType.f19601g7;
                return teamMergeRequestRejectedShownToSecondaryTeamType == teamMergeRequestRejectedShownToSecondaryTeamType2 || teamMergeRequestRejectedShownToSecondaryTeamType.equals(teamMergeRequestRejectedShownToSecondaryTeamType2);
            case 423:
                TeamMergeRequestReminderType teamMergeRequestReminderType = this.f19610h7;
                TeamMergeRequestReminderType teamMergeRequestReminderType2 = eventType.f19610h7;
                return teamMergeRequestReminderType == teamMergeRequestReminderType2 || teamMergeRequestReminderType.equals(teamMergeRequestReminderType2);
            case 424:
                TeamMergeRequestReminderShownToPrimaryTeamType teamMergeRequestReminderShownToPrimaryTeamType = this.f19619i7;
                TeamMergeRequestReminderShownToPrimaryTeamType teamMergeRequestReminderShownToPrimaryTeamType2 = eventType.f19619i7;
                return teamMergeRequestReminderShownToPrimaryTeamType == teamMergeRequestReminderShownToPrimaryTeamType2 || teamMergeRequestReminderShownToPrimaryTeamType.equals(teamMergeRequestReminderShownToPrimaryTeamType2);
            case TypedValues.CycleType.TYPE_WAVE_PHASE /* 425 */:
                TeamMergeRequestReminderShownToSecondaryTeamType teamMergeRequestReminderShownToSecondaryTeamType = this.f19628j7;
                TeamMergeRequestReminderShownToSecondaryTeamType teamMergeRequestReminderShownToSecondaryTeamType2 = eventType.f19628j7;
                return teamMergeRequestReminderShownToSecondaryTeamType == teamMergeRequestReminderShownToSecondaryTeamType2 || teamMergeRequestReminderShownToSecondaryTeamType.equals(teamMergeRequestReminderShownToSecondaryTeamType2);
            case 426:
                TeamMergeRequestRevokedType teamMergeRequestRevokedType = this.f19637k7;
                TeamMergeRequestRevokedType teamMergeRequestRevokedType2 = eventType.f19637k7;
                return teamMergeRequestRevokedType == teamMergeRequestRevokedType2 || teamMergeRequestRevokedType.equals(teamMergeRequestRevokedType2);
            case 427:
                TeamMergeRequestSentShownToPrimaryTeamType teamMergeRequestSentShownToPrimaryTeamType = this.f19646l7;
                TeamMergeRequestSentShownToPrimaryTeamType teamMergeRequestSentShownToPrimaryTeamType2 = eventType.f19646l7;
                return teamMergeRequestSentShownToPrimaryTeamType == teamMergeRequestSentShownToPrimaryTeamType2 || teamMergeRequestSentShownToPrimaryTeamType.equals(teamMergeRequestSentShownToPrimaryTeamType2);
            case 428:
                TeamMergeRequestSentShownToSecondaryTeamType teamMergeRequestSentShownToSecondaryTeamType = this.f19655m7;
                TeamMergeRequestSentShownToSecondaryTeamType teamMergeRequestSentShownToSecondaryTeamType2 = eventType.f19655m7;
                return teamMergeRequestSentShownToSecondaryTeamType == teamMergeRequestSentShownToSecondaryTeamType2 || teamMergeRequestSentShownToSecondaryTeamType.equals(teamMergeRequestSentShownToSecondaryTeamType2);
            case HttpStatus.SC_TOO_MANY_REQUESTS /* 429 */:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: f8 */
    public final EventType m14923f8(Tag tag, DeviceManagementEnabledType deviceManagementEnabledType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19736x = deviceManagementEnabledType;
        return eventType;
    }

    /* renamed from: f9 */
    public final EventType m14924f9(Tag tag, FileRequestReceiveFileType fileRequestReceiveFileType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19657n0 = fileRequestReceiveFileType;
        return eventType;
    }

    /* renamed from: fa */
    public final EventType m14925fa(Tag tag, LoginFailType loginFailType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19460Q0 = loginFailType;
        return eventType;
    }

    /* renamed from: fb */
    public final EventType m14926fb(Tag tag, PaperContentArchiveType paperContentArchiveType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19389H1 = paperContentArchiveType;
        return eventType;
    }

    /* renamed from: fc */
    public final EventType m14927fc(Tag tag, RewindFolderType rewindFolderType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19612i0 = rewindFolderType;
        return eventType;
    }

    /* renamed from: fd */
    public final EventType m14928fd(Tag tag, SharedFolderUnmountType sharedFolderUnmountType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19503V3 = sharedFolderUnmountType;
        return eventType;
    }

    /* renamed from: fe */
    public final EventType m14929fe(Tag tag, SignInAsSessionEndType signInAsSessionEndType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19500V0 = signInAsSessionEndType;
        return eventType;
    }

    /* renamed from: ff */
    public final EventType m14930ff(Tag tag, TeamProfileRemoveLogoType teamProfileRemoveLogoType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19386G6 = teamProfileRemoveLogoType;
        return eventType;
    }

    /* renamed from: g8 */
    public final EventType m14931g8(Tag tag, DeviceUnlinkType deviceUnlinkType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19744y = deviceUnlinkType;
        return eventType;
    }

    /* renamed from: g9 */
    public final EventType m14932g9(Tag tag, FileRequestsChangePolicyType fileRequestsChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19337A5 = fileRequestsChangePolicyType;
        return eventType;
    }

    /* renamed from: ga */
    public final EventType m14933ga(Tag tag, LoginSuccessType loginSuccessType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19468R0 = loginSuccessType;
        return eventType;
    }

    /* renamed from: gb */
    public final EventType m14934gb(Tag tag, PaperContentCreateType paperContentCreateType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19397I1 = paperContentCreateType;
        return eventType;
    }

    /* renamed from: gc */
    public final EventType m14935gc(Tag tag, RewindPolicyChangedType rewindPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19555b6 = rewindPolicyChangedType;
        return eventType;
    }

    /* renamed from: gd */
    public final EventType m14936gd(Tag tag, SharedLinkAddExpiryType sharedLinkAddExpiryType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19511W3 = sharedLinkAddExpiryType;
        return eventType;
    }

    /* renamed from: ge */
    public final EventType m14937ge(Tag tag, SignInAsSessionStartType signInAsSessionStartType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19508W0 = signInAsSessionStartType;
        return eventType;
    }

    public AccountCaptureChangeAvailabilityType getAccountCaptureChangeAvailabilityValue() {
        if (this.f19539a == Tag.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY) {
            return this.f19331A;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY, but was Tag." + this.f19539a.name());
    }

    public AccountCaptureChangePolicyType getAccountCaptureChangePolicyValue() {
        if (this.f19539a == Tag.ACCOUNT_CAPTURE_CHANGE_POLICY) {
            return this.f19590f5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCOUNT_CAPTURE_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public AccountCaptureMigrateAccountType getAccountCaptureMigrateAccountValue() {
        if (this.f19539a == Tag.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT) {
            return this.f19339B;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT, but was Tag." + this.f19539a.name());
    }

    public AccountCaptureNotificationEmailsSentType getAccountCaptureNotificationEmailsSentValue() {
        if (this.f19539a == Tag.ACCOUNT_CAPTURE_NOTIFICATION_EMAILS_SENT) {
            return this.f19347C;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCOUNT_CAPTURE_NOTIFICATION_EMAILS_SENT, but was Tag." + this.f19539a.name());
    }

    public AccountCaptureRelinquishAccountType getAccountCaptureRelinquishAccountValue() {
        if (this.f19539a == Tag.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT) {
            return this.f19355D;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT, but was Tag." + this.f19539a.name());
    }

    public AccountLockOrUnlockedType getAccountLockOrUnlockedValue() {
        if (this.f19539a == Tag.ACCOUNT_LOCK_OR_UNLOCKED) {
            return this.f19428M0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCOUNT_LOCK_OR_UNLOCKED, but was Tag." + this.f19539a.name());
    }

    public AllowDownloadDisabledType getAllowDownloadDisabledValue() {
        if (this.f19539a == Tag.ALLOW_DOWNLOAD_DISABLED) {
            return this.f19599g5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ALLOW_DOWNLOAD_DISABLED, but was Tag." + this.f19539a.name());
    }

    public AllowDownloadEnabledType getAllowDownloadEnabledValue() {
        if (this.f19539a == Tag.ALLOW_DOWNLOAD_ENABLED) {
            return this.f19608h5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ALLOW_DOWNLOAD_ENABLED, but was Tag." + this.f19539a.name());
    }

    public AppLinkTeamType getAppLinkTeamValue() {
        if (this.f19539a == Tag.APP_LINK_TEAM) {
            return this.f19548b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.APP_LINK_TEAM, but was Tag." + this.f19539a.name());
    }

    public AppLinkUserType getAppLinkUserValue() {
        if (this.f19539a == Tag.APP_LINK_USER) {
            return this.f19557c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.APP_LINK_USER, but was Tag." + this.f19539a.name());
    }

    public AppUnlinkTeamType getAppUnlinkTeamValue() {
        if (this.f19539a == Tag.APP_UNLINK_TEAM) {
            return this.f19566d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.APP_UNLINK_TEAM, but was Tag." + this.f19539a.name());
    }

    public AppUnlinkUserType getAppUnlinkUserValue() {
        if (this.f19539a == Tag.APP_UNLINK_USER) {
            return this.f19575e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.APP_UNLINK_USER, but was Tag." + this.f19539a.name());
    }

    public BinderAddPageType getBinderAddPageValue() {
        if (this.f19539a == Tag.BINDER_ADD_PAGE) {
            return this.f19738x1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.BINDER_ADD_PAGE, but was Tag." + this.f19539a.name());
    }

    public BinderAddSectionType getBinderAddSectionValue() {
        if (this.f19539a == Tag.BINDER_ADD_SECTION) {
            return this.f19746y1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.BINDER_ADD_SECTION, but was Tag." + this.f19539a.name());
    }

    public BinderRemovePageType getBinderRemovePageValue() {
        if (this.f19539a == Tag.BINDER_REMOVE_PAGE) {
            return this.f19754z1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.BINDER_REMOVE_PAGE, but was Tag." + this.f19539a.name());
    }

    public BinderRemoveSectionType getBinderRemoveSectionValue() {
        if (this.f19539a == Tag.BINDER_REMOVE_SECTION) {
            return this.f19333A1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.BINDER_REMOVE_SECTION, but was Tag." + this.f19539a.name());
    }

    public BinderRenamePageType getBinderRenamePageValue() {
        if (this.f19539a == Tag.BINDER_RENAME_PAGE) {
            return this.f19341B1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.BINDER_RENAME_PAGE, but was Tag." + this.f19539a.name());
    }

    public BinderRenameSectionType getBinderRenameSectionValue() {
        if (this.f19539a == Tag.BINDER_RENAME_SECTION) {
            return this.f19349C1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.BINDER_RENAME_SECTION, but was Tag." + this.f19539a.name());
    }

    public BinderReorderPageType getBinderReorderPageValue() {
        if (this.f19539a == Tag.BINDER_REORDER_PAGE) {
            return this.f19357D1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.BINDER_REORDER_PAGE, but was Tag." + this.f19539a.name());
    }

    public BinderReorderSectionType getBinderReorderSectionValue() {
        if (this.f19539a == Tag.BINDER_REORDER_SECTION) {
            return this.f19365E1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.BINDER_REORDER_SECTION, but was Tag." + this.f19539a.name());
    }

    public CameraUploadsPolicyChangedType getCameraUploadsPolicyChangedValue() {
        if (this.f19539a == Tag.CAMERA_UPLOADS_POLICY_CHANGED) {
            return this.f19617i5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CAMERA_UPLOADS_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public ChangedEnterpriseAdminRoleType getChangedEnterpriseAdminRoleValue() {
        if (this.f19539a == Tag.CHANGED_ENTERPRISE_ADMIN_ROLE) {
            return this.f19450O6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CHANGED_ENTERPRISE_ADMIN_ROLE, but was Tag." + this.f19539a.name());
    }

    public ChangedEnterpriseConnectedTeamStatusType getChangedEnterpriseConnectedTeamStatusValue() {
        if (this.f19539a == Tag.CHANGED_ENTERPRISE_CONNECTED_TEAM_STATUS) {
            return this.f19458P6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CHANGED_ENTERPRISE_CONNECTED_TEAM_STATUS, but was Tag." + this.f19539a.name());
    }

    public CollectionShareType getCollectionShareValue() {
        if (this.f19539a == Tag.COLLECTION_SHARE) {
            return this.f19454P2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COLLECTION_SHARE, but was Tag." + this.f19539a.name());
    }

    public ContentAdministrationPolicyChangedType getContentAdministrationPolicyChangedValue() {
        if (this.f19539a == Tag.CONTENT_ADMINISTRATION_POLICY_CHANGED) {
            return this.f19626j5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CONTENT_ADMINISTRATION_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public CreateFolderType getCreateFolderValue() {
        if (this.f19539a == Tag.CREATE_FOLDER) {
            return this.f19451P;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CREATE_FOLDER, but was Tag." + this.f19539a.name());
    }

    public CreateTeamInviteLinkType getCreateTeamInviteLinkValue() {
        if (this.f19539a == Tag.CREATE_TEAM_INVITE_LINK) {
            return this.f19524Y0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CREATE_TEAM_INVITE_LINK, but was Tag." + this.f19539a.name());
    }

    public DataPlacementRestrictionChangePolicyType getDataPlacementRestrictionChangePolicyValue() {
        if (this.f19539a == Tag.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY) {
            return this.f19635k5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public DataPlacementRestrictionSatisfyPolicyType getDataPlacementRestrictionSatisfyPolicyValue() {
        if (this.f19539a == Tag.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY) {
            return this.f19644l5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY, but was Tag." + this.f19539a.name());
    }

    public DeleteTeamInviteLinkType getDeleteTeamInviteLinkValue() {
        if (this.f19539a == Tag.DELETE_TEAM_INVITE_LINK) {
            return this.f19532Z0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DELETE_TEAM_INVITE_LINK, but was Tag." + this.f19539a.name());
    }

    public DeviceApprovalsAddExceptionType getDeviceApprovalsAddExceptionValue() {
        if (this.f19539a == Tag.DEVICE_APPROVALS_ADD_EXCEPTION) {
            return this.f19653m5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_APPROVALS_ADD_EXCEPTION, but was Tag." + this.f19539a.name());
    }

    public DeviceApprovalsChangeDesktopPolicyType getDeviceApprovalsChangeDesktopPolicyValue() {
        if (this.f19539a == Tag.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY) {
            return this.f19662n5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY, but was Tag." + this.f19539a.name());
    }

    public DeviceApprovalsChangeMobilePolicyType getDeviceApprovalsChangeMobilePolicyValue() {
        if (this.f19539a == Tag.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY) {
            return this.f19670o5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY, but was Tag." + this.f19539a.name());
    }

    public DeviceApprovalsChangeOverageActionType getDeviceApprovalsChangeOverageActionValue() {
        if (this.f19539a == Tag.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION) {
            return this.f19678p5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION, but was Tag." + this.f19539a.name());
    }

    public DeviceApprovalsChangeUnlinkActionType getDeviceApprovalsChangeUnlinkActionValue() {
        if (this.f19539a == Tag.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION) {
            return this.f19686q5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION, but was Tag." + this.f19539a.name());
    }

    public DeviceApprovalsRemoveExceptionType getDeviceApprovalsRemoveExceptionValue() {
        if (this.f19539a == Tag.DEVICE_APPROVALS_REMOVE_EXCEPTION) {
            return this.f19694r5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_APPROVALS_REMOVE_EXCEPTION, but was Tag." + this.f19539a.name());
    }

    public DeviceChangeIpDesktopType getDeviceChangeIpDesktopValue() {
        if (this.f19539a == Tag.DEVICE_CHANGE_IP_DESKTOP) {
            return this.f19672p;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_CHANGE_IP_DESKTOP, but was Tag." + this.f19539a.name());
    }

    public DeviceChangeIpMobileType getDeviceChangeIpMobileValue() {
        if (this.f19539a == Tag.DEVICE_CHANGE_IP_MOBILE) {
            return this.f19680q;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_CHANGE_IP_MOBILE, but was Tag." + this.f19539a.name());
    }

    public DeviceChangeIpWebType getDeviceChangeIpWebValue() {
        if (this.f19539a == Tag.DEVICE_CHANGE_IP_WEB) {
            return this.f19688r;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_CHANGE_IP_WEB, but was Tag." + this.f19539a.name());
    }

    public DeviceDeleteOnUnlinkFailType getDeviceDeleteOnUnlinkFailValue() {
        if (this.f19539a == Tag.DEVICE_DELETE_ON_UNLINK_FAIL) {
            return this.f19696s;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_DELETE_ON_UNLINK_FAIL, but was Tag." + this.f19539a.name());
    }

    public DeviceDeleteOnUnlinkSuccessType getDeviceDeleteOnUnlinkSuccessValue() {
        if (this.f19539a == Tag.DEVICE_DELETE_ON_UNLINK_SUCCESS) {
            return this.f19704t;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_DELETE_ON_UNLINK_SUCCESS, but was Tag." + this.f19539a.name());
    }

    public DeviceLinkFailType getDeviceLinkFailValue() {
        if (this.f19539a == Tag.DEVICE_LINK_FAIL) {
            return this.f19712u;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_LINK_FAIL, but was Tag." + this.f19539a.name());
    }

    public DeviceLinkSuccessType getDeviceLinkSuccessValue() {
        if (this.f19539a == Tag.DEVICE_LINK_SUCCESS) {
            return this.f19720v;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_LINK_SUCCESS, but was Tag." + this.f19539a.name());
    }

    public DeviceManagementDisabledType getDeviceManagementDisabledValue() {
        if (this.f19539a == Tag.DEVICE_MANAGEMENT_DISABLED) {
            return this.f19728w;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_MANAGEMENT_DISABLED, but was Tag." + this.f19539a.name());
    }

    public DeviceManagementEnabledType getDeviceManagementEnabledValue() {
        if (this.f19539a == Tag.DEVICE_MANAGEMENT_ENABLED) {
            return this.f19736x;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_MANAGEMENT_ENABLED, but was Tag." + this.f19539a.name());
    }

    public DeviceUnlinkType getDeviceUnlinkValue() {
        if (this.f19539a == Tag.DEVICE_UNLINK) {
            return this.f19744y;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEVICE_UNLINK, but was Tag." + this.f19539a.name());
    }

    public DirectoryRestrictionsAddMembersType getDirectoryRestrictionsAddMembersValue() {
        if (this.f19539a == Tag.DIRECTORY_RESTRICTIONS_ADD_MEMBERS) {
            return this.f19702s5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DIRECTORY_RESTRICTIONS_ADD_MEMBERS, but was Tag." + this.f19539a.name());
    }

    public DirectoryRestrictionsRemoveMembersType getDirectoryRestrictionsRemoveMembersValue() {
        if (this.f19539a == Tag.DIRECTORY_RESTRICTIONS_REMOVE_MEMBERS) {
            return this.f19710t5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DIRECTORY_RESTRICTIONS_REMOVE_MEMBERS, but was Tag." + this.f19539a.name());
    }

    public DisabledDomainInvitesType getDisabledDomainInvitesValue() {
        if (this.f19539a == Tag.DISABLED_DOMAIN_INVITES) {
            return this.f19363E;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DISABLED_DOMAIN_INVITES, but was Tag." + this.f19539a.name());
    }

    public DomainInvitesApproveRequestToJoinTeamType getDomainInvitesApproveRequestToJoinTeamValue() {
        if (this.f19539a == Tag.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM) {
            return this.f19371F;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM, but was Tag." + this.f19539a.name());
    }

    public DomainInvitesDeclineRequestToJoinTeamType getDomainInvitesDeclineRequestToJoinTeamValue() {
        if (this.f19539a == Tag.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM) {
            return this.f19379G;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM, but was Tag." + this.f19539a.name());
    }

    public DomainInvitesEmailExistingUsersType getDomainInvitesEmailExistingUsersValue() {
        if (this.f19539a == Tag.DOMAIN_INVITES_EMAIL_EXISTING_USERS) {
            return this.f19387H;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_INVITES_EMAIL_EXISTING_USERS, but was Tag." + this.f19539a.name());
    }

    public DomainInvitesRequestToJoinTeamType getDomainInvitesRequestToJoinTeamValue() {
        if (this.f19539a == Tag.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM) {
            return this.f19395I;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM, but was Tag." + this.f19539a.name());
    }

    public DomainInvitesSetInviteNewUserPrefToNoType getDomainInvitesSetInviteNewUserPrefToNoValue() {
        if (this.f19539a == Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO) {
            return this.f19403J;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO, but was Tag." + this.f19539a.name());
    }

    public DomainInvitesSetInviteNewUserPrefToYesType getDomainInvitesSetInviteNewUserPrefToYesValue() {
        if (this.f19539a == Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES) {
            return this.f19411K;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES, but was Tag." + this.f19539a.name());
    }

    public DomainVerificationAddDomainFailType getDomainVerificationAddDomainFailValue() {
        if (this.f19539a == Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL) {
            return this.f19419L;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL, but was Tag." + this.f19539a.name());
    }

    public DomainVerificationAddDomainSuccessType getDomainVerificationAddDomainSuccessValue() {
        if (this.f19539a == Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS) {
            return this.f19427M;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS, but was Tag." + this.f19539a.name());
    }

    public DomainVerificationRemoveDomainType getDomainVerificationRemoveDomainValue() {
        if (this.f19539a == Tag.DOMAIN_VERIFICATION_REMOVE_DOMAIN) {
            return this.f19435N;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_VERIFICATION_REMOVE_DOMAIN, but was Tag." + this.f19539a.name());
    }

    public EmmAddExceptionType getEmmAddExceptionValue() {
        if (this.f19539a == Tag.EMM_ADD_EXCEPTION) {
            return this.f19718u5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EMM_ADD_EXCEPTION, but was Tag." + this.f19539a.name());
    }

    public EmmChangePolicyType getEmmChangePolicyValue() {
        if (this.f19539a == Tag.EMM_CHANGE_POLICY) {
            return this.f19726v5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EMM_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public EmmCreateExceptionsReportType getEmmCreateExceptionsReportValue() {
        if (this.f19539a == Tag.EMM_CREATE_EXCEPTIONS_REPORT) {
            return this.f19739x2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EMM_CREATE_EXCEPTIONS_REPORT, but was Tag." + this.f19539a.name());
    }

    public EmmCreateUsageReportType getEmmCreateUsageReportValue() {
        if (this.f19539a == Tag.EMM_CREATE_USAGE_REPORT) {
            return this.f19747y2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EMM_CREATE_USAGE_REPORT, but was Tag." + this.f19539a.name());
    }

    public EmmErrorType getEmmErrorValue() {
        if (this.f19539a == Tag.EMM_ERROR) {
            return this.f19436N0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EMM_ERROR, but was Tag." + this.f19539a.name());
    }

    public EmmRefreshAuthTokenType getEmmRefreshAuthTokenValue() {
        if (this.f19539a == Tag.EMM_REFRESH_AUTH_TOKEN) {
            return this.f19752z;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EMM_REFRESH_AUTH_TOKEN, but was Tag." + this.f19539a.name());
    }

    public EmmRemoveExceptionType getEmmRemoveExceptionValue() {
        if (this.f19539a == Tag.EMM_REMOVE_EXCEPTION) {
            return this.f19734w5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EMM_REMOVE_EXCEPTION, but was Tag." + this.f19539a.name());
    }

    public EnabledDomainInvitesType getEnabledDomainInvitesValue() {
        if (this.f19539a == Tag.ENABLED_DOMAIN_INVITES) {
            return this.f19443O;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ENABLED_DOMAIN_INVITES, but was Tag." + this.f19539a.name());
    }

    public EndedEnterpriseAdminSessionDeprecatedType getEndedEnterpriseAdminSessionDeprecatedValue() {
        if (this.f19539a == Tag.ENDED_ENTERPRISE_ADMIN_SESSION_DEPRECATED) {
            return this.f19474R6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ENDED_ENTERPRISE_ADMIN_SESSION_DEPRECATED, but was Tag." + this.f19539a.name());
    }

    public EndedEnterpriseAdminSessionType getEndedEnterpriseAdminSessionValue() {
        if (this.f19539a == Tag.ENDED_ENTERPRISE_ADMIN_SESSION) {
            return this.f19466Q6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ENDED_ENTERPRISE_ADMIN_SESSION, but was Tag." + this.f19539a.name());
    }

    public EnterpriseSettingsLockingType getEnterpriseSettingsLockingValue() {
        if (this.f19539a == Tag.ENTERPRISE_SETTINGS_LOCKING) {
            return this.f19482S6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ENTERPRISE_SETTINGS_LOCKING, but was Tag." + this.f19539a.name());
    }

    public ExportMembersReportFailType getExportMembersReportFailValue() {
        if (this.f19539a == Tag.EXPORT_MEMBERS_REPORT_FAIL) {
            return this.f19334A2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EXPORT_MEMBERS_REPORT_FAIL, but was Tag." + this.f19539a.name());
    }

    public ExportMembersReportType getExportMembersReportValue() {
        if (this.f19539a == Tag.EXPORT_MEMBERS_REPORT) {
            return this.f19755z2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EXPORT_MEMBERS_REPORT, but was Tag." + this.f19539a.name());
    }

    public ExtendedVersionHistoryChangePolicyType getExtendedVersionHistoryChangePolicyValue() {
        if (this.f19539a == Tag.EXTENDED_VERSION_HISTORY_CHANGE_POLICY) {
            return this.f19742x5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EXTENDED_VERSION_HISTORY_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public ExternalSharingCreateReportType getExternalSharingCreateReportValue() {
        if (this.f19539a == Tag.EXTERNAL_SHARING_CREATE_REPORT) {
            return this.f19342B2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EXTERNAL_SHARING_CREATE_REPORT, but was Tag." + this.f19539a.name());
    }

    public ExternalSharingReportFailedType getExternalSharingReportFailedValue() {
        if (this.f19539a == Tag.EXTERNAL_SHARING_REPORT_FAILED) {
            return this.f19350C2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EXTERNAL_SHARING_REPORT_FAILED, but was Tag." + this.f19539a.name());
    }

    public FileAddCommentType getFileAddCommentValue() {
        if (this.f19539a == Tag.FILE_ADD_COMMENT) {
            return this.f19602h;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_ADD_COMMENT, but was Tag." + this.f19539a.name());
    }

    public FileAddType getFileAddValue() {
        if (this.f19539a == Tag.FILE_ADD) {
            return this.f19459Q;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_ADD, but was Tag." + this.f19539a.name());
    }

    public FileChangeCommentSubscriptionType getFileChangeCommentSubscriptionValue() {
        if (this.f19539a == Tag.FILE_CHANGE_COMMENT_SUBSCRIPTION) {
            return this.f19611i;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_CHANGE_COMMENT_SUBSCRIPTION, but was Tag." + this.f19539a.name());
    }

    public FileCommentsChangePolicyType getFileCommentsChangePolicyValue() {
        if (this.f19539a == Tag.FILE_COMMENTS_CHANGE_POLICY) {
            return this.f19750y5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_COMMENTS_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public FileCopyType getFileCopyValue() {
        if (this.f19539a == Tag.FILE_COPY) {
            return this.f19467R;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_COPY, but was Tag." + this.f19539a.name());
    }

    public FileDeleteCommentType getFileDeleteCommentValue() {
        if (this.f19539a == Tag.FILE_DELETE_COMMENT) {
            return this.f19620j;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_DELETE_COMMENT, but was Tag." + this.f19539a.name());
    }

    public FileDeleteType getFileDeleteValue() {
        if (this.f19539a == Tag.FILE_DELETE) {
            return this.f19475S;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_DELETE, but was Tag." + this.f19539a.name());
    }

    public FileDownloadType getFileDownloadValue() {
        if (this.f19539a == Tag.FILE_DOWNLOAD) {
            return this.f19483T;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_DOWNLOAD, but was Tag." + this.f19539a.name());
    }

    public FileEditCommentType getFileEditCommentValue() {
        if (this.f19539a == Tag.FILE_EDIT_COMMENT) {
            return this.f19629k;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_EDIT_COMMENT, but was Tag." + this.f19539a.name());
    }

    public FileEditType getFileEditValue() {
        if (this.f19539a == Tag.FILE_EDIT) {
            return this.f19491U;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_EDIT, but was Tag." + this.f19539a.name());
    }

    public FileGetCopyReferenceType getFileGetCopyReferenceValue() {
        if (this.f19539a == Tag.FILE_GET_COPY_REFERENCE) {
            return this.f19499V;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_GET_COPY_REFERENCE, but was Tag." + this.f19539a.name());
    }

    public FileLikeCommentType getFileLikeCommentValue() {
        if (this.f19539a == Tag.FILE_LIKE_COMMENT) {
            return this.f19638l;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_LIKE_COMMENT, but was Tag." + this.f19539a.name());
    }

    public FileLockingLockStatusChangedType getFileLockingLockStatusChangedValue() {
        if (this.f19539a == Tag.FILE_LOCKING_LOCK_STATUS_CHANGED) {
            return this.f19507W;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_LOCKING_LOCK_STATUS_CHANGED, but was Tag." + this.f19539a.name());
    }

    public FileLockingPolicyChangedType getFileLockingPolicyChangedValue() {
        if (this.f19539a == Tag.FILE_LOCKING_POLICY_CHANGED) {
            return this.f19758z5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_LOCKING_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public FileMoveType getFileMoveValue() {
        if (this.f19539a == Tag.FILE_MOVE) {
            return this.f19515X;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_MOVE, but was Tag." + this.f19539a.name());
    }

    public FilePermanentlyDeleteType getFilePermanentlyDeleteValue() {
        if (this.f19539a == Tag.FILE_PERMANENTLY_DELETE) {
            return this.f19523Y;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_PERMANENTLY_DELETE, but was Tag." + this.f19539a.name());
    }

    public FilePreviewType getFilePreviewValue() {
        if (this.f19539a == Tag.FILE_PREVIEW) {
            return this.f19531Z;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_PREVIEW, but was Tag." + this.f19539a.name());
    }

    public FileRenameType getFileRenameValue() {
        if (this.f19539a == Tag.FILE_RENAME) {
            return this.f19540a0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_RENAME, but was Tag." + this.f19539a.name());
    }

    public FileRequestChangeType getFileRequestChangeValue() {
        if (this.f19539a == Tag.FILE_REQUEST_CHANGE) {
            return this.f19621j0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_CHANGE, but was Tag." + this.f19539a.name());
    }

    public FileRequestCloseType getFileRequestCloseValue() {
        if (this.f19539a == Tag.FILE_REQUEST_CLOSE) {
            return this.f19630k0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_CLOSE, but was Tag." + this.f19539a.name());
    }

    public FileRequestCreateType getFileRequestCreateValue() {
        if (this.f19539a == Tag.FILE_REQUEST_CREATE) {
            return this.f19639l0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_CREATE, but was Tag." + this.f19539a.name());
    }

    public FileRequestDeleteType getFileRequestDeleteValue() {
        if (this.f19539a == Tag.FILE_REQUEST_DELETE) {
            return this.f19648m0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_DELETE, but was Tag." + this.f19539a.name());
    }

    public FileRequestReceiveFileType getFileRequestReceiveFileValue() {
        if (this.f19539a == Tag.FILE_REQUEST_RECEIVE_FILE) {
            return this.f19657n0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_RECEIVE_FILE, but was Tag." + this.f19539a.name());
    }

    public FileRequestsChangePolicyType getFileRequestsChangePolicyValue() {
        if (this.f19539a == Tag.FILE_REQUESTS_CHANGE_POLICY) {
            return this.f19337A5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUESTS_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public FileRequestsEmailsEnabledType getFileRequestsEmailsEnabledValue() {
        if (this.f19539a == Tag.FILE_REQUESTS_EMAILS_ENABLED) {
            return this.f19345B5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUESTS_EMAILS_ENABLED, but was Tag." + this.f19539a.name());
    }

    public FileRequestsEmailsRestrictedToTeamOnlyType getFileRequestsEmailsRestrictedToTeamOnlyValue() {
        if (this.f19539a == Tag.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY) {
            return this.f19353C5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY, but was Tag." + this.f19539a.name());
    }

    public FileResolveCommentType getFileResolveCommentValue() {
        if (this.f19539a == Tag.FILE_RESOLVE_COMMENT) {
            return this.f19647m;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_RESOLVE_COMMENT, but was Tag." + this.f19539a.name());
    }

    public FileRestoreType getFileRestoreValue() {
        if (this.f19539a == Tag.FILE_RESTORE) {
            return this.f19549b0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_RESTORE, but was Tag." + this.f19539a.name());
    }

    public FileRevertType getFileRevertValue() {
        if (this.f19539a == Tag.FILE_REVERT) {
            return this.f19558c0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_REVERT, but was Tag." + this.f19539a.name());
    }

    public FileRollbackChangesType getFileRollbackChangesValue() {
        if (this.f19539a == Tag.FILE_ROLLBACK_CHANGES) {
            return this.f19567d0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_ROLLBACK_CHANGES, but was Tag." + this.f19539a.name());
    }

    public FileSaveCopyReferenceType getFileSaveCopyReferenceValue() {
        if (this.f19539a == Tag.FILE_SAVE_COPY_REFERENCE) {
            return this.f19576e0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_SAVE_COPY_REFERENCE, but was Tag." + this.f19539a.name());
    }

    public FileTransfersFileAddType getFileTransfersFileAddValue() {
        if (this.f19539a == Tag.FILE_TRANSFERS_FILE_ADD) {
            return this.f19462Q2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_TRANSFERS_FILE_ADD, but was Tag." + this.f19539a.name());
    }

    public FileTransfersPolicyChangedType getFileTransfersPolicyChangedValue() {
        if (this.f19539a == Tag.FILE_TRANSFERS_POLICY_CHANGED) {
            return this.f19361D5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_TRANSFERS_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public FileTransfersTransferDeleteType getFileTransfersTransferDeleteValue() {
        if (this.f19539a == Tag.FILE_TRANSFERS_TRANSFER_DELETE) {
            return this.f19470R2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_TRANSFERS_TRANSFER_DELETE, but was Tag." + this.f19539a.name());
    }

    public FileTransfersTransferDownloadType getFileTransfersTransferDownloadValue() {
        if (this.f19539a == Tag.FILE_TRANSFERS_TRANSFER_DOWNLOAD) {
            return this.f19478S2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_TRANSFERS_TRANSFER_DOWNLOAD, but was Tag." + this.f19539a.name());
    }

    public FileTransfersTransferSendType getFileTransfersTransferSendValue() {
        if (this.f19539a == Tag.FILE_TRANSFERS_TRANSFER_SEND) {
            return this.f19486T2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_TRANSFERS_TRANSFER_SEND, but was Tag." + this.f19539a.name());
    }

    public FileTransfersTransferViewType getFileTransfersTransferViewValue() {
        if (this.f19539a == Tag.FILE_TRANSFERS_TRANSFER_VIEW) {
            return this.f19494U2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_TRANSFERS_TRANSFER_VIEW, but was Tag." + this.f19539a.name());
    }

    public FileUnlikeCommentType getFileUnlikeCommentValue() {
        if (this.f19539a == Tag.FILE_UNLIKE_COMMENT) {
            return this.f19656n;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_UNLIKE_COMMENT, but was Tag." + this.f19539a.name());
    }

    public FileUnresolveCommentType getFileUnresolveCommentValue() {
        if (this.f19539a == Tag.FILE_UNRESOLVE_COMMENT) {
            return this.f19664o;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_UNRESOLVE_COMMENT, but was Tag." + this.f19539a.name());
    }

    public FolderOverviewDescriptionChangedType getFolderOverviewDescriptionChangedValue() {
        if (this.f19539a == Tag.FOLDER_OVERVIEW_DESCRIPTION_CHANGED) {
            return this.f19585f0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FOLDER_OVERVIEW_DESCRIPTION_CHANGED, but was Tag." + this.f19539a.name());
    }

    public FolderOverviewItemPinnedType getFolderOverviewItemPinnedValue() {
        if (this.f19539a == Tag.FOLDER_OVERVIEW_ITEM_PINNED) {
            return this.f19594g0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FOLDER_OVERVIEW_ITEM_PINNED, but was Tag." + this.f19539a.name());
    }

    public FolderOverviewItemUnpinnedType getFolderOverviewItemUnpinnedValue() {
        if (this.f19539a == Tag.FOLDER_OVERVIEW_ITEM_UNPINNED) {
            return this.f19603h0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FOLDER_OVERVIEW_ITEM_UNPINNED, but was Tag." + this.f19539a.name());
    }

    public GoogleSsoChangePolicyType getGoogleSsoChangePolicyValue() {
        if (this.f19539a == Tag.GOOGLE_SSO_CHANGE_POLICY) {
            return this.f19369E5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GOOGLE_SSO_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public GroupAddExternalIdType getGroupAddExternalIdValue() {
        if (this.f19539a == Tag.GROUP_ADD_EXTERNAL_ID) {
            return this.f19665o0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_ADD_EXTERNAL_ID, but was Tag." + this.f19539a.name());
    }

    public GroupAddMemberType getGroupAddMemberValue() {
        if (this.f19539a == Tag.GROUP_ADD_MEMBER) {
            return this.f19673p0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_ADD_MEMBER, but was Tag." + this.f19539a.name());
    }

    public GroupChangeExternalIdType getGroupChangeExternalIdValue() {
        if (this.f19539a == Tag.GROUP_CHANGE_EXTERNAL_ID) {
            return this.f19681q0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_CHANGE_EXTERNAL_ID, but was Tag." + this.f19539a.name());
    }

    public GroupChangeManagementTypeType getGroupChangeManagementTypeValue() {
        if (this.f19539a == Tag.GROUP_CHANGE_MANAGEMENT_TYPE) {
            return this.f19689r0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_CHANGE_MANAGEMENT_TYPE, but was Tag." + this.f19539a.name());
    }

    public GroupChangeMemberRoleType getGroupChangeMemberRoleValue() {
        if (this.f19539a == Tag.GROUP_CHANGE_MEMBER_ROLE) {
            return this.f19697s0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_CHANGE_MEMBER_ROLE, but was Tag." + this.f19539a.name());
    }

    public GroupCreateType getGroupCreateValue() {
        if (this.f19539a == Tag.GROUP_CREATE) {
            return this.f19705t0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_CREATE, but was Tag." + this.f19539a.name());
    }

    public GroupDeleteType getGroupDeleteValue() {
        if (this.f19539a == Tag.GROUP_DELETE) {
            return this.f19713u0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_DELETE, but was Tag." + this.f19539a.name());
    }

    public GroupDescriptionUpdatedType getGroupDescriptionUpdatedValue() {
        if (this.f19539a == Tag.GROUP_DESCRIPTION_UPDATED) {
            return this.f19721v0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_DESCRIPTION_UPDATED, but was Tag." + this.f19539a.name());
    }

    public GroupJoinPolicyUpdatedType getGroupJoinPolicyUpdatedValue() {
        if (this.f19539a == Tag.GROUP_JOIN_POLICY_UPDATED) {
            return this.f19729w0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_JOIN_POLICY_UPDATED, but was Tag." + this.f19539a.name());
    }

    public GroupMovedType getGroupMovedValue() {
        if (this.f19539a == Tag.GROUP_MOVED) {
            return this.f19737x0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_MOVED, but was Tag." + this.f19539a.name());
    }

    public GroupRemoveExternalIdType getGroupRemoveExternalIdValue() {
        if (this.f19539a == Tag.GROUP_REMOVE_EXTERNAL_ID) {
            return this.f19745y0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_REMOVE_EXTERNAL_ID, but was Tag." + this.f19539a.name());
    }

    public GroupRemoveMemberType getGroupRemoveMemberValue() {
        if (this.f19539a == Tag.GROUP_REMOVE_MEMBER) {
            return this.f19753z0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_REMOVE_MEMBER, but was Tag." + this.f19539a.name());
    }

    public GroupRenameType getGroupRenameValue() {
        if (this.f19539a == Tag.GROUP_RENAME) {
            return this.f19332A0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_RENAME, but was Tag." + this.f19539a.name());
    }

    public GroupUserManagementChangePolicyType getGroupUserManagementChangePolicyValue() {
        if (this.f19539a == Tag.GROUP_USER_MANAGEMENT_CHANGE_POLICY) {
            return this.f19377F5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_USER_MANAGEMENT_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public GuestAdminChangeStatusType getGuestAdminChangeStatusValue() {
        if (this.f19539a == Tag.GUEST_ADMIN_CHANGE_STATUS) {
            return this.f19490T6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GUEST_ADMIN_CHANGE_STATUS, but was Tag." + this.f19539a.name());
    }

    public GuestAdminSignedInViaTrustedTeamsType getGuestAdminSignedInViaTrustedTeamsValue() {
        if (this.f19539a == Tag.GUEST_ADMIN_SIGNED_IN_VIA_TRUSTED_TEAMS) {
            return this.f19444O0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GUEST_ADMIN_SIGNED_IN_VIA_TRUSTED_TEAMS, but was Tag." + this.f19539a.name());
    }

    public GuestAdminSignedOutViaTrustedTeamsType getGuestAdminSignedOutViaTrustedTeamsValue() {
        if (this.f19539a == Tag.GUEST_ADMIN_SIGNED_OUT_VIA_TRUSTED_TEAMS) {
            return this.f19452P0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GUEST_ADMIN_SIGNED_OUT_VIA_TRUSTED_TEAMS, but was Tag." + this.f19539a.name());
    }

    public IntegrationConnectedType getIntegrationConnectedValue() {
        if (this.f19539a == Tag.INTEGRATION_CONNECTED) {
            return this.f19584f;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INTEGRATION_CONNECTED, but was Tag." + this.f19539a.name());
    }

    public IntegrationDisconnectedType getIntegrationDisconnectedValue() {
        if (this.f19539a == Tag.INTEGRATION_DISCONNECTED) {
            return this.f19593g;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INTEGRATION_DISCONNECTED, but was Tag." + this.f19539a.name());
    }

    public IntegrationPolicyChangedType getIntegrationPolicyChangedValue() {
        if (this.f19539a == Tag.INTEGRATION_POLICY_CHANGED) {
            return this.f19385G5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INTEGRATION_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public LegalHoldsActivateAHoldType getLegalHoldsActivateAHoldValue() {
        if (this.f19539a == Tag.LEGAL_HOLDS_ACTIVATE_A_HOLD) {
            return this.f19340B0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LEGAL_HOLDS_ACTIVATE_A_HOLD, but was Tag." + this.f19539a.name());
    }

    public LegalHoldsAddMembersType getLegalHoldsAddMembersValue() {
        if (this.f19539a == Tag.LEGAL_HOLDS_ADD_MEMBERS) {
            return this.f19348C0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LEGAL_HOLDS_ADD_MEMBERS, but was Tag." + this.f19539a.name());
    }

    public LegalHoldsChangeHoldDetailsType getLegalHoldsChangeHoldDetailsValue() {
        if (this.f19539a == Tag.LEGAL_HOLDS_CHANGE_HOLD_DETAILS) {
            return this.f19356D0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LEGAL_HOLDS_CHANGE_HOLD_DETAILS, but was Tag." + this.f19539a.name());
    }

    public LegalHoldsChangeHoldNameType getLegalHoldsChangeHoldNameValue() {
        if (this.f19539a == Tag.LEGAL_HOLDS_CHANGE_HOLD_NAME) {
            return this.f19364E0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LEGAL_HOLDS_CHANGE_HOLD_NAME, but was Tag." + this.f19539a.name());
    }

    public LegalHoldsExportAHoldType getLegalHoldsExportAHoldValue() {
        if (this.f19539a == Tag.LEGAL_HOLDS_EXPORT_A_HOLD) {
            return this.f19372F0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LEGAL_HOLDS_EXPORT_A_HOLD, but was Tag." + this.f19539a.name());
    }

    public LegalHoldsExportCancelledType getLegalHoldsExportCancelledValue() {
        if (this.f19539a == Tag.LEGAL_HOLDS_EXPORT_CANCELLED) {
            return this.f19380G0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LEGAL_HOLDS_EXPORT_CANCELLED, but was Tag." + this.f19539a.name());
    }

    public LegalHoldsExportDownloadedType getLegalHoldsExportDownloadedValue() {
        if (this.f19539a == Tag.LEGAL_HOLDS_EXPORT_DOWNLOADED) {
            return this.f19388H0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LEGAL_HOLDS_EXPORT_DOWNLOADED, but was Tag." + this.f19539a.name());
    }

    public LegalHoldsExportRemovedType getLegalHoldsExportRemovedValue() {
        if (this.f19539a == Tag.LEGAL_HOLDS_EXPORT_REMOVED) {
            return this.f19396I0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LEGAL_HOLDS_EXPORT_REMOVED, but was Tag." + this.f19539a.name());
    }

    public LegalHoldsReleaseAHoldType getLegalHoldsReleaseAHoldValue() {
        if (this.f19539a == Tag.LEGAL_HOLDS_RELEASE_A_HOLD) {
            return this.f19404J0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LEGAL_HOLDS_RELEASE_A_HOLD, but was Tag." + this.f19539a.name());
    }

    public LegalHoldsRemoveMembersType getLegalHoldsRemoveMembersValue() {
        if (this.f19539a == Tag.LEGAL_HOLDS_REMOVE_MEMBERS) {
            return this.f19412K0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LEGAL_HOLDS_REMOVE_MEMBERS, but was Tag." + this.f19539a.name());
    }

    public LegalHoldsReportAHoldType getLegalHoldsReportAHoldValue() {
        if (this.f19539a == Tag.LEGAL_HOLDS_REPORT_A_HOLD) {
            return this.f19420L0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LEGAL_HOLDS_REPORT_A_HOLD, but was Tag." + this.f19539a.name());
    }

    public LoginFailType getLoginFailValue() {
        if (this.f19539a == Tag.LOGIN_FAIL) {
            return this.f19460Q0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LOGIN_FAIL, but was Tag." + this.f19539a.name());
    }

    public LoginSuccessType getLoginSuccessValue() {
        if (this.f19539a == Tag.LOGIN_SUCCESS) {
            return this.f19468R0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LOGIN_SUCCESS, but was Tag." + this.f19539a.name());
    }

    public LogoutType getLogoutValue() {
        if (this.f19539a == Tag.LOGOUT) {
            return this.f19476S0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LOGOUT, but was Tag." + this.f19539a.name());
    }

    public MemberAddExternalIdType getMemberAddExternalIdValue() {
        if (this.f19539a == Tag.MEMBER_ADD_EXTERNAL_ID) {
            return this.f19541a1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_ADD_EXTERNAL_ID, but was Tag." + this.f19539a.name());
    }

    public MemberAddNameType getMemberAddNameValue() {
        if (this.f19539a == Tag.MEMBER_ADD_NAME) {
            return this.f19550b1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_ADD_NAME, but was Tag." + this.f19539a.name());
    }

    public MemberChangeAdminRoleType getMemberChangeAdminRoleValue() {
        if (this.f19539a == Tag.MEMBER_CHANGE_ADMIN_ROLE) {
            return this.f19559c1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_CHANGE_ADMIN_ROLE, but was Tag." + this.f19539a.name());
    }

    public MemberChangeEmailType getMemberChangeEmailValue() {
        if (this.f19539a == Tag.MEMBER_CHANGE_EMAIL) {
            return this.f19568d1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_CHANGE_EMAIL, but was Tag." + this.f19539a.name());
    }

    public MemberChangeExternalIdType getMemberChangeExternalIdValue() {
        if (this.f19539a == Tag.MEMBER_CHANGE_EXTERNAL_ID) {
            return this.f19577e1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_CHANGE_EXTERNAL_ID, but was Tag." + this.f19539a.name());
    }

    public MemberChangeMembershipTypeType getMemberChangeMembershipTypeValue() {
        if (this.f19539a == Tag.MEMBER_CHANGE_MEMBERSHIP_TYPE) {
            return this.f19586f1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_CHANGE_MEMBERSHIP_TYPE, but was Tag." + this.f19539a.name());
    }

    public MemberChangeNameType getMemberChangeNameValue() {
        if (this.f19539a == Tag.MEMBER_CHANGE_NAME) {
            return this.f19595g1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_CHANGE_NAME, but was Tag." + this.f19539a.name());
    }

    public MemberChangeStatusType getMemberChangeStatusValue() {
        if (this.f19539a == Tag.MEMBER_CHANGE_STATUS) {
            return this.f19604h1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_CHANGE_STATUS, but was Tag." + this.f19539a.name());
    }

    public MemberDeleteManualContactsType getMemberDeleteManualContactsValue() {
        if (this.f19539a == Tag.MEMBER_DELETE_MANUAL_CONTACTS) {
            return this.f19613i1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_DELETE_MANUAL_CONTACTS, but was Tag." + this.f19539a.name());
    }

    public MemberDeleteProfilePhotoType getMemberDeleteProfilePhotoValue() {
        if (this.f19539a == Tag.MEMBER_DELETE_PROFILE_PHOTO) {
            return this.f19622j1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_DELETE_PROFILE_PHOTO, but was Tag." + this.f19539a.name());
    }

    public MemberPermanentlyDeleteAccountContentsType getMemberPermanentlyDeleteAccountContentsValue() {
        if (this.f19539a == Tag.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS) {
            return this.f19631k1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS, but was Tag." + this.f19539a.name());
    }

    public MemberRemoveExternalIdType getMemberRemoveExternalIdValue() {
        if (this.f19539a == Tag.MEMBER_REMOVE_EXTERNAL_ID) {
            return this.f19640l1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_REMOVE_EXTERNAL_ID, but was Tag." + this.f19539a.name());
    }

    public MemberRequestsChangePolicyType getMemberRequestsChangePolicyValue() {
        if (this.f19539a == Tag.MEMBER_REQUESTS_CHANGE_POLICY) {
            return this.f19393H5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_REQUESTS_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public MemberSendInvitePolicyChangedType getMemberSendInvitePolicyChangedValue() {
        if (this.f19539a == Tag.MEMBER_SEND_INVITE_POLICY_CHANGED) {
            return this.f19401I5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SEND_INVITE_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public MemberSetProfilePhotoType getMemberSetProfilePhotoValue() {
        if (this.f19539a == Tag.MEMBER_SET_PROFILE_PHOTO) {
            return this.f19649m1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SET_PROFILE_PHOTO, but was Tag." + this.f19539a.name());
    }

    public MemberSpaceLimitsAddCustomQuotaType getMemberSpaceLimitsAddCustomQuotaValue() {
        if (this.f19539a == Tag.MEMBER_SPACE_LIMITS_ADD_CUSTOM_QUOTA) {
            return this.f19658n1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SPACE_LIMITS_ADD_CUSTOM_QUOTA, but was Tag." + this.f19539a.name());
    }

    public MemberSpaceLimitsAddExceptionType getMemberSpaceLimitsAddExceptionValue() {
        if (this.f19539a == Tag.MEMBER_SPACE_LIMITS_ADD_EXCEPTION) {
            return this.f19409J5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SPACE_LIMITS_ADD_EXCEPTION, but was Tag." + this.f19539a.name());
    }

    public MemberSpaceLimitsChangeCapsTypePolicyType getMemberSpaceLimitsChangeCapsTypePolicyValue() {
        if (this.f19539a == Tag.MEMBER_SPACE_LIMITS_CHANGE_CAPS_TYPE_POLICY) {
            return this.f19417K5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SPACE_LIMITS_CHANGE_CAPS_TYPE_POLICY, but was Tag." + this.f19539a.name());
    }

    public MemberSpaceLimitsChangeCustomQuotaType getMemberSpaceLimitsChangeCustomQuotaValue() {
        if (this.f19539a == Tag.MEMBER_SPACE_LIMITS_CHANGE_CUSTOM_QUOTA) {
            return this.f19666o1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SPACE_LIMITS_CHANGE_CUSTOM_QUOTA, but was Tag." + this.f19539a.name());
    }

    public MemberSpaceLimitsChangePolicyType getMemberSpaceLimitsChangePolicyValue() {
        if (this.f19539a == Tag.MEMBER_SPACE_LIMITS_CHANGE_POLICY) {
            return this.f19425L5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SPACE_LIMITS_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public MemberSpaceLimitsChangeStatusType getMemberSpaceLimitsChangeStatusValue() {
        if (this.f19539a == Tag.MEMBER_SPACE_LIMITS_CHANGE_STATUS) {
            return this.f19674p1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SPACE_LIMITS_CHANGE_STATUS, but was Tag." + this.f19539a.name());
    }

    public MemberSpaceLimitsRemoveCustomQuotaType getMemberSpaceLimitsRemoveCustomQuotaValue() {
        if (this.f19539a == Tag.MEMBER_SPACE_LIMITS_REMOVE_CUSTOM_QUOTA) {
            return this.f19682q1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SPACE_LIMITS_REMOVE_CUSTOM_QUOTA, but was Tag." + this.f19539a.name());
    }

    public MemberSpaceLimitsRemoveExceptionType getMemberSpaceLimitsRemoveExceptionValue() {
        if (this.f19539a == Tag.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION) {
            return this.f19433M5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION, but was Tag." + this.f19539a.name());
    }

    public MemberSuggestType getMemberSuggestValue() {
        if (this.f19539a == Tag.MEMBER_SUGGEST) {
            return this.f19690r1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SUGGEST, but was Tag." + this.f19539a.name());
    }

    public MemberSuggestionsChangePolicyType getMemberSuggestionsChangePolicyValue() {
        if (this.f19539a == Tag.MEMBER_SUGGESTIONS_CHANGE_POLICY) {
            return this.f19441N5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SUGGESTIONS_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public MemberTransferAccountContentsType getMemberTransferAccountContentsValue() {
        if (this.f19539a == Tag.MEMBER_TRANSFER_ACCOUNT_CONTENTS) {
            return this.f19698s1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_TRANSFER_ACCOUNT_CONTENTS, but was Tag." + this.f19539a.name());
    }

    public MicrosoftOfficeAddinChangePolicyType getMicrosoftOfficeAddinChangePolicyValue() {
        if (this.f19539a == Tag.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY) {
            return this.f19449O5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public NetworkControlChangePolicyType getNetworkControlChangePolicyValue() {
        if (this.f19539a == Tag.NETWORK_CONTROL_CHANGE_POLICY) {
            return this.f19457P5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NETWORK_CONTROL_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public NoExpirationLinkGenCreateReportType getNoExpirationLinkGenCreateReportValue() {
        if (this.f19539a == Tag.NO_EXPIRATION_LINK_GEN_CREATE_REPORT) {
            return this.f19358D2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NO_EXPIRATION_LINK_GEN_CREATE_REPORT, but was Tag." + this.f19539a.name());
    }

    public NoExpirationLinkGenReportFailedType getNoExpirationLinkGenReportFailedValue() {
        if (this.f19539a == Tag.NO_EXPIRATION_LINK_GEN_REPORT_FAILED) {
            return this.f19366E2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NO_EXPIRATION_LINK_GEN_REPORT_FAILED, but was Tag." + this.f19539a.name());
    }

    public NoPasswordLinkGenCreateReportType getNoPasswordLinkGenCreateReportValue() {
        if (this.f19539a == Tag.NO_PASSWORD_LINK_GEN_CREATE_REPORT) {
            return this.f19374F2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NO_PASSWORD_LINK_GEN_CREATE_REPORT, but was Tag." + this.f19539a.name());
    }

    public NoPasswordLinkGenReportFailedType getNoPasswordLinkGenReportFailedValue() {
        if (this.f19539a == Tag.NO_PASSWORD_LINK_GEN_REPORT_FAILED) {
            return this.f19382G2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NO_PASSWORD_LINK_GEN_REPORT_FAILED, but was Tag." + this.f19539a.name());
    }

    public NoPasswordLinkViewCreateReportType getNoPasswordLinkViewCreateReportValue() {
        if (this.f19539a == Tag.NO_PASSWORD_LINK_VIEW_CREATE_REPORT) {
            return this.f19390H2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NO_PASSWORD_LINK_VIEW_CREATE_REPORT, but was Tag." + this.f19539a.name());
    }

    public NoPasswordLinkViewReportFailedType getNoPasswordLinkViewReportFailedValue() {
        if (this.f19539a == Tag.NO_PASSWORD_LINK_VIEW_REPORT_FAILED) {
            return this.f19398I2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NO_PASSWORD_LINK_VIEW_REPORT_FAILED, but was Tag." + this.f19539a.name());
    }

    public NoteAclInviteOnlyType getNoteAclInviteOnlyValue() {
        if (this.f19539a == Tag.NOTE_ACL_INVITE_ONLY) {
            return this.f19502V2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NOTE_ACL_INVITE_ONLY, but was Tag." + this.f19539a.name());
    }

    public NoteAclLinkType getNoteAclLinkValue() {
        if (this.f19539a == Tag.NOTE_ACL_LINK) {
            return this.f19510W2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NOTE_ACL_LINK, but was Tag." + this.f19539a.name());
    }

    public NoteAclTeamLinkType getNoteAclTeamLinkValue() {
        if (this.f19539a == Tag.NOTE_ACL_TEAM_LINK) {
            return this.f19518X2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NOTE_ACL_TEAM_LINK, but was Tag." + this.f19539a.name());
    }

    public NoteShareReceiveType getNoteShareReceiveValue() {
        if (this.f19539a == Tag.NOTE_SHARE_RECEIVE) {
            return this.f19534Z2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NOTE_SHARE_RECEIVE, but was Tag." + this.f19539a.name());
    }

    public NoteSharedType getNoteSharedValue() {
        if (this.f19539a == Tag.NOTE_SHARED) {
            return this.f19526Y2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NOTE_SHARED, but was Tag." + this.f19539a.name());
    }

    public OpenNoteSharedType getOpenNoteSharedValue() {
        if (this.f19539a == Tag.OPEN_NOTE_SHARED) {
            return this.f19543a3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.OPEN_NOTE_SHARED, but was Tag." + this.f19539a.name());
    }

    public OutdatedLinkViewCreateReportType getOutdatedLinkViewCreateReportValue() {
        if (this.f19539a == Tag.OUTDATED_LINK_VIEW_CREATE_REPORT) {
            return this.f19406J2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.OUTDATED_LINK_VIEW_CREATE_REPORT, but was Tag." + this.f19539a.name());
    }

    public OutdatedLinkViewReportFailedType getOutdatedLinkViewReportFailedValue() {
        if (this.f19539a == Tag.OUTDATED_LINK_VIEW_REPORT_FAILED) {
            return this.f19414K2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.OUTDATED_LINK_VIEW_REPORT_FAILED, but was Tag." + this.f19539a.name());
    }

    public PaperAdminExportStartType getPaperAdminExportStartValue() {
        if (this.f19539a == Tag.PAPER_ADMIN_EXPORT_START) {
            return this.f19422L2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_ADMIN_EXPORT_START, but was Tag." + this.f19539a.name());
    }

    public PaperChangeDeploymentPolicyType getPaperChangeDeploymentPolicyValue() {
        if (this.f19539a == Tag.PAPER_CHANGE_DEPLOYMENT_POLICY) {
            return this.f19465Q5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CHANGE_DEPLOYMENT_POLICY, but was Tag." + this.f19539a.name());
    }

    public PaperChangeMemberLinkPolicyType getPaperChangeMemberLinkPolicyValue() {
        if (this.f19539a == Tag.PAPER_CHANGE_MEMBER_LINK_POLICY) {
            return this.f19473R5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CHANGE_MEMBER_LINK_POLICY, but was Tag." + this.f19539a.name());
    }

    public PaperChangeMemberPolicyType getPaperChangeMemberPolicyValue() {
        if (this.f19539a == Tag.PAPER_CHANGE_MEMBER_POLICY) {
            return this.f19481S5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CHANGE_MEMBER_POLICY, but was Tag." + this.f19539a.name());
    }

    public PaperChangePolicyType getPaperChangePolicyValue() {
        if (this.f19539a == Tag.PAPER_CHANGE_POLICY) {
            return this.f19489T5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public PaperContentAddMemberType getPaperContentAddMemberValue() {
        if (this.f19539a == Tag.PAPER_CONTENT_ADD_MEMBER) {
            return this.f19373F1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_ADD_MEMBER, but was Tag." + this.f19539a.name());
    }

    public PaperContentAddToFolderType getPaperContentAddToFolderValue() {
        if (this.f19539a == Tag.PAPER_CONTENT_ADD_TO_FOLDER) {
            return this.f19381G1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_ADD_TO_FOLDER, but was Tag." + this.f19539a.name());
    }

    public PaperContentArchiveType getPaperContentArchiveValue() {
        if (this.f19539a == Tag.PAPER_CONTENT_ARCHIVE) {
            return this.f19389H1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_ARCHIVE, but was Tag." + this.f19539a.name());
    }

    public PaperContentCreateType getPaperContentCreateValue() {
        if (this.f19539a == Tag.PAPER_CONTENT_CREATE) {
            return this.f19397I1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_CREATE, but was Tag." + this.f19539a.name());
    }

    public PaperContentPermanentlyDeleteType getPaperContentPermanentlyDeleteValue() {
        if (this.f19539a == Tag.PAPER_CONTENT_PERMANENTLY_DELETE) {
            return this.f19405J1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_PERMANENTLY_DELETE, but was Tag." + this.f19539a.name());
    }

    public PaperContentRemoveFromFolderType getPaperContentRemoveFromFolderValue() {
        if (this.f19539a == Tag.PAPER_CONTENT_REMOVE_FROM_FOLDER) {
            return this.f19413K1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_REMOVE_FROM_FOLDER, but was Tag." + this.f19539a.name());
    }

    public PaperContentRemoveMemberType getPaperContentRemoveMemberValue() {
        if (this.f19539a == Tag.PAPER_CONTENT_REMOVE_MEMBER) {
            return this.f19421L1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_REMOVE_MEMBER, but was Tag." + this.f19539a.name());
    }

    public PaperContentRenameType getPaperContentRenameValue() {
        if (this.f19539a == Tag.PAPER_CONTENT_RENAME) {
            return this.f19429M1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_RENAME, but was Tag." + this.f19539a.name());
    }

    public PaperContentRestoreType getPaperContentRestoreValue() {
        if (this.f19539a == Tag.PAPER_CONTENT_RESTORE) {
            return this.f19437N1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_RESTORE, but was Tag." + this.f19539a.name());
    }

    public PaperDefaultFolderPolicyChangedType getPaperDefaultFolderPolicyChangedValue() {
        if (this.f19539a == Tag.PAPER_DEFAULT_FOLDER_POLICY_CHANGED) {
            return this.f19497U5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DEFAULT_FOLDER_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public PaperDesktopPolicyChangedType getPaperDesktopPolicyChangedValue() {
        if (this.f19539a == Tag.PAPER_DESKTOP_POLICY_CHANGED) {
            return this.f19505V5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DESKTOP_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public PaperDocAddCommentType getPaperDocAddCommentValue() {
        if (this.f19539a == Tag.PAPER_DOC_ADD_COMMENT) {
            return this.f19445O1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_ADD_COMMENT, but was Tag." + this.f19539a.name());
    }

    public PaperDocChangeMemberRoleType getPaperDocChangeMemberRoleValue() {
        if (this.f19539a == Tag.PAPER_DOC_CHANGE_MEMBER_ROLE) {
            return this.f19453P1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_CHANGE_MEMBER_ROLE, but was Tag." + this.f19539a.name());
    }

    public PaperDocChangeSharingPolicyType getPaperDocChangeSharingPolicyValue() {
        if (this.f19539a == Tag.PAPER_DOC_CHANGE_SHARING_POLICY) {
            return this.f19461Q1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_CHANGE_SHARING_POLICY, but was Tag." + this.f19539a.name());
    }

    public PaperDocChangeSubscriptionType getPaperDocChangeSubscriptionValue() {
        if (this.f19539a == Tag.PAPER_DOC_CHANGE_SUBSCRIPTION) {
            return this.f19469R1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_CHANGE_SUBSCRIPTION, but was Tag." + this.f19539a.name());
    }

    public PaperDocDeleteCommentType getPaperDocDeleteCommentValue() {
        if (this.f19539a == Tag.PAPER_DOC_DELETE_COMMENT) {
            return this.f19485T1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_DELETE_COMMENT, but was Tag." + this.f19539a.name());
    }

    public PaperDocDeletedType getPaperDocDeletedValue() {
        if (this.f19539a == Tag.PAPER_DOC_DELETED) {
            return this.f19477S1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_DELETED, but was Tag." + this.f19539a.name());
    }

    public PaperDocDownloadType getPaperDocDownloadValue() {
        if (this.f19539a == Tag.PAPER_DOC_DOWNLOAD) {
            return this.f19493U1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_DOWNLOAD, but was Tag." + this.f19539a.name());
    }

    public PaperDocEditCommentType getPaperDocEditCommentValue() {
        if (this.f19539a == Tag.PAPER_DOC_EDIT_COMMENT) {
            return this.f19509W1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_EDIT_COMMENT, but was Tag." + this.f19539a.name());
    }

    public PaperDocEditType getPaperDocEditValue() {
        if (this.f19539a == Tag.PAPER_DOC_EDIT) {
            return this.f19501V1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_EDIT, but was Tag." + this.f19539a.name());
    }

    public PaperDocFollowedType getPaperDocFollowedValue() {
        if (this.f19539a == Tag.PAPER_DOC_FOLLOWED) {
            return this.f19517X1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_FOLLOWED, but was Tag." + this.f19539a.name());
    }

    public PaperDocMentionType getPaperDocMentionValue() {
        if (this.f19539a == Tag.PAPER_DOC_MENTION) {
            return this.f19525Y1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_MENTION, but was Tag." + this.f19539a.name());
    }

    public PaperDocOwnershipChangedType getPaperDocOwnershipChangedValue() {
        if (this.f19539a == Tag.PAPER_DOC_OWNERSHIP_CHANGED) {
            return this.f19533Z1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_OWNERSHIP_CHANGED, but was Tag." + this.f19539a.name());
    }

    public PaperDocRequestAccessType getPaperDocRequestAccessValue() {
        if (this.f19539a == Tag.PAPER_DOC_REQUEST_ACCESS) {
            return this.f19542a2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_REQUEST_ACCESS, but was Tag." + this.f19539a.name());
    }

    public PaperDocResolveCommentType getPaperDocResolveCommentValue() {
        if (this.f19539a == Tag.PAPER_DOC_RESOLVE_COMMENT) {
            return this.f19551b2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_RESOLVE_COMMENT, but was Tag." + this.f19539a.name());
    }

    public PaperDocRevertType getPaperDocRevertValue() {
        if (this.f19539a == Tag.PAPER_DOC_REVERT) {
            return this.f19560c2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_REVERT, but was Tag." + this.f19539a.name());
    }

    public PaperDocSlackShareType getPaperDocSlackShareValue() {
        if (this.f19539a == Tag.PAPER_DOC_SLACK_SHARE) {
            return this.f19569d2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_SLACK_SHARE, but was Tag." + this.f19539a.name());
    }

    public PaperDocTeamInviteType getPaperDocTeamInviteValue() {
        if (this.f19539a == Tag.PAPER_DOC_TEAM_INVITE) {
            return this.f19578e2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_TEAM_INVITE, but was Tag." + this.f19539a.name());
    }

    public PaperDocTrashedType getPaperDocTrashedValue() {
        if (this.f19539a == Tag.PAPER_DOC_TRASHED) {
            return this.f19587f2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_TRASHED, but was Tag." + this.f19539a.name());
    }

    public PaperDocUnresolveCommentType getPaperDocUnresolveCommentValue() {
        if (this.f19539a == Tag.PAPER_DOC_UNRESOLVE_COMMENT) {
            return this.f19596g2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_UNRESOLVE_COMMENT, but was Tag." + this.f19539a.name());
    }

    public PaperDocUntrashedType getPaperDocUntrashedValue() {
        if (this.f19539a == Tag.PAPER_DOC_UNTRASHED) {
            return this.f19605h2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_UNTRASHED, but was Tag." + this.f19539a.name());
    }

    public PaperDocViewType getPaperDocViewValue() {
        if (this.f19539a == Tag.PAPER_DOC_VIEW) {
            return this.f19614i2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_VIEW, but was Tag." + this.f19539a.name());
    }

    public PaperEnabledUsersGroupAdditionType getPaperEnabledUsersGroupAdditionValue() {
        if (this.f19539a == Tag.PAPER_ENABLED_USERS_GROUP_ADDITION) {
            return this.f19513W5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_ENABLED_USERS_GROUP_ADDITION, but was Tag." + this.f19539a.name());
    }

    public PaperEnabledUsersGroupRemovalType getPaperEnabledUsersGroupRemovalValue() {
        if (this.f19539a == Tag.PAPER_ENABLED_USERS_GROUP_REMOVAL) {
            return this.f19521X5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_ENABLED_USERS_GROUP_REMOVAL, but was Tag." + this.f19539a.name());
    }

    public PaperExternalViewAllowType getPaperExternalViewAllowValue() {
        if (this.f19539a == Tag.PAPER_EXTERNAL_VIEW_ALLOW) {
            return this.f19623j2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_EXTERNAL_VIEW_ALLOW, but was Tag." + this.f19539a.name());
    }

    public PaperExternalViewDefaultTeamType getPaperExternalViewDefaultTeamValue() {
        if (this.f19539a == Tag.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM) {
            return this.f19632k2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM, but was Tag." + this.f19539a.name());
    }

    public PaperExternalViewForbidType getPaperExternalViewForbidValue() {
        if (this.f19539a == Tag.PAPER_EXTERNAL_VIEW_FORBID) {
            return this.f19641l2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_EXTERNAL_VIEW_FORBID, but was Tag." + this.f19539a.name());
    }

    public PaperFolderChangeSubscriptionType getPaperFolderChangeSubscriptionValue() {
        if (this.f19539a == Tag.PAPER_FOLDER_CHANGE_SUBSCRIPTION) {
            return this.f19650m2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_FOLDER_CHANGE_SUBSCRIPTION, but was Tag." + this.f19539a.name());
    }

    public PaperFolderDeletedType getPaperFolderDeletedValue() {
        if (this.f19539a == Tag.PAPER_FOLDER_DELETED) {
            return this.f19659n2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_FOLDER_DELETED, but was Tag." + this.f19539a.name());
    }

    public PaperFolderFollowedType getPaperFolderFollowedValue() {
        if (this.f19539a == Tag.PAPER_FOLDER_FOLLOWED) {
            return this.f19667o2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_FOLDER_FOLLOWED, but was Tag." + this.f19539a.name());
    }

    public PaperFolderTeamInviteType getPaperFolderTeamInviteValue() {
        if (this.f19539a == Tag.PAPER_FOLDER_TEAM_INVITE) {
            return this.f19675p2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_FOLDER_TEAM_INVITE, but was Tag." + this.f19539a.name());
    }

    public PaperPublishedLinkChangePermissionType getPaperPublishedLinkChangePermissionValue() {
        if (this.f19539a == Tag.PAPER_PUBLISHED_LINK_CHANGE_PERMISSION) {
            return this.f19683q2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_PUBLISHED_LINK_CHANGE_PERMISSION, but was Tag." + this.f19539a.name());
    }

    public PaperPublishedLinkCreateType getPaperPublishedLinkCreateValue() {
        if (this.f19539a == Tag.PAPER_PUBLISHED_LINK_CREATE) {
            return this.f19691r2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_PUBLISHED_LINK_CREATE, but was Tag." + this.f19539a.name());
    }

    public PaperPublishedLinkDisabledType getPaperPublishedLinkDisabledValue() {
        if (this.f19539a == Tag.PAPER_PUBLISHED_LINK_DISABLED) {
            return this.f19699s2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_PUBLISHED_LINK_DISABLED, but was Tag." + this.f19539a.name());
    }

    public PaperPublishedLinkViewType getPaperPublishedLinkViewValue() {
        if (this.f19539a == Tag.PAPER_PUBLISHED_LINK_VIEW) {
            return this.f19707t2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_PUBLISHED_LINK_VIEW, but was Tag." + this.f19539a.name());
    }

    public PasswordChangeType getPasswordChangeValue() {
        if (this.f19539a == Tag.PASSWORD_CHANGE) {
            return this.f19715u2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PASSWORD_CHANGE, but was Tag." + this.f19539a.name());
    }

    public PasswordResetAllType getPasswordResetAllValue() {
        if (this.f19539a == Tag.PASSWORD_RESET_ALL) {
            return this.f19731w2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PASSWORD_RESET_ALL, but was Tag." + this.f19539a.name());
    }

    public PasswordResetType getPasswordResetValue() {
        if (this.f19539a == Tag.PASSWORD_RESET) {
            return this.f19723v2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PASSWORD_RESET, but was Tag." + this.f19539a.name());
    }

    public PasswordStrengthRequirementsChangePolicyType getPasswordStrengthRequirementsChangePolicyValue() {
        if (this.f19539a == Tag.PASSWORD_STRENGTH_REQUIREMENTS_CHANGE_POLICY) {
            return this.f19529Y5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PASSWORD_STRENGTH_REQUIREMENTS_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public PendingSecondaryEmailAddedType getPendingSecondaryEmailAddedValue() {
        if (this.f19539a == Tag.PENDING_SECONDARY_EMAIL_ADDED) {
            return this.f19706t1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PENDING_SECONDARY_EMAIL_ADDED, but was Tag." + this.f19539a.name());
    }

    public PermanentDeleteChangePolicyType getPermanentDeleteChangePolicyValue() {
        if (this.f19539a == Tag.PERMANENT_DELETE_CHANGE_POLICY) {
            return this.f19537Z5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PERMANENT_DELETE_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public ResellerSupportChangePolicyType getResellerSupportChangePolicyValue() {
        if (this.f19539a == Tag.RESELLER_SUPPORT_CHANGE_POLICY) {
            return this.f19546a6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.RESELLER_SUPPORT_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public ResellerSupportSessionEndType getResellerSupportSessionEndValue() {
        if (this.f19539a == Tag.RESELLER_SUPPORT_SESSION_END) {
            return this.f19484T0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.RESELLER_SUPPORT_SESSION_END, but was Tag." + this.f19539a.name());
    }

    public ResellerSupportSessionStartType getResellerSupportSessionStartValue() {
        if (this.f19539a == Tag.RESELLER_SUPPORT_SESSION_START) {
            return this.f19492U0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.RESELLER_SUPPORT_SESSION_START, but was Tag." + this.f19539a.name());
    }

    public RewindFolderType getRewindFolderValue() {
        if (this.f19539a == Tag.REWIND_FOLDER) {
            return this.f19612i0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.REWIND_FOLDER, but was Tag." + this.f19539a.name());
    }

    public RewindPolicyChangedType getRewindPolicyChangedValue() {
        if (this.f19539a == Tag.REWIND_POLICY_CHANGED) {
            return this.f19555b6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.REWIND_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public SecondaryEmailDeletedType getSecondaryEmailDeletedValue() {
        if (this.f19539a == Tag.SECONDARY_EMAIL_DELETED) {
            return this.f19714u1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SECONDARY_EMAIL_DELETED, but was Tag." + this.f19539a.name());
    }

    public SecondaryEmailVerifiedType getSecondaryEmailVerifiedValue() {
        if (this.f19539a == Tag.SECONDARY_EMAIL_VERIFIED) {
            return this.f19722v1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SECONDARY_EMAIL_VERIFIED, but was Tag." + this.f19539a.name());
    }

    public SecondaryMailsPolicyChangedType getSecondaryMailsPolicyChangedValue() {
        if (this.f19539a == Tag.SECONDARY_MAILS_POLICY_CHANGED) {
            return this.f19730w1;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SECONDARY_MAILS_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public SendForSignaturePolicyChangedType getSendForSignaturePolicyChangedValue() {
        if (this.f19539a == Tag.SEND_FOR_SIGNATURE_POLICY_CHANGED) {
            return this.f19564c6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SEND_FOR_SIGNATURE_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public SfAddGroupType getSfAddGroupValue() {
        if (this.f19539a == Tag.SF_ADD_GROUP) {
            return this.f19552b3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_ADD_GROUP, but was Tag." + this.f19539a.name());
    }

    public SfAllowNonMembersToViewSharedLinksType getSfAllowNonMembersToViewSharedLinksValue() {
        if (this.f19539a == Tag.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS) {
            return this.f19561c3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS, but was Tag." + this.f19539a.name());
    }

    public SfExternalInviteWarnType getSfExternalInviteWarnValue() {
        if (this.f19539a == Tag.SF_EXTERNAL_INVITE_WARN) {
            return this.f19570d3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_EXTERNAL_INVITE_WARN, but was Tag." + this.f19539a.name());
    }

    public SfFbInviteChangeRoleType getSfFbInviteChangeRoleValue() {
        if (this.f19539a == Tag.SF_FB_INVITE_CHANGE_ROLE) {
            return this.f19588f3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_FB_INVITE_CHANGE_ROLE, but was Tag." + this.f19539a.name());
    }

    public SfFbInviteType getSfFbInviteValue() {
        if (this.f19539a == Tag.SF_FB_INVITE) {
            return this.f19579e3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_FB_INVITE, but was Tag." + this.f19539a.name());
    }

    public SfFbUninviteType getSfFbUninviteValue() {
        if (this.f19539a == Tag.SF_FB_UNINVITE) {
            return this.f19597g3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_FB_UNINVITE, but was Tag." + this.f19539a.name());
    }

    public SfInviteGroupType getSfInviteGroupValue() {
        if (this.f19539a == Tag.SF_INVITE_GROUP) {
            return this.f19606h3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_INVITE_GROUP, but was Tag." + this.f19539a.name());
    }

    public SfTeamGrantAccessType getSfTeamGrantAccessValue() {
        if (this.f19539a == Tag.SF_TEAM_GRANT_ACCESS) {
            return this.f19615i3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_GRANT_ACCESS, but was Tag." + this.f19539a.name());
    }

    public SfTeamInviteChangeRoleType getSfTeamInviteChangeRoleValue() {
        if (this.f19539a == Tag.SF_TEAM_INVITE_CHANGE_ROLE) {
            return this.f19633k3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_INVITE_CHANGE_ROLE, but was Tag." + this.f19539a.name());
    }

    public SfTeamInviteType getSfTeamInviteValue() {
        if (this.f19539a == Tag.SF_TEAM_INVITE) {
            return this.f19624j3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_INVITE, but was Tag." + this.f19539a.name());
    }

    public SfTeamJoinFromOobLinkType getSfTeamJoinFromOobLinkValue() {
        if (this.f19539a == Tag.SF_TEAM_JOIN_FROM_OOB_LINK) {
            return this.f19651m3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_JOIN_FROM_OOB_LINK, but was Tag." + this.f19539a.name());
    }

    public SfTeamJoinType getSfTeamJoinValue() {
        if (this.f19539a == Tag.SF_TEAM_JOIN) {
            return this.f19642l3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_JOIN, but was Tag." + this.f19539a.name());
    }

    public SfTeamUninviteType getSfTeamUninviteValue() {
        if (this.f19539a == Tag.SF_TEAM_UNINVITE) {
            return this.f19660n3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_UNINVITE, but was Tag." + this.f19539a.name());
    }

    public SharedContentAddInviteesType getSharedContentAddInviteesValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_ADD_INVITEES) {
            return this.f19668o3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_ADD_INVITEES, but was Tag." + this.f19539a.name());
    }

    public SharedContentAddLinkExpiryType getSharedContentAddLinkExpiryValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_ADD_LINK_EXPIRY) {
            return this.f19676p3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_ADD_LINK_EXPIRY, but was Tag." + this.f19539a.name());
    }

    public SharedContentAddLinkPasswordType getSharedContentAddLinkPasswordValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_ADD_LINK_PASSWORD) {
            return this.f19684q3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_ADD_LINK_PASSWORD, but was Tag." + this.f19539a.name());
    }

    public SharedContentAddMemberType getSharedContentAddMemberValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_ADD_MEMBER) {
            return this.f19692r3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_ADD_MEMBER, but was Tag." + this.f19539a.name());
    }

    public SharedContentChangeDownloadsPolicyType getSharedContentChangeDownloadsPolicyValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY) {
            return this.f19700s3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY, but was Tag." + this.f19539a.name());
    }

    public SharedContentChangeInviteeRoleType getSharedContentChangeInviteeRoleValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_CHANGE_INVITEE_ROLE) {
            return this.f19708t3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_INVITEE_ROLE, but was Tag." + this.f19539a.name());
    }

    public SharedContentChangeLinkAudienceType getSharedContentChangeLinkAudienceValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_CHANGE_LINK_AUDIENCE) {
            return this.f19716u3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_LINK_AUDIENCE, but was Tag." + this.f19539a.name());
    }

    public SharedContentChangeLinkExpiryType getSharedContentChangeLinkExpiryValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_CHANGE_LINK_EXPIRY) {
            return this.f19724v3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_LINK_EXPIRY, but was Tag." + this.f19539a.name());
    }

    public SharedContentChangeLinkPasswordType getSharedContentChangeLinkPasswordValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_CHANGE_LINK_PASSWORD) {
            return this.f19732w3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_LINK_PASSWORD, but was Tag." + this.f19539a.name());
    }

    public SharedContentChangeMemberRoleType getSharedContentChangeMemberRoleValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_CHANGE_MEMBER_ROLE) {
            return this.f19740x3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_MEMBER_ROLE, but was Tag." + this.f19539a.name());
    }

    public SharedContentChangeViewerInfoPolicyType getSharedContentChangeViewerInfoPolicyValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY) {
            return this.f19748y3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY, but was Tag." + this.f19539a.name());
    }

    public SharedContentClaimInvitationType getSharedContentClaimInvitationValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_CLAIM_INVITATION) {
            return this.f19756z3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CLAIM_INVITATION, but was Tag." + this.f19539a.name());
    }

    public SharedContentCopyType getSharedContentCopyValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_COPY) {
            return this.f19335A3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_COPY, but was Tag." + this.f19539a.name());
    }

    public SharedContentDownloadType getSharedContentDownloadValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_DOWNLOAD) {
            return this.f19343B3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_DOWNLOAD, but was Tag." + this.f19539a.name());
    }

    public SharedContentRelinquishMembershipType getSharedContentRelinquishMembershipValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_RELINQUISH_MEMBERSHIP) {
            return this.f19351C3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_RELINQUISH_MEMBERSHIP, but was Tag." + this.f19539a.name());
    }

    public SharedContentRemoveInviteesType getSharedContentRemoveInviteesValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_REMOVE_INVITEES) {
            return this.f19359D3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_REMOVE_INVITEES, but was Tag." + this.f19539a.name());
    }

    public SharedContentRemoveLinkExpiryType getSharedContentRemoveLinkExpiryValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_REMOVE_LINK_EXPIRY) {
            return this.f19367E3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_REMOVE_LINK_EXPIRY, but was Tag." + this.f19539a.name());
    }

    public SharedContentRemoveLinkPasswordType getSharedContentRemoveLinkPasswordValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_REMOVE_LINK_PASSWORD) {
            return this.f19375F3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_REMOVE_LINK_PASSWORD, but was Tag." + this.f19539a.name());
    }

    public SharedContentRemoveMemberType getSharedContentRemoveMemberValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_REMOVE_MEMBER) {
            return this.f19383G3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_REMOVE_MEMBER, but was Tag." + this.f19539a.name());
    }

    public SharedContentRequestAccessType getSharedContentRequestAccessValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_REQUEST_ACCESS) {
            return this.f19391H3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_REQUEST_ACCESS, but was Tag." + this.f19539a.name());
    }

    public SharedContentRestoreInviteesType getSharedContentRestoreInviteesValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_RESTORE_INVITEES) {
            return this.f19399I3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_RESTORE_INVITEES, but was Tag." + this.f19539a.name());
    }

    public SharedContentRestoreMemberType getSharedContentRestoreMemberValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_RESTORE_MEMBER) {
            return this.f19407J3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_RESTORE_MEMBER, but was Tag." + this.f19539a.name());
    }

    public SharedContentUnshareType getSharedContentUnshareValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_UNSHARE) {
            return this.f19415K3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_UNSHARE, but was Tag." + this.f19539a.name());
    }

    public SharedContentViewType getSharedContentViewValue() {
        if (this.f19539a == Tag.SHARED_CONTENT_VIEW) {
            return this.f19423L3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_VIEW, but was Tag." + this.f19539a.name());
    }

    public SharedFolderChangeLinkPolicyType getSharedFolderChangeLinkPolicyValue() {
        if (this.f19539a == Tag.SHARED_FOLDER_CHANGE_LINK_POLICY) {
            return this.f19431M3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_CHANGE_LINK_POLICY, but was Tag." + this.f19539a.name());
    }

    public SharedFolderChangeMembersInheritancePolicyType getSharedFolderChangeMembersInheritancePolicyValue() {
        if (this.f19539a == Tag.SHARED_FOLDER_CHANGE_MEMBERS_INHERITANCE_POLICY) {
            return this.f19439N3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_CHANGE_MEMBERS_INHERITANCE_POLICY, but was Tag." + this.f19539a.name());
    }

    public SharedFolderChangeMembersManagementPolicyType getSharedFolderChangeMembersManagementPolicyValue() {
        if (this.f19539a == Tag.SHARED_FOLDER_CHANGE_MEMBERS_MANAGEMENT_POLICY) {
            return this.f19447O3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_CHANGE_MEMBERS_MANAGEMENT_POLICY, but was Tag." + this.f19539a.name());
    }

    public SharedFolderChangeMembersPolicyType getSharedFolderChangeMembersPolicyValue() {
        if (this.f19539a == Tag.SHARED_FOLDER_CHANGE_MEMBERS_POLICY) {
            return this.f19455P3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_CHANGE_MEMBERS_POLICY, but was Tag." + this.f19539a.name());
    }

    public SharedFolderCreateType getSharedFolderCreateValue() {
        if (this.f19539a == Tag.SHARED_FOLDER_CREATE) {
            return this.f19463Q3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_CREATE, but was Tag." + this.f19539a.name());
    }

    public SharedFolderDeclineInvitationType getSharedFolderDeclineInvitationValue() {
        if (this.f19539a == Tag.SHARED_FOLDER_DECLINE_INVITATION) {
            return this.f19471R3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_DECLINE_INVITATION, but was Tag." + this.f19539a.name());
    }

    public SharedFolderMountType getSharedFolderMountValue() {
        if (this.f19539a == Tag.SHARED_FOLDER_MOUNT) {
            return this.f19479S3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_MOUNT, but was Tag." + this.f19539a.name());
    }

    public SharedFolderNestType getSharedFolderNestValue() {
        if (this.f19539a == Tag.SHARED_FOLDER_NEST) {
            return this.f19487T3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_NEST, but was Tag." + this.f19539a.name());
    }

    public SharedFolderTransferOwnershipType getSharedFolderTransferOwnershipValue() {
        if (this.f19539a == Tag.SHARED_FOLDER_TRANSFER_OWNERSHIP) {
            return this.f19495U3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_TRANSFER_OWNERSHIP, but was Tag." + this.f19539a.name());
    }

    public SharedFolderUnmountType getSharedFolderUnmountValue() {
        if (this.f19539a == Tag.SHARED_FOLDER_UNMOUNT) {
            return this.f19503V3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_UNMOUNT, but was Tag." + this.f19539a.name());
    }

    public SharedLinkAddExpiryType getSharedLinkAddExpiryValue() {
        if (this.f19539a == Tag.SHARED_LINK_ADD_EXPIRY) {
            return this.f19511W3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_ADD_EXPIRY, but was Tag." + this.f19539a.name());
    }

    public SharedLinkChangeExpiryType getSharedLinkChangeExpiryValue() {
        if (this.f19539a == Tag.SHARED_LINK_CHANGE_EXPIRY) {
            return this.f19519X3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_CHANGE_EXPIRY, but was Tag." + this.f19539a.name());
    }

    public SharedLinkChangeVisibilityType getSharedLinkChangeVisibilityValue() {
        if (this.f19539a == Tag.SHARED_LINK_CHANGE_VISIBILITY) {
            return this.f19527Y3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_CHANGE_VISIBILITY, but was Tag." + this.f19539a.name());
    }

    public SharedLinkCopyType getSharedLinkCopyValue() {
        if (this.f19539a == Tag.SHARED_LINK_COPY) {
            return this.f19535Z3;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_COPY, but was Tag." + this.f19539a.name());
    }

    public SharedLinkCreateType getSharedLinkCreateValue() {
        if (this.f19539a == Tag.SHARED_LINK_CREATE) {
            return this.f19544a4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_CREATE, but was Tag." + this.f19539a.name());
    }

    public SharedLinkDisableType getSharedLinkDisableValue() {
        if (this.f19539a == Tag.SHARED_LINK_DISABLE) {
            return this.f19553b4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_DISABLE, but was Tag." + this.f19539a.name());
    }

    public SharedLinkDownloadType getSharedLinkDownloadValue() {
        if (this.f19539a == Tag.SHARED_LINK_DOWNLOAD) {
            return this.f19562c4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_DOWNLOAD, but was Tag." + this.f19539a.name());
    }

    public SharedLinkRemoveExpiryType getSharedLinkRemoveExpiryValue() {
        if (this.f19539a == Tag.SHARED_LINK_REMOVE_EXPIRY) {
            return this.f19571d4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_REMOVE_EXPIRY, but was Tag." + this.f19539a.name());
    }

    public SharedLinkSettingsAddExpirationType getSharedLinkSettingsAddExpirationValue() {
        if (this.f19539a == Tag.SHARED_LINK_SETTINGS_ADD_EXPIRATION) {
            return this.f19580e4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_SETTINGS_ADD_EXPIRATION, but was Tag." + this.f19539a.name());
    }

    public SharedLinkSettingsAddPasswordType getSharedLinkSettingsAddPasswordValue() {
        if (this.f19539a == Tag.SHARED_LINK_SETTINGS_ADD_PASSWORD) {
            return this.f19589f4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_SETTINGS_ADD_PASSWORD, but was Tag." + this.f19539a.name());
    }

    public SharedLinkSettingsAllowDownloadDisabledType getSharedLinkSettingsAllowDownloadDisabledValue() {
        if (this.f19539a == Tag.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_DISABLED) {
            return this.f19598g4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_DISABLED, but was Tag." + this.f19539a.name());
    }

    public SharedLinkSettingsAllowDownloadEnabledType getSharedLinkSettingsAllowDownloadEnabledValue() {
        if (this.f19539a == Tag.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_ENABLED) {
            return this.f19607h4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_ENABLED, but was Tag." + this.f19539a.name());
    }

    public SharedLinkSettingsChangeAudienceType getSharedLinkSettingsChangeAudienceValue() {
        if (this.f19539a == Tag.SHARED_LINK_SETTINGS_CHANGE_AUDIENCE) {
            return this.f19616i4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_SETTINGS_CHANGE_AUDIENCE, but was Tag." + this.f19539a.name());
    }

    public SharedLinkSettingsChangeExpirationType getSharedLinkSettingsChangeExpirationValue() {
        if (this.f19539a == Tag.SHARED_LINK_SETTINGS_CHANGE_EXPIRATION) {
            return this.f19625j4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_SETTINGS_CHANGE_EXPIRATION, but was Tag." + this.f19539a.name());
    }

    public SharedLinkSettingsChangePasswordType getSharedLinkSettingsChangePasswordValue() {
        if (this.f19539a == Tag.SHARED_LINK_SETTINGS_CHANGE_PASSWORD) {
            return this.f19634k4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_SETTINGS_CHANGE_PASSWORD, but was Tag." + this.f19539a.name());
    }

    public SharedLinkSettingsRemoveExpirationType getSharedLinkSettingsRemoveExpirationValue() {
        if (this.f19539a == Tag.SHARED_LINK_SETTINGS_REMOVE_EXPIRATION) {
            return this.f19643l4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_SETTINGS_REMOVE_EXPIRATION, but was Tag." + this.f19539a.name());
    }

    public SharedLinkSettingsRemovePasswordType getSharedLinkSettingsRemovePasswordValue() {
        if (this.f19539a == Tag.SHARED_LINK_SETTINGS_REMOVE_PASSWORD) {
            return this.f19652m4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_SETTINGS_REMOVE_PASSWORD, but was Tag." + this.f19539a.name());
    }

    public SharedLinkShareType getSharedLinkShareValue() {
        if (this.f19539a == Tag.SHARED_LINK_SHARE) {
            return this.f19661n4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_SHARE, but was Tag." + this.f19539a.name());
    }

    public SharedLinkViewType getSharedLinkViewValue() {
        if (this.f19539a == Tag.SHARED_LINK_VIEW) {
            return this.f19669o4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_VIEW, but was Tag." + this.f19539a.name());
    }

    public SharedNoteOpenedType getSharedNoteOpenedValue() {
        if (this.f19539a == Tag.SHARED_NOTE_OPENED) {
            return this.f19677p4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_NOTE_OPENED, but was Tag." + this.f19539a.name());
    }

    public SharingChangeFolderJoinPolicyType getSharingChangeFolderJoinPolicyValue() {
        if (this.f19539a == Tag.SHARING_CHANGE_FOLDER_JOIN_POLICY) {
            return this.f19573d6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARING_CHANGE_FOLDER_JOIN_POLICY, but was Tag." + this.f19539a.name());
    }

    public SharingChangeLinkPolicyType getSharingChangeLinkPolicyValue() {
        if (this.f19539a == Tag.SHARING_CHANGE_LINK_POLICY) {
            return this.f19582e6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARING_CHANGE_LINK_POLICY, but was Tag." + this.f19539a.name());
    }

    public SharingChangeMemberPolicyType getSharingChangeMemberPolicyValue() {
        if (this.f19539a == Tag.SHARING_CHANGE_MEMBER_POLICY) {
            return this.f19591f6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARING_CHANGE_MEMBER_POLICY, but was Tag." + this.f19539a.name());
    }

    public ShmodelGroupShareType getShmodelGroupShareValue() {
        if (this.f19539a == Tag.SHMODEL_GROUP_SHARE) {
            return this.f19685q4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_GROUP_SHARE, but was Tag." + this.f19539a.name());
    }

    public ShowcaseAccessGrantedType getShowcaseAccessGrantedValue() {
        if (this.f19539a == Tag.SHOWCASE_ACCESS_GRANTED) {
            return this.f19693r4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_ACCESS_GRANTED, but was Tag." + this.f19539a.name());
    }

    public ShowcaseAddMemberType getShowcaseAddMemberValue() {
        if (this.f19539a == Tag.SHOWCASE_ADD_MEMBER) {
            return this.f19701s4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_ADD_MEMBER, but was Tag." + this.f19539a.name());
    }

    public ShowcaseArchivedType getShowcaseArchivedValue() {
        if (this.f19539a == Tag.SHOWCASE_ARCHIVED) {
            return this.f19709t4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_ARCHIVED, but was Tag." + this.f19539a.name());
    }

    public ShowcaseChangeDownloadPolicyType getShowcaseChangeDownloadPolicyValue() {
        if (this.f19539a == Tag.SHOWCASE_CHANGE_DOWNLOAD_POLICY) {
            return this.f19600g6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_CHANGE_DOWNLOAD_POLICY, but was Tag." + this.f19539a.name());
    }

    public ShowcaseChangeEnabledPolicyType getShowcaseChangeEnabledPolicyValue() {
        if (this.f19539a == Tag.SHOWCASE_CHANGE_ENABLED_POLICY) {
            return this.f19609h6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_CHANGE_ENABLED_POLICY, but was Tag." + this.f19539a.name());
    }

    public ShowcaseChangeExternalSharingPolicyType getShowcaseChangeExternalSharingPolicyValue() {
        if (this.f19539a == Tag.SHOWCASE_CHANGE_EXTERNAL_SHARING_POLICY) {
            return this.f19618i6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_CHANGE_EXTERNAL_SHARING_POLICY, but was Tag." + this.f19539a.name());
    }

    public ShowcaseCreatedType getShowcaseCreatedValue() {
        if (this.f19539a == Tag.SHOWCASE_CREATED) {
            return this.f19717u4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_CREATED, but was Tag." + this.f19539a.name());
    }

    public ShowcaseDeleteCommentType getShowcaseDeleteCommentValue() {
        if (this.f19539a == Tag.SHOWCASE_DELETE_COMMENT) {
            return this.f19725v4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_DELETE_COMMENT, but was Tag." + this.f19539a.name());
    }

    public ShowcaseEditCommentType getShowcaseEditCommentValue() {
        if (this.f19539a == Tag.SHOWCASE_EDIT_COMMENT) {
            return this.f19741x4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_EDIT_COMMENT, but was Tag." + this.f19539a.name());
    }

    public ShowcaseEditedType getShowcaseEditedValue() {
        if (this.f19539a == Tag.SHOWCASE_EDITED) {
            return this.f19733w4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_EDITED, but was Tag." + this.f19539a.name());
    }

    public ShowcaseFileAddedType getShowcaseFileAddedValue() {
        if (this.f19539a == Tag.SHOWCASE_FILE_ADDED) {
            return this.f19749y4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_FILE_ADDED, but was Tag." + this.f19539a.name());
    }

    public ShowcaseFileDownloadType getShowcaseFileDownloadValue() {
        if (this.f19539a == Tag.SHOWCASE_FILE_DOWNLOAD) {
            return this.f19757z4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_FILE_DOWNLOAD, but was Tag." + this.f19539a.name());
    }

    public ShowcaseFileRemovedType getShowcaseFileRemovedValue() {
        if (this.f19539a == Tag.SHOWCASE_FILE_REMOVED) {
            return this.f19336A4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_FILE_REMOVED, but was Tag." + this.f19539a.name());
    }

    public ShowcaseFileViewType getShowcaseFileViewValue() {
        if (this.f19539a == Tag.SHOWCASE_FILE_VIEW) {
            return this.f19344B4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_FILE_VIEW, but was Tag." + this.f19539a.name());
    }

    public ShowcasePermanentlyDeletedType getShowcasePermanentlyDeletedValue() {
        if (this.f19539a == Tag.SHOWCASE_PERMANENTLY_DELETED) {
            return this.f19352C4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_PERMANENTLY_DELETED, but was Tag." + this.f19539a.name());
    }

    public ShowcasePostCommentType getShowcasePostCommentValue() {
        if (this.f19539a == Tag.SHOWCASE_POST_COMMENT) {
            return this.f19360D4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_POST_COMMENT, but was Tag." + this.f19539a.name());
    }

    public ShowcaseRemoveMemberType getShowcaseRemoveMemberValue() {
        if (this.f19539a == Tag.SHOWCASE_REMOVE_MEMBER) {
            return this.f19368E4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_REMOVE_MEMBER, but was Tag." + this.f19539a.name());
    }

    public ShowcaseRenamedType getShowcaseRenamedValue() {
        if (this.f19539a == Tag.SHOWCASE_RENAMED) {
            return this.f19376F4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_RENAMED, but was Tag." + this.f19539a.name());
    }

    public ShowcaseRequestAccessType getShowcaseRequestAccessValue() {
        if (this.f19539a == Tag.SHOWCASE_REQUEST_ACCESS) {
            return this.f19384G4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_REQUEST_ACCESS, but was Tag." + this.f19539a.name());
    }

    public ShowcaseResolveCommentType getShowcaseResolveCommentValue() {
        if (this.f19539a == Tag.SHOWCASE_RESOLVE_COMMENT) {
            return this.f19392H4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_RESOLVE_COMMENT, but was Tag." + this.f19539a.name());
    }

    public ShowcaseRestoredType getShowcaseRestoredValue() {
        if (this.f19539a == Tag.SHOWCASE_RESTORED) {
            return this.f19400I4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_RESTORED, but was Tag." + this.f19539a.name());
    }

    public ShowcaseTrashedDeprecatedType getShowcaseTrashedDeprecatedValue() {
        if (this.f19539a == Tag.SHOWCASE_TRASHED_DEPRECATED) {
            return this.f19416K4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_TRASHED_DEPRECATED, but was Tag." + this.f19539a.name());
    }

    public ShowcaseTrashedType getShowcaseTrashedValue() {
        if (this.f19539a == Tag.SHOWCASE_TRASHED) {
            return this.f19408J4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_TRASHED, but was Tag." + this.f19539a.name());
    }

    public ShowcaseUnresolveCommentType getShowcaseUnresolveCommentValue() {
        if (this.f19539a == Tag.SHOWCASE_UNRESOLVE_COMMENT) {
            return this.f19424L4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_UNRESOLVE_COMMENT, but was Tag." + this.f19539a.name());
    }

    public ShowcaseUntrashedDeprecatedType getShowcaseUntrashedDeprecatedValue() {
        if (this.f19539a == Tag.SHOWCASE_UNTRASHED_DEPRECATED) {
            return this.f19440N4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_UNTRASHED_DEPRECATED, but was Tag." + this.f19539a.name());
    }

    public ShowcaseUntrashedType getShowcaseUntrashedValue() {
        if (this.f19539a == Tag.SHOWCASE_UNTRASHED) {
            return this.f19432M4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_UNTRASHED, but was Tag." + this.f19539a.name());
    }

    public ShowcaseViewType getShowcaseViewValue() {
        if (this.f19539a == Tag.SHOWCASE_VIEW) {
            return this.f19448O4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_VIEW, but was Tag." + this.f19539a.name());
    }

    public SignInAsSessionEndType getSignInAsSessionEndValue() {
        if (this.f19539a == Tag.SIGN_IN_AS_SESSION_END) {
            return this.f19500V0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SIGN_IN_AS_SESSION_END, but was Tag." + this.f19539a.name());
    }

    public SignInAsSessionStartType getSignInAsSessionStartValue() {
        if (this.f19539a == Tag.SIGN_IN_AS_SESSION_START) {
            return this.f19508W0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SIGN_IN_AS_SESSION_START, but was Tag." + this.f19539a.name());
    }

    public SmartSyncChangePolicyType getSmartSyncChangePolicyValue() {
        if (this.f19539a == Tag.SMART_SYNC_CHANGE_POLICY) {
            return this.f19636k6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SMART_SYNC_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public SmartSyncCreateAdminPrivilegeReportType getSmartSyncCreateAdminPrivilegeReportValue() {
        if (this.f19539a == Tag.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT) {
            return this.f19430M2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT, but was Tag." + this.f19539a.name());
    }

    public SmartSyncNotOptOutType getSmartSyncNotOptOutValue() {
        if (this.f19539a == Tag.SMART_SYNC_NOT_OPT_OUT) {
            return this.f19645l6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SMART_SYNC_NOT_OPT_OUT, but was Tag." + this.f19539a.name());
    }

    public SmartSyncOptOutType getSmartSyncOptOutValue() {
        if (this.f19539a == Tag.SMART_SYNC_OPT_OUT) {
            return this.f19654m6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SMART_SYNC_OPT_OUT, but was Tag." + this.f19539a.name());
    }

    public SmarterSmartSyncPolicyChangedType getSmarterSmartSyncPolicyChangedValue() {
        if (this.f19539a == Tag.SMARTER_SMART_SYNC_POLICY_CHANGED) {
            return this.f19627j6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SMARTER_SMART_SYNC_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public SsoAddCertType getSsoAddCertValue() {
        if (this.f19539a == Tag.SSO_ADD_CERT) {
            return this.f19456P4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SSO_ADD_CERT, but was Tag." + this.f19539a.name());
    }

    public SsoAddLoginUrlType getSsoAddLoginUrlValue() {
        if (this.f19539a == Tag.SSO_ADD_LOGIN_URL) {
            return this.f19464Q4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SSO_ADD_LOGIN_URL, but was Tag." + this.f19539a.name());
    }

    public SsoAddLogoutUrlType getSsoAddLogoutUrlValue() {
        if (this.f19539a == Tag.SSO_ADD_LOGOUT_URL) {
            return this.f19472R4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SSO_ADD_LOGOUT_URL, but was Tag." + this.f19539a.name());
    }

    public SsoChangeCertType getSsoChangeCertValue() {
        if (this.f19539a == Tag.SSO_CHANGE_CERT) {
            return this.f19480S4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SSO_CHANGE_CERT, but was Tag." + this.f19539a.name());
    }

    public SsoChangeLoginUrlType getSsoChangeLoginUrlValue() {
        if (this.f19539a == Tag.SSO_CHANGE_LOGIN_URL) {
            return this.f19488T4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SSO_CHANGE_LOGIN_URL, but was Tag." + this.f19539a.name());
    }

    public SsoChangeLogoutUrlType getSsoChangeLogoutUrlValue() {
        if (this.f19539a == Tag.SSO_CHANGE_LOGOUT_URL) {
            return this.f19496U4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SSO_CHANGE_LOGOUT_URL, but was Tag." + this.f19539a.name());
    }

    public SsoChangePolicyType getSsoChangePolicyValue() {
        if (this.f19539a == Tag.SSO_CHANGE_POLICY) {
            return this.f19663n6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SSO_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public SsoChangeSamlIdentityModeType getSsoChangeSamlIdentityModeValue() {
        if (this.f19539a == Tag.SSO_CHANGE_SAML_IDENTITY_MODE) {
            return this.f19504V4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SSO_CHANGE_SAML_IDENTITY_MODE, but was Tag." + this.f19539a.name());
    }

    public SsoErrorType getSsoErrorValue() {
        if (this.f19539a == Tag.SSO_ERROR) {
            return this.f19516X0;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SSO_ERROR, but was Tag." + this.f19539a.name());
    }

    public SsoRemoveCertType getSsoRemoveCertValue() {
        if (this.f19539a == Tag.SSO_REMOVE_CERT) {
            return this.f19512W4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SSO_REMOVE_CERT, but was Tag." + this.f19539a.name());
    }

    public SsoRemoveLoginUrlType getSsoRemoveLoginUrlValue() {
        if (this.f19539a == Tag.SSO_REMOVE_LOGIN_URL) {
            return this.f19520X4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SSO_REMOVE_LOGIN_URL, but was Tag." + this.f19539a.name());
    }

    public SsoRemoveLogoutUrlType getSsoRemoveLogoutUrlValue() {
        if (this.f19539a == Tag.SSO_REMOVE_LOGOUT_URL) {
            return this.f19528Y4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SSO_REMOVE_LOGOUT_URL, but was Tag." + this.f19539a.name());
    }

    public StartedEnterpriseAdminSessionType getStartedEnterpriseAdminSessionValue() {
        if (this.f19539a == Tag.STARTED_ENTERPRISE_ADMIN_SESSION) {
            return this.f19498U6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.STARTED_ENTERPRISE_ADMIN_SESSION, but was Tag." + this.f19539a.name());
    }

    public TeamActivityCreateReportFailType getTeamActivityCreateReportFailValue() {
        if (this.f19539a == Tag.TEAM_ACTIVITY_CREATE_REPORT_FAIL) {
            return this.f19446O2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_ACTIVITY_CREATE_REPORT_FAIL, but was Tag." + this.f19539a.name());
    }

    public TeamActivityCreateReportType getTeamActivityCreateReportValue() {
        if (this.f19539a == Tag.TEAM_ACTIVITY_CREATE_REPORT) {
            return this.f19438N2;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_ACTIVITY_CREATE_REPORT, but was Tag." + this.f19539a.name());
    }

    public TeamExtensionsPolicyChangedType getTeamExtensionsPolicyChangedValue() {
        if (this.f19539a == Tag.TEAM_EXTENSIONS_POLICY_CHANGED) {
            return this.f19671o6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_EXTENSIONS_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public TeamFolderChangeStatusType getTeamFolderChangeStatusValue() {
        if (this.f19539a == Tag.TEAM_FOLDER_CHANGE_STATUS) {
            return this.f19536Z4;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_FOLDER_CHANGE_STATUS, but was Tag." + this.f19539a.name());
    }

    public TeamFolderCreateType getTeamFolderCreateValue() {
        if (this.f19539a == Tag.TEAM_FOLDER_CREATE) {
            return this.f19545a5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_FOLDER_CREATE, but was Tag." + this.f19539a.name());
    }

    public TeamFolderDowngradeType getTeamFolderDowngradeValue() {
        if (this.f19539a == Tag.TEAM_FOLDER_DOWNGRADE) {
            return this.f19554b5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_FOLDER_DOWNGRADE, but was Tag." + this.f19539a.name());
    }

    public TeamFolderPermanentlyDeleteType getTeamFolderPermanentlyDeleteValue() {
        if (this.f19539a == Tag.TEAM_FOLDER_PERMANENTLY_DELETE) {
            return this.f19563c5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_FOLDER_PERMANENTLY_DELETE, but was Tag." + this.f19539a.name());
    }

    public TeamFolderRenameType getTeamFolderRenameValue() {
        if (this.f19539a == Tag.TEAM_FOLDER_RENAME) {
            return this.f19572d5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_FOLDER_RENAME, but was Tag." + this.f19539a.name());
    }

    public TeamMergeFromType getTeamMergeFromValue() {
        if (this.f19539a == Tag.TEAM_MERGE_FROM) {
            return this.f19338A6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_FROM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestAcceptedShownToPrimaryTeamType getTeamMergeRequestAcceptedShownToPrimaryTeamValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_PRIMARY_TEAM) {
            return this.f19514W6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_PRIMARY_TEAM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestAcceptedShownToSecondaryTeamType getTeamMergeRequestAcceptedShownToSecondaryTeamValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_SECONDARY_TEAM) {
            return this.f19522X6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_SECONDARY_TEAM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestAcceptedType getTeamMergeRequestAcceptedValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_ACCEPTED) {
            return this.f19506V6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_ACCEPTED, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestAutoCanceledType getTeamMergeRequestAutoCanceledValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_AUTO_CANCELED) {
            return this.f19530Y6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_AUTO_CANCELED, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestCanceledShownToPrimaryTeamType getTeamMergeRequestCanceledShownToPrimaryTeamValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_PRIMARY_TEAM) {
            return this.f19547a7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_PRIMARY_TEAM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestCanceledShownToSecondaryTeamType getTeamMergeRequestCanceledShownToSecondaryTeamValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_SECONDARY_TEAM) {
            return this.f19556b7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_SECONDARY_TEAM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestCanceledType getTeamMergeRequestCanceledValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_CANCELED) {
            return this.f19538Z6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_CANCELED, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestExpiredShownToPrimaryTeamType getTeamMergeRequestExpiredShownToPrimaryTeamValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_PRIMARY_TEAM) {
            return this.f19574d7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_PRIMARY_TEAM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestExpiredShownToSecondaryTeamType getTeamMergeRequestExpiredShownToSecondaryTeamValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_SECONDARY_TEAM) {
            return this.f19583e7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_SECONDARY_TEAM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestExpiredType getTeamMergeRequestExpiredValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_EXPIRED) {
            return this.f19565c7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_EXPIRED, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestRejectedShownToPrimaryTeamType getTeamMergeRequestRejectedShownToPrimaryTeamValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_PRIMARY_TEAM) {
            return this.f19592f7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_PRIMARY_TEAM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestRejectedShownToSecondaryTeamType getTeamMergeRequestRejectedShownToSecondaryTeamValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_SECONDARY_TEAM) {
            return this.f19601g7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_SECONDARY_TEAM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestReminderShownToPrimaryTeamType getTeamMergeRequestReminderShownToPrimaryTeamValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_PRIMARY_TEAM) {
            return this.f19619i7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_PRIMARY_TEAM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestReminderShownToSecondaryTeamType getTeamMergeRequestReminderShownToSecondaryTeamValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_SECONDARY_TEAM) {
            return this.f19628j7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_SECONDARY_TEAM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestReminderType getTeamMergeRequestReminderValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_REMINDER) {
            return this.f19610h7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_REMINDER, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestRevokedType getTeamMergeRequestRevokedValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_REVOKED) {
            return this.f19637k7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_REVOKED, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestSentShownToPrimaryTeamType getTeamMergeRequestSentShownToPrimaryTeamValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_PRIMARY_TEAM) {
            return this.f19646l7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_PRIMARY_TEAM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeRequestSentShownToSecondaryTeamType getTeamMergeRequestSentShownToSecondaryTeamValue() {
        if (this.f19539a == Tag.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_SECONDARY_TEAM) {
            return this.f19655m7;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_SECONDARY_TEAM, but was Tag." + this.f19539a.name());
    }

    public TeamMergeToType getTeamMergeToValue() {
        if (this.f19539a == Tag.TEAM_MERGE_TO) {
            return this.f19346B6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_TO, but was Tag." + this.f19539a.name());
    }

    public TeamProfileAddLogoType getTeamProfileAddLogoValue() {
        if (this.f19539a == Tag.TEAM_PROFILE_ADD_LOGO) {
            return this.f19354C6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_PROFILE_ADD_LOGO, but was Tag." + this.f19539a.name());
    }

    public TeamProfileChangeDefaultLanguageType getTeamProfileChangeDefaultLanguageValue() {
        if (this.f19539a == Tag.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE) {
            return this.f19362D6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE, but was Tag." + this.f19539a.name());
    }

    public TeamProfileChangeLogoType getTeamProfileChangeLogoValue() {
        if (this.f19539a == Tag.TEAM_PROFILE_CHANGE_LOGO) {
            return this.f19370E6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_PROFILE_CHANGE_LOGO, but was Tag." + this.f19539a.name());
    }

    public TeamProfileChangeNameType getTeamProfileChangeNameValue() {
        if (this.f19539a == Tag.TEAM_PROFILE_CHANGE_NAME) {
            return this.f19378F6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_PROFILE_CHANGE_NAME, but was Tag." + this.f19539a.name());
    }

    public TeamProfileRemoveLogoType getTeamProfileRemoveLogoValue() {
        if (this.f19539a == Tag.TEAM_PROFILE_REMOVE_LOGO) {
            return this.f19386G6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_PROFILE_REMOVE_LOGO, but was Tag." + this.f19539a.name());
    }

    public TeamSelectiveSyncPolicyChangedType getTeamSelectiveSyncPolicyChangedValue() {
        if (this.f19539a == Tag.TEAM_SELECTIVE_SYNC_POLICY_CHANGED) {
            return this.f19679p6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_SELECTIVE_SYNC_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public TeamSelectiveSyncSettingsChangedType getTeamSelectiveSyncSettingsChangedValue() {
        if (this.f19539a == Tag.TEAM_SELECTIVE_SYNC_SETTINGS_CHANGED) {
            return this.f19581e5;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_SELECTIVE_SYNC_SETTINGS_CHANGED, but was Tag." + this.f19539a.name());
    }

    public TeamSharingWhitelistSubjectsChangedType getTeamSharingWhitelistSubjectsChangedValue() {
        if (this.f19539a == Tag.TEAM_SHARING_WHITELIST_SUBJECTS_CHANGED) {
            return this.f19687q6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_SHARING_WHITELIST_SUBJECTS_CHANGED, but was Tag." + this.f19539a.name());
    }

    public TfaAddBackupPhoneType getTfaAddBackupPhoneValue() {
        if (this.f19539a == Tag.TFA_ADD_BACKUP_PHONE) {
            return this.f19394H6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TFA_ADD_BACKUP_PHONE, but was Tag." + this.f19539a.name());
    }

    public TfaAddExceptionType getTfaAddExceptionValue() {
        if (this.f19539a == Tag.TFA_ADD_EXCEPTION) {
            return this.f19695r6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TFA_ADD_EXCEPTION, but was Tag." + this.f19539a.name());
    }

    public TfaAddSecurityKeyType getTfaAddSecurityKeyValue() {
        if (this.f19539a == Tag.TFA_ADD_SECURITY_KEY) {
            return this.f19402I6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TFA_ADD_SECURITY_KEY, but was Tag." + this.f19539a.name());
    }

    public TfaChangeBackupPhoneType getTfaChangeBackupPhoneValue() {
        if (this.f19539a == Tag.TFA_CHANGE_BACKUP_PHONE) {
            return this.f19410J6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TFA_CHANGE_BACKUP_PHONE, but was Tag." + this.f19539a.name());
    }

    public TfaChangePolicyType getTfaChangePolicyValue() {
        if (this.f19539a == Tag.TFA_CHANGE_POLICY) {
            return this.f19703s6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TFA_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public TfaChangeStatusType getTfaChangeStatusValue() {
        if (this.f19539a == Tag.TFA_CHANGE_STATUS) {
            return this.f19418K6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TFA_CHANGE_STATUS, but was Tag." + this.f19539a.name());
    }

    public TfaRemoveBackupPhoneType getTfaRemoveBackupPhoneValue() {
        if (this.f19539a == Tag.TFA_REMOVE_BACKUP_PHONE) {
            return this.f19426L6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TFA_REMOVE_BACKUP_PHONE, but was Tag." + this.f19539a.name());
    }

    public TfaRemoveExceptionType getTfaRemoveExceptionValue() {
        if (this.f19539a == Tag.TFA_REMOVE_EXCEPTION) {
            return this.f19711t6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TFA_REMOVE_EXCEPTION, but was Tag." + this.f19539a.name());
    }

    public TfaRemoveSecurityKeyType getTfaRemoveSecurityKeyValue() {
        if (this.f19539a == Tag.TFA_REMOVE_SECURITY_KEY) {
            return this.f19434M6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TFA_REMOVE_SECURITY_KEY, but was Tag." + this.f19539a.name());
    }

    public TfaResetType getTfaResetValue() {
        if (this.f19539a == Tag.TFA_RESET) {
            return this.f19442N6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TFA_RESET, but was Tag." + this.f19539a.name());
    }

    public TwoAccountChangePolicyType getTwoAccountChangePolicyValue() {
        if (this.f19539a == Tag.TWO_ACCOUNT_CHANGE_POLICY) {
            return this.f19719u6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TWO_ACCOUNT_CHANGE_POLICY, but was Tag." + this.f19539a.name());
    }

    public ViewerInfoPolicyChangedType getViewerInfoPolicyChangedValue() {
        if (this.f19539a == Tag.VIEWER_INFO_POLICY_CHANGED) {
            return this.f19727v6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.VIEWER_INFO_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public WatermarkingPolicyChangedType getWatermarkingPolicyChangedValue() {
        if (this.f19539a == Tag.WATERMARKING_POLICY_CHANGED) {
            return this.f19735w6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.WATERMARKING_POLICY_CHANGED, but was Tag." + this.f19539a.name());
    }

    public WebSessionsChangeActiveSessionLimitType getWebSessionsChangeActiveSessionLimitValue() {
        if (this.f19539a == Tag.WEB_SESSIONS_CHANGE_ACTIVE_SESSION_LIMIT) {
            return this.f19743x6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.WEB_SESSIONS_CHANGE_ACTIVE_SESSION_LIMIT, but was Tag." + this.f19539a.name());
    }

    public WebSessionsChangeFixedLengthPolicyType getWebSessionsChangeFixedLengthPolicyValue() {
        if (this.f19539a == Tag.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY) {
            return this.f19751y6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY, but was Tag." + this.f19539a.name());
    }

    public WebSessionsChangeIdleLengthPolicyType getWebSessionsChangeIdleLengthPolicyValue() {
        if (this.f19539a == Tag.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY) {
            return this.f19759z6;
        }
        throw new IllegalStateException("Invalid tag: required Tag.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY, but was Tag." + this.f19539a.name());
    }

    /* renamed from: gf */
    public final EventType m14938gf(Tag tag, TeamSelectiveSyncPolicyChangedType teamSelectiveSyncPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19679p6 = teamSelectiveSyncPolicyChangedType;
        return eventType;
    }

    /* renamed from: h8 */
    public final EventType m14939h8(Tag tag, DirectoryRestrictionsAddMembersType directoryRestrictionsAddMembersType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19702s5 = directoryRestrictionsAddMembersType;
        return eventType;
    }

    /* renamed from: h9 */
    public final EventType m14940h9(Tag tag, FileRequestsEmailsEnabledType fileRequestsEmailsEnabledType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19345B5 = fileRequestsEmailsEnabledType;
        return eventType;
    }

    /* renamed from: ha */
    public final EventType m14941ha(Tag tag, LogoutType logoutType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19476S0 = logoutType;
        return eventType;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19539a, this.f19548b, this.f19557c, this.f19566d, this.f19575e, this.f19584f, this.f19593g, this.f19602h, this.f19611i, this.f19620j, this.f19629k, this.f19638l, this.f19647m, this.f19656n, this.f19664o, this.f19672p, this.f19680q, this.f19688r, this.f19696s, this.f19704t, this.f19712u, this.f19720v, this.f19728w, this.f19736x, this.f19744y, this.f19752z, this.f19331A, this.f19339B, this.f19347C, this.f19355D, this.f19363E, this.f19371F, this.f19379G, this.f19387H, this.f19395I, this.f19403J, this.f19411K, this.f19419L, this.f19427M, this.f19435N, this.f19443O, this.f19451P, this.f19459Q, this.f19467R, this.f19475S, this.f19483T, this.f19491U, this.f19499V, this.f19507W, this.f19515X, this.f19523Y, this.f19531Z, this.f19540a0, this.f19549b0, this.f19558c0, this.f19567d0, this.f19576e0, this.f19585f0, this.f19594g0, this.f19603h0, this.f19612i0, this.f19621j0, this.f19630k0, this.f19639l0, this.f19648m0, this.f19657n0, this.f19665o0, this.f19673p0, this.f19681q0, this.f19689r0, this.f19697s0, this.f19705t0, this.f19713u0, this.f19721v0, this.f19729w0, this.f19737x0, this.f19745y0, this.f19753z0, this.f19332A0, this.f19340B0, this.f19348C0, this.f19356D0, this.f19364E0, this.f19372F0, this.f19380G0, this.f19388H0, this.f19396I0, this.f19404J0, this.f19412K0, this.f19420L0, this.f19428M0, this.f19436N0, this.f19444O0, this.f19452P0, this.f19460Q0, this.f19468R0, this.f19476S0, this.f19484T0, this.f19492U0, this.f19500V0, this.f19508W0, this.f19516X0, this.f19524Y0, this.f19532Z0, this.f19541a1, this.f19550b1, this.f19559c1, this.f19568d1, this.f19577e1, this.f19586f1, this.f19595g1, this.f19604h1, this.f19613i1, this.f19622j1, this.f19631k1, this.f19640l1, this.f19649m1, this.f19658n1, this.f19666o1, this.f19674p1, this.f19682q1, this.f19690r1, this.f19698s1, this.f19706t1, this.f19714u1, this.f19722v1, this.f19730w1, this.f19738x1, this.f19746y1, this.f19754z1, this.f19333A1, this.f19341B1, this.f19349C1, this.f19357D1, this.f19365E1, this.f19373F1, this.f19381G1, this.f19389H1, this.f19397I1, this.f19405J1, this.f19413K1, this.f19421L1, this.f19429M1, this.f19437N1, this.f19445O1, this.f19453P1, this.f19461Q1, this.f19469R1, this.f19477S1, this.f19485T1, this.f19493U1, this.f19501V1, this.f19509W1, this.f19517X1, this.f19525Y1, this.f19533Z1, this.f19542a2, this.f19551b2, this.f19560c2, this.f19569d2, this.f19578e2, this.f19587f2, this.f19596g2, this.f19605h2, this.f19614i2, this.f19623j2, this.f19632k2, this.f19641l2, this.f19650m2, this.f19659n2, this.f19667o2, this.f19675p2, this.f19683q2, this.f19691r2, this.f19699s2, this.f19707t2, this.f19715u2, this.f19723v2, this.f19731w2, this.f19739x2, this.f19747y2, this.f19755z2, this.f19334A2, this.f19342B2, this.f19350C2, this.f19358D2, this.f19366E2, this.f19374F2, this.f19382G2, this.f19390H2, this.f19398I2, this.f19406J2, this.f19414K2, this.f19422L2, this.f19430M2, this.f19438N2, this.f19446O2, this.f19454P2, this.f19462Q2, this.f19470R2, this.f19478S2, this.f19486T2, this.f19494U2, this.f19502V2, this.f19510W2, this.f19518X2, this.f19526Y2, this.f19534Z2, this.f19543a3, this.f19552b3, this.f19561c3, this.f19570d3, this.f19579e3, this.f19588f3, this.f19597g3, this.f19606h3, this.f19615i3, this.f19624j3, this.f19633k3, this.f19642l3, this.f19651m3, this.f19660n3, this.f19668o3, this.f19676p3, this.f19684q3, this.f19692r3, this.f19700s3, this.f19708t3, this.f19716u3, this.f19724v3, this.f19732w3, this.f19740x3, this.f19748y3, this.f19756z3, this.f19335A3, this.f19343B3, this.f19351C3, this.f19359D3, this.f19367E3, this.f19375F3, this.f19383G3, this.f19391H3, this.f19399I3, this.f19407J3, this.f19415K3, this.f19423L3, this.f19431M3, this.f19439N3, this.f19447O3, this.f19455P3, this.f19463Q3, this.f19471R3, this.f19479S3, this.f19487T3, this.f19495U3, this.f19503V3, this.f19511W3, this.f19519X3, this.f19527Y3, this.f19535Z3, this.f19544a4, this.f19553b4, this.f19562c4, this.f19571d4, this.f19580e4, this.f19589f4, this.f19598g4, this.f19607h4, this.f19616i4, this.f19625j4, this.f19634k4, this.f19643l4, this.f19652m4, this.f19661n4, this.f19669o4, this.f19677p4, this.f19685q4, this.f19693r4, this.f19701s4, this.f19709t4, this.f19717u4, this.f19725v4, this.f19733w4, this.f19741x4, this.f19749y4, this.f19757z4, this.f19336A4, this.f19344B4, this.f19352C4, this.f19360D4, this.f19368E4, this.f19376F4, this.f19384G4, this.f19392H4, this.f19400I4, this.f19408J4, this.f19416K4, this.f19424L4, this.f19432M4, this.f19440N4, this.f19448O4, this.f19456P4, this.f19464Q4, this.f19472R4, this.f19480S4, this.f19488T4, this.f19496U4, this.f19504V4, this.f19512W4, this.f19520X4, this.f19528Y4, this.f19536Z4, this.f19545a5, this.f19554b5, this.f19563c5, this.f19572d5, this.f19581e5, this.f19590f5, this.f19599g5, this.f19608h5, this.f19617i5, this.f19626j5, this.f19635k5, this.f19644l5, this.f19653m5, this.f19662n5, this.f19670o5, this.f19678p5, this.f19686q5, this.f19694r5, this.f19702s5, this.f19710t5, this.f19718u5, this.f19726v5, this.f19734w5, this.f19742x5, this.f19750y5, this.f19758z5, this.f19337A5, this.f19345B5, this.f19353C5, this.f19361D5, this.f19369E5, this.f19377F5, this.f19385G5, this.f19393H5, this.f19401I5, this.f19409J5, this.f19417K5, this.f19425L5, this.f19433M5, this.f19441N5, this.f19449O5, this.f19457P5, this.f19465Q5, this.f19473R5, this.f19481S5, this.f19489T5, this.f19497U5, this.f19505V5, this.f19513W5, this.f19521X5, this.f19529Y5, this.f19537Z5, this.f19546a6, this.f19555b6, this.f19564c6, this.f19573d6, this.f19582e6, this.f19591f6, this.f19600g6, this.f19609h6, this.f19618i6, this.f19627j6, this.f19636k6, this.f19645l6, this.f19654m6, this.f19663n6, this.f19671o6, this.f19679p6, this.f19687q6, this.f19695r6, this.f19703s6, this.f19711t6, this.f19719u6, this.f19727v6, this.f19735w6, this.f19743x6, this.f19751y6, this.f19759z6, this.f19338A6, this.f19346B6, this.f19354C6, this.f19362D6, this.f19370E6, this.f19378F6, this.f19386G6, this.f19394H6, this.f19402I6, this.f19410J6, this.f19418K6, this.f19426L6, this.f19434M6, this.f19442N6, this.f19450O6, this.f19458P6, this.f19466Q6, this.f19474R6, this.f19482S6, this.f19490T6, this.f19498U6, this.f19506V6, this.f19514W6, this.f19522X6, this.f19530Y6, this.f19538Z6, this.f19547a7, this.f19556b7, this.f19565c7, this.f19574d7, this.f19583e7, this.f19592f7, this.f19601g7, this.f19610h7, this.f19619i7, this.f19628j7, this.f19637k7, this.f19646l7, this.f19655m7});
    }

    /* renamed from: hb */
    public final EventType m14942hb(Tag tag, PaperContentPermanentlyDeleteType paperContentPermanentlyDeleteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19405J1 = paperContentPermanentlyDeleteType;
        return eventType;
    }

    /* renamed from: hc */
    public final EventType m14943hc(Tag tag, SecondaryEmailDeletedType secondaryEmailDeletedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19714u1 = secondaryEmailDeletedType;
        return eventType;
    }

    /* renamed from: hd */
    public final EventType m14944hd(Tag tag, SharedLinkChangeExpiryType sharedLinkChangeExpiryType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19519X3 = sharedLinkChangeExpiryType;
        return eventType;
    }

    /* renamed from: he */
    public final EventType m14945he(Tag tag, SmartSyncChangePolicyType smartSyncChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19636k6 = smartSyncChangePolicyType;
        return eventType;
    }

    /* renamed from: hf */
    public final EventType m14946hf(Tag tag, TeamSelectiveSyncSettingsChangedType teamSelectiveSyncSettingsChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19581e5 = teamSelectiveSyncSettingsChangedType;
        return eventType;
    }

    /* renamed from: i8 */
    public final EventType m14947i8(Tag tag, DirectoryRestrictionsRemoveMembersType directoryRestrictionsRemoveMembersType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19710t5 = directoryRestrictionsRemoveMembersType;
        return eventType;
    }

    /* renamed from: i9 */
    public final EventType m14948i9(Tag tag, FileRequestsEmailsRestrictedToTeamOnlyType fileRequestsEmailsRestrictedToTeamOnlyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19353C5 = fileRequestsEmailsRestrictedToTeamOnlyType;
        return eventType;
    }

    /* renamed from: ia */
    public final EventType m14949ia(Tag tag, MemberAddExternalIdType memberAddExternalIdType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19541a1 = memberAddExternalIdType;
        return eventType;
    }

    /* renamed from: ib */
    public final EventType m14950ib(Tag tag, PaperContentRemoveFromFolderType paperContentRemoveFromFolderType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19413K1 = paperContentRemoveFromFolderType;
        return eventType;
    }

    /* renamed from: ic */
    public final EventType m14951ic(Tag tag, SecondaryEmailVerifiedType secondaryEmailVerifiedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19722v1 = secondaryEmailVerifiedType;
        return eventType;
    }

    /* renamed from: id */
    public final EventType m14952id(Tag tag, SharedLinkChangeVisibilityType sharedLinkChangeVisibilityType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19527Y3 = sharedLinkChangeVisibilityType;
        return eventType;
    }

    /* renamed from: ie */
    public final EventType m14953ie(Tag tag, SmartSyncCreateAdminPrivilegeReportType smartSyncCreateAdminPrivilegeReportType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19430M2 = smartSyncCreateAdminPrivilegeReportType;
        return eventType;
    }

    /* renamed from: if */
    public final EventType m14954if(Tag tag, TeamSharingWhitelistSubjectsChangedType teamSharingWhitelistSubjectsChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19687q6 = teamSharingWhitelistSubjectsChangedType;
        return eventType;
    }

    public boolean isAccountCaptureChangeAvailability() {
        return this.f19539a == Tag.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY;
    }

    public boolean isAccountCaptureChangePolicy() {
        return this.f19539a == Tag.ACCOUNT_CAPTURE_CHANGE_POLICY;
    }

    public boolean isAccountCaptureMigrateAccount() {
        return this.f19539a == Tag.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT;
    }

    public boolean isAccountCaptureNotificationEmailsSent() {
        return this.f19539a == Tag.ACCOUNT_CAPTURE_NOTIFICATION_EMAILS_SENT;
    }

    public boolean isAccountCaptureRelinquishAccount() {
        return this.f19539a == Tag.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT;
    }

    public boolean isAccountLockOrUnlocked() {
        return this.f19539a == Tag.ACCOUNT_LOCK_OR_UNLOCKED;
    }

    public boolean isAllowDownloadDisabled() {
        return this.f19539a == Tag.ALLOW_DOWNLOAD_DISABLED;
    }

    public boolean isAllowDownloadEnabled() {
        return this.f19539a == Tag.ALLOW_DOWNLOAD_ENABLED;
    }

    public boolean isAppLinkTeam() {
        return this.f19539a == Tag.APP_LINK_TEAM;
    }

    public boolean isAppLinkUser() {
        return this.f19539a == Tag.APP_LINK_USER;
    }

    public boolean isAppUnlinkTeam() {
        return this.f19539a == Tag.APP_UNLINK_TEAM;
    }

    public boolean isAppUnlinkUser() {
        return this.f19539a == Tag.APP_UNLINK_USER;
    }

    public boolean isBinderAddPage() {
        return this.f19539a == Tag.BINDER_ADD_PAGE;
    }

    public boolean isBinderAddSection() {
        return this.f19539a == Tag.BINDER_ADD_SECTION;
    }

    public boolean isBinderRemovePage() {
        return this.f19539a == Tag.BINDER_REMOVE_PAGE;
    }

    public boolean isBinderRemoveSection() {
        return this.f19539a == Tag.BINDER_REMOVE_SECTION;
    }

    public boolean isBinderRenamePage() {
        return this.f19539a == Tag.BINDER_RENAME_PAGE;
    }

    public boolean isBinderRenameSection() {
        return this.f19539a == Tag.BINDER_RENAME_SECTION;
    }

    public boolean isBinderReorderPage() {
        return this.f19539a == Tag.BINDER_REORDER_PAGE;
    }

    public boolean isBinderReorderSection() {
        return this.f19539a == Tag.BINDER_REORDER_SECTION;
    }

    public boolean isCameraUploadsPolicyChanged() {
        return this.f19539a == Tag.CAMERA_UPLOADS_POLICY_CHANGED;
    }

    public boolean isChangedEnterpriseAdminRole() {
        return this.f19539a == Tag.CHANGED_ENTERPRISE_ADMIN_ROLE;
    }

    public boolean isChangedEnterpriseConnectedTeamStatus() {
        return this.f19539a == Tag.CHANGED_ENTERPRISE_CONNECTED_TEAM_STATUS;
    }

    public boolean isCollectionShare() {
        return this.f19539a == Tag.COLLECTION_SHARE;
    }

    public boolean isContentAdministrationPolicyChanged() {
        return this.f19539a == Tag.CONTENT_ADMINISTRATION_POLICY_CHANGED;
    }

    public boolean isCreateFolder() {
        return this.f19539a == Tag.CREATE_FOLDER;
    }

    public boolean isCreateTeamInviteLink() {
        return this.f19539a == Tag.CREATE_TEAM_INVITE_LINK;
    }

    public boolean isDataPlacementRestrictionChangePolicy() {
        return this.f19539a == Tag.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY;
    }

    public boolean isDataPlacementRestrictionSatisfyPolicy() {
        return this.f19539a == Tag.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY;
    }

    public boolean isDeleteTeamInviteLink() {
        return this.f19539a == Tag.DELETE_TEAM_INVITE_LINK;
    }

    public boolean isDeviceApprovalsAddException() {
        return this.f19539a == Tag.DEVICE_APPROVALS_ADD_EXCEPTION;
    }

    public boolean isDeviceApprovalsChangeDesktopPolicy() {
        return this.f19539a == Tag.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY;
    }

    public boolean isDeviceApprovalsChangeMobilePolicy() {
        return this.f19539a == Tag.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY;
    }

    public boolean isDeviceApprovalsChangeOverageAction() {
        return this.f19539a == Tag.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION;
    }

    public boolean isDeviceApprovalsChangeUnlinkAction() {
        return this.f19539a == Tag.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION;
    }

    public boolean isDeviceApprovalsRemoveException() {
        return this.f19539a == Tag.DEVICE_APPROVALS_REMOVE_EXCEPTION;
    }

    public boolean isDeviceChangeIpDesktop() {
        return this.f19539a == Tag.DEVICE_CHANGE_IP_DESKTOP;
    }

    public boolean isDeviceChangeIpMobile() {
        return this.f19539a == Tag.DEVICE_CHANGE_IP_MOBILE;
    }

    public boolean isDeviceChangeIpWeb() {
        return this.f19539a == Tag.DEVICE_CHANGE_IP_WEB;
    }

    public boolean isDeviceDeleteOnUnlinkFail() {
        return this.f19539a == Tag.DEVICE_DELETE_ON_UNLINK_FAIL;
    }

    public boolean isDeviceDeleteOnUnlinkSuccess() {
        return this.f19539a == Tag.DEVICE_DELETE_ON_UNLINK_SUCCESS;
    }

    public boolean isDeviceLinkFail() {
        return this.f19539a == Tag.DEVICE_LINK_FAIL;
    }

    public boolean isDeviceLinkSuccess() {
        return this.f19539a == Tag.DEVICE_LINK_SUCCESS;
    }

    public boolean isDeviceManagementDisabled() {
        return this.f19539a == Tag.DEVICE_MANAGEMENT_DISABLED;
    }

    public boolean isDeviceManagementEnabled() {
        return this.f19539a == Tag.DEVICE_MANAGEMENT_ENABLED;
    }

    public boolean isDeviceUnlink() {
        return this.f19539a == Tag.DEVICE_UNLINK;
    }

    public boolean isDirectoryRestrictionsAddMembers() {
        return this.f19539a == Tag.DIRECTORY_RESTRICTIONS_ADD_MEMBERS;
    }

    public boolean isDirectoryRestrictionsRemoveMembers() {
        return this.f19539a == Tag.DIRECTORY_RESTRICTIONS_REMOVE_MEMBERS;
    }

    public boolean isDisabledDomainInvites() {
        return this.f19539a == Tag.DISABLED_DOMAIN_INVITES;
    }

    public boolean isDomainInvitesApproveRequestToJoinTeam() {
        return this.f19539a == Tag.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM;
    }

    public boolean isDomainInvitesDeclineRequestToJoinTeam() {
        return this.f19539a == Tag.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM;
    }

    public boolean isDomainInvitesEmailExistingUsers() {
        return this.f19539a == Tag.DOMAIN_INVITES_EMAIL_EXISTING_USERS;
    }

    public boolean isDomainInvitesRequestToJoinTeam() {
        return this.f19539a == Tag.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM;
    }

    public boolean isDomainInvitesSetInviteNewUserPrefToNo() {
        return this.f19539a == Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO;
    }

    public boolean isDomainInvitesSetInviteNewUserPrefToYes() {
        return this.f19539a == Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES;
    }

    public boolean isDomainVerificationAddDomainFail() {
        return this.f19539a == Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL;
    }

    public boolean isDomainVerificationAddDomainSuccess() {
        return this.f19539a == Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS;
    }

    public boolean isDomainVerificationRemoveDomain() {
        return this.f19539a == Tag.DOMAIN_VERIFICATION_REMOVE_DOMAIN;
    }

    public boolean isEmmAddException() {
        return this.f19539a == Tag.EMM_ADD_EXCEPTION;
    }

    public boolean isEmmChangePolicy() {
        return this.f19539a == Tag.EMM_CHANGE_POLICY;
    }

    public boolean isEmmCreateExceptionsReport() {
        return this.f19539a == Tag.EMM_CREATE_EXCEPTIONS_REPORT;
    }

    public boolean isEmmCreateUsageReport() {
        return this.f19539a == Tag.EMM_CREATE_USAGE_REPORT;
    }

    public boolean isEmmError() {
        return this.f19539a == Tag.EMM_ERROR;
    }

    public boolean isEmmRefreshAuthToken() {
        return this.f19539a == Tag.EMM_REFRESH_AUTH_TOKEN;
    }

    public boolean isEmmRemoveException() {
        return this.f19539a == Tag.EMM_REMOVE_EXCEPTION;
    }

    public boolean isEnabledDomainInvites() {
        return this.f19539a == Tag.ENABLED_DOMAIN_INVITES;
    }

    public boolean isEndedEnterpriseAdminSession() {
        return this.f19539a == Tag.ENDED_ENTERPRISE_ADMIN_SESSION;
    }

    public boolean isEndedEnterpriseAdminSessionDeprecated() {
        return this.f19539a == Tag.ENDED_ENTERPRISE_ADMIN_SESSION_DEPRECATED;
    }

    public boolean isEnterpriseSettingsLocking() {
        return this.f19539a == Tag.ENTERPRISE_SETTINGS_LOCKING;
    }

    public boolean isExportMembersReport() {
        return this.f19539a == Tag.EXPORT_MEMBERS_REPORT;
    }

    public boolean isExportMembersReportFail() {
        return this.f19539a == Tag.EXPORT_MEMBERS_REPORT_FAIL;
    }

    public boolean isExtendedVersionHistoryChangePolicy() {
        return this.f19539a == Tag.EXTENDED_VERSION_HISTORY_CHANGE_POLICY;
    }

    public boolean isExternalSharingCreateReport() {
        return this.f19539a == Tag.EXTERNAL_SHARING_CREATE_REPORT;
    }

    public boolean isExternalSharingReportFailed() {
        return this.f19539a == Tag.EXTERNAL_SHARING_REPORT_FAILED;
    }

    public boolean isFileAdd() {
        return this.f19539a == Tag.FILE_ADD;
    }

    public boolean isFileAddComment() {
        return this.f19539a == Tag.FILE_ADD_COMMENT;
    }

    public boolean isFileChangeCommentSubscription() {
        return this.f19539a == Tag.FILE_CHANGE_COMMENT_SUBSCRIPTION;
    }

    public boolean isFileCommentsChangePolicy() {
        return this.f19539a == Tag.FILE_COMMENTS_CHANGE_POLICY;
    }

    public boolean isFileCopy() {
        return this.f19539a == Tag.FILE_COPY;
    }

    public boolean isFileDelete() {
        return this.f19539a == Tag.FILE_DELETE;
    }

    public boolean isFileDeleteComment() {
        return this.f19539a == Tag.FILE_DELETE_COMMENT;
    }

    public boolean isFileDownload() {
        return this.f19539a == Tag.FILE_DOWNLOAD;
    }

    public boolean isFileEdit() {
        return this.f19539a == Tag.FILE_EDIT;
    }

    public boolean isFileEditComment() {
        return this.f19539a == Tag.FILE_EDIT_COMMENT;
    }

    public boolean isFileGetCopyReference() {
        return this.f19539a == Tag.FILE_GET_COPY_REFERENCE;
    }

    public boolean isFileLikeComment() {
        return this.f19539a == Tag.FILE_LIKE_COMMENT;
    }

    public boolean isFileLockingLockStatusChanged() {
        return this.f19539a == Tag.FILE_LOCKING_LOCK_STATUS_CHANGED;
    }

    public boolean isFileLockingPolicyChanged() {
        return this.f19539a == Tag.FILE_LOCKING_POLICY_CHANGED;
    }

    public boolean isFileMove() {
        return this.f19539a == Tag.FILE_MOVE;
    }

    public boolean isFilePermanentlyDelete() {
        return this.f19539a == Tag.FILE_PERMANENTLY_DELETE;
    }

    public boolean isFilePreview() {
        return this.f19539a == Tag.FILE_PREVIEW;
    }

    public boolean isFileRename() {
        return this.f19539a == Tag.FILE_RENAME;
    }

    public boolean isFileRequestChange() {
        return this.f19539a == Tag.FILE_REQUEST_CHANGE;
    }

    public boolean isFileRequestClose() {
        return this.f19539a == Tag.FILE_REQUEST_CLOSE;
    }

    public boolean isFileRequestCreate() {
        return this.f19539a == Tag.FILE_REQUEST_CREATE;
    }

    public boolean isFileRequestDelete() {
        return this.f19539a == Tag.FILE_REQUEST_DELETE;
    }

    public boolean isFileRequestReceiveFile() {
        return this.f19539a == Tag.FILE_REQUEST_RECEIVE_FILE;
    }

    public boolean isFileRequestsChangePolicy() {
        return this.f19539a == Tag.FILE_REQUESTS_CHANGE_POLICY;
    }

    public boolean isFileRequestsEmailsEnabled() {
        return this.f19539a == Tag.FILE_REQUESTS_EMAILS_ENABLED;
    }

    public boolean isFileRequestsEmailsRestrictedToTeamOnly() {
        return this.f19539a == Tag.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY;
    }

    public boolean isFileResolveComment() {
        return this.f19539a == Tag.FILE_RESOLVE_COMMENT;
    }

    public boolean isFileRestore() {
        return this.f19539a == Tag.FILE_RESTORE;
    }

    public boolean isFileRevert() {
        return this.f19539a == Tag.FILE_REVERT;
    }

    public boolean isFileRollbackChanges() {
        return this.f19539a == Tag.FILE_ROLLBACK_CHANGES;
    }

    public boolean isFileSaveCopyReference() {
        return this.f19539a == Tag.FILE_SAVE_COPY_REFERENCE;
    }

    public boolean isFileTransfersFileAdd() {
        return this.f19539a == Tag.FILE_TRANSFERS_FILE_ADD;
    }

    public boolean isFileTransfersPolicyChanged() {
        return this.f19539a == Tag.FILE_TRANSFERS_POLICY_CHANGED;
    }

    public boolean isFileTransfersTransferDelete() {
        return this.f19539a == Tag.FILE_TRANSFERS_TRANSFER_DELETE;
    }

    public boolean isFileTransfersTransferDownload() {
        return this.f19539a == Tag.FILE_TRANSFERS_TRANSFER_DOWNLOAD;
    }

    public boolean isFileTransfersTransferSend() {
        return this.f19539a == Tag.FILE_TRANSFERS_TRANSFER_SEND;
    }

    public boolean isFileTransfersTransferView() {
        return this.f19539a == Tag.FILE_TRANSFERS_TRANSFER_VIEW;
    }

    public boolean isFileUnlikeComment() {
        return this.f19539a == Tag.FILE_UNLIKE_COMMENT;
    }

    public boolean isFileUnresolveComment() {
        return this.f19539a == Tag.FILE_UNRESOLVE_COMMENT;
    }

    public boolean isFolderOverviewDescriptionChanged() {
        return this.f19539a == Tag.FOLDER_OVERVIEW_DESCRIPTION_CHANGED;
    }

    public boolean isFolderOverviewItemPinned() {
        return this.f19539a == Tag.FOLDER_OVERVIEW_ITEM_PINNED;
    }

    public boolean isFolderOverviewItemUnpinned() {
        return this.f19539a == Tag.FOLDER_OVERVIEW_ITEM_UNPINNED;
    }

    public boolean isGoogleSsoChangePolicy() {
        return this.f19539a == Tag.GOOGLE_SSO_CHANGE_POLICY;
    }

    public boolean isGroupAddExternalId() {
        return this.f19539a == Tag.GROUP_ADD_EXTERNAL_ID;
    }

    public boolean isGroupAddMember() {
        return this.f19539a == Tag.GROUP_ADD_MEMBER;
    }

    public boolean isGroupChangeExternalId() {
        return this.f19539a == Tag.GROUP_CHANGE_EXTERNAL_ID;
    }

    public boolean isGroupChangeManagementType() {
        return this.f19539a == Tag.GROUP_CHANGE_MANAGEMENT_TYPE;
    }

    public boolean isGroupChangeMemberRole() {
        return this.f19539a == Tag.GROUP_CHANGE_MEMBER_ROLE;
    }

    public boolean isGroupCreate() {
        return this.f19539a == Tag.GROUP_CREATE;
    }

    public boolean isGroupDelete() {
        return this.f19539a == Tag.GROUP_DELETE;
    }

    public boolean isGroupDescriptionUpdated() {
        return this.f19539a == Tag.GROUP_DESCRIPTION_UPDATED;
    }

    public boolean isGroupJoinPolicyUpdated() {
        return this.f19539a == Tag.GROUP_JOIN_POLICY_UPDATED;
    }

    public boolean isGroupMoved() {
        return this.f19539a == Tag.GROUP_MOVED;
    }

    public boolean isGroupRemoveExternalId() {
        return this.f19539a == Tag.GROUP_REMOVE_EXTERNAL_ID;
    }

    public boolean isGroupRemoveMember() {
        return this.f19539a == Tag.GROUP_REMOVE_MEMBER;
    }

    public boolean isGroupRename() {
        return this.f19539a == Tag.GROUP_RENAME;
    }

    public boolean isGroupUserManagementChangePolicy() {
        return this.f19539a == Tag.GROUP_USER_MANAGEMENT_CHANGE_POLICY;
    }

    public boolean isGuestAdminChangeStatus() {
        return this.f19539a == Tag.GUEST_ADMIN_CHANGE_STATUS;
    }

    public boolean isGuestAdminSignedInViaTrustedTeams() {
        return this.f19539a == Tag.GUEST_ADMIN_SIGNED_IN_VIA_TRUSTED_TEAMS;
    }

    public boolean isGuestAdminSignedOutViaTrustedTeams() {
        return this.f19539a == Tag.GUEST_ADMIN_SIGNED_OUT_VIA_TRUSTED_TEAMS;
    }

    public boolean isIntegrationConnected() {
        return this.f19539a == Tag.INTEGRATION_CONNECTED;
    }

    public boolean isIntegrationDisconnected() {
        return this.f19539a == Tag.INTEGRATION_DISCONNECTED;
    }

    public boolean isIntegrationPolicyChanged() {
        return this.f19539a == Tag.INTEGRATION_POLICY_CHANGED;
    }

    public boolean isLegalHoldsActivateAHold() {
        return this.f19539a == Tag.LEGAL_HOLDS_ACTIVATE_A_HOLD;
    }

    public boolean isLegalHoldsAddMembers() {
        return this.f19539a == Tag.LEGAL_HOLDS_ADD_MEMBERS;
    }

    public boolean isLegalHoldsChangeHoldDetails() {
        return this.f19539a == Tag.LEGAL_HOLDS_CHANGE_HOLD_DETAILS;
    }

    public boolean isLegalHoldsChangeHoldName() {
        return this.f19539a == Tag.LEGAL_HOLDS_CHANGE_HOLD_NAME;
    }

    public boolean isLegalHoldsExportAHold() {
        return this.f19539a == Tag.LEGAL_HOLDS_EXPORT_A_HOLD;
    }

    public boolean isLegalHoldsExportCancelled() {
        return this.f19539a == Tag.LEGAL_HOLDS_EXPORT_CANCELLED;
    }

    public boolean isLegalHoldsExportDownloaded() {
        return this.f19539a == Tag.LEGAL_HOLDS_EXPORT_DOWNLOADED;
    }

    public boolean isLegalHoldsExportRemoved() {
        return this.f19539a == Tag.LEGAL_HOLDS_EXPORT_REMOVED;
    }

    public boolean isLegalHoldsReleaseAHold() {
        return this.f19539a == Tag.LEGAL_HOLDS_RELEASE_A_HOLD;
    }

    public boolean isLegalHoldsRemoveMembers() {
        return this.f19539a == Tag.LEGAL_HOLDS_REMOVE_MEMBERS;
    }

    public boolean isLegalHoldsReportAHold() {
        return this.f19539a == Tag.LEGAL_HOLDS_REPORT_A_HOLD;
    }

    public boolean isLoginFail() {
        return this.f19539a == Tag.LOGIN_FAIL;
    }

    public boolean isLoginSuccess() {
        return this.f19539a == Tag.LOGIN_SUCCESS;
    }

    public boolean isLogout() {
        return this.f19539a == Tag.LOGOUT;
    }

    public boolean isMemberAddExternalId() {
        return this.f19539a == Tag.MEMBER_ADD_EXTERNAL_ID;
    }

    public boolean isMemberAddName() {
        return this.f19539a == Tag.MEMBER_ADD_NAME;
    }

    public boolean isMemberChangeAdminRole() {
        return this.f19539a == Tag.MEMBER_CHANGE_ADMIN_ROLE;
    }

    public boolean isMemberChangeEmail() {
        return this.f19539a == Tag.MEMBER_CHANGE_EMAIL;
    }

    public boolean isMemberChangeExternalId() {
        return this.f19539a == Tag.MEMBER_CHANGE_EXTERNAL_ID;
    }

    public boolean isMemberChangeMembershipType() {
        return this.f19539a == Tag.MEMBER_CHANGE_MEMBERSHIP_TYPE;
    }

    public boolean isMemberChangeName() {
        return this.f19539a == Tag.MEMBER_CHANGE_NAME;
    }

    public boolean isMemberChangeStatus() {
        return this.f19539a == Tag.MEMBER_CHANGE_STATUS;
    }

    public boolean isMemberDeleteManualContacts() {
        return this.f19539a == Tag.MEMBER_DELETE_MANUAL_CONTACTS;
    }

    public boolean isMemberDeleteProfilePhoto() {
        return this.f19539a == Tag.MEMBER_DELETE_PROFILE_PHOTO;
    }

    public boolean isMemberPermanentlyDeleteAccountContents() {
        return this.f19539a == Tag.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS;
    }

    public boolean isMemberRemoveExternalId() {
        return this.f19539a == Tag.MEMBER_REMOVE_EXTERNAL_ID;
    }

    public boolean isMemberRequestsChangePolicy() {
        return this.f19539a == Tag.MEMBER_REQUESTS_CHANGE_POLICY;
    }

    public boolean isMemberSendInvitePolicyChanged() {
        return this.f19539a == Tag.MEMBER_SEND_INVITE_POLICY_CHANGED;
    }

    public boolean isMemberSetProfilePhoto() {
        return this.f19539a == Tag.MEMBER_SET_PROFILE_PHOTO;
    }

    public boolean isMemberSpaceLimitsAddCustomQuota() {
        return this.f19539a == Tag.MEMBER_SPACE_LIMITS_ADD_CUSTOM_QUOTA;
    }

    public boolean isMemberSpaceLimitsAddException() {
        return this.f19539a == Tag.MEMBER_SPACE_LIMITS_ADD_EXCEPTION;
    }

    public boolean isMemberSpaceLimitsChangeCapsTypePolicy() {
        return this.f19539a == Tag.MEMBER_SPACE_LIMITS_CHANGE_CAPS_TYPE_POLICY;
    }

    public boolean isMemberSpaceLimitsChangeCustomQuota() {
        return this.f19539a == Tag.MEMBER_SPACE_LIMITS_CHANGE_CUSTOM_QUOTA;
    }

    public boolean isMemberSpaceLimitsChangePolicy() {
        return this.f19539a == Tag.MEMBER_SPACE_LIMITS_CHANGE_POLICY;
    }

    public boolean isMemberSpaceLimitsChangeStatus() {
        return this.f19539a == Tag.MEMBER_SPACE_LIMITS_CHANGE_STATUS;
    }

    public boolean isMemberSpaceLimitsRemoveCustomQuota() {
        return this.f19539a == Tag.MEMBER_SPACE_LIMITS_REMOVE_CUSTOM_QUOTA;
    }

    public boolean isMemberSpaceLimitsRemoveException() {
        return this.f19539a == Tag.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION;
    }

    public boolean isMemberSuggest() {
        return this.f19539a == Tag.MEMBER_SUGGEST;
    }

    public boolean isMemberSuggestionsChangePolicy() {
        return this.f19539a == Tag.MEMBER_SUGGESTIONS_CHANGE_POLICY;
    }

    public boolean isMemberTransferAccountContents() {
        return this.f19539a == Tag.MEMBER_TRANSFER_ACCOUNT_CONTENTS;
    }

    public boolean isMicrosoftOfficeAddinChangePolicy() {
        return this.f19539a == Tag.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY;
    }

    public boolean isNetworkControlChangePolicy() {
        return this.f19539a == Tag.NETWORK_CONTROL_CHANGE_POLICY;
    }

    public boolean isNoExpirationLinkGenCreateReport() {
        return this.f19539a == Tag.NO_EXPIRATION_LINK_GEN_CREATE_REPORT;
    }

    public boolean isNoExpirationLinkGenReportFailed() {
        return this.f19539a == Tag.NO_EXPIRATION_LINK_GEN_REPORT_FAILED;
    }

    public boolean isNoPasswordLinkGenCreateReport() {
        return this.f19539a == Tag.NO_PASSWORD_LINK_GEN_CREATE_REPORT;
    }

    public boolean isNoPasswordLinkGenReportFailed() {
        return this.f19539a == Tag.NO_PASSWORD_LINK_GEN_REPORT_FAILED;
    }

    public boolean isNoPasswordLinkViewCreateReport() {
        return this.f19539a == Tag.NO_PASSWORD_LINK_VIEW_CREATE_REPORT;
    }

    public boolean isNoPasswordLinkViewReportFailed() {
        return this.f19539a == Tag.NO_PASSWORD_LINK_VIEW_REPORT_FAILED;
    }

    public boolean isNoteAclInviteOnly() {
        return this.f19539a == Tag.NOTE_ACL_INVITE_ONLY;
    }

    public boolean isNoteAclLink() {
        return this.f19539a == Tag.NOTE_ACL_LINK;
    }

    public boolean isNoteAclTeamLink() {
        return this.f19539a == Tag.NOTE_ACL_TEAM_LINK;
    }

    public boolean isNoteShareReceive() {
        return this.f19539a == Tag.NOTE_SHARE_RECEIVE;
    }

    public boolean isNoteShared() {
        return this.f19539a == Tag.NOTE_SHARED;
    }

    public boolean isOpenNoteShared() {
        return this.f19539a == Tag.OPEN_NOTE_SHARED;
    }

    public boolean isOther() {
        return this.f19539a == Tag.OTHER;
    }

    public boolean isOutdatedLinkViewCreateReport() {
        return this.f19539a == Tag.OUTDATED_LINK_VIEW_CREATE_REPORT;
    }

    public boolean isOutdatedLinkViewReportFailed() {
        return this.f19539a == Tag.OUTDATED_LINK_VIEW_REPORT_FAILED;
    }

    public boolean isPaperAdminExportStart() {
        return this.f19539a == Tag.PAPER_ADMIN_EXPORT_START;
    }

    public boolean isPaperChangeDeploymentPolicy() {
        return this.f19539a == Tag.PAPER_CHANGE_DEPLOYMENT_POLICY;
    }

    public boolean isPaperChangeMemberLinkPolicy() {
        return this.f19539a == Tag.PAPER_CHANGE_MEMBER_LINK_POLICY;
    }

    public boolean isPaperChangeMemberPolicy() {
        return this.f19539a == Tag.PAPER_CHANGE_MEMBER_POLICY;
    }

    public boolean isPaperChangePolicy() {
        return this.f19539a == Tag.PAPER_CHANGE_POLICY;
    }

    public boolean isPaperContentAddMember() {
        return this.f19539a == Tag.PAPER_CONTENT_ADD_MEMBER;
    }

    public boolean isPaperContentAddToFolder() {
        return this.f19539a == Tag.PAPER_CONTENT_ADD_TO_FOLDER;
    }

    public boolean isPaperContentArchive() {
        return this.f19539a == Tag.PAPER_CONTENT_ARCHIVE;
    }

    public boolean isPaperContentCreate() {
        return this.f19539a == Tag.PAPER_CONTENT_CREATE;
    }

    public boolean isPaperContentPermanentlyDelete() {
        return this.f19539a == Tag.PAPER_CONTENT_PERMANENTLY_DELETE;
    }

    public boolean isPaperContentRemoveFromFolder() {
        return this.f19539a == Tag.PAPER_CONTENT_REMOVE_FROM_FOLDER;
    }

    public boolean isPaperContentRemoveMember() {
        return this.f19539a == Tag.PAPER_CONTENT_REMOVE_MEMBER;
    }

    public boolean isPaperContentRename() {
        return this.f19539a == Tag.PAPER_CONTENT_RENAME;
    }

    public boolean isPaperContentRestore() {
        return this.f19539a == Tag.PAPER_CONTENT_RESTORE;
    }

    public boolean isPaperDefaultFolderPolicyChanged() {
        return this.f19539a == Tag.PAPER_DEFAULT_FOLDER_POLICY_CHANGED;
    }

    public boolean isPaperDesktopPolicyChanged() {
        return this.f19539a == Tag.PAPER_DESKTOP_POLICY_CHANGED;
    }

    public boolean isPaperDocAddComment() {
        return this.f19539a == Tag.PAPER_DOC_ADD_COMMENT;
    }

    public boolean isPaperDocChangeMemberRole() {
        return this.f19539a == Tag.PAPER_DOC_CHANGE_MEMBER_ROLE;
    }

    public boolean isPaperDocChangeSharingPolicy() {
        return this.f19539a == Tag.PAPER_DOC_CHANGE_SHARING_POLICY;
    }

    public boolean isPaperDocChangeSubscription() {
        return this.f19539a == Tag.PAPER_DOC_CHANGE_SUBSCRIPTION;
    }

    public boolean isPaperDocDeleteComment() {
        return this.f19539a == Tag.PAPER_DOC_DELETE_COMMENT;
    }

    public boolean isPaperDocDeleted() {
        return this.f19539a == Tag.PAPER_DOC_DELETED;
    }

    public boolean isPaperDocDownload() {
        return this.f19539a == Tag.PAPER_DOC_DOWNLOAD;
    }

    public boolean isPaperDocEdit() {
        return this.f19539a == Tag.PAPER_DOC_EDIT;
    }

    public boolean isPaperDocEditComment() {
        return this.f19539a == Tag.PAPER_DOC_EDIT_COMMENT;
    }

    public boolean isPaperDocFollowed() {
        return this.f19539a == Tag.PAPER_DOC_FOLLOWED;
    }

    public boolean isPaperDocMention() {
        return this.f19539a == Tag.PAPER_DOC_MENTION;
    }

    public boolean isPaperDocOwnershipChanged() {
        return this.f19539a == Tag.PAPER_DOC_OWNERSHIP_CHANGED;
    }

    public boolean isPaperDocRequestAccess() {
        return this.f19539a == Tag.PAPER_DOC_REQUEST_ACCESS;
    }

    public boolean isPaperDocResolveComment() {
        return this.f19539a == Tag.PAPER_DOC_RESOLVE_COMMENT;
    }

    public boolean isPaperDocRevert() {
        return this.f19539a == Tag.PAPER_DOC_REVERT;
    }

    public boolean isPaperDocSlackShare() {
        return this.f19539a == Tag.PAPER_DOC_SLACK_SHARE;
    }

    public boolean isPaperDocTeamInvite() {
        return this.f19539a == Tag.PAPER_DOC_TEAM_INVITE;
    }

    public boolean isPaperDocTrashed() {
        return this.f19539a == Tag.PAPER_DOC_TRASHED;
    }

    public boolean isPaperDocUnresolveComment() {
        return this.f19539a == Tag.PAPER_DOC_UNRESOLVE_COMMENT;
    }

    public boolean isPaperDocUntrashed() {
        return this.f19539a == Tag.PAPER_DOC_UNTRASHED;
    }

    public boolean isPaperDocView() {
        return this.f19539a == Tag.PAPER_DOC_VIEW;
    }

    public boolean isPaperEnabledUsersGroupAddition() {
        return this.f19539a == Tag.PAPER_ENABLED_USERS_GROUP_ADDITION;
    }

    public boolean isPaperEnabledUsersGroupRemoval() {
        return this.f19539a == Tag.PAPER_ENABLED_USERS_GROUP_REMOVAL;
    }

    public boolean isPaperExternalViewAllow() {
        return this.f19539a == Tag.PAPER_EXTERNAL_VIEW_ALLOW;
    }

    public boolean isPaperExternalViewDefaultTeam() {
        return this.f19539a == Tag.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM;
    }

    public boolean isPaperExternalViewForbid() {
        return this.f19539a == Tag.PAPER_EXTERNAL_VIEW_FORBID;
    }

    public boolean isPaperFolderChangeSubscription() {
        return this.f19539a == Tag.PAPER_FOLDER_CHANGE_SUBSCRIPTION;
    }

    public boolean isPaperFolderDeleted() {
        return this.f19539a == Tag.PAPER_FOLDER_DELETED;
    }

    public boolean isPaperFolderFollowed() {
        return this.f19539a == Tag.PAPER_FOLDER_FOLLOWED;
    }

    public boolean isPaperFolderTeamInvite() {
        return this.f19539a == Tag.PAPER_FOLDER_TEAM_INVITE;
    }

    public boolean isPaperPublishedLinkChangePermission() {
        return this.f19539a == Tag.PAPER_PUBLISHED_LINK_CHANGE_PERMISSION;
    }

    public boolean isPaperPublishedLinkCreate() {
        return this.f19539a == Tag.PAPER_PUBLISHED_LINK_CREATE;
    }

    public boolean isPaperPublishedLinkDisabled() {
        return this.f19539a == Tag.PAPER_PUBLISHED_LINK_DISABLED;
    }

    public boolean isPaperPublishedLinkView() {
        return this.f19539a == Tag.PAPER_PUBLISHED_LINK_VIEW;
    }

    public boolean isPasswordChange() {
        return this.f19539a == Tag.PASSWORD_CHANGE;
    }

    public boolean isPasswordReset() {
        return this.f19539a == Tag.PASSWORD_RESET;
    }

    public boolean isPasswordResetAll() {
        return this.f19539a == Tag.PASSWORD_RESET_ALL;
    }

    public boolean isPasswordStrengthRequirementsChangePolicy() {
        return this.f19539a == Tag.PASSWORD_STRENGTH_REQUIREMENTS_CHANGE_POLICY;
    }

    public boolean isPendingSecondaryEmailAdded() {
        return this.f19539a == Tag.PENDING_SECONDARY_EMAIL_ADDED;
    }

    public boolean isPermanentDeleteChangePolicy() {
        return this.f19539a == Tag.PERMANENT_DELETE_CHANGE_POLICY;
    }

    public boolean isResellerSupportChangePolicy() {
        return this.f19539a == Tag.RESELLER_SUPPORT_CHANGE_POLICY;
    }

    public boolean isResellerSupportSessionEnd() {
        return this.f19539a == Tag.RESELLER_SUPPORT_SESSION_END;
    }

    public boolean isResellerSupportSessionStart() {
        return this.f19539a == Tag.RESELLER_SUPPORT_SESSION_START;
    }

    public boolean isRewindFolder() {
        return this.f19539a == Tag.REWIND_FOLDER;
    }

    public boolean isRewindPolicyChanged() {
        return this.f19539a == Tag.REWIND_POLICY_CHANGED;
    }

    public boolean isSecondaryEmailDeleted() {
        return this.f19539a == Tag.SECONDARY_EMAIL_DELETED;
    }

    public boolean isSecondaryEmailVerified() {
        return this.f19539a == Tag.SECONDARY_EMAIL_VERIFIED;
    }

    public boolean isSecondaryMailsPolicyChanged() {
        return this.f19539a == Tag.SECONDARY_MAILS_POLICY_CHANGED;
    }

    public boolean isSendForSignaturePolicyChanged() {
        return this.f19539a == Tag.SEND_FOR_SIGNATURE_POLICY_CHANGED;
    }

    public boolean isSfAddGroup() {
        return this.f19539a == Tag.SF_ADD_GROUP;
    }

    public boolean isSfAllowNonMembersToViewSharedLinks() {
        return this.f19539a == Tag.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS;
    }

    public boolean isSfExternalInviteWarn() {
        return this.f19539a == Tag.SF_EXTERNAL_INVITE_WARN;
    }

    public boolean isSfFbInvite() {
        return this.f19539a == Tag.SF_FB_INVITE;
    }

    public boolean isSfFbInviteChangeRole() {
        return this.f19539a == Tag.SF_FB_INVITE_CHANGE_ROLE;
    }

    public boolean isSfFbUninvite() {
        return this.f19539a == Tag.SF_FB_UNINVITE;
    }

    public boolean isSfInviteGroup() {
        return this.f19539a == Tag.SF_INVITE_GROUP;
    }

    public boolean isSfTeamGrantAccess() {
        return this.f19539a == Tag.SF_TEAM_GRANT_ACCESS;
    }

    public boolean isSfTeamInvite() {
        return this.f19539a == Tag.SF_TEAM_INVITE;
    }

    public boolean isSfTeamInviteChangeRole() {
        return this.f19539a == Tag.SF_TEAM_INVITE_CHANGE_ROLE;
    }

    public boolean isSfTeamJoin() {
        return this.f19539a == Tag.SF_TEAM_JOIN;
    }

    public boolean isSfTeamJoinFromOobLink() {
        return this.f19539a == Tag.SF_TEAM_JOIN_FROM_OOB_LINK;
    }

    public boolean isSfTeamUninvite() {
        return this.f19539a == Tag.SF_TEAM_UNINVITE;
    }

    public boolean isSharedContentAddInvitees() {
        return this.f19539a == Tag.SHARED_CONTENT_ADD_INVITEES;
    }

    public boolean isSharedContentAddLinkExpiry() {
        return this.f19539a == Tag.SHARED_CONTENT_ADD_LINK_EXPIRY;
    }

    public boolean isSharedContentAddLinkPassword() {
        return this.f19539a == Tag.SHARED_CONTENT_ADD_LINK_PASSWORD;
    }

    public boolean isSharedContentAddMember() {
        return this.f19539a == Tag.SHARED_CONTENT_ADD_MEMBER;
    }

    public boolean isSharedContentChangeDownloadsPolicy() {
        return this.f19539a == Tag.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY;
    }

    public boolean isSharedContentChangeInviteeRole() {
        return this.f19539a == Tag.SHARED_CONTENT_CHANGE_INVITEE_ROLE;
    }

    public boolean isSharedContentChangeLinkAudience() {
        return this.f19539a == Tag.SHARED_CONTENT_CHANGE_LINK_AUDIENCE;
    }

    public boolean isSharedContentChangeLinkExpiry() {
        return this.f19539a == Tag.SHARED_CONTENT_CHANGE_LINK_EXPIRY;
    }

    public boolean isSharedContentChangeLinkPassword() {
        return this.f19539a == Tag.SHARED_CONTENT_CHANGE_LINK_PASSWORD;
    }

    public boolean isSharedContentChangeMemberRole() {
        return this.f19539a == Tag.SHARED_CONTENT_CHANGE_MEMBER_ROLE;
    }

    public boolean isSharedContentChangeViewerInfoPolicy() {
        return this.f19539a == Tag.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY;
    }

    public boolean isSharedContentClaimInvitation() {
        return this.f19539a == Tag.SHARED_CONTENT_CLAIM_INVITATION;
    }

    public boolean isSharedContentCopy() {
        return this.f19539a == Tag.SHARED_CONTENT_COPY;
    }

    public boolean isSharedContentDownload() {
        return this.f19539a == Tag.SHARED_CONTENT_DOWNLOAD;
    }

    public boolean isSharedContentRelinquishMembership() {
        return this.f19539a == Tag.SHARED_CONTENT_RELINQUISH_MEMBERSHIP;
    }

    public boolean isSharedContentRemoveInvitees() {
        return this.f19539a == Tag.SHARED_CONTENT_REMOVE_INVITEES;
    }

    public boolean isSharedContentRemoveLinkExpiry() {
        return this.f19539a == Tag.SHARED_CONTENT_REMOVE_LINK_EXPIRY;
    }

    public boolean isSharedContentRemoveLinkPassword() {
        return this.f19539a == Tag.SHARED_CONTENT_REMOVE_LINK_PASSWORD;
    }

    public boolean isSharedContentRemoveMember() {
        return this.f19539a == Tag.SHARED_CONTENT_REMOVE_MEMBER;
    }

    public boolean isSharedContentRequestAccess() {
        return this.f19539a == Tag.SHARED_CONTENT_REQUEST_ACCESS;
    }

    public boolean isSharedContentRestoreInvitees() {
        return this.f19539a == Tag.SHARED_CONTENT_RESTORE_INVITEES;
    }

    public boolean isSharedContentRestoreMember() {
        return this.f19539a == Tag.SHARED_CONTENT_RESTORE_MEMBER;
    }

    public boolean isSharedContentUnshare() {
        return this.f19539a == Tag.SHARED_CONTENT_UNSHARE;
    }

    public boolean isSharedContentView() {
        return this.f19539a == Tag.SHARED_CONTENT_VIEW;
    }

    public boolean isSharedFolderChangeLinkPolicy() {
        return this.f19539a == Tag.SHARED_FOLDER_CHANGE_LINK_POLICY;
    }

    public boolean isSharedFolderChangeMembersInheritancePolicy() {
        return this.f19539a == Tag.SHARED_FOLDER_CHANGE_MEMBERS_INHERITANCE_POLICY;
    }

    public boolean isSharedFolderChangeMembersManagementPolicy() {
        return this.f19539a == Tag.SHARED_FOLDER_CHANGE_MEMBERS_MANAGEMENT_POLICY;
    }

    public boolean isSharedFolderChangeMembersPolicy() {
        return this.f19539a == Tag.SHARED_FOLDER_CHANGE_MEMBERS_POLICY;
    }

    public boolean isSharedFolderCreate() {
        return this.f19539a == Tag.SHARED_FOLDER_CREATE;
    }

    public boolean isSharedFolderDeclineInvitation() {
        return this.f19539a == Tag.SHARED_FOLDER_DECLINE_INVITATION;
    }

    public boolean isSharedFolderMount() {
        return this.f19539a == Tag.SHARED_FOLDER_MOUNT;
    }

    public boolean isSharedFolderNest() {
        return this.f19539a == Tag.SHARED_FOLDER_NEST;
    }

    public boolean isSharedFolderTransferOwnership() {
        return this.f19539a == Tag.SHARED_FOLDER_TRANSFER_OWNERSHIP;
    }

    public boolean isSharedFolderUnmount() {
        return this.f19539a == Tag.SHARED_FOLDER_UNMOUNT;
    }

    public boolean isSharedLinkAddExpiry() {
        return this.f19539a == Tag.SHARED_LINK_ADD_EXPIRY;
    }

    public boolean isSharedLinkChangeExpiry() {
        return this.f19539a == Tag.SHARED_LINK_CHANGE_EXPIRY;
    }

    public boolean isSharedLinkChangeVisibility() {
        return this.f19539a == Tag.SHARED_LINK_CHANGE_VISIBILITY;
    }

    public boolean isSharedLinkCopy() {
        return this.f19539a == Tag.SHARED_LINK_COPY;
    }

    public boolean isSharedLinkCreate() {
        return this.f19539a == Tag.SHARED_LINK_CREATE;
    }

    public boolean isSharedLinkDisable() {
        return this.f19539a == Tag.SHARED_LINK_DISABLE;
    }

    public boolean isSharedLinkDownload() {
        return this.f19539a == Tag.SHARED_LINK_DOWNLOAD;
    }

    public boolean isSharedLinkRemoveExpiry() {
        return this.f19539a == Tag.SHARED_LINK_REMOVE_EXPIRY;
    }

    public boolean isSharedLinkSettingsAddExpiration() {
        return this.f19539a == Tag.SHARED_LINK_SETTINGS_ADD_EXPIRATION;
    }

    public boolean isSharedLinkSettingsAddPassword() {
        return this.f19539a == Tag.SHARED_LINK_SETTINGS_ADD_PASSWORD;
    }

    public boolean isSharedLinkSettingsAllowDownloadDisabled() {
        return this.f19539a == Tag.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_DISABLED;
    }

    public boolean isSharedLinkSettingsAllowDownloadEnabled() {
        return this.f19539a == Tag.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_ENABLED;
    }

    public boolean isSharedLinkSettingsChangeAudience() {
        return this.f19539a == Tag.SHARED_LINK_SETTINGS_CHANGE_AUDIENCE;
    }

    public boolean isSharedLinkSettingsChangeExpiration() {
        return this.f19539a == Tag.SHARED_LINK_SETTINGS_CHANGE_EXPIRATION;
    }

    public boolean isSharedLinkSettingsChangePassword() {
        return this.f19539a == Tag.SHARED_LINK_SETTINGS_CHANGE_PASSWORD;
    }

    public boolean isSharedLinkSettingsRemoveExpiration() {
        return this.f19539a == Tag.SHARED_LINK_SETTINGS_REMOVE_EXPIRATION;
    }

    public boolean isSharedLinkSettingsRemovePassword() {
        return this.f19539a == Tag.SHARED_LINK_SETTINGS_REMOVE_PASSWORD;
    }

    public boolean isSharedLinkShare() {
        return this.f19539a == Tag.SHARED_LINK_SHARE;
    }

    public boolean isSharedLinkView() {
        return this.f19539a == Tag.SHARED_LINK_VIEW;
    }

    public boolean isSharedNoteOpened() {
        return this.f19539a == Tag.SHARED_NOTE_OPENED;
    }

    public boolean isSharingChangeFolderJoinPolicy() {
        return this.f19539a == Tag.SHARING_CHANGE_FOLDER_JOIN_POLICY;
    }

    public boolean isSharingChangeLinkPolicy() {
        return this.f19539a == Tag.SHARING_CHANGE_LINK_POLICY;
    }

    public boolean isSharingChangeMemberPolicy() {
        return this.f19539a == Tag.SHARING_CHANGE_MEMBER_POLICY;
    }

    public boolean isShmodelGroupShare() {
        return this.f19539a == Tag.SHMODEL_GROUP_SHARE;
    }

    public boolean isShowcaseAccessGranted() {
        return this.f19539a == Tag.SHOWCASE_ACCESS_GRANTED;
    }

    public boolean isShowcaseAddMember() {
        return this.f19539a == Tag.SHOWCASE_ADD_MEMBER;
    }

    public boolean isShowcaseArchived() {
        return this.f19539a == Tag.SHOWCASE_ARCHIVED;
    }

    public boolean isShowcaseChangeDownloadPolicy() {
        return this.f19539a == Tag.SHOWCASE_CHANGE_DOWNLOAD_POLICY;
    }

    public boolean isShowcaseChangeEnabledPolicy() {
        return this.f19539a == Tag.SHOWCASE_CHANGE_ENABLED_POLICY;
    }

    public boolean isShowcaseChangeExternalSharingPolicy() {
        return this.f19539a == Tag.SHOWCASE_CHANGE_EXTERNAL_SHARING_POLICY;
    }

    public boolean isShowcaseCreated() {
        return this.f19539a == Tag.SHOWCASE_CREATED;
    }

    public boolean isShowcaseDeleteComment() {
        return this.f19539a == Tag.SHOWCASE_DELETE_COMMENT;
    }

    public boolean isShowcaseEditComment() {
        return this.f19539a == Tag.SHOWCASE_EDIT_COMMENT;
    }

    public boolean isShowcaseEdited() {
        return this.f19539a == Tag.SHOWCASE_EDITED;
    }

    public boolean isShowcaseFileAdded() {
        return this.f19539a == Tag.SHOWCASE_FILE_ADDED;
    }

    public boolean isShowcaseFileDownload() {
        return this.f19539a == Tag.SHOWCASE_FILE_DOWNLOAD;
    }

    public boolean isShowcaseFileRemoved() {
        return this.f19539a == Tag.SHOWCASE_FILE_REMOVED;
    }

    public boolean isShowcaseFileView() {
        return this.f19539a == Tag.SHOWCASE_FILE_VIEW;
    }

    public boolean isShowcasePermanentlyDeleted() {
        return this.f19539a == Tag.SHOWCASE_PERMANENTLY_DELETED;
    }

    public boolean isShowcasePostComment() {
        return this.f19539a == Tag.SHOWCASE_POST_COMMENT;
    }

    public boolean isShowcaseRemoveMember() {
        return this.f19539a == Tag.SHOWCASE_REMOVE_MEMBER;
    }

    public boolean isShowcaseRenamed() {
        return this.f19539a == Tag.SHOWCASE_RENAMED;
    }

    public boolean isShowcaseRequestAccess() {
        return this.f19539a == Tag.SHOWCASE_REQUEST_ACCESS;
    }

    public boolean isShowcaseResolveComment() {
        return this.f19539a == Tag.SHOWCASE_RESOLVE_COMMENT;
    }

    public boolean isShowcaseRestored() {
        return this.f19539a == Tag.SHOWCASE_RESTORED;
    }

    public boolean isShowcaseTrashed() {
        return this.f19539a == Tag.SHOWCASE_TRASHED;
    }

    public boolean isShowcaseTrashedDeprecated() {
        return this.f19539a == Tag.SHOWCASE_TRASHED_DEPRECATED;
    }

    public boolean isShowcaseUnresolveComment() {
        return this.f19539a == Tag.SHOWCASE_UNRESOLVE_COMMENT;
    }

    public boolean isShowcaseUntrashed() {
        return this.f19539a == Tag.SHOWCASE_UNTRASHED;
    }

    public boolean isShowcaseUntrashedDeprecated() {
        return this.f19539a == Tag.SHOWCASE_UNTRASHED_DEPRECATED;
    }

    public boolean isShowcaseView() {
        return this.f19539a == Tag.SHOWCASE_VIEW;
    }

    public boolean isSignInAsSessionEnd() {
        return this.f19539a == Tag.SIGN_IN_AS_SESSION_END;
    }

    public boolean isSignInAsSessionStart() {
        return this.f19539a == Tag.SIGN_IN_AS_SESSION_START;
    }

    public boolean isSmartSyncChangePolicy() {
        return this.f19539a == Tag.SMART_SYNC_CHANGE_POLICY;
    }

    public boolean isSmartSyncCreateAdminPrivilegeReport() {
        return this.f19539a == Tag.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT;
    }

    public boolean isSmartSyncNotOptOut() {
        return this.f19539a == Tag.SMART_SYNC_NOT_OPT_OUT;
    }

    public boolean isSmartSyncOptOut() {
        return this.f19539a == Tag.SMART_SYNC_OPT_OUT;
    }

    public boolean isSmarterSmartSyncPolicyChanged() {
        return this.f19539a == Tag.SMARTER_SMART_SYNC_POLICY_CHANGED;
    }

    public boolean isSsoAddCert() {
        return this.f19539a == Tag.SSO_ADD_CERT;
    }

    public boolean isSsoAddLoginUrl() {
        return this.f19539a == Tag.SSO_ADD_LOGIN_URL;
    }

    public boolean isSsoAddLogoutUrl() {
        return this.f19539a == Tag.SSO_ADD_LOGOUT_URL;
    }

    public boolean isSsoChangeCert() {
        return this.f19539a == Tag.SSO_CHANGE_CERT;
    }

    public boolean isSsoChangeLoginUrl() {
        return this.f19539a == Tag.SSO_CHANGE_LOGIN_URL;
    }

    public boolean isSsoChangeLogoutUrl() {
        return this.f19539a == Tag.SSO_CHANGE_LOGOUT_URL;
    }

    public boolean isSsoChangePolicy() {
        return this.f19539a == Tag.SSO_CHANGE_POLICY;
    }

    public boolean isSsoChangeSamlIdentityMode() {
        return this.f19539a == Tag.SSO_CHANGE_SAML_IDENTITY_MODE;
    }

    public boolean isSsoError() {
        return this.f19539a == Tag.SSO_ERROR;
    }

    public boolean isSsoRemoveCert() {
        return this.f19539a == Tag.SSO_REMOVE_CERT;
    }

    public boolean isSsoRemoveLoginUrl() {
        return this.f19539a == Tag.SSO_REMOVE_LOGIN_URL;
    }

    public boolean isSsoRemoveLogoutUrl() {
        return this.f19539a == Tag.SSO_REMOVE_LOGOUT_URL;
    }

    public boolean isStartedEnterpriseAdminSession() {
        return this.f19539a == Tag.STARTED_ENTERPRISE_ADMIN_SESSION;
    }

    public boolean isTeamActivityCreateReport() {
        return this.f19539a == Tag.TEAM_ACTIVITY_CREATE_REPORT;
    }

    public boolean isTeamActivityCreateReportFail() {
        return this.f19539a == Tag.TEAM_ACTIVITY_CREATE_REPORT_FAIL;
    }

    public boolean isTeamExtensionsPolicyChanged() {
        return this.f19539a == Tag.TEAM_EXTENSIONS_POLICY_CHANGED;
    }

    public boolean isTeamFolderChangeStatus() {
        return this.f19539a == Tag.TEAM_FOLDER_CHANGE_STATUS;
    }

    public boolean isTeamFolderCreate() {
        return this.f19539a == Tag.TEAM_FOLDER_CREATE;
    }

    public boolean isTeamFolderDowngrade() {
        return this.f19539a == Tag.TEAM_FOLDER_DOWNGRADE;
    }

    public boolean isTeamFolderPermanentlyDelete() {
        return this.f19539a == Tag.TEAM_FOLDER_PERMANENTLY_DELETE;
    }

    public boolean isTeamFolderRename() {
        return this.f19539a == Tag.TEAM_FOLDER_RENAME;
    }

    public boolean isTeamMergeFrom() {
        return this.f19539a == Tag.TEAM_MERGE_FROM;
    }

    public boolean isTeamMergeRequestAccepted() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_ACCEPTED;
    }

    public boolean isTeamMergeRequestAcceptedShownToPrimaryTeam() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_PRIMARY_TEAM;
    }

    public boolean isTeamMergeRequestAcceptedShownToSecondaryTeam() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_SECONDARY_TEAM;
    }

    public boolean isTeamMergeRequestAutoCanceled() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_AUTO_CANCELED;
    }

    public boolean isTeamMergeRequestCanceled() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_CANCELED;
    }

    public boolean isTeamMergeRequestCanceledShownToPrimaryTeam() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_PRIMARY_TEAM;
    }

    public boolean isTeamMergeRequestCanceledShownToSecondaryTeam() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_SECONDARY_TEAM;
    }

    public boolean isTeamMergeRequestExpired() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_EXPIRED;
    }

    public boolean isTeamMergeRequestExpiredShownToPrimaryTeam() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_PRIMARY_TEAM;
    }

    public boolean isTeamMergeRequestExpiredShownToSecondaryTeam() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_SECONDARY_TEAM;
    }

    public boolean isTeamMergeRequestRejectedShownToPrimaryTeam() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_PRIMARY_TEAM;
    }

    public boolean isTeamMergeRequestRejectedShownToSecondaryTeam() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_SECONDARY_TEAM;
    }

    public boolean isTeamMergeRequestReminder() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_REMINDER;
    }

    public boolean isTeamMergeRequestReminderShownToPrimaryTeam() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_PRIMARY_TEAM;
    }

    public boolean isTeamMergeRequestReminderShownToSecondaryTeam() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_SECONDARY_TEAM;
    }

    public boolean isTeamMergeRequestRevoked() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_REVOKED;
    }

    public boolean isTeamMergeRequestSentShownToPrimaryTeam() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_PRIMARY_TEAM;
    }

    public boolean isTeamMergeRequestSentShownToSecondaryTeam() {
        return this.f19539a == Tag.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_SECONDARY_TEAM;
    }

    public boolean isTeamMergeTo() {
        return this.f19539a == Tag.TEAM_MERGE_TO;
    }

    public boolean isTeamProfileAddLogo() {
        return this.f19539a == Tag.TEAM_PROFILE_ADD_LOGO;
    }

    public boolean isTeamProfileChangeDefaultLanguage() {
        return this.f19539a == Tag.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE;
    }

    public boolean isTeamProfileChangeLogo() {
        return this.f19539a == Tag.TEAM_PROFILE_CHANGE_LOGO;
    }

    public boolean isTeamProfileChangeName() {
        return this.f19539a == Tag.TEAM_PROFILE_CHANGE_NAME;
    }

    public boolean isTeamProfileRemoveLogo() {
        return this.f19539a == Tag.TEAM_PROFILE_REMOVE_LOGO;
    }

    public boolean isTeamSelectiveSyncPolicyChanged() {
        return this.f19539a == Tag.TEAM_SELECTIVE_SYNC_POLICY_CHANGED;
    }

    public boolean isTeamSelectiveSyncSettingsChanged() {
        return this.f19539a == Tag.TEAM_SELECTIVE_SYNC_SETTINGS_CHANGED;
    }

    public boolean isTeamSharingWhitelistSubjectsChanged() {
        return this.f19539a == Tag.TEAM_SHARING_WHITELIST_SUBJECTS_CHANGED;
    }

    public boolean isTfaAddBackupPhone() {
        return this.f19539a == Tag.TFA_ADD_BACKUP_PHONE;
    }

    public boolean isTfaAddException() {
        return this.f19539a == Tag.TFA_ADD_EXCEPTION;
    }

    public boolean isTfaAddSecurityKey() {
        return this.f19539a == Tag.TFA_ADD_SECURITY_KEY;
    }

    public boolean isTfaChangeBackupPhone() {
        return this.f19539a == Tag.TFA_CHANGE_BACKUP_PHONE;
    }

    public boolean isTfaChangePolicy() {
        return this.f19539a == Tag.TFA_CHANGE_POLICY;
    }

    public boolean isTfaChangeStatus() {
        return this.f19539a == Tag.TFA_CHANGE_STATUS;
    }

    public boolean isTfaRemoveBackupPhone() {
        return this.f19539a == Tag.TFA_REMOVE_BACKUP_PHONE;
    }

    public boolean isTfaRemoveException() {
        return this.f19539a == Tag.TFA_REMOVE_EXCEPTION;
    }

    public boolean isTfaRemoveSecurityKey() {
        return this.f19539a == Tag.TFA_REMOVE_SECURITY_KEY;
    }

    public boolean isTfaReset() {
        return this.f19539a == Tag.TFA_RESET;
    }

    public boolean isTwoAccountChangePolicy() {
        return this.f19539a == Tag.TWO_ACCOUNT_CHANGE_POLICY;
    }

    public boolean isViewerInfoPolicyChanged() {
        return this.f19539a == Tag.VIEWER_INFO_POLICY_CHANGED;
    }

    public boolean isWatermarkingPolicyChanged() {
        return this.f19539a == Tag.WATERMARKING_POLICY_CHANGED;
    }

    public boolean isWebSessionsChangeActiveSessionLimit() {
        return this.f19539a == Tag.WEB_SESSIONS_CHANGE_ACTIVE_SESSION_LIMIT;
    }

    public boolean isWebSessionsChangeFixedLengthPolicy() {
        return this.f19539a == Tag.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY;
    }

    public boolean isWebSessionsChangeIdleLengthPolicy() {
        return this.f19539a == Tag.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY;
    }

    /* renamed from: j8 */
    public final EventType m14955j8(Tag tag, DisabledDomainInvitesType disabledDomainInvitesType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19363E = disabledDomainInvitesType;
        return eventType;
    }

    /* renamed from: j9 */
    public final EventType m14956j9(Tag tag, FileResolveCommentType fileResolveCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19647m = fileResolveCommentType;
        return eventType;
    }

    /* renamed from: ja */
    public final EventType m14957ja(Tag tag, MemberAddNameType memberAddNameType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19550b1 = memberAddNameType;
        return eventType;
    }

    /* renamed from: jb */
    public final EventType m14958jb(Tag tag, PaperContentRemoveMemberType paperContentRemoveMemberType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19421L1 = paperContentRemoveMemberType;
        return eventType;
    }

    /* renamed from: jc */
    public final EventType m14959jc(Tag tag, SecondaryMailsPolicyChangedType secondaryMailsPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19730w1 = secondaryMailsPolicyChangedType;
        return eventType;
    }

    /* renamed from: jd */
    public final EventType m14960jd(Tag tag, SharedLinkCopyType sharedLinkCopyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19535Z3 = sharedLinkCopyType;
        return eventType;
    }

    /* renamed from: je */
    public final EventType m14961je(Tag tag, SmartSyncNotOptOutType smartSyncNotOptOutType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19645l6 = smartSyncNotOptOutType;
        return eventType;
    }

    /* renamed from: jf */
    public final EventType m14962jf(Tag tag, TfaAddBackupPhoneType tfaAddBackupPhoneType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19394H6 = tfaAddBackupPhoneType;
        return eventType;
    }

    /* renamed from: k8 */
    public final EventType m14963k8(Tag tag, DomainInvitesApproveRequestToJoinTeamType domainInvitesApproveRequestToJoinTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19371F = domainInvitesApproveRequestToJoinTeamType;
        return eventType;
    }

    /* renamed from: k9 */
    public final EventType m14964k9(Tag tag, FileRestoreType fileRestoreType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19549b0 = fileRestoreType;
        return eventType;
    }

    /* renamed from: ka */
    public final EventType m14965ka(Tag tag, MemberChangeAdminRoleType memberChangeAdminRoleType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19559c1 = memberChangeAdminRoleType;
        return eventType;
    }

    /* renamed from: kb */
    public final EventType m14966kb(Tag tag, PaperContentRenameType paperContentRenameType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19429M1 = paperContentRenameType;
        return eventType;
    }

    /* renamed from: kc */
    public final EventType m14967kc(Tag tag, SendForSignaturePolicyChangedType sendForSignaturePolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19564c6 = sendForSignaturePolicyChangedType;
        return eventType;
    }

    /* renamed from: kd */
    public final EventType m14968kd(Tag tag, SharedLinkCreateType sharedLinkCreateType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19544a4 = sharedLinkCreateType;
        return eventType;
    }

    /* renamed from: ke */
    public final EventType m14969ke(Tag tag, SmartSyncOptOutType smartSyncOptOutType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19654m6 = smartSyncOptOutType;
        return eventType;
    }

    /* renamed from: kf */
    public final EventType m14970kf(Tag tag, TfaAddExceptionType tfaAddExceptionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19695r6 = tfaAddExceptionType;
        return eventType;
    }

    /* renamed from: l8 */
    public final EventType m14971l8(Tag tag, DomainInvitesDeclineRequestToJoinTeamType domainInvitesDeclineRequestToJoinTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19379G = domainInvitesDeclineRequestToJoinTeamType;
        return eventType;
    }

    /* renamed from: l9 */
    public final EventType m14972l9(Tag tag, FileRevertType fileRevertType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19558c0 = fileRevertType;
        return eventType;
    }

    /* renamed from: la */
    public final EventType m14973la(Tag tag, MemberChangeEmailType memberChangeEmailType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19568d1 = memberChangeEmailType;
        return eventType;
    }

    /* renamed from: lb */
    public final EventType m14974lb(Tag tag, PaperContentRestoreType paperContentRestoreType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19437N1 = paperContentRestoreType;
        return eventType;
    }

    /* renamed from: lc */
    public final EventType m14975lc(Tag tag, SfAddGroupType sfAddGroupType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19552b3 = sfAddGroupType;
        return eventType;
    }

    /* renamed from: ld */
    public final EventType m14976ld(Tag tag, SharedLinkDisableType sharedLinkDisableType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19553b4 = sharedLinkDisableType;
        return eventType;
    }

    /* renamed from: le */
    public final EventType m14977le(Tag tag, SmarterSmartSyncPolicyChangedType smarterSmartSyncPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19627j6 = smarterSmartSyncPolicyChangedType;
        return eventType;
    }

    /* renamed from: lf */
    public final EventType m14978lf(Tag tag, TfaAddSecurityKeyType tfaAddSecurityKeyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19402I6 = tfaAddSecurityKeyType;
        return eventType;
    }

    /* renamed from: m7 */
    public final EventType m14979m7(Tag tag) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        return eventType;
    }

    /* renamed from: m8 */
    public final EventType m14980m8(Tag tag, DomainInvitesEmailExistingUsersType domainInvitesEmailExistingUsersType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19387H = domainInvitesEmailExistingUsersType;
        return eventType;
    }

    /* renamed from: m9 */
    public final EventType m14981m9(Tag tag, FileRollbackChangesType fileRollbackChangesType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19567d0 = fileRollbackChangesType;
        return eventType;
    }

    /* renamed from: ma */
    public final EventType m14982ma(Tag tag, MemberChangeExternalIdType memberChangeExternalIdType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19577e1 = memberChangeExternalIdType;
        return eventType;
    }

    /* renamed from: mb */
    public final EventType m14983mb(Tag tag, PaperDefaultFolderPolicyChangedType paperDefaultFolderPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19497U5 = paperDefaultFolderPolicyChangedType;
        return eventType;
    }

    /* renamed from: mc */
    public final EventType m14984mc(Tag tag, SfAllowNonMembersToViewSharedLinksType sfAllowNonMembersToViewSharedLinksType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19561c3 = sfAllowNonMembersToViewSharedLinksType;
        return eventType;
    }

    /* renamed from: md */
    public final EventType m14985md(Tag tag, SharedLinkDownloadType sharedLinkDownloadType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19562c4 = sharedLinkDownloadType;
        return eventType;
    }

    /* renamed from: me */
    public final EventType m14986me(Tag tag, SsoAddCertType ssoAddCertType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19456P4 = ssoAddCertType;
        return eventType;
    }

    /* renamed from: mf */
    public final EventType m14987mf(Tag tag, TfaChangeBackupPhoneType tfaChangeBackupPhoneType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19410J6 = tfaChangeBackupPhoneType;
        return eventType;
    }

    /* renamed from: n7 */
    public final EventType m14988n7(Tag tag, AccountCaptureChangeAvailabilityType accountCaptureChangeAvailabilityType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19331A = accountCaptureChangeAvailabilityType;
        return eventType;
    }

    /* renamed from: n8 */
    public final EventType m14989n8(Tag tag, DomainInvitesRequestToJoinTeamType domainInvitesRequestToJoinTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19395I = domainInvitesRequestToJoinTeamType;
        return eventType;
    }

    /* renamed from: n9 */
    public final EventType m14990n9(Tag tag, FileSaveCopyReferenceType fileSaveCopyReferenceType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19576e0 = fileSaveCopyReferenceType;
        return eventType;
    }

    /* renamed from: na */
    public final EventType m14991na(Tag tag, MemberChangeMembershipTypeType memberChangeMembershipTypeType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19586f1 = memberChangeMembershipTypeType;
        return eventType;
    }

    /* renamed from: nb */
    public final EventType m14992nb(Tag tag, PaperDesktopPolicyChangedType paperDesktopPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19505V5 = paperDesktopPolicyChangedType;
        return eventType;
    }

    /* renamed from: nc */
    public final EventType m14993nc(Tag tag, SfExternalInviteWarnType sfExternalInviteWarnType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19570d3 = sfExternalInviteWarnType;
        return eventType;
    }

    /* renamed from: nd */
    public final EventType m14994nd(Tag tag, SharedLinkRemoveExpiryType sharedLinkRemoveExpiryType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19571d4 = sharedLinkRemoveExpiryType;
        return eventType;
    }

    /* renamed from: ne */
    public final EventType m14995ne(Tag tag, SsoAddLoginUrlType ssoAddLoginUrlType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19464Q4 = ssoAddLoginUrlType;
        return eventType;
    }

    /* renamed from: nf */
    public final EventType m14996nf(Tag tag, TfaChangePolicyType tfaChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19703s6 = tfaChangePolicyType;
        return eventType;
    }

    /* renamed from: o7 */
    public final EventType m14997o7(Tag tag, AccountCaptureChangePolicyType accountCaptureChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19590f5 = accountCaptureChangePolicyType;
        return eventType;
    }

    /* renamed from: o8 */
    public final EventType m14998o8(Tag tag, DomainInvitesSetInviteNewUserPrefToNoType domainInvitesSetInviteNewUserPrefToNoType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19403J = domainInvitesSetInviteNewUserPrefToNoType;
        return eventType;
    }

    /* renamed from: o9 */
    public final EventType m14999o9(Tag tag, FileTransfersFileAddType fileTransfersFileAddType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19462Q2 = fileTransfersFileAddType;
        return eventType;
    }

    /* renamed from: oa */
    public final EventType m15000oa(Tag tag, MemberChangeNameType memberChangeNameType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19595g1 = memberChangeNameType;
        return eventType;
    }

    /* renamed from: ob */
    public final EventType m15001ob(Tag tag, PaperDocAddCommentType paperDocAddCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19445O1 = paperDocAddCommentType;
        return eventType;
    }

    /* renamed from: oc */
    public final EventType m15002oc(Tag tag, SfFbInviteType sfFbInviteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19579e3 = sfFbInviteType;
        return eventType;
    }

    /* renamed from: od */
    public final EventType m15003od(Tag tag, SharedLinkSettingsAddExpirationType sharedLinkSettingsAddExpirationType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19580e4 = sharedLinkSettingsAddExpirationType;
        return eventType;
    }

    /* renamed from: oe */
    public final EventType m15004oe(Tag tag, SsoAddLogoutUrlType ssoAddLogoutUrlType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19472R4 = ssoAddLogoutUrlType;
        return eventType;
    }

    /* renamed from: of */
    public final EventType m15005of(Tag tag, TfaChangeStatusType tfaChangeStatusType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19418K6 = tfaChangeStatusType;
        return eventType;
    }

    /* renamed from: p7 */
    public final EventType m15006p7(Tag tag, AccountCaptureMigrateAccountType accountCaptureMigrateAccountType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19339B = accountCaptureMigrateAccountType;
        return eventType;
    }

    /* renamed from: p8 */
    public final EventType m15007p8(Tag tag, DomainInvitesSetInviteNewUserPrefToYesType domainInvitesSetInviteNewUserPrefToYesType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19411K = domainInvitesSetInviteNewUserPrefToYesType;
        return eventType;
    }

    /* renamed from: p9 */
    public final EventType m15008p9(Tag tag, FileTransfersPolicyChangedType fileTransfersPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19361D5 = fileTransfersPolicyChangedType;
        return eventType;
    }

    /* renamed from: pa */
    public final EventType m15009pa(Tag tag, MemberChangeStatusType memberChangeStatusType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19604h1 = memberChangeStatusType;
        return eventType;
    }

    /* renamed from: pb */
    public final EventType m15010pb(Tag tag, PaperDocChangeMemberRoleType paperDocChangeMemberRoleType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19453P1 = paperDocChangeMemberRoleType;
        return eventType;
    }

    /* renamed from: pc */
    public final EventType m15011pc(Tag tag, SfFbInviteChangeRoleType sfFbInviteChangeRoleType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19588f3 = sfFbInviteChangeRoleType;
        return eventType;
    }

    /* renamed from: pd */
    public final EventType m15012pd(Tag tag, SharedLinkSettingsAddPasswordType sharedLinkSettingsAddPasswordType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19589f4 = sharedLinkSettingsAddPasswordType;
        return eventType;
    }

    /* renamed from: pe */
    public final EventType m15013pe(Tag tag, SsoChangeCertType ssoChangeCertType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19480S4 = ssoChangeCertType;
        return eventType;
    }

    /* renamed from: pf */
    public final EventType m15014pf(Tag tag, TfaRemoveBackupPhoneType tfaRemoveBackupPhoneType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19426L6 = tfaRemoveBackupPhoneType;
        return eventType;
    }

    /* renamed from: q7 */
    public final EventType m15015q7(Tag tag, AccountCaptureNotificationEmailsSentType accountCaptureNotificationEmailsSentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19347C = accountCaptureNotificationEmailsSentType;
        return eventType;
    }

    /* renamed from: q8 */
    public final EventType m15016q8(Tag tag, DomainVerificationAddDomainFailType domainVerificationAddDomainFailType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19419L = domainVerificationAddDomainFailType;
        return eventType;
    }

    /* renamed from: q9 */
    public final EventType m15017q9(Tag tag, FileTransfersTransferDeleteType fileTransfersTransferDeleteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19470R2 = fileTransfersTransferDeleteType;
        return eventType;
    }

    /* renamed from: qa */
    public final EventType m15018qa(Tag tag, MemberDeleteManualContactsType memberDeleteManualContactsType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19613i1 = memberDeleteManualContactsType;
        return eventType;
    }

    /* renamed from: qb */
    public final EventType m15019qb(Tag tag, PaperDocChangeSharingPolicyType paperDocChangeSharingPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19461Q1 = paperDocChangeSharingPolicyType;
        return eventType;
    }

    /* renamed from: qc */
    public final EventType m15020qc(Tag tag, SfFbUninviteType sfFbUninviteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19597g3 = sfFbUninviteType;
        return eventType;
    }

    /* renamed from: qd */
    public final EventType m15021qd(Tag tag, SharedLinkSettingsAllowDownloadDisabledType sharedLinkSettingsAllowDownloadDisabledType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19598g4 = sharedLinkSettingsAllowDownloadDisabledType;
        return eventType;
    }

    /* renamed from: qe */
    public final EventType m15022qe(Tag tag, SsoChangeLoginUrlType ssoChangeLoginUrlType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19488T4 = ssoChangeLoginUrlType;
        return eventType;
    }

    /* renamed from: qf */
    public final EventType m15023qf(Tag tag, TfaRemoveExceptionType tfaRemoveExceptionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19711t6 = tfaRemoveExceptionType;
        return eventType;
    }

    /* renamed from: r7 */
    public final EventType m15024r7(Tag tag, AccountCaptureRelinquishAccountType accountCaptureRelinquishAccountType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19355D = accountCaptureRelinquishAccountType;
        return eventType;
    }

    /* renamed from: r8 */
    public final EventType m15025r8(Tag tag, DomainVerificationAddDomainSuccessType domainVerificationAddDomainSuccessType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19427M = domainVerificationAddDomainSuccessType;
        return eventType;
    }

    /* renamed from: r9 */
    public final EventType m15026r9(Tag tag, FileTransfersTransferDownloadType fileTransfersTransferDownloadType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19478S2 = fileTransfersTransferDownloadType;
        return eventType;
    }

    /* renamed from: ra */
    public final EventType m15027ra(Tag tag, MemberDeleteProfilePhotoType memberDeleteProfilePhotoType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19622j1 = memberDeleteProfilePhotoType;
        return eventType;
    }

    /* renamed from: rb */
    public final EventType m15028rb(Tag tag, PaperDocChangeSubscriptionType paperDocChangeSubscriptionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19469R1 = paperDocChangeSubscriptionType;
        return eventType;
    }

    /* renamed from: rc */
    public final EventType m15029rc(Tag tag, SfInviteGroupType sfInviteGroupType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19606h3 = sfInviteGroupType;
        return eventType;
    }

    /* renamed from: rd */
    public final EventType m15030rd(Tag tag, SharedLinkSettingsAllowDownloadEnabledType sharedLinkSettingsAllowDownloadEnabledType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19607h4 = sharedLinkSettingsAllowDownloadEnabledType;
        return eventType;
    }

    /* renamed from: re */
    public final EventType m15031re(Tag tag, SsoChangeLogoutUrlType ssoChangeLogoutUrlType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19496U4 = ssoChangeLogoutUrlType;
        return eventType;
    }

    /* renamed from: rf */
    public final EventType m15032rf(Tag tag, TfaRemoveSecurityKeyType tfaRemoveSecurityKeyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19434M6 = tfaRemoveSecurityKeyType;
        return eventType;
    }

    /* renamed from: s7 */
    public final EventType m15033s7(Tag tag, AccountLockOrUnlockedType accountLockOrUnlockedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19428M0 = accountLockOrUnlockedType;
        return eventType;
    }

    /* renamed from: s8 */
    public final EventType m15034s8(Tag tag, DomainVerificationRemoveDomainType domainVerificationRemoveDomainType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19435N = domainVerificationRemoveDomainType;
        return eventType;
    }

    /* renamed from: s9 */
    public final EventType m15035s9(Tag tag, FileTransfersTransferSendType fileTransfersTransferSendType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19486T2 = fileTransfersTransferSendType;
        return eventType;
    }

    /* renamed from: sa */
    public final EventType m15036sa(Tag tag, MemberPermanentlyDeleteAccountContentsType memberPermanentlyDeleteAccountContentsType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19631k1 = memberPermanentlyDeleteAccountContentsType;
        return eventType;
    }

    /* renamed from: sb */
    public final EventType m15037sb(Tag tag, PaperDocDeleteCommentType paperDocDeleteCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19485T1 = paperDocDeleteCommentType;
        return eventType;
    }

    /* renamed from: sc */
    public final EventType m15038sc(Tag tag, SfTeamGrantAccessType sfTeamGrantAccessType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19615i3 = sfTeamGrantAccessType;
        return eventType;
    }

    /* renamed from: sd */
    public final EventType m15039sd(Tag tag, SharedLinkSettingsChangeAudienceType sharedLinkSettingsChangeAudienceType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19616i4 = sharedLinkSettingsChangeAudienceType;
        return eventType;
    }

    /* renamed from: se */
    public final EventType m15040se(Tag tag, SsoChangePolicyType ssoChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19663n6 = ssoChangePolicyType;
        return eventType;
    }

    /* renamed from: sf */
    public final EventType m15041sf(Tag tag, TfaResetType tfaResetType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19442N6 = tfaResetType;
        return eventType;
    }

    /* renamed from: t7 */
    public final EventType m15042t7(Tag tag, AllowDownloadDisabledType allowDownloadDisabledType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19599g5 = allowDownloadDisabledType;
        return eventType;
    }

    /* renamed from: t8 */
    public final EventType m15043t8(Tag tag, EmmAddExceptionType emmAddExceptionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19718u5 = emmAddExceptionType;
        return eventType;
    }

    /* renamed from: t9 */
    public final EventType m15044t9(Tag tag, FileTransfersTransferViewType fileTransfersTransferViewType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19494U2 = fileTransfersTransferViewType;
        return eventType;
    }

    /* renamed from: ta */
    public final EventType m15045ta(Tag tag, MemberRemoveExternalIdType memberRemoveExternalIdType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19640l1 = memberRemoveExternalIdType;
        return eventType;
    }

    public Tag tag() {
        return this.f19539a;
    }

    /* renamed from: tb */
    public final EventType m15046tb(Tag tag, PaperDocDeletedType paperDocDeletedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19477S1 = paperDocDeletedType;
        return eventType;
    }

    /* renamed from: tc */
    public final EventType m15047tc(Tag tag, SfTeamInviteType sfTeamInviteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19624j3 = sfTeamInviteType;
        return eventType;
    }

    /* renamed from: td */
    public final EventType m15048td(Tag tag, SharedLinkSettingsChangeExpirationType sharedLinkSettingsChangeExpirationType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19625j4 = sharedLinkSettingsChangeExpirationType;
        return eventType;
    }

    /* renamed from: te */
    public final EventType m15049te(Tag tag, SsoChangeSamlIdentityModeType ssoChangeSamlIdentityModeType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19504V4 = ssoChangeSamlIdentityModeType;
        return eventType;
    }

    /* renamed from: tf */
    public final EventType m15050tf(Tag tag, TwoAccountChangePolicyType twoAccountChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19719u6 = twoAccountChangePolicyType;
        return eventType;
    }

    public String toString() {
        return C3509b.f19761b.serialize((C3509b) this, false);
    }

    public String toStringMultiline() {
        return C3509b.f19761b.serialize((C3509b) this, true);
    }

    /* renamed from: u7 */
    public final EventType m15051u7(Tag tag, AllowDownloadEnabledType allowDownloadEnabledType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19608h5 = allowDownloadEnabledType;
        return eventType;
    }

    /* renamed from: u8 */
    public final EventType m15052u8(Tag tag, EmmChangePolicyType emmChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19726v5 = emmChangePolicyType;
        return eventType;
    }

    /* renamed from: u9 */
    public final EventType m15053u9(Tag tag, FileUnlikeCommentType fileUnlikeCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19656n = fileUnlikeCommentType;
        return eventType;
    }

    /* renamed from: ua */
    public final EventType m15054ua(Tag tag, MemberRequestsChangePolicyType memberRequestsChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19393H5 = memberRequestsChangePolicyType;
        return eventType;
    }

    /* renamed from: ub */
    public final EventType m15055ub(Tag tag, PaperDocDownloadType paperDocDownloadType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19493U1 = paperDocDownloadType;
        return eventType;
    }

    /* renamed from: uc */
    public final EventType m15056uc(Tag tag, SfTeamInviteChangeRoleType sfTeamInviteChangeRoleType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19633k3 = sfTeamInviteChangeRoleType;
        return eventType;
    }

    /* renamed from: ud */
    public final EventType m15057ud(Tag tag, SharedLinkSettingsChangePasswordType sharedLinkSettingsChangePasswordType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19634k4 = sharedLinkSettingsChangePasswordType;
        return eventType;
    }

    /* renamed from: ue */
    public final EventType m15058ue(Tag tag, SsoErrorType ssoErrorType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19516X0 = ssoErrorType;
        return eventType;
    }

    /* renamed from: uf */
    public final EventType m15059uf(Tag tag, ViewerInfoPolicyChangedType viewerInfoPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19727v6 = viewerInfoPolicyChangedType;
        return eventType;
    }

    /* renamed from: v7 */
    public final EventType m15060v7(Tag tag, AppLinkTeamType appLinkTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19548b = appLinkTeamType;
        return eventType;
    }

    /* renamed from: v8 */
    public final EventType m15061v8(Tag tag, EmmCreateExceptionsReportType emmCreateExceptionsReportType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19739x2 = emmCreateExceptionsReportType;
        return eventType;
    }

    /* renamed from: v9 */
    public final EventType m15062v9(Tag tag, FileUnresolveCommentType fileUnresolveCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19664o = fileUnresolveCommentType;
        return eventType;
    }

    /* renamed from: va */
    public final EventType m15063va(Tag tag, MemberSendInvitePolicyChangedType memberSendInvitePolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19401I5 = memberSendInvitePolicyChangedType;
        return eventType;
    }

    /* renamed from: vb */
    public final EventType m15064vb(Tag tag, PaperDocEditType paperDocEditType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19501V1 = paperDocEditType;
        return eventType;
    }

    /* renamed from: vc */
    public final EventType m15065vc(Tag tag, SfTeamJoinType sfTeamJoinType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19642l3 = sfTeamJoinType;
        return eventType;
    }

    /* renamed from: vd */
    public final EventType m15066vd(Tag tag, SharedLinkSettingsRemoveExpirationType sharedLinkSettingsRemoveExpirationType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19643l4 = sharedLinkSettingsRemoveExpirationType;
        return eventType;
    }

    /* renamed from: ve */
    public final EventType m15067ve(Tag tag, SsoRemoveCertType ssoRemoveCertType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19512W4 = ssoRemoveCertType;
        return eventType;
    }

    /* renamed from: vf */
    public final EventType m15068vf(Tag tag, WatermarkingPolicyChangedType watermarkingPolicyChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19735w6 = watermarkingPolicyChangedType;
        return eventType;
    }

    /* renamed from: w7 */
    public final EventType m15069w7(Tag tag, AppLinkUserType appLinkUserType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19557c = appLinkUserType;
        return eventType;
    }

    /* renamed from: w8 */
    public final EventType m15070w8(Tag tag, EmmCreateUsageReportType emmCreateUsageReportType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19747y2 = emmCreateUsageReportType;
        return eventType;
    }

    /* renamed from: w9 */
    public final EventType m15071w9(Tag tag, FolderOverviewDescriptionChangedType folderOverviewDescriptionChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19585f0 = folderOverviewDescriptionChangedType;
        return eventType;
    }

    /* renamed from: wa */
    public final EventType m15072wa(Tag tag, MemberSetProfilePhotoType memberSetProfilePhotoType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19649m1 = memberSetProfilePhotoType;
        return eventType;
    }

    /* renamed from: wb */
    public final EventType m15073wb(Tag tag, PaperDocEditCommentType paperDocEditCommentType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19509W1 = paperDocEditCommentType;
        return eventType;
    }

    /* renamed from: wc */
    public final EventType m15074wc(Tag tag, SfTeamJoinFromOobLinkType sfTeamJoinFromOobLinkType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19651m3 = sfTeamJoinFromOobLinkType;
        return eventType;
    }

    /* renamed from: wd */
    public final EventType m15075wd(Tag tag, SharedLinkSettingsRemovePasswordType sharedLinkSettingsRemovePasswordType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19652m4 = sharedLinkSettingsRemovePasswordType;
        return eventType;
    }

    /* renamed from: we */
    public final EventType m15076we(Tag tag, SsoRemoveLoginUrlType ssoRemoveLoginUrlType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19520X4 = ssoRemoveLoginUrlType;
        return eventType;
    }

    /* renamed from: wf */
    public final EventType m15077wf(Tag tag, WebSessionsChangeActiveSessionLimitType webSessionsChangeActiveSessionLimitType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19743x6 = webSessionsChangeActiveSessionLimitType;
        return eventType;
    }

    /* renamed from: x7 */
    public final EventType m15078x7(Tag tag, AppUnlinkTeamType appUnlinkTeamType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19566d = appUnlinkTeamType;
        return eventType;
    }

    /* renamed from: x8 */
    public final EventType m15079x8(Tag tag, EmmErrorType emmErrorType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19436N0 = emmErrorType;
        return eventType;
    }

    /* renamed from: x9 */
    public final EventType m15080x9(Tag tag, FolderOverviewItemPinnedType folderOverviewItemPinnedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19594g0 = folderOverviewItemPinnedType;
        return eventType;
    }

    /* renamed from: xa */
    public final EventType m15081xa(Tag tag, MemberSpaceLimitsAddCustomQuotaType memberSpaceLimitsAddCustomQuotaType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19658n1 = memberSpaceLimitsAddCustomQuotaType;
        return eventType;
    }

    /* renamed from: xb */
    public final EventType m15082xb(Tag tag, PaperDocFollowedType paperDocFollowedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19517X1 = paperDocFollowedType;
        return eventType;
    }

    /* renamed from: xc */
    public final EventType m15083xc(Tag tag, SfTeamUninviteType sfTeamUninviteType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19660n3 = sfTeamUninviteType;
        return eventType;
    }

    /* renamed from: xd */
    public final EventType m15084xd(Tag tag, SharedLinkShareType sharedLinkShareType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19661n4 = sharedLinkShareType;
        return eventType;
    }

    /* renamed from: xe */
    public final EventType m15085xe(Tag tag, SsoRemoveLogoutUrlType ssoRemoveLogoutUrlType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19528Y4 = ssoRemoveLogoutUrlType;
        return eventType;
    }

    /* renamed from: xf */
    public final EventType m15086xf(Tag tag, WebSessionsChangeFixedLengthPolicyType webSessionsChangeFixedLengthPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19751y6 = webSessionsChangeFixedLengthPolicyType;
        return eventType;
    }

    /* renamed from: y7 */
    public final EventType m15087y7(Tag tag, AppUnlinkUserType appUnlinkUserType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19575e = appUnlinkUserType;
        return eventType;
    }

    /* renamed from: y8 */
    public final EventType m15088y8(Tag tag, EmmRefreshAuthTokenType emmRefreshAuthTokenType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19752z = emmRefreshAuthTokenType;
        return eventType;
    }

    /* renamed from: y9 */
    public final EventType m15089y9(Tag tag, FolderOverviewItemUnpinnedType folderOverviewItemUnpinnedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19603h0 = folderOverviewItemUnpinnedType;
        return eventType;
    }

    /* renamed from: ya */
    public final EventType m15090ya(Tag tag, MemberSpaceLimitsAddExceptionType memberSpaceLimitsAddExceptionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19409J5 = memberSpaceLimitsAddExceptionType;
        return eventType;
    }

    /* renamed from: yb */
    public final EventType m15091yb(Tag tag, PaperDocMentionType paperDocMentionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19525Y1 = paperDocMentionType;
        return eventType;
    }

    /* renamed from: yc */
    public final EventType m15092yc(Tag tag, SharedContentAddInviteesType sharedContentAddInviteesType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19668o3 = sharedContentAddInviteesType;
        return eventType;
    }

    /* renamed from: yd */
    public final EventType m15093yd(Tag tag, SharedLinkViewType sharedLinkViewType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19669o4 = sharedLinkViewType;
        return eventType;
    }

    /* renamed from: ye */
    public final EventType m15094ye(Tag tag, StartedEnterpriseAdminSessionType startedEnterpriseAdminSessionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19498U6 = startedEnterpriseAdminSessionType;
        return eventType;
    }

    /* renamed from: yf */
    public final EventType m15095yf(Tag tag, WebSessionsChangeIdleLengthPolicyType webSessionsChangeIdleLengthPolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19759z6 = webSessionsChangeIdleLengthPolicyType;
        return eventType;
    }

    /* renamed from: z7 */
    public final EventType m15096z7(Tag tag, BinderAddPageType binderAddPageType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19738x1 = binderAddPageType;
        return eventType;
    }

    /* renamed from: z8 */
    public final EventType m15097z8(Tag tag, EmmRemoveExceptionType emmRemoveExceptionType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19734w5 = emmRemoveExceptionType;
        return eventType;
    }

    /* renamed from: z9 */
    public final EventType m15098z9(Tag tag, GoogleSsoChangePolicyType googleSsoChangePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19369E5 = googleSsoChangePolicyType;
        return eventType;
    }

    /* renamed from: za */
    public final EventType m15099za(Tag tag, MemberSpaceLimitsChangeCapsTypePolicyType memberSpaceLimitsChangeCapsTypePolicyType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19417K5 = memberSpaceLimitsChangeCapsTypePolicyType;
        return eventType;
    }

    /* renamed from: zb */
    public final EventType m15100zb(Tag tag, PaperDocOwnershipChangedType paperDocOwnershipChangedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19533Z1 = paperDocOwnershipChangedType;
        return eventType;
    }

    /* renamed from: zc */
    public final EventType m15101zc(Tag tag, SharedContentAddLinkExpiryType sharedContentAddLinkExpiryType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19676p3 = sharedContentAddLinkExpiryType;
        return eventType;
    }

    /* renamed from: zd */
    public final EventType m15102zd(Tag tag, SharedNoteOpenedType sharedNoteOpenedType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19677p4 = sharedNoteOpenedType;
        return eventType;
    }

    /* renamed from: ze */
    public final EventType m15103ze(Tag tag, TeamActivityCreateReportType teamActivityCreateReportType) {
        EventType eventType = new EventType();
        eventType.f19539a = tag;
        eventType.f19438N2 = teamActivityCreateReportType;
        return eventType;
    }
}
