package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.account.PhotoSourceArg;
import com.dropbox.core.p006v2.async.LaunchEmptyResult;
import com.dropbox.core.p006v2.async.PollArg;
import com.dropbox.core.p006v2.async.PollEmptyResult;
import com.dropbox.core.p006v2.async.PollError;
import com.dropbox.core.p006v2.async.PollErrorException;
import com.dropbox.core.p006v2.fileproperties.AddTemplateArg;
import com.dropbox.core.p006v2.fileproperties.AddTemplateResult;
import com.dropbox.core.p006v2.fileproperties.GetTemplateArg;
import com.dropbox.core.p006v2.fileproperties.GetTemplateResult;
import com.dropbox.core.p006v2.fileproperties.ListTemplateResult;
import com.dropbox.core.p006v2.fileproperties.ModifyTemplateError;
import com.dropbox.core.p006v2.fileproperties.ModifyTemplateErrorException;
import com.dropbox.core.p006v2.fileproperties.PropertyFieldTemplate;
import com.dropbox.core.p006v2.fileproperties.TemplateError;
import com.dropbox.core.p006v2.fileproperties.TemplateErrorException;
import com.dropbox.core.p006v2.fileproperties.UpdateTemplateArg;
import com.dropbox.core.p006v2.fileproperties.UpdateTemplateResult;
import com.dropbox.core.p006v2.files.SyncSettingArg;
import com.dropbox.core.p006v2.team.AddSecondaryEmailsError;
import com.dropbox.core.p006v2.team.AddSecondaryEmailsResult;
import com.dropbox.core.p006v2.team.C3276a;
import com.dropbox.core.p006v2.team.C3278b;
import com.dropbox.core.p006v2.team.C3279b0;
import com.dropbox.core.p006v2.team.C3280c;
import com.dropbox.core.p006v2.team.C3281c0;
import com.dropbox.core.p006v2.team.C3282d;
import com.dropbox.core.p006v2.team.C3283d0;
import com.dropbox.core.p006v2.team.C3284e;
import com.dropbox.core.p006v2.team.C3285e0;
import com.dropbox.core.p006v2.team.C3286f;
import com.dropbox.core.p006v2.team.C3287f0;
import com.dropbox.core.p006v2.team.C3288g;
import com.dropbox.core.p006v2.team.C3289g0;
import com.dropbox.core.p006v2.team.C3291h0;
import com.dropbox.core.p006v2.team.C3292i;
import com.dropbox.core.p006v2.team.C3293i0;
import com.dropbox.core.p006v2.team.C3294j;
import com.dropbox.core.p006v2.team.C3295j0;
import com.dropbox.core.p006v2.team.C3296k;
import com.dropbox.core.p006v2.team.C3297k0;
import com.dropbox.core.p006v2.team.C3298l;
import com.dropbox.core.p006v2.team.C3299l0;
import com.dropbox.core.p006v2.team.C3300m;
import com.dropbox.core.p006v2.team.C3301m0;
import com.dropbox.core.p006v2.team.C3302n;
import com.dropbox.core.p006v2.team.C3303n0;
import com.dropbox.core.p006v2.team.C3304o;
import com.dropbox.core.p006v2.team.C3305o0;
import com.dropbox.core.p006v2.team.C3306p;
import com.dropbox.core.p006v2.team.C3307p0;
import com.dropbox.core.p006v2.team.C3308q;
import com.dropbox.core.p006v2.team.C3309q0;
import com.dropbox.core.p006v2.team.C3310r;
import com.dropbox.core.p006v2.team.C3311r0;
import com.dropbox.core.p006v2.team.C3312s;
import com.dropbox.core.p006v2.team.C3313s0;
import com.dropbox.core.p006v2.team.C3314t;
import com.dropbox.core.p006v2.team.C3315t0;
import com.dropbox.core.p006v2.team.C3316u;
import com.dropbox.core.p006v2.team.C3317u0;
import com.dropbox.core.p006v2.team.C3318v;
import com.dropbox.core.p006v2.team.C3319w;
import com.dropbox.core.p006v2.team.C3320x;
import com.dropbox.core.p006v2.team.C3321y;
import com.dropbox.core.p006v2.team.C3322z;
import com.dropbox.core.p006v2.team.CustomQuotaError;
import com.dropbox.core.p006v2.team.CustomQuotaResult;
import com.dropbox.core.p006v2.team.DateRange;
import com.dropbox.core.p006v2.team.DateRangeError;
import com.dropbox.core.p006v2.team.DeleteSecondaryEmailsResult;
import com.dropbox.core.p006v2.team.ExcludedUsersListContinueError;
import com.dropbox.core.p006v2.team.ExcludedUsersListError;
import com.dropbox.core.p006v2.team.ExcludedUsersListResult;
import com.dropbox.core.p006v2.team.ExcludedUsersUpdateError;
import com.dropbox.core.p006v2.team.ExcludedUsersUpdateResult;
import com.dropbox.core.p006v2.team.FeaturesGetValuesBatchError;
import com.dropbox.core.p006v2.team.FeaturesGetValuesBatchResult;
import com.dropbox.core.p006v2.team.GetActivityReport;
import com.dropbox.core.p006v2.team.GetDevicesReport;
import com.dropbox.core.p006v2.team.GetMembershipReport;
import com.dropbox.core.p006v2.team.GetStorageReport;
import com.dropbox.core.p006v2.team.GroupCreateArg;
import com.dropbox.core.p006v2.team.GroupCreateError;
import com.dropbox.core.p006v2.team.GroupDeleteError;
import com.dropbox.core.p006v2.team.GroupFullInfo;
import com.dropbox.core.p006v2.team.GroupMemberSetAccessTypeError;
import com.dropbox.core.p006v2.team.GroupMembersAddError;
import com.dropbox.core.p006v2.team.GroupMembersChangeResult;
import com.dropbox.core.p006v2.team.GroupMembersRemoveError;
import com.dropbox.core.p006v2.team.GroupSelector;
import com.dropbox.core.p006v2.team.GroupSelectorError;
import com.dropbox.core.p006v2.team.GroupUpdateArgs;
import com.dropbox.core.p006v2.team.GroupUpdateError;
import com.dropbox.core.p006v2.team.GroupsGetInfoError;
import com.dropbox.core.p006v2.team.GroupsGetInfoItem;
import com.dropbox.core.p006v2.team.GroupsListContinueError;
import com.dropbox.core.p006v2.team.GroupsListResult;
import com.dropbox.core.p006v2.team.GroupsMembersListContinueError;
import com.dropbox.core.p006v2.team.GroupsMembersListResult;
import com.dropbox.core.p006v2.team.GroupsPollError;
import com.dropbox.core.p006v2.team.GroupsSelector;
import com.dropbox.core.p006v2.team.LegalHoldPolicy;
import com.dropbox.core.p006v2.team.LegalHoldsGetPolicyError;
import com.dropbox.core.p006v2.team.LegalHoldsListHeldRevisionResult;
import com.dropbox.core.p006v2.team.LegalHoldsListHeldRevisionsError;
import com.dropbox.core.p006v2.team.LegalHoldsListPoliciesError;
import com.dropbox.core.p006v2.team.LegalHoldsListPoliciesResult;
import com.dropbox.core.p006v2.team.LegalHoldsPolicyCreateArg;
import com.dropbox.core.p006v2.team.LegalHoldsPolicyCreateError;
import com.dropbox.core.p006v2.team.LegalHoldsPolicyReleaseError;
import com.dropbox.core.p006v2.team.LegalHoldsPolicyUpdateArg;
import com.dropbox.core.p006v2.team.LegalHoldsPolicyUpdateError;
import com.dropbox.core.p006v2.team.ListMemberAppsError;
import com.dropbox.core.p006v2.team.ListMemberAppsResult;
import com.dropbox.core.p006v2.team.ListMemberDevicesArg;
import com.dropbox.core.p006v2.team.ListMemberDevicesError;
import com.dropbox.core.p006v2.team.ListMemberDevicesResult;
import com.dropbox.core.p006v2.team.ListMembersAppsError;
import com.dropbox.core.p006v2.team.ListMembersAppsResult;
import com.dropbox.core.p006v2.team.ListMembersDevicesArg;
import com.dropbox.core.p006v2.team.ListMembersDevicesError;
import com.dropbox.core.p006v2.team.ListMembersDevicesResult;
import com.dropbox.core.p006v2.team.ListTeamAppsError;
import com.dropbox.core.p006v2.team.ListTeamAppsResult;
import com.dropbox.core.p006v2.team.ListTeamDevicesArg;
import com.dropbox.core.p006v2.team.ListTeamDevicesError;
import com.dropbox.core.p006v2.team.ListTeamDevicesResult;
import com.dropbox.core.p006v2.team.MembersAddJobStatus;
import com.dropbox.core.p006v2.team.MembersAddLaunch;
import com.dropbox.core.p006v2.team.MembersDeleteProfilePhotoError;
import com.dropbox.core.p006v2.team.MembersGetInfoError;
import com.dropbox.core.p006v2.team.MembersGetInfoItem;
import com.dropbox.core.p006v2.team.MembersListArg;
import com.dropbox.core.p006v2.team.MembersListContinueError;
import com.dropbox.core.p006v2.team.MembersListError;
import com.dropbox.core.p006v2.team.MembersListResult;
import com.dropbox.core.p006v2.team.MembersRecoverError;
import com.dropbox.core.p006v2.team.MembersRemoveArg;
import com.dropbox.core.p006v2.team.MembersRemoveError;
import com.dropbox.core.p006v2.team.MembersSendWelcomeError;
import com.dropbox.core.p006v2.team.MembersSetPermissionsError;
import com.dropbox.core.p006v2.team.MembersSetPermissionsResult;
import com.dropbox.core.p006v2.team.MembersSetProfileArg;
import com.dropbox.core.p006v2.team.MembersSetProfileError;
import com.dropbox.core.p006v2.team.MembersSetProfilePhotoError;
import com.dropbox.core.p006v2.team.MembersSuspendError;
import com.dropbox.core.p006v2.team.MembersTransferFormerMembersFilesError;
import com.dropbox.core.p006v2.team.MembersUnsuspendError;
import com.dropbox.core.p006v2.team.RemoveCustomQuotaResult;
import com.dropbox.core.p006v2.team.ResendVerificationEmailResult;
import com.dropbox.core.p006v2.team.RevokeDeviceSessionArg;
import com.dropbox.core.p006v2.team.RevokeDeviceSessionBatchError;
import com.dropbox.core.p006v2.team.RevokeDeviceSessionBatchResult;
import com.dropbox.core.p006v2.team.RevokeDeviceSessionError;
import com.dropbox.core.p006v2.team.RevokeLinkedApiAppArg;
import com.dropbox.core.p006v2.team.RevokeLinkedAppBatchError;
import com.dropbox.core.p006v2.team.RevokeLinkedAppBatchResult;
import com.dropbox.core.p006v2.team.RevokeLinkedAppError;
import com.dropbox.core.p006v2.team.SetCustomQuotaError;
import com.dropbox.core.p006v2.team.TeamFolderActivateError;
import com.dropbox.core.p006v2.team.TeamFolderArchiveError;
import com.dropbox.core.p006v2.team.TeamFolderArchiveJobStatus;
import com.dropbox.core.p006v2.team.TeamFolderArchiveLaunch;
import com.dropbox.core.p006v2.team.TeamFolderCreateError;
import com.dropbox.core.p006v2.team.TeamFolderGetInfoItem;
import com.dropbox.core.p006v2.team.TeamFolderListContinueError;
import com.dropbox.core.p006v2.team.TeamFolderListError;
import com.dropbox.core.p006v2.team.TeamFolderListResult;
import com.dropbox.core.p006v2.team.TeamFolderMetadata;
import com.dropbox.core.p006v2.team.TeamFolderPermanentlyDeleteError;
import com.dropbox.core.p006v2.team.TeamFolderRenameError;
import com.dropbox.core.p006v2.team.TeamFolderUpdateSyncSettingsArg;
import com.dropbox.core.p006v2.team.TeamFolderUpdateSyncSettingsError;
import com.dropbox.core.p006v2.team.TeamGetInfoResult;
import com.dropbox.core.p006v2.team.TeamMemberInfo;
import com.dropbox.core.p006v2.team.TeamNamespacesListContinueError;
import com.dropbox.core.p006v2.team.TeamNamespacesListError;
import com.dropbox.core.p006v2.team.TeamNamespacesListResult;
import com.dropbox.core.p006v2.team.TokenGetAuthenticatedAdminError;
import com.dropbox.core.p006v2.team.TokenGetAuthenticatedAdminResult;
import com.dropbox.core.p006v2.team.UserSelectorArg;
import com.dropbox.core.stone.StoneSerializers;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class DbxTeamTeamRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f18136a;

    public DbxTeamTeamRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f18136a = dbxRawClientV2;
    }

    /* renamed from: A */
    public RevokeLinkedAppBatchResult m12156A(C3297k0 c3297k0) throws RevokeLinkedAppBatchErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (RevokeLinkedAppBatchResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/linked_apps/revoke_linked_app_batch", c3297k0, false, C3297k0.a.f18632b, RevokeLinkedAppBatchResult.C3206a.f18458b, RevokeLinkedAppBatchError.C3205b.f18457b);
        } catch (DbxWrappedException e) {
            throw new RevokeLinkedAppBatchErrorException("2/team/linked_apps/revoke_linked_app_batch", e.getRequestId(), e.getUserMessage(), (RevokeLinkedAppBatchError) e.getErrorValue());
        }
    }

    /* renamed from: B */
    public ExcludedUsersUpdateResult m12157B(C3286f c3286f) throws ExcludedUsersUpdateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (ExcludedUsersUpdateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/member_space_limits/excluded_users/add", c3286f, false, C3286f.a.f18604b, ExcludedUsersUpdateResult.C3040a.f18162b, ExcludedUsersUpdateError.C3039b.f18161b);
        } catch (DbxWrappedException e) {
            throw new ExcludedUsersUpdateErrorException("2/team/member_space_limits/excluded_users/add", e.getRequestId(), e.getUserMessage(), (ExcludedUsersUpdateError) e.getErrorValue());
        }
    }

    /* renamed from: C */
    public ExcludedUsersListResult m12158C(C3282d c3282d) throws ExcludedUsersListErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (ExcludedUsersListResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/member_space_limits/excluded_users/list", c3282d, false, C3282d.a.f18596b, ExcludedUsersListResult.C3037a.f18159b, ExcludedUsersListError.C3036b.f18158b);
        } catch (DbxWrappedException e) {
            throw new ExcludedUsersListErrorException("2/team/member_space_limits/excluded_users/list", e.getRequestId(), e.getUserMessage(), (ExcludedUsersListError) e.getErrorValue());
        }
    }

    /* renamed from: D */
    public ExcludedUsersListResult m12159D(C3284e c3284e) throws ExcludedUsersListContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (ExcludedUsersListResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/member_space_limits/excluded_users/list/continue", c3284e, false, C3284e.a.f18600b, ExcludedUsersListResult.C3037a.f18159b, ExcludedUsersListContinueError.C3034b.f18156b);
        } catch (DbxWrappedException e) {
            throw new ExcludedUsersListContinueErrorException("2/team/member_space_limits/excluded_users/list/continue", e.getRequestId(), e.getUserMessage(), (ExcludedUsersListContinueError) e.getErrorValue());
        }
    }

    /* renamed from: E */
    public ExcludedUsersUpdateResult m12160E(C3286f c3286f) throws ExcludedUsersUpdateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (ExcludedUsersUpdateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/member_space_limits/excluded_users/remove", c3286f, false, C3286f.a.f18604b, ExcludedUsersUpdateResult.C3040a.f18162b, ExcludedUsersUpdateError.C3039b.f18161b);
        } catch (DbxWrappedException e) {
            throw new ExcludedUsersUpdateErrorException("2/team/member_space_limits/excluded_users/remove", e.getRequestId(), e.getUserMessage(), (ExcludedUsersUpdateError) e.getErrorValue());
        }
    }

    /* renamed from: F */
    public List<CustomQuotaResult> m12161F(C3278b c3278b) throws CustomQuotaErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (List) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/member_space_limits/get_custom_quota", c3278b, false, C3278b.a.f18588b, StoneSerializers.list(CustomQuotaResult.C3021b.f18130b), CustomQuotaError.C3019b.f18125b);
        } catch (DbxWrappedException e) {
            throw new CustomQuotaErrorException("2/team/member_space_limits/get_custom_quota", e.getRequestId(), e.getUserMessage(), (CustomQuotaError) e.getErrorValue());
        }
    }

    /* renamed from: G */
    public List<RemoveCustomQuotaResult> m12162G(C3278b c3278b) throws CustomQuotaErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (List) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/member_space_limits/remove_custom_quota", c3278b, false, C3278b.a.f18588b, StoneSerializers.list(RemoveCustomQuotaResult.C3189b.f18425b), CustomQuotaError.C3019b.f18125b);
        } catch (DbxWrappedException e) {
            throw new CustomQuotaErrorException("2/team/member_space_limits/remove_custom_quota", e.getRequestId(), e.getUserMessage(), (CustomQuotaError) e.getErrorValue());
        }
    }

    /* renamed from: H */
    public List<CustomQuotaResult> m12163H(C3299l0 c3299l0) throws SetCustomQuotaErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (List) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/member_space_limits/set_custom_quota", c3299l0, false, C3299l0.a.f18636b, StoneSerializers.list(CustomQuotaResult.C3021b.f18130b), SetCustomQuotaError.C3211b.f18463b);
        } catch (DbxWrappedException e) {
            throw new SetCustomQuotaErrorException("2/team/member_space_limits/set_custom_quota", e.getRequestId(), e.getUserMessage(), (SetCustomQuotaError) e.getErrorValue());
        }
    }

    /* renamed from: I */
    public MembersAddLaunch m12164I(C3320x c3320x) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (MembersAddLaunch) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/add", c3320x, false, C3320x.a.f18682b, MembersAddLaunch.C3148b.f18355b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"members/add\":" + e.getErrorValue());
        }
    }

    /* renamed from: J */
    public MembersAddJobStatus m12165J(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (MembersAddJobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/add/job_status/get", pollArg, false, PollArg.Serializer.INSTANCE, MembersAddJobStatus.C3146b.f18350b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/team/members/add/job_status/get", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: K */
    public TeamMemberInfo m12166K(C3279b0 c3279b0) throws MembersDeleteProfilePhotoErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamMemberInfo) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/delete_profile_photo", c3279b0, false, C3279b0.a.f18590b, TeamMemberInfo.C3245a.f18533b, MembersDeleteProfilePhotoError.C3150b.f18357b);
        } catch (DbxWrappedException e) {
            throw new MembersDeleteProfilePhotoErrorException("2/team/members/delete_profile_photo", e.getRequestId(), e.getUserMessage(), (MembersDeleteProfilePhotoError) e.getErrorValue());
        }
    }

    /* renamed from: L */
    public List<MembersGetInfoItem> m12167L(C3281c0 c3281c0) throws MembersGetInfoErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (List) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/get_info", c3281c0, false, C3281c0.a.f18594b, StoneSerializers.list(MembersGetInfoItem.C3154b.f18364b), MembersGetInfoError.C3152b.f18359b);
        } catch (DbxWrappedException e) {
            throw new MembersGetInfoErrorException("2/team/members/get_info", e.getRequestId(), e.getUserMessage(), (MembersGetInfoError) e.getErrorValue());
        }
    }

    /* renamed from: M */
    public MembersListResult m12168M(MembersListArg membersListArg) throws MembersListErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (MembersListResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/list", membersListArg, false, MembersListArg.C3156a.f18368b, MembersListResult.C3161a.f18375b, MembersListError.C3160b.f18374b);
        } catch (DbxWrappedException e) {
            throw new MembersListErrorException("2/team/members/list", e.getRequestId(), e.getUserMessage(), (MembersListError) e.getErrorValue());
        }
    }

    /* renamed from: N */
    public MembersListResult m12169N(C3283d0 c3283d0) throws MembersListContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (MembersListResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/list/continue", c3283d0, false, C3283d0.a.f18598b, MembersListResult.C3161a.f18375b, MembersListContinueError.C3158b.f18372b);
        } catch (DbxWrappedException e) {
            throw new MembersListContinueErrorException("2/team/members/list/continue", e.getRequestId(), e.getUserMessage(), (MembersListContinueError) e.getErrorValue());
        }
    }

    /* renamed from: O */
    public LaunchEmptyResult m12170O(C3321y c3321y) throws MembersTransferFormerMembersFilesErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (LaunchEmptyResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/move_former_member_files", c3321y, false, C3321y.a.f18685b, LaunchEmptyResult.Serializer.INSTANCE, MembersTransferFormerMembersFilesError.C3180b.f18411b);
        } catch (DbxWrappedException e) {
            throw new MembersTransferFormerMembersFilesErrorException("2/team/members/move_former_member_files", e.getRequestId(), e.getUserMessage(), (MembersTransferFormerMembersFilesError) e.getErrorValue());
        }
    }

    /* renamed from: P */
    public PollEmptyResult m12171P(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (PollEmptyResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/move_former_member_files/job_status/check", pollArg, false, PollArg.Serializer.INSTANCE, PollEmptyResult.Serializer.INSTANCE, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/team/members/move_former_member_files/job_status/check", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: Q */
    public void m12172Q(C3285e0 c3285e0) throws MembersRecoverErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/recover", c3285e0, false, C3285e0.a.f18602b, StoneSerializers.void_(), MembersRecoverError.C3163b.f18377b);
        } catch (DbxWrappedException e) {
            throw new MembersRecoverErrorException("2/team/members/recover", e.getRequestId(), e.getUserMessage(), (MembersRecoverError) e.getErrorValue());
        }
    }

    /* renamed from: R */
    public LaunchEmptyResult m12173R(MembersRemoveArg membersRemoveArg) throws MembersRemoveErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (LaunchEmptyResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/remove", membersRemoveArg, false, MembersRemoveArg.C3164a.f18382b, LaunchEmptyResult.Serializer.INSTANCE, MembersRemoveError.C3166b.f18386b);
        } catch (DbxWrappedException e) {
            throw new MembersRemoveErrorException("2/team/members/remove", e.getRequestId(), e.getUserMessage(), (MembersRemoveError) e.getErrorValue());
        }
    }

    /* renamed from: S */
    public PollEmptyResult m12174S(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (PollEmptyResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/remove/job_status/get", pollArg, false, PollArg.Serializer.INSTANCE, PollEmptyResult.Serializer.INSTANCE, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/team/members/remove/job_status/get", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: T */
    public AddSecondaryEmailsResult m12175T(C3276a c3276a) throws AddSecondaryEmailsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (AddSecondaryEmailsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/secondary_emails/add", c3276a, false, C3276a.a.f18584b, AddSecondaryEmailsResult.C3013a.f18119b, AddSecondaryEmailsError.C3012b.f18118b);
        } catch (DbxWrappedException e) {
            throw new AddSecondaryEmailsErrorException("2/team/members/secondary_emails/add", e.getRequestId(), e.getUserMessage(), (AddSecondaryEmailsError) e.getErrorValue());
        }
    }

    /* renamed from: U */
    public DeleteSecondaryEmailsResult m12176U(C3280c c3280c) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (DeleteSecondaryEmailsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/secondary_emails/delete", c3280c, false, C3280c.a.f18592b, DeleteSecondaryEmailsResult.C3027a.f18143b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"members/secondary_emails/delete\":" + e.getErrorValue());
        }
    }

    /* renamed from: V */
    public ResendVerificationEmailResult m12177V(C3293i0 c3293i0) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (ResendVerificationEmailResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/secondary_emails/resend_verification_emails", c3293i0, false, C3293i0.a.f18622b, ResendVerificationEmailResult.C3193a.f18441b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"members/secondary_emails/resend_verification_emails\":" + e.getErrorValue());
        }
    }

    /* renamed from: W */
    public MembersSetPermissionsResult m12178W(C3287f0 c3287f0) throws MembersSetPermissionsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (MembersSetPermissionsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/set_admin_permissions", c3287f0, false, C3287f0.a.f18607b, MembersSetPermissionsResult.C3171a.f18391b, MembersSetPermissionsError.C3170b.f18390b);
        } catch (DbxWrappedException e) {
            throw new MembersSetPermissionsErrorException("2/team/members/set_admin_permissions", e.getRequestId(), e.getUserMessage(), (MembersSetPermissionsError) e.getErrorValue());
        }
    }

    /* renamed from: X */
    public TeamMemberInfo m12179X(MembersSetProfileArg membersSetProfileArg) throws MembersSetProfileErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamMemberInfo) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/set_profile", membersSetProfileArg, false, MembersSetProfileArg.C3172a.f18399b, TeamMemberInfo.C3245a.f18533b, MembersSetProfileError.C3174b.f18403b);
        } catch (DbxWrappedException e) {
            throw new MembersSetProfileErrorException("2/team/members/set_profile", e.getRequestId(), e.getUserMessage(), (MembersSetProfileError) e.getErrorValue());
        }
    }

    /* renamed from: Y */
    public TeamMemberInfo m12180Y(C3289g0 c3289g0) throws MembersSetProfilePhotoErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamMemberInfo) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/set_profile_photo", c3289g0, false, C3289g0.a.f18612b, TeamMemberInfo.C3245a.f18533b, MembersSetProfilePhotoError.C3176b.f18407b);
        } catch (DbxWrappedException e) {
            throw new MembersSetProfilePhotoErrorException("2/team/members/set_profile_photo", e.getRequestId(), e.getUserMessage(), (MembersSetProfilePhotoError) e.getErrorValue());
        }
    }

    /* renamed from: Z */
    public void m12181Z(C3322z c3322z) throws MembersSuspendErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/suspend", c3322z, false, C3322z.a.f18687b, StoneSerializers.void_(), MembersSuspendError.C3178b.f18409b);
        } catch (DbxWrappedException e) {
            throw new MembersSuspendErrorException("2/team/members/suspend", e.getRequestId(), e.getUserMessage(), (MembersSuspendError) e.getErrorValue());
        }
    }

    /* renamed from: a */
    public ListMemberDevicesResult m12182a(ListMemberDevicesArg listMemberDevicesArg) throws ListMemberDevicesErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (ListMemberDevicesResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/devices/list_member_devices", listMemberDevicesArg, false, ListMemberDevicesArg.C3120a.f18301b, ListMemberDevicesResult.C3123a.f18304b, ListMemberDevicesError.C3122b.f18303b);
        } catch (DbxWrappedException e) {
            throw new ListMemberDevicesErrorException("2/team/devices/list_member_devices", e.getRequestId(), e.getUserMessage(), (ListMemberDevicesError) e.getErrorValue());
        }
    }

    /* renamed from: a0 */
    public void m12183a0(C3291h0 c3291h0) throws MembersUnsuspendErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/unsuspend", c3291h0, false, C3291h0.a.f18617b, StoneSerializers.void_(), MembersUnsuspendError.C3182b.f18413b);
        } catch (DbxWrappedException e) {
            throw new MembersUnsuspendErrorException("2/team/members/unsuspend", e.getRequestId(), e.getUserMessage(), (MembersUnsuspendError) e.getErrorValue());
        }
    }

    /* renamed from: b */
    public ListMembersDevicesResult m12184b(ListMembersDevicesArg listMembersDevicesArg) throws ListMembersDevicesErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (ListMembersDevicesResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/devices/list_members_devices", listMembersDevicesArg, false, ListMembersDevicesArg.C3127a.f18312b, ListMembersDevicesResult.C3130a.f18315b, ListMembersDevicesError.C3129b.f18314b);
        } catch (DbxWrappedException e) {
            throw new ListMembersDevicesErrorException("2/team/devices/list_members_devices", e.getRequestId(), e.getUserMessage(), (ListMembersDevicesError) e.getErrorValue());
        }
    }

    /* renamed from: b0 */
    public TeamNamespacesListResult m12185b0(C3315t0 c3315t0) throws TeamNamespacesListErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamNamespacesListResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/namespaces/list", c3315t0, false, C3315t0.a.f18671b, TeamNamespacesListResult.C3255a.f18545b, TeamNamespacesListError.C3254b.f18544b);
        } catch (DbxWrappedException e) {
            throw new TeamNamespacesListErrorException("2/team/namespaces/list", e.getRequestId(), e.getUserMessage(), (TeamNamespacesListError) e.getErrorValue());
        }
    }

    /* renamed from: c */
    public ListTeamDevicesResult m12186c(ListTeamDevicesArg listTeamDevicesArg) throws ListTeamDevicesErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (ListTeamDevicesResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/devices/list_team_devices", listTeamDevicesArg, false, ListTeamDevicesArg.C3134a.f18323b, ListTeamDevicesResult.C3137a.f18326b, ListTeamDevicesError.C3136b.f18325b);
        } catch (DbxWrappedException e) {
            throw new ListTeamDevicesErrorException("2/team/devices/list_team_devices", e.getRequestId(), e.getUserMessage(), (ListTeamDevicesError) e.getErrorValue());
        }
    }

    /* renamed from: c0 */
    public TeamNamespacesListResult m12187c0(C3317u0 c3317u0) throws TeamNamespacesListContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamNamespacesListResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/namespaces/list/continue", c3317u0, false, C3317u0.a.f18675b, TeamNamespacesListResult.C3255a.f18545b, TeamNamespacesListContinueError.C3252b.f18542b);
        } catch (DbxWrappedException e) {
            throw new TeamNamespacesListContinueErrorException("2/team/namespaces/list/continue", e.getRequestId(), e.getUserMessage(), (TeamNamespacesListContinueError) e.getErrorValue());
        }
    }

    /* renamed from: d */
    public RevokeDeviceSessionBatchResult m12188d(C3295j0 c3295j0) throws RevokeDeviceSessionBatchErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (RevokeDeviceSessionBatchResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/devices/revoke_device_session_batch", c3295j0, false, C3295j0.a.f18627b, RevokeDeviceSessionBatchResult.C3199a.f18451b, RevokeDeviceSessionBatchError.C3198b.f18450b);
        } catch (DbxWrappedException e) {
            throw new RevokeDeviceSessionBatchErrorException("2/team/devices/revoke_device_session_batch", e.getRequestId(), e.getUserMessage(), (RevokeDeviceSessionBatchError) e.getErrorValue());
        }
    }

    /* renamed from: d0 */
    public AddTemplateResult m12189d0(AddTemplateArg addTemplateArg) throws ModifyTemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (AddTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/properties/template/add", addTemplateArg, false, AddTemplateArg.Serializer.INSTANCE, AddTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new ModifyTemplateErrorException("2/team/properties/template/add", e.getRequestId(), e.getUserMessage(), (ModifyTemplateError) e.getErrorValue());
        }
    }

    public ListMemberDevicesResult devicesListMemberDevices(String str) throws ListMemberDevicesErrorException, DbxException {
        return m12182a(new ListMemberDevicesArg(str));
    }

    public DevicesListMemberDevicesBuilder devicesListMemberDevicesBuilder(String str) {
        return new DevicesListMemberDevicesBuilder(this, ListMemberDevicesArg.m12433e(str));
    }

    public ListMembersDevicesResult devicesListMembersDevices() throws ListMembersDevicesErrorException, DbxException {
        return m12184b(new ListMembersDevicesArg());
    }

    public DevicesListMembersDevicesBuilder devicesListMembersDevicesBuilder() {
        return new DevicesListMembersDevicesBuilder(this, ListMembersDevicesArg.m12449e());
    }

    @Deprecated
    public ListTeamDevicesResult devicesListTeamDevices() throws ListTeamDevicesErrorException, DbxException {
        return m12186c(new ListTeamDevicesArg());
    }

    @Deprecated
    public DevicesListTeamDevicesBuilder devicesListTeamDevicesBuilder() {
        return new DevicesListTeamDevicesBuilder(this, ListTeamDevicesArg.m12465e());
    }

    public void devicesRevokeDeviceSession(RevokeDeviceSessionArg revokeDeviceSessionArg) throws RevokeDeviceSessionErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/devices/revoke_device_session", revokeDeviceSessionArg, false, RevokeDeviceSessionArg.C3196b.f18448b, StoneSerializers.void_(), RevokeDeviceSessionError.C3201b.f18453b);
        } catch (DbxWrappedException e) {
            throw new RevokeDeviceSessionErrorException("2/team/devices/revoke_device_session", e.getRequestId(), e.getUserMessage(), (RevokeDeviceSessionError) e.getErrorValue());
        }
    }

    public RevokeDeviceSessionBatchResult devicesRevokeDeviceSessionBatch(List<RevokeDeviceSessionArg> list) throws RevokeDeviceSessionBatchErrorException, DbxException {
        return m12188d(new C3295j0(list));
    }

    /* renamed from: e */
    public FeaturesGetValuesBatchResult m12190e(C3288g c3288g) throws FeaturesGetValuesBatchErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (FeaturesGetValuesBatchResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/features/get_values", c3288g, false, C3288g.a.f18609b, FeaturesGetValuesBatchResult.C3049a.f18176b, FeaturesGetValuesBatchError.C3048b.f18175b);
        } catch (DbxWrappedException e) {
            throw new FeaturesGetValuesBatchErrorException("2/team/features/get_values", e.getRequestId(), e.getUserMessage(), (FeaturesGetValuesBatchError) e.getErrorValue());
        }
    }

    /* renamed from: e0 */
    public GetTemplateResult m12191e0(GetTemplateArg getTemplateArg) throws TemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GetTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/properties/template/get", getTemplateArg, false, GetTemplateArg.Serializer.INSTANCE, GetTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new TemplateErrorException("2/team/properties/template/get", e.getRequestId(), e.getUserMessage(), (TemplateError) e.getErrorValue());
        }
    }

    /* renamed from: f */
    public GroupFullInfo m12192f(GroupCreateArg groupCreateArg) throws GroupCreateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GroupFullInfo) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/groups/create", groupCreateArg, false, GroupCreateArg.C3056a.f18187b, GroupFullInfo.C3061a.f18192b, GroupCreateError.C3058b.f18189b);
        } catch (DbxWrappedException e) {
            throw new GroupCreateErrorException("2/team/groups/create", e.getRequestId(), e.getUserMessage(), (GroupCreateError) e.getErrorValue());
        }
    }

    /* renamed from: f0 */
    public UpdateTemplateResult m12193f0(UpdateTemplateArg updateTemplateArg) throws ModifyTemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (UpdateTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/properties/template/update", updateTemplateArg, false, UpdateTemplateArg.Serializer.INSTANCE, UpdateTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new ModifyTemplateErrorException("2/team/properties/template/update", e.getRequestId(), e.getUserMessage(), (ModifyTemplateError) e.getErrorValue());
        }
    }

    public FeaturesGetValuesBatchResult featuresGetValues(List<Feature> list) throws FeaturesGetValuesBatchErrorException, DbxException {
        return m12190e(new C3288g(list));
    }

    /* renamed from: g */
    public PollEmptyResult m12194g(PollArg pollArg) throws GroupsPollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (PollEmptyResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/groups/job_status/get", pollArg, false, PollArg.Serializer.INSTANCE, PollEmptyResult.Serializer.INSTANCE, GroupsPollError.C3088b.f18238b);
        } catch (DbxWrappedException e) {
            throw new GroupsPollErrorException("2/team/groups/job_status/get", e.getRequestId(), e.getUserMessage(), (GroupsPollError) e.getErrorValue());
        }
    }

    /* renamed from: g0 */
    public GetActivityReport m12195g0(DateRange dateRange) throws DateRangeErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GetActivityReport) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/reports/get_activity", dateRange, false, DateRange.C3022a.f18133b, GetActivityReport.C3050a.f18177b, DateRangeError.C3024b.f18135b);
        } catch (DbxWrappedException e) {
            throw new DateRangeErrorException("2/team/reports/get_activity", e.getRequestId(), e.getUserMessage(), (DateRangeError) e.getErrorValue());
        }
    }

    public TeamGetInfoResult getInfo() throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamGetInfoResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/get_info", null, false, StoneSerializers.void_(), TeamGetInfoResult.C3244a.f18532b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"get_info\":" + e.getErrorValue());
        }
    }

    public GroupFullInfo groupsCreate(String str) throws GroupCreateErrorException, DbxException {
        return m12192f(new GroupCreateArg(str));
    }

    public GroupsCreateBuilder groupsCreateBuilder(String str) {
        return new GroupsCreateBuilder(this, GroupCreateArg.m12286e(str));
    }

    public LaunchEmptyResult groupsDelete(GroupSelector groupSelector) throws GroupDeleteErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (LaunchEmptyResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/groups/delete", groupSelector, false, GroupSelector.C3071b.f18212b, LaunchEmptyResult.Serializer.INSTANCE, GroupDeleteError.C3060b.f18191b);
        } catch (DbxWrappedException e) {
            throw new GroupDeleteErrorException("2/team/groups/delete", e.getRequestId(), e.getUserMessage(), (GroupDeleteError) e.getErrorValue());
        }
    }

    public List<GroupsGetInfoItem> groupsGetInfo(GroupsSelector groupsSelector) throws GroupsGetInfoErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (List) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/groups/get_info", groupsSelector, false, GroupsSelector.C3090b.f18243b, StoneSerializers.list(GroupsGetInfoItem.C3080b.f18230b), GroupsGetInfoError.C3078b.f18225b);
        } catch (DbxWrappedException e) {
            throw new GroupsGetInfoErrorException("2/team/groups/get_info", e.getRequestId(), e.getUserMessage(), (GroupsGetInfoError) e.getErrorValue());
        }
    }

    public PollEmptyResult groupsJobStatusGet(String str) throws GroupsPollErrorException, DbxException {
        return m12194g(new PollArg(str));
    }

    public GroupsListResult groupsList() throws DbxApiException, DbxException {
        return m12196h(new C3298l());
    }

    public GroupsListResult groupsListContinue(String str) throws GroupsListContinueErrorException, DbxException {
        return m12198i(new C3300m(str));
    }

    public GroupMembersChangeResult groupsMembersAdd(GroupSelector groupSelector, List<MemberAccess> list) throws GroupMembersAddErrorException, DbxException {
        return m12200j(new C3292i(groupSelector, list));
    }

    public GroupsMembersListResult groupsMembersList(GroupSelector groupSelector) throws GroupSelectorErrorException, DbxException {
        return m12202k(new C3302n(groupSelector));
    }

    public GroupsMembersListResult groupsMembersListContinue(String str) throws GroupsMembersListContinueErrorException, DbxException {
        return m12204l(new C3304o(str));
    }

    public GroupMembersChangeResult groupsMembersRemove(GroupSelector groupSelector, List<UserSelectorArg> list) throws GroupMembersRemoveErrorException, DbxException {
        return m12206m(new C3294j(groupSelector, list));
    }

    public List<GroupsGetInfoItem> groupsMembersSetAccessType(GroupSelector groupSelector, UserSelectorArg userSelectorArg, GroupAccessType groupAccessType) throws GroupMemberSetAccessTypeErrorException, DbxException {
        return m12208n(new C3296k(groupSelector, userSelectorArg, groupAccessType));
    }

    public GroupFullInfo groupsUpdate(GroupSelector groupSelector) throws GroupUpdateErrorException, DbxException {
        return m12210o(new GroupUpdateArgs(groupSelector));
    }

    public GroupsUpdateBuilder groupsUpdateBuilder(GroupSelector groupSelector) {
        return new GroupsUpdateBuilder(this, GroupUpdateArgs.m12338g(groupSelector));
    }

    /* renamed from: h */
    public GroupsListResult m12196h(C3298l c3298l) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GroupsListResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/groups/list", c3298l, false, C3298l.a.f18634b, GroupsListResult.C3083a.f18233b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"groups/list\":" + e.getErrorValue());
        }
    }

    /* renamed from: h0 */
    public GetDevicesReport m12197h0(DateRange dateRange) throws DateRangeErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GetDevicesReport) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/reports/get_devices", dateRange, false, DateRange.C3022a.f18133b, GetDevicesReport.C3051a.f18178b, DateRangeError.C3024b.f18135b);
        } catch (DbxWrappedException e) {
            throw new DateRangeErrorException("2/team/reports/get_devices", e.getRequestId(), e.getUserMessage(), (DateRangeError) e.getErrorValue());
        }
    }

    /* renamed from: i */
    public GroupsListResult m12198i(C3300m c3300m) throws GroupsListContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GroupsListResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/groups/list/continue", c3300m, false, C3300m.a.f18638b, GroupsListResult.C3083a.f18233b, GroupsListContinueError.C3082b.f18232b);
        } catch (DbxWrappedException e) {
            throw new GroupsListContinueErrorException("2/team/groups/list/continue", e.getRequestId(), e.getUserMessage(), (GroupsListContinueError) e.getErrorValue());
        }
    }

    /* renamed from: i0 */
    public GetMembershipReport m12199i0(DateRange dateRange) throws DateRangeErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GetMembershipReport) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/reports/get_membership", dateRange, false, DateRange.C3022a.f18133b, GetMembershipReport.C3052a.f18179b, DateRangeError.C3024b.f18135b);
        } catch (DbxWrappedException e) {
            throw new DateRangeErrorException("2/team/reports/get_membership", e.getRequestId(), e.getUserMessage(), (DateRangeError) e.getErrorValue());
        }
    }

    /* renamed from: j */
    public GroupMembersChangeResult m12200j(C3292i c3292i) throws GroupMembersAddErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GroupMembersChangeResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/groups/members/add", c3292i, false, C3292i.a.f18620b, GroupMembersChangeResult.C3067a.f18202b, GroupMembersAddError.C3066b.f18201b);
        } catch (DbxWrappedException e) {
            throw new GroupMembersAddErrorException("2/team/groups/members/add", e.getRequestId(), e.getUserMessage(), (GroupMembersAddError) e.getErrorValue());
        }
    }

    /* renamed from: j0 */
    public GetStorageReport m12201j0(DateRange dateRange) throws DateRangeErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GetStorageReport) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/reports/get_storage", dateRange, false, DateRange.C3022a.f18133b, GetStorageReport.C3053a.f18180b, DateRangeError.C3024b.f18135b);
        } catch (DbxWrappedException e) {
            throw new DateRangeErrorException("2/team/reports/get_storage", e.getRequestId(), e.getUserMessage(), (DateRangeError) e.getErrorValue());
        }
    }

    /* renamed from: k */
    public GroupsMembersListResult m12202k(C3302n c3302n) throws GroupSelectorErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GroupsMembersListResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/groups/members/list", c3302n, false, C3302n.a.f18643b, GroupsMembersListResult.C3086a.f18236b, GroupSelectorError.C3073b.f18214b);
        } catch (DbxWrappedException e) {
            throw new GroupSelectorErrorException("2/team/groups/members/list", e.getRequestId(), e.getUserMessage(), (GroupSelectorError) e.getErrorValue());
        }
    }

    /* renamed from: k0 */
    public TeamFolderMetadata m12203k0(C3305o0 c3305o0) throws TeamFolderActivateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamFolderMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/team_folder/activate", c3305o0, false, C3305o0.a.f18650b, TeamFolderMetadata.C3233a.f18504b, TeamFolderActivateError.C3216b.f18472b);
        } catch (DbxWrappedException e) {
            throw new TeamFolderActivateErrorException("2/team/team_folder/activate", e.getRequestId(), e.getUserMessage(), (TeamFolderActivateError) e.getErrorValue());
        }
    }

    /* renamed from: l */
    public GroupsMembersListResult m12204l(C3304o c3304o) throws GroupsMembersListContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GroupsMembersListResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/groups/members/list/continue", c3304o, false, C3304o.a.f18648b, GroupsMembersListResult.C3086a.f18236b, GroupsMembersListContinueError.C3085b.f18235b);
        } catch (DbxWrappedException e) {
            throw new GroupsMembersListContinueErrorException("2/team/groups/members/list/continue", e.getRequestId(), e.getUserMessage(), (GroupsMembersListContinueError) e.getErrorValue());
        }
    }

    /* renamed from: l0 */
    public TeamFolderArchiveLaunch m12205l0(C3301m0 c3301m0) throws TeamFolderArchiveErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamFolderArchiveLaunch) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/team_folder/archive", c3301m0, false, C3301m0.a.f18640b, TeamFolderArchiveLaunch.C3222b.f18488b, TeamFolderArchiveError.C3218b.f18478b);
        } catch (DbxWrappedException e) {
            throw new TeamFolderArchiveErrorException("2/team/team_folder/archive", e.getRequestId(), e.getUserMessage(), (TeamFolderArchiveError) e.getErrorValue());
        }
    }

    public LegalHoldPolicy legalHoldsCreatePolicy(String str, List<String> list) throws LegalHoldsPolicyCreateErrorException, DbxException {
        return m12212p(new LegalHoldsPolicyCreateArg(str, list));
    }

    public LegalHoldsCreatePolicyBuilder legalHoldsCreatePolicyBuilder(String str, List<String> list) {
        return new LegalHoldsCreatePolicyBuilder(this, LegalHoldsPolicyCreateArg.m12406f(str, list));
    }

    public LegalHoldPolicy legalHoldsGetPolicy(String str) throws LegalHoldsGetPolicyErrorException, DbxException {
        return m12214q(new C3306p(str));
    }

    public LegalHoldsListHeldRevisionResult legalHoldsListHeldRevisions(String str) throws LegalHoldsListHeldRevisionsErrorException, DbxException {
        return m12216r(new C3308q(str));
    }

    public LegalHoldsListHeldRevisionResult legalHoldsListHeldRevisionsContinue(String str) throws LegalHoldsListHeldRevisionsErrorException, DbxException {
        return m12218s(new C3310r(str));
    }

    public LegalHoldsListPoliciesResult legalHoldsListPolicies() throws LegalHoldsListPoliciesErrorException, DbxException {
        return m12220t(new C3312s());
    }

    public void legalHoldsReleasePolicy(String str) throws LegalHoldsPolicyReleaseErrorException, DbxException {
        m12222u(new C3314t(str));
    }

    public LegalHoldPolicy legalHoldsUpdatePolicy(String str) throws LegalHoldsPolicyUpdateErrorException, DbxException {
        return m12223v(new LegalHoldsPolicyUpdateArg(str));
    }

    public LegalHoldsUpdatePolicyBuilder legalHoldsUpdatePolicyBuilder(String str) {
        return new LegalHoldsUpdatePolicyBuilder(this, LegalHoldsPolicyUpdateArg.m12419e(str));
    }

    public ListMemberAppsResult linkedAppsListMemberLinkedApps(String str) throws ListMemberAppsErrorException, DbxException {
        return m12224w(new C3316u(str));
    }

    public ListMembersAppsResult linkedAppsListMembersLinkedApps() throws ListMembersAppsErrorException, DbxException {
        return m12225x(new C3318v());
    }

    @Deprecated
    public ListTeamAppsResult linkedAppsListTeamLinkedApps() throws ListTeamAppsErrorException, DbxException {
        return m12226y(new C3319w());
    }

    public void linkedAppsRevokeLinkedApp(String str, String str2) throws RevokeLinkedAppErrorException, DbxException {
        m12227z(new RevokeLinkedApiAppArg(str, str2));
    }

    public RevokeLinkedAppBatchResult linkedAppsRevokeLinkedAppBatch(List<RevokeLinkedApiAppArg> list) throws RevokeLinkedAppBatchErrorException, DbxException {
        return m12156A(new C3297k0(list));
    }

    /* renamed from: m */
    public GroupMembersChangeResult m12206m(C3294j c3294j) throws GroupMembersRemoveErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GroupMembersChangeResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/groups/members/remove", c3294j, false, C3294j.a.f18625b, GroupMembersChangeResult.C3067a.f18202b, GroupMembersRemoveError.C3069b.f18207b);
        } catch (DbxWrappedException e) {
            throw new GroupMembersRemoveErrorException("2/team/groups/members/remove", e.getRequestId(), e.getUserMessage(), (GroupMembersRemoveError) e.getErrorValue());
        }
    }

    /* renamed from: m0 */
    public TeamFolderArchiveJobStatus m12207m0(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamFolderArchiveJobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/team_folder/archive/check", pollArg, false, PollArg.Serializer.INSTANCE, TeamFolderArchiveJobStatus.C3220b.f18483b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/team/team_folder/archive/check", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    public ExcludedUsersUpdateResult memberSpaceLimitsExcludedUsersAdd() throws ExcludedUsersUpdateErrorException, DbxException {
        return m12157B(new C3286f());
    }

    public ExcludedUsersListResult memberSpaceLimitsExcludedUsersList() throws ExcludedUsersListErrorException, DbxException {
        return m12158C(new C3282d());
    }

    public ExcludedUsersListResult memberSpaceLimitsExcludedUsersListContinue(String str) throws ExcludedUsersListContinueErrorException, DbxException {
        return m12159D(new C3284e(str));
    }

    public ExcludedUsersUpdateResult memberSpaceLimitsExcludedUsersRemove() throws ExcludedUsersUpdateErrorException, DbxException {
        return m12160E(new C3286f());
    }

    public List<CustomQuotaResult> memberSpaceLimitsGetCustomQuota(List<UserSelectorArg> list) throws CustomQuotaErrorException, DbxException {
        return m12161F(new C3278b(list));
    }

    public List<RemoveCustomQuotaResult> memberSpaceLimitsRemoveCustomQuota(List<UserSelectorArg> list) throws CustomQuotaErrorException, DbxException {
        return m12162G(new C3278b(list));
    }

    public List<CustomQuotaResult> memberSpaceLimitsSetCustomQuota(List<UserCustomQuotaArg> list) throws SetCustomQuotaErrorException, DbxException {
        return m12163H(new C3299l0(list));
    }

    public MembersAddLaunch membersAdd(List<MemberAddArg> list) throws DbxApiException, DbxException {
        return m12164I(new C3320x(list));
    }

    public MembersAddJobStatus membersAddJobStatusGet(String str) throws PollErrorException, DbxException {
        return m12165J(new PollArg(str));
    }

    public TeamMemberInfo membersDeleteProfilePhoto(UserSelectorArg userSelectorArg) throws MembersDeleteProfilePhotoErrorException, DbxException {
        return m12166K(new C3279b0(userSelectorArg));
    }

    public List<MembersGetInfoItem> membersGetInfo(List<UserSelectorArg> list) throws MembersGetInfoErrorException, DbxException {
        return m12167L(new C3281c0(list));
    }

    public MembersListResult membersList() throws MembersListErrorException, DbxException {
        return m12168M(new MembersListArg());
    }

    public MembersListBuilder membersListBuilder() {
        return new MembersListBuilder(this, MembersListArg.m12539c());
    }

    public MembersListResult membersListContinue(String str) throws MembersListContinueErrorException, DbxException {
        return m12169N(new C3283d0(str));
    }

    public LaunchEmptyResult membersMoveFormerMemberFiles(UserSelectorArg userSelectorArg, UserSelectorArg userSelectorArg2, UserSelectorArg userSelectorArg3) throws MembersTransferFormerMembersFilesErrorException, DbxException {
        return m12170O(new C3321y(userSelectorArg, userSelectorArg2, userSelectorArg3));
    }

    public PollEmptyResult membersMoveFormerMemberFilesJobStatusCheck(String str) throws PollErrorException, DbxException {
        return m12171P(new PollArg(str));
    }

    public void membersRecover(UserSelectorArg userSelectorArg) throws MembersRecoverErrorException, DbxException {
        m12172Q(new C3285e0(userSelectorArg));
    }

    public LaunchEmptyResult membersRemove(UserSelectorArg userSelectorArg) throws MembersRemoveErrorException, DbxException {
        return m12173R(new MembersRemoveArg(userSelectorArg));
    }

    public MembersRemoveBuilder membersRemoveBuilder(UserSelectorArg userSelectorArg) {
        return new MembersRemoveBuilder(this, MembersRemoveArg.m12553h(userSelectorArg));
    }

    public PollEmptyResult membersRemoveJobStatusGet(String str) throws PollErrorException, DbxException {
        return m12174S(new PollArg(str));
    }

    public AddSecondaryEmailsResult membersSecondaryEmailsAdd(List<UserSecondaryEmailsArg> list) throws AddSecondaryEmailsErrorException, DbxException {
        return m12175T(new C3276a(list));
    }

    public DeleteSecondaryEmailsResult membersSecondaryEmailsDelete(List<UserSecondaryEmailsArg> list) throws DbxApiException, DbxException {
        return m12176U(new C3280c(list));
    }

    public ResendVerificationEmailResult membersSecondaryEmailsResendVerificationEmails(List<UserSecondaryEmailsArg> list) throws DbxApiException, DbxException {
        return m12177V(new C3293i0(list));
    }

    public void membersSendWelcomeEmail(UserSelectorArg userSelectorArg) throws MembersSendWelcomeErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/members/send_welcome_email", userSelectorArg, false, UserSelectorArg.C3275b.f18582b, StoneSerializers.void_(), MembersSendWelcomeError.C3168b.f18388b);
        } catch (DbxWrappedException e) {
            throw new MembersSendWelcomeErrorException("2/team/members/send_welcome_email", e.getRequestId(), e.getUserMessage(), (MembersSendWelcomeError) e.getErrorValue());
        }
    }

    public MembersSetPermissionsResult membersSetAdminPermissions(UserSelectorArg userSelectorArg, AdminTier adminTier) throws MembersSetPermissionsErrorException, DbxException {
        return m12178W(new C3287f0(userSelectorArg, adminTier));
    }

    public TeamMemberInfo membersSetProfile(UserSelectorArg userSelectorArg) throws MembersSetProfileErrorException, DbxException {
        return m12179X(new MembersSetProfileArg(userSelectorArg));
    }

    public MembersSetProfileBuilder membersSetProfileBuilder(UserSelectorArg userSelectorArg) {
        return new MembersSetProfileBuilder(this, MembersSetProfileArg.m12571h(userSelectorArg));
    }

    public TeamMemberInfo membersSetProfilePhoto(UserSelectorArg userSelectorArg, PhotoSourceArg photoSourceArg) throws MembersSetProfilePhotoErrorException, DbxException {
        return m12180Y(new C3289g0(userSelectorArg, photoSourceArg));
    }

    public void membersSuspend(UserSelectorArg userSelectorArg) throws MembersSuspendErrorException, DbxException {
        m12181Z(new C3322z(userSelectorArg));
    }

    public void membersUnsuspend(UserSelectorArg userSelectorArg) throws MembersUnsuspendErrorException, DbxException {
        m12183a0(new C3291h0(userSelectorArg));
    }

    /* renamed from: n */
    public List<GroupsGetInfoItem> m12208n(C3296k c3296k) throws GroupMemberSetAccessTypeErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (List) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/groups/members/set_access_type", c3296k, false, C3296k.a.f18630b, StoneSerializers.list(GroupsGetInfoItem.C3080b.f18230b), GroupMemberSetAccessTypeError.C3064b.f18195b);
        } catch (DbxWrappedException e) {
            throw new GroupMemberSetAccessTypeErrorException("2/team/groups/members/set_access_type", e.getRequestId(), e.getUserMessage(), (GroupMemberSetAccessTypeError) e.getErrorValue());
        }
    }

    /* renamed from: n0 */
    public TeamFolderMetadata m12209n0(C3303n0 c3303n0) throws TeamFolderCreateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamFolderMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/team_folder/create", c3303n0, false, C3303n0.a.f18646b, TeamFolderMetadata.C3233a.f18504b, TeamFolderCreateError.C3224b.f18492b);
        } catch (DbxWrappedException e) {
            throw new TeamFolderCreateErrorException("2/team/team_folder/create", e.getRequestId(), e.getUserMessage(), (TeamFolderCreateError) e.getErrorValue());
        }
    }

    public TeamNamespacesListResult namespacesList() throws TeamNamespacesListErrorException, DbxException {
        return m12185b0(new C3315t0());
    }

    public TeamNamespacesListResult namespacesListContinue(String str) throws TeamNamespacesListContinueErrorException, DbxException {
        return m12187c0(new C3317u0(str));
    }

    /* renamed from: o */
    public GroupFullInfo m12210o(GroupUpdateArgs groupUpdateArgs) throws GroupUpdateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (GroupFullInfo) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/groups/update", groupUpdateArgs, false, GroupUpdateArgs.C3074a.f18219b, GroupFullInfo.C3061a.f18192b, GroupUpdateError.C3076b.f18221b);
        } catch (DbxWrappedException e) {
            throw new GroupUpdateErrorException("2/team/groups/update", e.getRequestId(), e.getUserMessage(), (GroupUpdateError) e.getErrorValue());
        }
    }

    /* renamed from: o0 */
    public List<TeamFolderGetInfoItem> m12211o0(C3307p0 c3307p0) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (List) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/team_folder/get_info", c3307p0, false, C3307p0.a.f18654b, StoneSerializers.list(TeamFolderGetInfoItem.C3226b.f18497b), StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"team_folder/get_info\":" + e.getErrorValue());
        }
    }

    /* renamed from: p */
    public LegalHoldPolicy m12212p(LegalHoldsPolicyCreateArg legalHoldsPolicyCreateArg) throws LegalHoldsPolicyCreateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (LegalHoldPolicy) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/legal_holds/create_policy", legalHoldsPolicyCreateArg, false, LegalHoldsPolicyCreateArg.C3109a.f18279b, LegalHoldPolicy.C3098a.f18261b, LegalHoldsPolicyCreateError.C3111b.f18281b);
        } catch (DbxWrappedException e) {
            throw new LegalHoldsPolicyCreateErrorException("2/team/legal_holds/create_policy", e.getRequestId(), e.getUserMessage(), (LegalHoldsPolicyCreateError) e.getErrorValue());
        }
    }

    /* renamed from: p0 */
    public TeamFolderListResult m12213p0(C3309q0 c3309q0) throws TeamFolderListErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamFolderListResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/team_folder/list", c3309q0, false, C3309q0.a.f18658b, TeamFolderListResult.C3232a.f18503b, TeamFolderListError.C3231a.f18502b);
        } catch (DbxWrappedException e) {
            throw new TeamFolderListErrorException("2/team/team_folder/list", e.getRequestId(), e.getUserMessage(), (TeamFolderListError) e.getErrorValue());
        }
    }

    @Deprecated
    public AddTemplateResult propertiesTemplateAdd(String str, String str2, List<PropertyFieldTemplate> list) throws ModifyTemplateErrorException, DbxException {
        return m12189d0(new AddTemplateArg(str, str2, list));
    }

    @Deprecated
    public GetTemplateResult propertiesTemplateGet(String str) throws TemplateErrorException, DbxException {
        return m12191e0(new GetTemplateArg(str));
    }

    @Deprecated
    public ListTemplateResult propertiesTemplateList() throws TemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (ListTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/properties/template/list", null, false, StoneSerializers.void_(), ListTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new TemplateErrorException("2/team/properties/template/list", e.getRequestId(), e.getUserMessage(), (TemplateError) e.getErrorValue());
        }
    }

    @Deprecated
    public UpdateTemplateResult propertiesTemplateUpdate(String str) throws ModifyTemplateErrorException, DbxException {
        return m12193f0(new UpdateTemplateArg(str));
    }

    @Deprecated
    public PropertiesTemplateUpdateBuilder propertiesTemplateUpdateBuilder(String str) {
        return new PropertiesTemplateUpdateBuilder(this, UpdateTemplateArg.newBuilder(str));
    }

    /* renamed from: q */
    public LegalHoldPolicy m12214q(C3306p c3306p) throws LegalHoldsGetPolicyErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (LegalHoldPolicy) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/legal_holds/get_policy", c3306p, false, C3306p.a.f18652b, LegalHoldPolicy.C3098a.f18261b, LegalHoldsGetPolicyError.C3102b.f18267b);
        } catch (DbxWrappedException e) {
            throw new LegalHoldsGetPolicyErrorException("2/team/legal_holds/get_policy", e.getRequestId(), e.getUserMessage(), (LegalHoldsGetPolicyError) e.getErrorValue());
        }
    }

    /* renamed from: q0 */
    public TeamFolderListResult m12215q0(C3311r0 c3311r0) throws TeamFolderListContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamFolderListResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/team_folder/list/continue", c3311r0, false, C3311r0.a.f18663b, TeamFolderListResult.C3232a.f18503b, TeamFolderListContinueError.C3230b.f18501b);
        } catch (DbxWrappedException e) {
            throw new TeamFolderListContinueErrorException("2/team/team_folder/list/continue", e.getRequestId(), e.getUserMessage(), (TeamFolderListContinueError) e.getErrorValue());
        }
    }

    /* renamed from: r */
    public LegalHoldsListHeldRevisionResult m12216r(C3308q c3308q) throws LegalHoldsListHeldRevisionsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (LegalHoldsListHeldRevisionResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/legal_holds/list_held_revisions", c3308q, false, C3308q.a.f18656b, LegalHoldsListHeldRevisionResult.C3103a.f18268b, LegalHoldsListHeldRevisionsError.C3105b.f18270b);
        } catch (DbxWrappedException e) {
            throw new LegalHoldsListHeldRevisionsErrorException("2/team/legal_holds/list_held_revisions", e.getRequestId(), e.getUserMessage(), (LegalHoldsListHeldRevisionsError) e.getErrorValue());
        }
    }

    /* renamed from: r0 */
    public void m12217r0(C3305o0 c3305o0) throws TeamFolderPermanentlyDeleteErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/team_folder/permanently_delete", c3305o0, false, C3305o0.a.f18650b, StoneSerializers.void_(), TeamFolderPermanentlyDeleteError.C3235b.f18510b);
        } catch (DbxWrappedException e) {
            throw new TeamFolderPermanentlyDeleteErrorException("2/team/team_folder/permanently_delete", e.getRequestId(), e.getUserMessage(), (TeamFolderPermanentlyDeleteError) e.getErrorValue());
        }
    }

    public GetActivityReport reportsGetActivity() throws DateRangeErrorException, DbxException {
        return m12195g0(new DateRange());
    }

    public ReportsGetActivityBuilder reportsGetActivityBuilder() {
        return new ReportsGetActivityBuilder(this, DateRange.m12148c());
    }

    public GetDevicesReport reportsGetDevices() throws DateRangeErrorException, DbxException {
        return m12197h0(new DateRange());
    }

    public ReportsGetDevicesBuilder reportsGetDevicesBuilder() {
        return new ReportsGetDevicesBuilder(this, DateRange.m12148c());
    }

    public GetMembershipReport reportsGetMembership() throws DateRangeErrorException, DbxException {
        return m12199i0(new DateRange());
    }

    public ReportsGetMembershipBuilder reportsGetMembershipBuilder() {
        return new ReportsGetMembershipBuilder(this, DateRange.m12148c());
    }

    public GetStorageReport reportsGetStorage() throws DateRangeErrorException, DbxException {
        return m12201j0(new DateRange());
    }

    public ReportsGetStorageBuilder reportsGetStorageBuilder() {
        return new ReportsGetStorageBuilder(this, DateRange.m12148c());
    }

    /* renamed from: s */
    public LegalHoldsListHeldRevisionResult m12218s(C3310r c3310r) throws LegalHoldsListHeldRevisionsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (LegalHoldsListHeldRevisionResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/legal_holds/list_held_revisions_continue", c3310r, false, C3310r.a.f18661b, LegalHoldsListHeldRevisionResult.C3103a.f18268b, LegalHoldsListHeldRevisionsError.C3105b.f18270b);
        } catch (DbxWrappedException e) {
            throw new LegalHoldsListHeldRevisionsErrorException("2/team/legal_holds/list_held_revisions_continue", e.getRequestId(), e.getUserMessage(), (LegalHoldsListHeldRevisionsError) e.getErrorValue());
        }
    }

    /* renamed from: s0 */
    public TeamFolderMetadata m12219s0(C3313s0 c3313s0) throws TeamFolderRenameErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamFolderMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/team_folder/rename", c3313s0, false, C3313s0.a.f18667b, TeamFolderMetadata.C3233a.f18504b, TeamFolderRenameError.C3237b.f18516b);
        } catch (DbxWrappedException e) {
            throw new TeamFolderRenameErrorException("2/team/team_folder/rename", e.getRequestId(), e.getUserMessage(), (TeamFolderRenameError) e.getErrorValue());
        }
    }

    /* renamed from: t */
    public LegalHoldsListPoliciesResult m12220t(C3312s c3312s) throws LegalHoldsListPoliciesErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (LegalHoldsListPoliciesResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/legal_holds/list_policies", c3312s, false, C3312s.a.f18665b, LegalHoldsListPoliciesResult.C3108a.f18273b, LegalHoldsListPoliciesError.C3107b.f18272b);
        } catch (DbxWrappedException e) {
            throw new LegalHoldsListPoliciesErrorException("2/team/legal_holds/list_policies", e.getRequestId(), e.getUserMessage(), (LegalHoldsListPoliciesError) e.getErrorValue());
        }
    }

    /* renamed from: t0 */
    public TeamFolderMetadata m12221t0(TeamFolderUpdateSyncSettingsArg teamFolderUpdateSyncSettingsArg) throws TeamFolderUpdateSyncSettingsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TeamFolderMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/team_folder/update_sync_settings", teamFolderUpdateSyncSettingsArg, false, TeamFolderUpdateSyncSettingsArg.C3241a.f18522b, TeamFolderMetadata.C3233a.f18504b, TeamFolderUpdateSyncSettingsError.C3243b.f18531b);
        } catch (DbxWrappedException e) {
            throw new TeamFolderUpdateSyncSettingsErrorException("2/team/team_folder/update_sync_settings", e.getRequestId(), e.getUserMessage(), (TeamFolderUpdateSyncSettingsError) e.getErrorValue());
        }
    }

    public TeamFolderMetadata teamFolderActivate(String str) throws TeamFolderActivateErrorException, DbxException {
        return m12203k0(new C3305o0(str));
    }

    public TeamFolderArchiveLaunch teamFolderArchive(String str) throws TeamFolderArchiveErrorException, DbxException {
        return m12205l0(new C3301m0(str));
    }

    public TeamFolderArchiveJobStatus teamFolderArchiveCheck(String str) throws PollErrorException, DbxException {
        return m12207m0(new PollArg(str));
    }

    public TeamFolderMetadata teamFolderCreate(String str) throws TeamFolderCreateErrorException, DbxException {
        return m12209n0(new C3303n0(str));
    }

    public List<TeamFolderGetInfoItem> teamFolderGetInfo(List<String> list) throws DbxApiException, DbxException {
        return m12211o0(new C3307p0(list));
    }

    public TeamFolderListResult teamFolderList() throws TeamFolderListErrorException, DbxException {
        return m12213p0(new C3309q0());
    }

    public TeamFolderListResult teamFolderListContinue(String str) throws TeamFolderListContinueErrorException, DbxException {
        return m12215q0(new C3311r0(str));
    }

    public void teamFolderPermanentlyDelete(String str) throws TeamFolderPermanentlyDeleteErrorException, DbxException {
        m12217r0(new C3305o0(str));
    }

    public TeamFolderMetadata teamFolderRename(String str, String str2) throws TeamFolderRenameErrorException, DbxException {
        return m12219s0(new C3313s0(str, str2));
    }

    public TeamFolderMetadata teamFolderUpdateSyncSettings(String str) throws TeamFolderUpdateSyncSettingsErrorException, DbxException {
        return m12221t0(new TeamFolderUpdateSyncSettingsArg(str));
    }

    public TeamFolderUpdateSyncSettingsBuilder teamFolderUpdateSyncSettingsBuilder(String str) {
        return new TeamFolderUpdateSyncSettingsBuilder(this, TeamFolderUpdateSyncSettingsArg.m12730e(str));
    }

    public TokenGetAuthenticatedAdminResult tokenGetAuthenticatedAdmin() throws TokenGetAuthenticatedAdminErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (TokenGetAuthenticatedAdminResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/token/get_authenticated_admin", null, false, StoneSerializers.void_(), TokenGetAuthenticatedAdminResult.C3259a.f18549b, TokenGetAuthenticatedAdminError.C3258b.f18548b);
        } catch (DbxWrappedException e) {
            throw new TokenGetAuthenticatedAdminErrorException("2/team/token/get_authenticated_admin", e.getRequestId(), e.getUserMessage(), (TokenGetAuthenticatedAdminError) e.getErrorValue());
        }
    }

    /* renamed from: u */
    public void m12222u(C3314t c3314t) throws LegalHoldsPolicyReleaseErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/legal_holds/release_policy", c3314t, false, C3314t.a.f18669b, StoneSerializers.void_(), LegalHoldsPolicyReleaseError.C3113b.f18283b);
        } catch (DbxWrappedException e) {
            throw new LegalHoldsPolicyReleaseErrorException("2/team/legal_holds/release_policy", e.getRequestId(), e.getUserMessage(), (LegalHoldsPolicyReleaseError) e.getErrorValue());
        }
    }

    /* renamed from: v */
    public LegalHoldPolicy m12223v(LegalHoldsPolicyUpdateArg legalHoldsPolicyUpdateArg) throws LegalHoldsPolicyUpdateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (LegalHoldPolicy) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/legal_holds/update_policy", legalHoldsPolicyUpdateArg, false, LegalHoldsPolicyUpdateArg.C3114a.f18289b, LegalHoldPolicy.C3098a.f18261b, LegalHoldsPolicyUpdateError.C3116b.f18291b);
        } catch (DbxWrappedException e) {
            throw new LegalHoldsPolicyUpdateErrorException("2/team/legal_holds/update_policy", e.getRequestId(), e.getUserMessage(), (LegalHoldsPolicyUpdateError) e.getErrorValue());
        }
    }

    /* renamed from: w */
    public ListMemberAppsResult m12224w(C3316u c3316u) throws ListMemberAppsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (ListMemberAppsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/linked_apps/list_member_linked_apps", c3316u, false, C3316u.a.f18673b, ListMemberAppsResult.C3119a.f18296b, ListMemberAppsError.C3118b.f18295b);
        } catch (DbxWrappedException e) {
            throw new ListMemberAppsErrorException("2/team/linked_apps/list_member_linked_apps", e.getRequestId(), e.getUserMessage(), (ListMemberAppsError) e.getErrorValue());
        }
    }

    /* renamed from: x */
    public ListMembersAppsResult m12225x(C3318v c3318v) throws ListMembersAppsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (ListMembersAppsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/linked_apps/list_members_linked_apps", c3318v, false, C3318v.a.f18677b, ListMembersAppsResult.C3126a.f18307b, ListMembersAppsError.C3125b.f18306b);
        } catch (DbxWrappedException e) {
            throw new ListMembersAppsErrorException("2/team/linked_apps/list_members_linked_apps", e.getRequestId(), e.getUserMessage(), (ListMembersAppsError) e.getErrorValue());
        }
    }

    /* renamed from: y */
    public ListTeamAppsResult m12226y(C3319w c3319w) throws ListTeamAppsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            return (ListTeamAppsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/linked_apps/list_team_linked_apps", c3319w, false, C3319w.a.f18679b, ListTeamAppsResult.C3133a.f18318b, ListTeamAppsError.C3132b.f18317b);
        } catch (DbxWrappedException e) {
            throw new ListTeamAppsErrorException("2/team/linked_apps/list_team_linked_apps", e.getRequestId(), e.getUserMessage(), (ListTeamAppsError) e.getErrorValue());
        }
    }

    /* renamed from: z */
    public void m12227z(RevokeLinkedApiAppArg revokeLinkedApiAppArg) throws RevokeLinkedAppErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18136a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team/linked_apps/revoke_linked_app", revokeLinkedApiAppArg, false, RevokeLinkedApiAppArg.C3203a.f18455b, StoneSerializers.void_(), RevokeLinkedAppError.C3208b.f18460b);
        } catch (DbxWrappedException e) {
            throw new RevokeLinkedAppErrorException("2/team/linked_apps/revoke_linked_app", e.getRequestId(), e.getUserMessage(), (RevokeLinkedAppError) e.getErrorValue());
        }
    }

    public GroupsListResult groupsList(long j) throws DbxApiException, DbxException {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j <= 1000) {
            return m12196h(new C3298l(j));
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }

    public GroupMembersChangeResult groupsMembersAdd(GroupSelector groupSelector, List<MemberAccess> list, boolean z) throws GroupMembersAddErrorException, DbxException {
        return m12200j(new C3292i(groupSelector, list, z));
    }

    public GroupsMembersListResult groupsMembersList(GroupSelector groupSelector, long j) throws GroupSelectorErrorException, DbxException {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j <= 1000) {
            return m12202k(new C3302n(groupSelector, j));
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }

    public GroupMembersChangeResult groupsMembersRemove(GroupSelector groupSelector, List<UserSelectorArg> list, boolean z) throws GroupMembersRemoveErrorException, DbxException {
        return m12206m(new C3294j(groupSelector, list, z));
    }

    public List<GroupsGetInfoItem> groupsMembersSetAccessType(GroupSelector groupSelector, UserSelectorArg userSelectorArg, GroupAccessType groupAccessType, boolean z) throws GroupMemberSetAccessTypeErrorException, DbxException {
        return m12208n(new C3296k(groupSelector, userSelectorArg, groupAccessType, z));
    }

    public LegalHoldsListHeldRevisionResult legalHoldsListHeldRevisionsContinue(String str, String str2) throws LegalHoldsListHeldRevisionsErrorException, DbxException {
        if (str2 != null && str2.length() < 1) {
            throw new IllegalArgumentException("String 'cursor' is shorter than 1");
        }
        return m12218s(new C3310r(str, str2));
    }

    public LegalHoldsListPoliciesResult legalHoldsListPolicies(boolean z) throws LegalHoldsListPoliciesErrorException, DbxException {
        return m12220t(new C3312s(z));
    }

    public ListMembersAppsResult linkedAppsListMembersLinkedApps(String str) throws ListMembersAppsErrorException, DbxException {
        return m12225x(new C3318v(str));
    }

    @Deprecated
    public ListTeamAppsResult linkedAppsListTeamLinkedApps(String str) throws ListTeamAppsErrorException, DbxException {
        return m12226y(new C3319w(str));
    }

    public void linkedAppsRevokeLinkedApp(String str, String str2, boolean z) throws RevokeLinkedAppErrorException, DbxException {
        m12227z(new RevokeLinkedApiAppArg(str, str2, z));
    }

    public ExcludedUsersUpdateResult memberSpaceLimitsExcludedUsersAdd(List<UserSelectorArg> list) throws ExcludedUsersUpdateErrorException, DbxException {
        if (list != null) {
            Iterator<UserSelectorArg> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'users' is null");
                }
            }
        }
        return m12157B(new C3286f(list));
    }

    public ExcludedUsersListResult memberSpaceLimitsExcludedUsersList(long j) throws ExcludedUsersListErrorException, DbxException {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j <= 1000) {
            return m12158C(new C3282d(j));
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }

    public ExcludedUsersUpdateResult memberSpaceLimitsExcludedUsersRemove(List<UserSelectorArg> list) throws ExcludedUsersUpdateErrorException, DbxException {
        if (list != null) {
            Iterator<UserSelectorArg> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'users' is null");
                }
            }
        }
        return m12160E(new C3286f(list));
    }

    public MembersAddLaunch membersAdd(List<MemberAddArg> list, boolean z) throws DbxApiException, DbxException {
        return m12164I(new C3320x(list, z));
    }

    public void membersSuspend(UserSelectorArg userSelectorArg, boolean z) throws MembersSuspendErrorException, DbxException {
        m12181Z(new C3322z(userSelectorArg, z));
    }

    public TeamNamespacesListResult namespacesList(long j) throws TeamNamespacesListErrorException, DbxException {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j <= 1000) {
            return m12185b0(new C3315t0(j));
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }

    public TeamFolderArchiveLaunch teamFolderArchive(String str, boolean z) throws TeamFolderArchiveErrorException, DbxException {
        return m12205l0(new C3301m0(str, z));
    }

    public TeamFolderMetadata teamFolderCreate(String str, SyncSettingArg syncSettingArg) throws TeamFolderCreateErrorException, DbxException {
        return m12209n0(new C3303n0(str, syncSettingArg));
    }

    public TeamFolderListResult teamFolderList(long j) throws TeamFolderListErrorException, DbxException {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j <= 1000) {
            return m12213p0(new C3309q0(j));
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }
}
