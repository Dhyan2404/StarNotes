package com.dropbox.core.p006v2.paper;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.paper.AddPaperDocUser;
import com.dropbox.core.p006v2.paper.AddPaperDocUserMemberResult;
import com.dropbox.core.p006v2.paper.C2782a;
import com.dropbox.core.p006v2.paper.C2783b;
import com.dropbox.core.p006v2.paper.C2784c;
import com.dropbox.core.p006v2.paper.C2785d;
import com.dropbox.core.p006v2.paper.C2786e;
import com.dropbox.core.p006v2.paper.C2787f;
import com.dropbox.core.p006v2.paper.C2788g;
import com.dropbox.core.p006v2.paper.C2789h;
import com.dropbox.core.p006v2.paper.C2790i;
import com.dropbox.core.p006v2.paper.C2791j;
import com.dropbox.core.p006v2.paper.DocLookupError;
import com.dropbox.core.p006v2.paper.FoldersContainingPaperDoc;
import com.dropbox.core.p006v2.paper.ListDocsCursorError;
import com.dropbox.core.p006v2.paper.ListPaperDocsArgs;
import com.dropbox.core.p006v2.paper.ListPaperDocsResponse;
import com.dropbox.core.p006v2.paper.ListUsersCursorError;
import com.dropbox.core.p006v2.paper.ListUsersOnFolderResponse;
import com.dropbox.core.p006v2.paper.ListUsersOnPaperDocArgs;
import com.dropbox.core.p006v2.paper.ListUsersOnPaperDocResponse;
import com.dropbox.core.p006v2.paper.PaperDocExportResult;
import com.dropbox.core.p006v2.paper.PaperFolderCreateArg;
import com.dropbox.core.p006v2.paper.PaperFolderCreateError;
import com.dropbox.core.p006v2.paper.PaperFolderCreateResult;
import com.dropbox.core.p006v2.paper.SharingPolicy;
import com.dropbox.core.p006v2.sharing.MemberSelector;
import com.dropbox.core.stone.StoneSerializers;
import java.util.Collections;
import java.util.List;

