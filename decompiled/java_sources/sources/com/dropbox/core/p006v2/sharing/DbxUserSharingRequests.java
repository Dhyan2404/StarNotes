package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.async.LaunchEmptyResult;
import com.dropbox.core.p006v2.async.LaunchResultBase;
import com.dropbox.core.p006v2.async.PollArg;
import com.dropbox.core.p006v2.async.PollError;
import com.dropbox.core.p006v2.async.PollErrorException;
import com.dropbox.core.p006v2.sharing.AddFileMemberArgs;
import com.dropbox.core.p006v2.sharing.AddFileMemberError;
import com.dropbox.core.p006v2.sharing.AddFolderMemberArg;
import com.dropbox.core.p006v2.sharing.AddFolderMemberError;
import com.dropbox.core.p006v2.sharing.C2983a;
import com.dropbox.core.p006v2.sharing.C2984b;
import com.dropbox.core.p006v2.sharing.C2985c;
import com.dropbox.core.p006v2.sharing.C2986d;
import com.dropbox.core.p006v2.sharing.C2987e;
import com.dropbox.core.p006v2.sharing.C2988f;
import com.dropbox.core.p006v2.sharing.C2989g;
import com.dropbox.core.p006v2.sharing.C2990h;
import com.dropbox.core.p006v2.sharing.C2991i;
import com.dropbox.core.p006v2.sharing.C2992j;
import com.dropbox.core.p006v2.sharing.C2993k;
import com.dropbox.core.p006v2.sharing.C2994l;
import com.dropbox.core.p006v2.sharing.C2995m;
import com.dropbox.core.p006v2.sharing.C2996n;
import com.dropbox.core.p006v2.sharing.C2997o;
import com.dropbox.core.p006v2.sharing.C2998p;
import com.dropbox.core.p006v2.sharing.C2999q;
import com.dropbox.core.p006v2.sharing.C3000r;
import com.dropbox.core.p006v2.sharing.C3001s;
import com.dropbox.core.p006v2.sharing.C3002t;
import com.dropbox.core.p006v2.sharing.C3003u;
import com.dropbox.core.p006v2.sharing.C3004v;
import com.dropbox.core.p006v2.sharing.C3005w;
import com.dropbox.core.p006v2.sharing.C3006x;
import com.dropbox.core.p006v2.sharing.C3007y;
import com.dropbox.core.p006v2.sharing.CreateSharedLinkArg;
import com.dropbox.core.p006v2.sharing.CreateSharedLinkError;
import com.dropbox.core.p006v2.sharing.CreateSharedLinkWithSettingsError;
import com.dropbox.core.p006v2.sharing.FileMemberActionError;
import com.dropbox.core.p006v2.sharing.FileMemberActionIndividualResult;
import com.dropbox.core.p006v2.sharing.FileMemberActionResult;
import com.dropbox.core.p006v2.sharing.FileMemberRemoveActionResult;
import com.dropbox.core.p006v2.sharing.GetFileMetadataBatchResult;
import com.dropbox.core.p006v2.sharing.GetFileMetadataError;
import com.dropbox.core.p006v2.sharing.GetSharedLinkFileError;
import com.dropbox.core.p006v2.sharing.GetSharedLinkMetadataArg;
import com.dropbox.core.p006v2.sharing.GetSharedLinksError;
import com.dropbox.core.p006v2.sharing.GetSharedLinksResult;
import com.dropbox.core.p006v2.sharing.JobStatus;
import com.dropbox.core.p006v2.sharing.ListFileMembersArg;
import com.dropbox.core.p006v2.sharing.ListFileMembersBatchResult;
import com.dropbox.core.p006v2.sharing.ListFileMembersContinueError;
import com.dropbox.core.p006v2.sharing.ListFileMembersError;
import com.dropbox.core.p006v2.sharing.ListFilesArg;
import com.dropbox.core.p006v2.sharing.ListFilesContinueError;
import com.dropbox.core.p006v2.sharing.ListFilesResult;
import com.dropbox.core.p006v2.sharing.ListFolderMembersArgs;
import com.dropbox.core.p006v2.sharing.ListFolderMembersContinueError;
import com.dropbox.core.p006v2.sharing.ListFoldersArgs;
import com.dropbox.core.p006v2.sharing.ListFoldersContinueError;
import com.dropbox.core.p006v2.sharing.ListFoldersResult;
import com.dropbox.core.p006v2.sharing.ListSharedLinksArg;
import com.dropbox.core.p006v2.sharing.ListSharedLinksError;
import com.dropbox.core.p006v2.sharing.ListSharedLinksResult;
import com.dropbox.core.p006v2.sharing.MemberAccessLevelResult;
import com.dropbox.core.p006v2.sharing.ModifySharedLinkSettingsError;
import com.dropbox.core.p006v2.sharing.MountFolderError;
import com.dropbox.core.p006v2.sharing.PathLinkMetadata;
import com.dropbox.core.p006v2.sharing.RelinquishFileMembershipError;
import com.dropbox.core.p006v2.sharing.RelinquishFolderMembershipError;
import com.dropbox.core.p006v2.sharing.RemoveFileMemberError;
import com.dropbox.core.p006v2.sharing.RemoveFolderMemberError;
import com.dropbox.core.p006v2.sharing.RemoveMemberJobStatus;
import com.dropbox.core.p006v2.sharing.RevokeSharedLinkError;
import com.dropbox.core.p006v2.sharing.SetAccessInheritanceError;
import com.dropbox.core.p006v2.sharing.ShareFolderArg;
import com.dropbox.core.p006v2.sharing.ShareFolderError;
import com.dropbox.core.p006v2.sharing.ShareFolderJobStatus;
import com.dropbox.core.p006v2.sharing.ShareFolderLaunch;
import com.dropbox.core.p006v2.sharing.SharedFileMembers;
import com.dropbox.core.p006v2.sharing.SharedFileMetadata;
import com.dropbox.core.p006v2.sharing.SharedFolderAccessError;
import com.dropbox.core.p006v2.sharing.SharedFolderMembers;
import com.dropbox.core.p006v2.sharing.SharedFolderMetadata;
import com.dropbox.core.p006v2.sharing.SharedLinkError;
import com.dropbox.core.p006v2.sharing.SharedLinkMetadata;
import com.dropbox.core.p006v2.sharing.SharingUserError;
import com.dropbox.core.p006v2.sharing.TransferFolderError;
import com.dropbox.core.p006v2.sharing.UnmountFolderError;
import com.dropbox.core.p006v2.sharing.UnshareFileError;
import com.dropbox.core.p006v2.sharing.UnshareFolderError;
import com.dropbox.core.p006v2.sharing.UpdateFolderMemberError;
import com.dropbox.core.p006v2.sharing.UpdateFolderPolicyArg;
import com.dropbox.core.p006v2.sharing.UpdateFolderPolicyError;
import com.dropbox.core.stone.StoneSerializers;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class DbxUserSharingRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f17710a;

    public DbxUserSharingRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f17710a = dbxRawClientV2;
    }

    /* renamed from: A */
    public SharedLinkMetadata m11518A(C2994l c2994l) throws ModifySharedLinkSettingsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (SharedLinkMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/modify_shared_link_settings", c2994l, false, C2994l.a.f18067b, SharedLinkMetadata.C2955a.f17983b, ModifySharedLinkSettingsError.C2899b.f17877b);
        } catch (DbxWrappedException e) {
            throw new ModifySharedLinkSettingsErrorException("2/sharing/modify_shared_link_settings", e.getRequestId(), e.getUserMessage(), (ModifySharedLinkSettingsError) e.getErrorValue());
        }
    }

    /* renamed from: B */
    public SharedFolderMetadata m11519B(C2995m c2995m) throws MountFolderErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (SharedFolderMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/mount_folder", c2995m, false, C2995m.a.f18069b, SharedFolderMetadata.C2947a.f17971b, MountFolderError.C2901b.f17882b);
        } catch (DbxWrappedException e) {
            throw new MountFolderErrorException("2/sharing/mount_folder", e.getRequestId(), e.getUserMessage(), (MountFolderError) e.getErrorValue());
        }
    }

    /* renamed from: C */
    public void m11520C(C2996n c2996n) throws RelinquishFileMembershipErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/relinquish_file_membership", c2996n, false, C2996n.a.f18071b, StoneSerializers.void_(), RelinquishFileMembershipError.C2909b.f17894b);
        } catch (DbxWrappedException e) {
            throw new RelinquishFileMembershipErrorException("2/sharing/relinquish_file_membership", e.getRequestId(), e.getUserMessage(), (RelinquishFileMembershipError) e.getErrorValue());
        }
    }

    /* renamed from: D */
    public LaunchEmptyResult m11521D(C2997o c2997o) throws RelinquishFolderMembershipErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (LaunchEmptyResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/relinquish_folder_membership", c2997o, false, C2997o.a.f18074b, LaunchEmptyResult.Serializer.INSTANCE, RelinquishFolderMembershipError.C2911b.f17898b);
        } catch (DbxWrappedException e) {
            throw new RelinquishFolderMembershipErrorException("2/sharing/relinquish_folder_membership", e.getRequestId(), e.getUserMessage(), (RelinquishFolderMembershipError) e.getErrorValue());
        }
    }

    /* renamed from: E */
    public FileMemberActionIndividualResult m11522E(C2998p c2998p) throws RemoveFileMemberErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (FileMemberActionIndividualResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/remove_file_member", c2998p, false, C2998p.a.f18077b, FileMemberActionIndividualResult.C2822b.f17724b, RemoveFileMemberError.C2913b.f17904b);
        } catch (DbxWrappedException e) {
            throw new RemoveFileMemberErrorException("2/sharing/remove_file_member", e.getRequestId(), e.getUserMessage(), (RemoveFileMemberError) e.getErrorValue());
        }
    }

    /* renamed from: F */
    public FileMemberRemoveActionResult m11523F(C2998p c2998p) throws RemoveFileMemberErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (FileMemberRemoveActionResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/remove_file_member_2", c2998p, false, C2998p.a.f18077b, FileMemberRemoveActionResult.C2825b.f17730b, RemoveFileMemberError.C2913b.f17904b);
        } catch (DbxWrappedException e) {
            throw new RemoveFileMemberErrorException("2/sharing/remove_file_member_2", e.getRequestId(), e.getUserMessage(), (RemoveFileMemberError) e.getErrorValue());
        }
    }

    /* renamed from: G */
    public LaunchResultBase m11524G(C2999q c2999q) throws RemoveFolderMemberErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (LaunchResultBase) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/remove_folder_member", c2999q, false, C2999q.a.f18081b, LaunchResultBase.Serializer.INSTANCE, RemoveFolderMemberError.C2915b.f17909b);
        } catch (DbxWrappedException e) {
            throw new RemoveFolderMemberErrorException("2/sharing/remove_folder_member", e.getRequestId(), e.getUserMessage(), (RemoveFolderMemberError) e.getErrorValue());
        }
    }

    /* renamed from: H */
    public void m11525H(C3000r c3000r) throws RevokeSharedLinkErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/revoke_shared_link", c3000r, false, C3000r.a.f18083b, StoneSerializers.void_(), RevokeSharedLinkError.C2925b.f17922b);
        } catch (DbxWrappedException e) {
            throw new RevokeSharedLinkErrorException("2/sharing/revoke_shared_link", e.getRequestId(), e.getUserMessage(), (RevokeSharedLinkError) e.getErrorValue());
        }
    }

    /* renamed from: I */
    public ShareFolderLaunch m11526I(C3001s c3001s) throws SetAccessInheritanceErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (ShareFolderLaunch) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/set_access_inheritance", c3001s, false, C3001s.a.f18086b, ShareFolderLaunch.C2935b.f17953b, SetAccessInheritanceError.C2927b.f17926b);
        } catch (DbxWrappedException e) {
            throw new SetAccessInheritanceErrorException("2/sharing/set_access_inheritance", e.getRequestId(), e.getUserMessage(), (SetAccessInheritanceError) e.getErrorValue());
        }
    }

    /* renamed from: J */
    public ShareFolderLaunch m11527J(ShareFolderArg shareFolderArg) throws ShareFolderErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (ShareFolderLaunch) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/share_folder", shareFolderArg, false, ShareFolderArg.C2928a.f17929b, ShareFolderLaunch.C2935b.f17953b, ShareFolderError.C2931b.f17943b);
        } catch (DbxWrappedException e) {
            throw new ShareFolderErrorException("2/sharing/share_folder", e.getRequestId(), e.getUserMessage(), (ShareFolderError) e.getErrorValue());
        }
    }

    /* renamed from: K */
    public void m11528K(C3002t c3002t) throws TransferFolderErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/transfer_folder", c3002t, false, C3002t.a.f18089b, StoneSerializers.void_(), TransferFolderError.C2966b.f17996b);
        } catch (DbxWrappedException e) {
            throw new TransferFolderErrorException("2/sharing/transfer_folder", e.getRequestId(), e.getUserMessage(), (TransferFolderError) e.getErrorValue());
        }
    }

    /* renamed from: L */
    public void m11529L(C3003u c3003u) throws UnmountFolderErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/unmount_folder", c3003u, false, C3003u.a.f18091b, StoneSerializers.void_(), UnmountFolderError.C2968b.f18000b);
        } catch (DbxWrappedException e) {
            throw new UnmountFolderErrorException("2/sharing/unmount_folder", e.getRequestId(), e.getUserMessage(), (UnmountFolderError) e.getErrorValue());
        }
    }

    /* renamed from: M */
    public void m11530M(C3004v c3004v) throws UnshareFileErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/unshare_file", c3004v, false, C3004v.a.f18093b, StoneSerializers.void_(), UnshareFileError.C2970b.f18005b);
        } catch (DbxWrappedException e) {
            throw new UnshareFileErrorException("2/sharing/unshare_file", e.getRequestId(), e.getUserMessage(), (UnshareFileError) e.getErrorValue());
        }
    }

    /* renamed from: N */
    public LaunchEmptyResult m11531N(C3005w c3005w) throws UnshareFolderErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (LaunchEmptyResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/unshare_folder", c3005w, false, C3005w.a.f18096b, LaunchEmptyResult.Serializer.INSTANCE, UnshareFolderError.C2972b.f18009b);
        } catch (DbxWrappedException e) {
            throw new UnshareFolderErrorException("2/sharing/unshare_folder", e.getRequestId(), e.getUserMessage(), (UnshareFolderError) e.getErrorValue());
        }
    }

    /* renamed from: O */
    public MemberAccessLevelResult m11532O(C3006x c3006x) throws FileMemberActionErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (MemberAccessLevelResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/update_file_member", c3006x, false, C3006x.a.f18097b, MemberAccessLevelResult.C2891a.f17864b, FileMemberActionError.C2820b.f17719b);
        } catch (DbxWrappedException e) {
            throw new FileMemberActionErrorException("2/sharing/update_file_member", e.getRequestId(), e.getUserMessage(), (FileMemberActionError) e.getErrorValue());
        }
    }

    /* renamed from: P */
    public MemberAccessLevelResult m11533P(C3007y c3007y) throws UpdateFolderMemberErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (MemberAccessLevelResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/update_folder_member", c3007y, false, C3007y.a.f18101b, MemberAccessLevelResult.C2891a.f17864b, UpdateFolderMemberError.C2974b.f18015b);
        } catch (DbxWrappedException e) {
            throw new UpdateFolderMemberErrorException("2/sharing/update_folder_member", e.getRequestId(), e.getUserMessage(), (UpdateFolderMemberError) e.getErrorValue());
        }
    }

    /* renamed from: Q */
    public SharedFolderMetadata m11534Q(UpdateFolderPolicyArg updateFolderPolicyArg) throws UpdateFolderPolicyErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (SharedFolderMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/update_folder_policy", updateFolderPolicyArg, false, UpdateFolderPolicyArg.C2975a.f18023b, SharedFolderMetadata.C2947a.f17971b, UpdateFolderPolicyError.C2977b.f18029b);
        } catch (DbxWrappedException e) {
            throw new UpdateFolderPolicyErrorException("2/sharing/update_folder_policy", e.getRequestId(), e.getUserMessage(), (UpdateFolderPolicyError) e.getErrorValue());
        }
    }

    /* renamed from: a */
    public List<FileMemberActionResult> m11535a(AddFileMemberArgs addFileMemberArgs) throws AddFileMemberErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (List) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/add_file_member", addFileMemberArgs, false, AddFileMemberArgs.C2797a.f17661b, StoneSerializers.list(FileMemberActionResult.C2823a.f17725b), AddFileMemberError.C2799b.f17668b);
        } catch (DbxWrappedException e) {
            throw new AddFileMemberErrorException("2/sharing/add_file_member", e.getRequestId(), e.getUserMessage(), (AddFileMemberError) e.getErrorValue());
        }
    }

    public List<FileMemberActionResult> addFileMember(String str, List<MemberSelector> list) throws AddFileMemberErrorException, DbxException {
        return m11535a(new AddFileMemberArgs(str, list));
    }

    public AddFileMemberBuilder addFileMemberBuilder(String str, List<MemberSelector> list) {
        return new AddFileMemberBuilder(this, AddFileMemberArgs.m11442g(str, list));
    }

    public void addFolderMember(String str, List<AddMember> list) throws AddFolderMemberErrorException, DbxException {
        m11536b(new AddFolderMemberArg(str, list));
    }

    public AddFolderMemberBuilder addFolderMemberBuilder(String str, List<AddMember> list) {
        return new AddFolderMemberBuilder(this, AddFolderMemberArg.m11459e(str, list));
    }

    /* renamed from: b */
    public void m11536b(AddFolderMemberArg addFolderMemberArg) throws AddFolderMemberErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/add_folder_member", addFolderMemberArg, false, AddFolderMemberArg.C2800a.f17673b, StoneSerializers.void_(), AddFolderMemberError.C2802b.f17682b);
        } catch (DbxWrappedException e) {
            throw new AddFolderMemberErrorException("2/sharing/add_folder_member", e.getRequestId(), e.getUserMessage(), (AddFolderMemberError) e.getErrorValue());
        }
    }

    /* renamed from: c */
    public FileMemberActionResult m11537c(C2983a c2983a) throws FileMemberActionErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (FileMemberActionResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/change_file_member_access", c2983a, false, C2983a.a.f18038b, FileMemberActionResult.C2823a.f17725b, FileMemberActionError.C2820b.f17719b);
        } catch (DbxWrappedException e) {
            throw new FileMemberActionErrorException("2/sharing/change_file_member_access", e.getRequestId(), e.getUserMessage(), (FileMemberActionError) e.getErrorValue());
        }
    }

    @Deprecated
    public FileMemberActionResult changeFileMemberAccess(String str, MemberSelector memberSelector, AccessLevel accessLevel) throws FileMemberActionErrorException, DbxException {
        return m11537c(new C2983a(str, memberSelector, accessLevel));
    }

    public JobStatus checkJobStatus(String str) throws PollErrorException, DbxException {
        return m11538d(new PollArg(str));
    }

    public RemoveMemberJobStatus checkRemoveMemberJobStatus(String str) throws PollErrorException, DbxException {
        return m11539e(new PollArg(str));
    }

    public ShareFolderJobStatus checkShareJobStatus(String str) throws PollErrorException, DbxException {
        return m11540f(new PollArg(str));
    }

    @Deprecated
    public PathLinkMetadata createSharedLink(String str) throws CreateSharedLinkErrorException, DbxException {
        return m11541g(new CreateSharedLinkArg(str));
    }

    @Deprecated
    public CreateSharedLinkBuilder createSharedLinkBuilder(String str) {
        return new CreateSharedLinkBuilder(this, CreateSharedLinkArg.m11497d(str));
    }

    public SharedLinkMetadata createSharedLinkWithSettings(String str) throws CreateSharedLinkWithSettingsErrorException, DbxException {
        return m11542h(new C2984b(str));
    }

    /* renamed from: d */
    public JobStatus m11538d(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (JobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/check_job_status", pollArg, false, PollArg.Serializer.INSTANCE, JobStatus.C2852b.f17780b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/sharing/check_job_status", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: e */
    public RemoveMemberJobStatus m11539e(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (RemoveMemberJobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/check_remove_member_job_status", pollArg, false, PollArg.Serializer.INSTANCE, RemoveMemberJobStatus.C2917b.f17914b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/sharing/check_remove_member_job_status", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: f */
    public ShareFolderJobStatus m11540f(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (ShareFolderJobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/check_share_job_status", pollArg, false, PollArg.Serializer.INSTANCE, ShareFolderJobStatus.C2933b.f17948b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/sharing/check_share_job_status", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: g */
    public PathLinkMetadata m11541g(CreateSharedLinkArg createSharedLinkArg) throws CreateSharedLinkErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (PathLinkMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/create_shared_link", createSharedLinkArg, false, CreateSharedLinkArg.C2810a.f17697b, PathLinkMetadata.C2903a.f17884b, CreateSharedLinkError.C2812b.f17703b);
        } catch (DbxWrappedException e) {
            throw new CreateSharedLinkErrorException("2/sharing/create_shared_link", e.getRequestId(), e.getUserMessage(), (CreateSharedLinkError) e.getErrorValue());
        }
    }

    public SharedFileMetadata getFileMetadata(String str) throws GetFileMetadataErrorException, DbxException {
        return m11543i(new C2985c(str));
    }

    public List<GetFileMetadataBatchResult> getFileMetadataBatch(List<String> list) throws SharingUserErrorException, DbxException {
        return m11544j(new C2986d(list));
    }

    public SharedFolderMetadata getFolderMetadata(String str) throws SharedFolderAccessErrorException, DbxException {
        return m11545k(new C2987e(str));
    }

    public DbxDownloader<SharedLinkMetadata> getSharedLinkFile(String str) throws GetSharedLinkFileErrorException, DbxException {
        return m11546l(new GetSharedLinkMetadataArg(str), Collections.emptyList());
    }

    public GetSharedLinkFileBuilder getSharedLinkFileBuilder(String str) {
        return new GetSharedLinkFileBuilder(this, GetSharedLinkMetadataArg.m11618d(str));
    }

    public SharedLinkMetadata getSharedLinkMetadata(String str) throws SharedLinkErrorException, DbxException {
        return m11547m(new GetSharedLinkMetadataArg(str));
    }

    public GetSharedLinkMetadataBuilder getSharedLinkMetadataBuilder(String str) {
        return new GetSharedLinkMetadataBuilder(this, GetSharedLinkMetadataArg.m11618d(str));
    }

    @Deprecated
    public GetSharedLinksResult getSharedLinks() throws GetSharedLinksErrorException, DbxException {
        return m11548n(new C2988f());
    }

    /* renamed from: h */
    public SharedLinkMetadata m11542h(C2984b c2984b) throws CreateSharedLinkWithSettingsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (SharedLinkMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/create_shared_link_with_settings", c2984b, false, C2984b.a.f18041b, SharedLinkMetadata.C2955a.f17983b, CreateSharedLinkWithSettingsError.C2814b.f17709b);
        } catch (DbxWrappedException e) {
            throw new CreateSharedLinkWithSettingsErrorException("2/sharing/create_shared_link_with_settings", e.getRequestId(), e.getUserMessage(), (CreateSharedLinkWithSettingsError) e.getErrorValue());
        }
    }

    /* renamed from: i */
    public SharedFileMetadata m11543i(C2985c c2985c) throws GetFileMetadataErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (SharedFileMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/get_file_metadata", c2985c, false, C2985c.a.f18044b, SharedFileMetadata.C2941a.f17963b, GetFileMetadataError.C2834b.f17742b);
        } catch (DbxWrappedException e) {
            throw new GetFileMetadataErrorException("2/sharing/get_file_metadata", e.getRequestId(), e.getUserMessage(), (GetFileMetadataError) e.getErrorValue());
        }
    }

    /* renamed from: j */
    public List<GetFileMetadataBatchResult> m11544j(C2986d c2986d) throws SharingUserErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (List) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/get_file_metadata/batch", c2986d, false, C2986d.a.f18047b, StoneSerializers.list(GetFileMetadataBatchResult.C2832a.f17737b), SharingUserError.C2963b.f17991b);
        } catch (DbxWrappedException e) {
            throw new SharingUserErrorException("2/sharing/get_file_metadata/batch", e.getRequestId(), e.getUserMessage(), (SharingUserError) e.getErrorValue());
        }
    }

    /* renamed from: k */
    public SharedFolderMetadata m11545k(C2987e c2987e) throws SharedFolderAccessErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (SharedFolderMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/get_folder_metadata", c2987e, false, C2987e.a.f18050b, SharedFolderMetadata.C2947a.f17971b, SharedFolderAccessError.C2943b.f17965b);
        } catch (DbxWrappedException e) {
            throw new SharedFolderAccessErrorException("2/sharing/get_folder_metadata", e.getRequestId(), e.getUserMessage(), (SharedFolderAccessError) e.getErrorValue());
        }
    }

    /* renamed from: l */
    public DbxDownloader<SharedLinkMetadata> m11546l(GetSharedLinkMetadataArg getSharedLinkMetadataArg, List<HttpRequestor.Header> list) throws GetSharedLinkFileErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return dbxRawClientV2.downloadStyle(dbxRawClientV2.getHost().getContent(), "2/sharing/get_shared_link_file", getSharedLinkMetadataArg, false, list, GetSharedLinkMetadataArg.C2839a.f17755b, SharedLinkMetadata.C2955a.f17983b, GetSharedLinkFileError.C2838b.f17751b);
        } catch (DbxWrappedException e) {
            throw new GetSharedLinkFileErrorException("2/sharing/get_shared_link_file", e.getRequestId(), e.getUserMessage(), (GetSharedLinkFileError) e.getErrorValue());
        }
    }

    public SharedFileMembers listFileMembers(String str) throws ListFileMembersErrorException, DbxException {
        return m11549o(new ListFileMembersArg(str));
    }

    public List<ListFileMembersBatchResult> listFileMembersBatch(List<String> list) throws SharingUserErrorException, DbxException {
        return m11550p(new C2989g(list));
    }

    public ListFileMembersBuilder listFileMembersBuilder(String str) {
        return new ListFileMembersBuilder(this, ListFileMembersArg.m11688e(str));
    }

    public SharedFileMembers listFileMembersContinue(String str) throws ListFileMembersContinueErrorException, DbxException {
        return m11551q(new C2990h(str));
    }

    public SharedFolderMembers listFolderMembers(String str) throws SharedFolderAccessErrorException, DbxException {
        return m11552r(new ListFolderMembersArgs(str));
    }

    public ListFolderMembersBuilder listFolderMembersBuilder(String str) {
        return new ListFolderMembersBuilder(this, ListFolderMembersArgs.m11734f(str));
    }

    public SharedFolderMembers listFolderMembersContinue(String str) throws ListFolderMembersContinueErrorException, DbxException {
        return m11553s(new C2992j(str));
    }

    public ListFoldersResult listFolders() throws DbxApiException, DbxException {
        return m11554t(new ListFoldersArgs());
    }

    public ListFoldersBuilder listFoldersBuilder() {
        return new ListFoldersBuilder(this, ListFoldersArgs.m11749c());
    }

    public ListFoldersResult listFoldersContinue(String str) throws ListFoldersContinueErrorException, DbxException {
        return m11555u(new C2993k(str));
    }

    public ListFoldersResult listMountableFolders() throws DbxApiException, DbxException {
        return m11556v(new ListFoldersArgs());
    }

    public ListMountableFoldersBuilder listMountableFoldersBuilder() {
        return new ListMountableFoldersBuilder(this, ListFoldersArgs.m11749c());
    }

    public ListFoldersResult listMountableFoldersContinue(String str) throws ListFoldersContinueErrorException, DbxException {
        return m11557w(new C2993k(str));
    }

    public ListFilesResult listReceivedFiles() throws SharingUserErrorException, DbxException {
        return m11558x(new ListFilesArg());
    }

    public ListReceivedFilesBuilder listReceivedFilesBuilder() {
        return new ListReceivedFilesBuilder(this, ListFilesArg.m11721c());
    }

    public ListFilesResult listReceivedFilesContinue(String str) throws ListFilesContinueErrorException, DbxException {
        return m11559y(new C2991i(str));
    }

    public ListSharedLinksResult listSharedLinks() throws ListSharedLinksErrorException, DbxException {
        return m11560z(new ListSharedLinksArg());
    }

    public ListSharedLinksBuilder listSharedLinksBuilder() {
        return new ListSharedLinksBuilder(this, ListSharedLinksArg.m11759d());
    }

    /* renamed from: m */
    public SharedLinkMetadata m11547m(GetSharedLinkMetadataArg getSharedLinkMetadataArg) throws SharedLinkErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (SharedLinkMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/get_shared_link_metadata", getSharedLinkMetadataArg, false, GetSharedLinkMetadataArg.C2839a.f17755b, SharedLinkMetadata.C2955a.f17983b, SharedLinkError.C2954b.f17980b);
        } catch (DbxWrappedException e) {
            throw new SharedLinkErrorException("2/sharing/get_shared_link_metadata", e.getRequestId(), e.getUserMessage(), (SharedLinkError) e.getErrorValue());
        }
    }

    public SharedLinkMetadata modifySharedLinkSettings(String str, SharedLinkSettings sharedLinkSettings) throws ModifySharedLinkSettingsErrorException, DbxException {
        return m11518A(new C2994l(str, sharedLinkSettings));
    }

    public SharedFolderMetadata mountFolder(String str) throws MountFolderErrorException, DbxException {
        return m11519B(new C2995m(str));
    }

    /* renamed from: n */
    public GetSharedLinksResult m11548n(C2988f c2988f) throws GetSharedLinksErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (GetSharedLinksResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/get_shared_links", c2988f, false, C2988f.a.f18052b, GetSharedLinksResult.C2842a.f17762b, GetSharedLinksError.C2841b.f17761b);
        } catch (DbxWrappedException e) {
            throw new GetSharedLinksErrorException("2/sharing/get_shared_links", e.getRequestId(), e.getUserMessage(), (GetSharedLinksError) e.getErrorValue());
        }
    }

    /* renamed from: o */
    public SharedFileMembers m11549o(ListFileMembersArg listFileMembersArg) throws ListFileMembersErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (SharedFileMembers) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/list_file_members", listFileMembersArg, false, ListFileMembersArg.C2866a.f17802b, SharedFileMembers.C2940a.f17960b, ListFileMembersError.C2872b.f17816b);
        } catch (DbxWrappedException e) {
            throw new ListFileMembersErrorException("2/sharing/list_file_members", e.getRequestId(), e.getUserMessage(), (ListFileMembersError) e.getErrorValue());
        }
    }

    /* renamed from: p */
    public List<ListFileMembersBatchResult> m11550p(C2989g c2989g) throws SharingUserErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (List) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/list_file_members/batch", c2989g, false, C2989g.a.f18055b, StoneSerializers.list(ListFileMembersBatchResult.C2867a.f17803b), SharingUserError.C2963b.f17991b);
        } catch (DbxWrappedException e) {
            throw new SharingUserErrorException("2/sharing/list_file_members/batch", e.getRequestId(), e.getUserMessage(), (SharingUserError) e.getErrorValue());
        }
    }

    /* renamed from: q */
    public SharedFileMembers m11551q(C2990h c2990h) throws ListFileMembersContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (SharedFileMembers) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/list_file_members/continue", c2990h, false, C2990h.a.f18057b, SharedFileMembers.C2940a.f17960b, ListFileMembersContinueError.C2869b.f17810b);
        } catch (DbxWrappedException e) {
            throw new ListFileMembersContinueErrorException("2/sharing/list_file_members/continue", e.getRequestId(), e.getUserMessage(), (ListFileMembersContinueError) e.getErrorValue());
        }
    }

    /* renamed from: r */
    public SharedFolderMembers m11552r(ListFolderMembersArgs listFolderMembersArgs) throws SharedFolderAccessErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (SharedFolderMembers) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/list_folder_members", listFolderMembersArgs, false, ListFolderMembersArgs.C2879a.f17831b, SharedFolderMembers.C2946a.f17970b, SharedFolderAccessError.C2943b.f17965b);
        } catch (DbxWrappedException e) {
            throw new SharedFolderAccessErrorException("2/sharing/list_folder_members", e.getRequestId(), e.getUserMessage(), (SharedFolderAccessError) e.getErrorValue());
        }
    }

    public void relinquishFileMembership(String str) throws RelinquishFileMembershipErrorException, DbxException {
        m11520C(new C2996n(str));
    }

    public LaunchEmptyResult relinquishFolderMembership(String str) throws RelinquishFolderMembershipErrorException, DbxException {
        return m11521D(new C2997o(str));
    }

    @Deprecated
    public FileMemberActionIndividualResult removeFileMember(String str, MemberSelector memberSelector) throws RemoveFileMemberErrorException, DbxException {
        return m11522E(new C2998p(str, memberSelector));
    }

    public FileMemberRemoveActionResult removeFileMember2(String str, MemberSelector memberSelector) throws RemoveFileMemberErrorException, DbxException {
        return m11523F(new C2998p(str, memberSelector));
    }

    public LaunchResultBase removeFolderMember(String str, MemberSelector memberSelector, boolean z) throws RemoveFolderMemberErrorException, DbxException {
        return m11524G(new C2999q(str, memberSelector, z));
    }

    public void revokeSharedLink(String str) throws RevokeSharedLinkErrorException, DbxException {
        m11525H(new C3000r(str));
    }

    /* renamed from: s */
    public SharedFolderMembers m11553s(C2992j c2992j) throws ListFolderMembersContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (SharedFolderMembers) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/list_folder_members/continue", c2992j, false, C2992j.a.f18061b, SharedFolderMembers.C2946a.f17970b, ListFolderMembersContinueError.C2881b.f17837b);
        } catch (DbxWrappedException e) {
            throw new ListFolderMembersContinueErrorException("2/sharing/list_folder_members/continue", e.getRequestId(), e.getUserMessage(), (ListFolderMembersContinueError) e.getErrorValue());
        }
    }

    public ShareFolderLaunch setAccessInheritance(String str) throws SetAccessInheritanceErrorException, DbxException {
        return m11526I(new C3001s(str));
    }

    public ShareFolderLaunch shareFolder(String str) throws ShareFolderErrorException, DbxException {
        return m11527J(new ShareFolderArg(str));
    }

    public ShareFolderBuilder shareFolderBuilder(String str) {
        return new ShareFolderBuilder(this, ShareFolderArg.m11855l(str));
    }

    /* renamed from: t */
    public ListFoldersResult m11554t(ListFoldersArgs listFoldersArgs) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (ListFoldersResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/list_folders", listFoldersArgs, false, ListFoldersArgs.C2883a.f17843b, ListFoldersResult.C2886a.f17848b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"list_folders\":" + e.getErrorValue());
        }
    }

    public void transferFolder(String str, String str2) throws TransferFolderErrorException, DbxException {
        m11528K(new C3002t(str, str2));
    }

    /* renamed from: u */
    public ListFoldersResult m11555u(C2993k c2993k) throws ListFoldersContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (ListFoldersResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/list_folders/continue", c2993k, false, C2993k.a.f18063b, ListFoldersResult.C2886a.f17848b, ListFoldersContinueError.C2885b.f17847b);
        } catch (DbxWrappedException e) {
            throw new ListFoldersContinueErrorException("2/sharing/list_folders/continue", e.getRequestId(), e.getUserMessage(), (ListFoldersContinueError) e.getErrorValue());
        }
    }

    public void unmountFolder(String str) throws UnmountFolderErrorException, DbxException {
        m11529L(new C3003u(str));
    }

    public void unshareFile(String str) throws UnshareFileErrorException, DbxException {
        m11530M(new C3004v(str));
    }

    public LaunchEmptyResult unshareFolder(String str) throws UnshareFolderErrorException, DbxException {
        return m11531N(new C3005w(str));
    }

    public MemberAccessLevelResult updateFileMember(String str, MemberSelector memberSelector, AccessLevel accessLevel) throws FileMemberActionErrorException, DbxException {
        return m11532O(new C3006x(str, memberSelector, accessLevel));
    }

    public MemberAccessLevelResult updateFolderMember(String str, MemberSelector memberSelector, AccessLevel accessLevel) throws UpdateFolderMemberErrorException, DbxException {
        return m11533P(new C3007y(str, memberSelector, accessLevel));
    }

    public SharedFolderMetadata updateFolderPolicy(String str) throws UpdateFolderPolicyErrorException, DbxException {
        return m11534Q(new UpdateFolderPolicyArg(str));
    }

    public UpdateFolderPolicyBuilder updateFolderPolicyBuilder(String str) {
        return new UpdateFolderPolicyBuilder(this, UpdateFolderPolicyArg.m11968h(str));
    }

    /* renamed from: v */
    public ListFoldersResult m11556v(ListFoldersArgs listFoldersArgs) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (ListFoldersResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/list_mountable_folders", listFoldersArgs, false, ListFoldersArgs.C2883a.f17843b, ListFoldersResult.C2886a.f17848b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"list_mountable_folders\":" + e.getErrorValue());
        }
    }

    /* renamed from: w */
    public ListFoldersResult m11557w(C2993k c2993k) throws ListFoldersContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (ListFoldersResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/list_mountable_folders/continue", c2993k, false, C2993k.a.f18063b, ListFoldersResult.C2886a.f17848b, ListFoldersContinueError.C2885b.f17847b);
        } catch (DbxWrappedException e) {
            throw new ListFoldersContinueErrorException("2/sharing/list_mountable_folders/continue", e.getRequestId(), e.getUserMessage(), (ListFoldersContinueError) e.getErrorValue());
        }
    }

    /* renamed from: x */
    public ListFilesResult m11558x(ListFilesArg listFilesArg) throws SharingUserErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (ListFilesResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/list_received_files", listFilesArg, false, ListFilesArg.C2875a.f17824b, ListFilesResult.C2878a.f17829b, SharingUserError.C2963b.f17991b);
        } catch (DbxWrappedException e) {
            throw new SharingUserErrorException("2/sharing/list_received_files", e.getRequestId(), e.getUserMessage(), (SharingUserError) e.getErrorValue());
        }
    }

    /* renamed from: y */
    public ListFilesResult m11559y(C2991i c2991i) throws ListFilesContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (ListFilesResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/list_received_files/continue", c2991i, false, C2991i.a.f18059b, ListFilesResult.C2878a.f17829b, ListFilesContinueError.C2877b.f17828b);
        } catch (DbxWrappedException e) {
            throw new ListFilesContinueErrorException("2/sharing/list_received_files/continue", e.getRequestId(), e.getUserMessage(), (ListFilesContinueError) e.getErrorValue());
        }
    }

    /* renamed from: z */
    public ListSharedLinksResult m11560z(ListSharedLinksArg listSharedLinksArg) throws ListSharedLinksErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17710a;
            return (ListSharedLinksResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/sharing/list_shared_links", listSharedLinksArg, false, ListSharedLinksArg.C2887a.f17856b, ListSharedLinksResult.C2890a.f17863b, ListSharedLinksError.C2889b.f17862b);
        } catch (DbxWrappedException e) {
            throw new ListSharedLinksErrorException("2/sharing/list_shared_links", e.getRequestId(), e.getUserMessage(), (ListSharedLinksError) e.getErrorValue());
        }
    }

    public SharedLinkMetadata createSharedLinkWithSettings(String str, SharedLinkSettings sharedLinkSettings) throws CreateSharedLinkWithSettingsErrorException, DbxException {
        return m11542h(new C2984b(str, sharedLinkSettings));
    }

    public SharedFileMetadata getFileMetadata(String str, List<FileAction> list) throws GetFileMetadataErrorException, DbxException {
        if (list != null) {
            Iterator<FileAction> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        return m11543i(new C2985c(str, list));
    }

    public List<GetFileMetadataBatchResult> getFileMetadataBatch(List<String> list, List<FileAction> list2) throws SharingUserErrorException, DbxException {
        if (list2 != null) {
            Iterator<FileAction> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        return m11544j(new C2986d(list, list2));
    }

    public SharedFolderMetadata getFolderMetadata(String str, List<FolderAction> list) throws SharedFolderAccessErrorException, DbxException {
        if (list != null) {
            Iterator<FolderAction> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        return m11545k(new C2987e(str, list));
    }

    @Deprecated
    public GetSharedLinksResult getSharedLinks(String str) throws GetSharedLinksErrorException, DbxException {
        return m11548n(new C2988f(str));
    }

    public List<ListFileMembersBatchResult> listFileMembersBatch(List<String> list, long j) throws SharingUserErrorException, DbxException {
        if (j <= 20) {
            return m11550p(new C2989g(list, j));
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 20L");
    }

    public SharedLinkMetadata modifySharedLinkSettings(String str, SharedLinkSettings sharedLinkSettings, boolean z) throws ModifySharedLinkSettingsErrorException, DbxException {
        return m11518A(new C2994l(str, sharedLinkSettings, z));
    }

    public LaunchEmptyResult relinquishFolderMembership(String str, boolean z) throws RelinquishFolderMembershipErrorException, DbxException {
        return m11521D(new C2997o(str, z));
    }

    public ShareFolderLaunch setAccessInheritance(String str, AccessInheritance accessInheritance) throws SetAccessInheritanceErrorException, DbxException {
        if (accessInheritance != null) {
            return m11526I(new C3001s(str, accessInheritance));
        }
        throw new IllegalArgumentException("Required value for 'accessInheritance' is null");
    }

    public LaunchEmptyResult unshareFolder(String str, boolean z) throws UnshareFolderErrorException, DbxException {
        return m11531N(new C3005w(str, z));
    }
}