/* loaded from: classes4.dex */
public class DbxUserPaperRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f17551a;

    public DbxUserPaperRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f17551a = dbxRawClientV2;
    }

    /* renamed from: a */
    public void m11305a(C2790i c2790i) throws DocLookupErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/archive", c2790i, false, C2790i.a.f17647b, StoneSerializers.void_(), DocLookupError.C2733b.f17553b);
        } catch (DbxWrappedException e) {
            throw new DocLookupErrorException("2/paper/docs/archive", e.getRequestId(), e.getUserMessage(), (DocLookupError) e.getErrorValue());
        }
    }

    /* renamed from: b */
    public DocsCreateUploader m11306b(C2786e c2786e) throws DbxException {
        DbxRawClientV2 dbxRawClientV2 = this.f17551a;
        return new DocsCreateUploader(dbxRawClientV2.uploadStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/create", c2786e, false, C2786e.a.f17637b), this.f17551a.getUserId());
    }

    /* renamed from: c */
    public DbxDownloader<PaperDocExportResult> m11307c(C2787f c2787f, List<HttpRequestor.Header> list) throws DocLookupErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            return dbxRawClientV2.downloadStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/download", c2787f, false, list, C2787f.a.f17639b, PaperDocExportResult.C2763a.f17605b, DocLookupError.C2733b.f17553b);
        } catch (DbxWrappedException e) {
            throw new DocLookupErrorException("2/paper/docs/download", e.getRequestId(), e.getUserMessage(), (DocLookupError) e.getErrorValue());
        }
    }

    /* renamed from: d */
    public ListUsersOnFolderResponse m11308d(C2783b c2783b) throws DocLookupErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            return (ListUsersOnFolderResponse) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/folder_users/list", c2783b, false, C2783b.a.f17630b, ListUsersOnFolderResponse.C2755a.f17595b, DocLookupError.C2733b.f17553b);
        } catch (DbxWrappedException e) {
            throw new DocLookupErrorException("2/paper/docs/folder_users/list", e.getRequestId(), e.getUserMessage(), (DocLookupError) e.getErrorValue());
        }
    }

    @Deprecated
    public void docsArchive(String str) throws DocLookupErrorException, DbxException {
        m11305a(new C2790i(str));
    }

    @Deprecated
    public DocsCreateUploader docsCreate(ImportFormat importFormat) throws DbxException {
        return m11306b(new C2786e(importFormat));
    }

    @Deprecated
    public DbxDownloader<PaperDocExportResult> docsDownload(String str, ExportFormat exportFormat) throws DocLookupErrorException, DbxException {
        return m11307c(new C2787f(str, exportFormat), Collections.emptyList());
    }

    @Deprecated
    public DocsDownloadBuilder docsDownloadBuilder(String str, ExportFormat exportFormat) {
        return new DocsDownloadBuilder(this, str, exportFormat);
    }

    @Deprecated
    public ListUsersOnFolderResponse docsFolderUsersList(String str) throws DocLookupErrorException, DbxException {
        return m11308d(new C2783b(str));
    }

    @Deprecated
    public ListUsersOnFolderResponse docsFolderUsersListContinue(String str, String str2) throws ListUsersCursorErrorException, DbxException {
        return m11309e(new C2784c(str, str2));
    }

    @Deprecated
    public FoldersContainingPaperDoc docsGetFolderInfo(String str) throws DocLookupErrorException, DbxException {
        return m11310f(new C2790i(str));
    }

    @Deprecated
    public ListPaperDocsResponse docsList() throws DbxApiException, DbxException {
        return m11311g(new ListPaperDocsArgs());
    }

    @Deprecated
    public DocsListBuilder docsListBuilder() {
        return new DocsListBuilder(this, ListPaperDocsArgs.m11341e());
    }

    @Deprecated
    public ListPaperDocsResponse docsListContinue(String str) throws ListDocsCursorErrorException, DbxException {
        return m11312h(new C2782a(str));
    }

    @Deprecated
    public void docsPermanentlyDelete(String str) throws DocLookupErrorException, DbxException {
        m11313i(new C2790i(str));
    }

    @Deprecated
    public SharingPolicy docsSharingPolicyGet(String str) throws DocLookupErrorException, DbxException {
        return m11314j(new C2790i(str));
    }

    @Deprecated
    public void docsSharingPolicySet(String str, SharingPolicy sharingPolicy) throws DocLookupErrorException, DbxException {
        m11315k(new C2788g(str, sharingPolicy));
    }

    @Deprecated
    public DocsUpdateUploader docsUpdate(String str, PaperDocUpdatePolicy paperDocUpdatePolicy, long j, ImportFormat importFormat) throws DbxException {
        return m11316l(new C2789h(str, paperDocUpdatePolicy, j, importFormat));
    }

    @Deprecated
    public List<AddPaperDocUserMemberResult> docsUsersAdd(String str, List<AddMember> list) throws DocLookupErrorException, DbxException {
        return m11317m(new AddPaperDocUser(str, list));
    }

    @Deprecated
    public DocsUsersAddBuilder docsUsersAddBuilder(String str, List<AddMember> list) {
        return new DocsUsersAddBuilder(this, AddPaperDocUser.m11291f(str, list));
    }

    @Deprecated
    public ListUsersOnPaperDocResponse docsUsersList(String str) throws DocLookupErrorException, DbxException {
        return m11318n(new ListUsersOnPaperDocArgs(str));
    }

    @Deprecated
    public DocsUsersListBuilder docsUsersListBuilder(String str) {
        return new DocsUsersListBuilder(this, ListUsersOnPaperDocArgs.m11364e(str));
    }

    @Deprecated
    public ListUsersOnPaperDocResponse docsUsersListContinue(String str, String str2) throws ListUsersCursorErrorException, DbxException {
        return m11319o(new C2785d(str, str2));
    }

    @Deprecated
    public void docsUsersRemove(String str, MemberSelector memberSelector) throws DocLookupErrorException, DbxException {
        m11320p(new C2791j(str, memberSelector));
    }

    /* renamed from: e */
    public ListUsersOnFolderResponse m11309e(C2784c c2784c) throws ListUsersCursorErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            return (ListUsersOnFolderResponse) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/folder_users/list/continue", c2784c, false, C2784c.a.f17632b, ListUsersOnFolderResponse.C2755a.f17595b, ListUsersCursorError.C2754b.f17594b);
        } catch (DbxWrappedException e) {
            throw new ListUsersCursorErrorException("2/paper/docs/folder_users/list/continue", e.getRequestId(), e.getUserMessage(), (ListUsersCursorError) e.getErrorValue());
        }
    }

    /* renamed from: f */
    public FoldersContainingPaperDoc m11310f(C2790i c2790i) throws DocLookupErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            return (FoldersContainingPaperDoc) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/get_folder_info", c2790i, false, C2790i.a.f17647b, FoldersContainingPaperDoc.C2739a.f17569b, DocLookupError.C2733b.f17553b);
        } catch (DbxWrappedException e) {
            throw new DocLookupErrorException("2/paper/docs/get_folder_info", e.getRequestId(), e.getUserMessage(), (DocLookupError) e.getErrorValue());
        }
    }

    @Deprecated
    public PaperFolderCreateResult foldersCreate(String str) throws PaperFolderCreateErrorException, DbxException {
        return m11321q(new PaperFolderCreateArg(str));
    }

    @Deprecated
    public FoldersCreateBuilder foldersCreateBuilder(String str) {
        return new FoldersCreateBuilder(this, PaperFolderCreateArg.m11385d(str));
    }

    /* renamed from: g */
    public ListPaperDocsResponse m11311g(ListPaperDocsArgs listPaperDocsArgs) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            return (ListPaperDocsResponse) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/list", listPaperDocsArgs, false, ListPaperDocsArgs.C2745a.f17583b, ListPaperDocsResponse.C2748a.f17586b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"docs/list\":" + e.getErrorValue());
        }
    }

    /* renamed from: h */
    public ListPaperDocsResponse m11312h(C2782a c2782a) throws ListDocsCursorErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            return (ListPaperDocsResponse) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/list/continue", c2782a, false, C2782a.a.f17628b, ListPaperDocsResponse.C2748a.f17586b, ListDocsCursorError.C2744b.f17578b);
        } catch (DbxWrappedException e) {
            throw new ListDocsCursorErrorException("2/paper/docs/list/continue", e.getRequestId(), e.getUserMessage(), (ListDocsCursorError) e.getErrorValue());
        }
    }

    /* renamed from: i */
    public void m11313i(C2790i c2790i) throws DocLookupErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/permanently_delete", c2790i, false, C2790i.a.f17647b, StoneSerializers.void_(), DocLookupError.C2733b.f17553b);
        } catch (DbxWrappedException e) {
            throw new DocLookupErrorException("2/paper/docs/permanently_delete", e.getRequestId(), e.getUserMessage(), (DocLookupError) e.getErrorValue());
        }
    }

    /* renamed from: j */
    public SharingPolicy m11314j(C2790i c2790i) throws DocLookupErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            return (SharingPolicy) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/sharing_policy/get", c2790i, false, C2790i.a.f17647b, SharingPolicy.C2774a.f17619b, DocLookupError.C2733b.f17553b);
        } catch (DbxWrappedException e) {
            throw new DocLookupErrorException("2/paper/docs/sharing_policy/get", e.getRequestId(), e.getUserMessage(), (DocLookupError) e.getErrorValue());
        }
    }

    /* renamed from: k */
    public void m11315k(C2788g c2788g) throws DocLookupErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/sharing_policy/set", c2788g, false, C2788g.a.f17641b, StoneSerializers.void_(), DocLookupError.C2733b.f17553b);
        } catch (DbxWrappedException e) {
            throw new DocLookupErrorException("2/paper/docs/sharing_policy/set", e.getRequestId(), e.getUserMessage(), (DocLookupError) e.getErrorValue());
        }
    }

    /* renamed from: l */
    public DocsUpdateUploader m11316l(C2789h c2789h) throws DbxException {
        DbxRawClientV2 dbxRawClientV2 = this.f17551a;
        return new DocsUpdateUploader(dbxRawClientV2.uploadStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/update", c2789h, false, C2789h.a.f17645b), this.f17551a.getUserId());
    }

    /* renamed from: m */
    public List<AddPaperDocUserMemberResult> m11317m(AddPaperDocUser addPaperDocUser) throws DocLookupErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            return (List) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/users/add", addPaperDocUser, false, AddPaperDocUser.C2727a.f17546b, StoneSerializers.list(AddPaperDocUserMemberResult.C2728a.f17547b), DocLookupError.C2733b.f17553b);
        } catch (DbxWrappedException e) {
            throw new DocLookupErrorException("2/paper/docs/users/add", e.getRequestId(), e.getUserMessage(), (DocLookupError) e.getErrorValue());
        }
    }

    /* renamed from: n */
    public ListUsersOnPaperDocResponse m11318n(ListUsersOnPaperDocArgs listUsersOnPaperDocArgs) throws DocLookupErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            return (ListUsersOnPaperDocResponse) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/users/list", listUsersOnPaperDocArgs, false, ListUsersOnPaperDocArgs.C2756a.f17598b, ListUsersOnPaperDocResponse.C2757a.f17599b, DocLookupError.C2733b.f17553b);
        } catch (DbxWrappedException e) {
            throw new DocLookupErrorException("2/paper/docs/users/list", e.getRequestId(), e.getUserMessage(), (DocLookupError) e.getErrorValue());
        }
    }

    /* renamed from: o */
    public ListUsersOnPaperDocResponse m11319o(C2785d c2785d) throws ListUsersCursorErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            return (ListUsersOnPaperDocResponse) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/users/list/continue", c2785d, false, C2785d.a.f17634b, ListUsersOnPaperDocResponse.C2757a.f17599b, ListUsersCursorError.C2754b.f17594b);
        } catch (DbxWrappedException e) {
            throw new ListUsersCursorErrorException("2/paper/docs/users/list/continue", e.getRequestId(), e.getUserMessage(), (ListUsersCursorError) e.getErrorValue());
        }
    }

    /* renamed from: p */
    public void m11320p(C2791j c2791j) throws DocLookupErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/docs/users/remove", c2791j, false, C2791j.a.f17649b, StoneSerializers.void_(), DocLookupError.C2733b.f17553b);
        } catch (DbxWrappedException e) {
            throw new DocLookupErrorException("2/paper/docs/users/remove", e.getRequestId(), e.getUserMessage(), (DocLookupError) e.getErrorValue());
        }
    }

    /* renamed from: q */
    public PaperFolderCreateResult m11321q(PaperFolderCreateArg paperFolderCreateArg) throws PaperFolderCreateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17551a;
            return (PaperFolderCreateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/paper/folders/create", paperFolderCreateArg, false, PaperFolderCreateArg.C2770a.f17615b, PaperFolderCreateResult.C2773a.f17618b, PaperFolderCreateError.C2772b.f17617b);
        } catch (DbxWrappedException e) {
            throw new PaperFolderCreateErrorException("2/paper/folders/create", e.getRequestId(), e.getUserMessage(), (PaperFolderCreateError) e.getErrorValue());
        }
    }

    @Deprecated
    public DocsCreateUploader docsCreate(ImportFormat importFormat, String str) throws DbxException {
        return m11306b(new C2786e(importFormat, str));
    }

    @Deprecated
    public ListUsersOnFolderResponse docsFolderUsersList(String str, int i) throws DocLookupErrorException, DbxException {
        if (i < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1");
        }
        if (i <= 1000) {
            return m11308d(new C2783b(str, i));
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000");
    }
}
