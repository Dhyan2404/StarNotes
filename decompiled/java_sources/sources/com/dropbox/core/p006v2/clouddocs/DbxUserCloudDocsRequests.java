package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.clouddocs.C2415a;
import com.dropbox.core.p006v2.clouddocs.C2416b;
import com.dropbox.core.p006v2.clouddocs.C2417c;
import com.dropbox.core.p006v2.clouddocs.C2418d;
import com.dropbox.core.p006v2.clouddocs.C2419e;
import com.dropbox.core.p006v2.clouddocs.CloudDocsAccessError;
import com.dropbox.core.p006v2.clouddocs.GetMetadataError;
import com.dropbox.core.p006v2.clouddocs.GetMetadataResult;
import com.dropbox.core.p006v2.clouddocs.LockResult;
import com.dropbox.core.p006v2.clouddocs.LockingError;
import com.dropbox.core.p006v2.clouddocs.RenameArg;
import com.dropbox.core.p006v2.clouddocs.RenameError;
import com.dropbox.core.p006v2.clouddocs.RenameResult;
import com.dropbox.core.p006v2.clouddocs.UnlockResult;
import com.dropbox.core.stone.StoneSerializers;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class DbxUserCloudDocsRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f16833a;

    public DbxUserCloudDocsRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f16833a = dbxRawClientV2;
    }

    /* renamed from: a */
    public DbxDownloader<Void> m10274a(C2415a c2415a, List<HttpRequestor.Header> list) throws CloudDocsAccessErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16833a;
            return dbxRawClientV2.downloadStyle(dbxRawClientV2.getHost().getContent(), "2/cloud_docs/get_content", c2415a, false, list, C2415a.a.f16877b, StoneSerializers.void_(), CloudDocsAccessError.C2386b.f16829b);
        } catch (DbxWrappedException e) {
            throw new CloudDocsAccessErrorException("2/cloud_docs/get_content", e.getRequestId(), e.getUserMessage(), (CloudDocsAccessError) e.getErrorValue());
        }
    }

    /* renamed from: b */
    public GetMetadataResult m10275b(C2416b c2416b) throws GetMetadataErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16833a;
            return (GetMetadataResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/cloud_docs/get_metadata", c2416b, false, C2416b.a.f16879b, GetMetadataResult.C2395a.f16843b, GetMetadataError.C2392a.f16838b);
        } catch (DbxWrappedException e) {
            throw new GetMetadataErrorException("2/cloud_docs/get_metadata", e.getRequestId(), e.getUserMessage(), (GetMetadataError) e.getErrorValue());
        }
    }

    /* renamed from: c */
    public LockResult m10276c(C2417c c2417c) throws LockingErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16833a;
            return (LockResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/cloud_docs/lock", c2417c, false, C2417c.a.f16881b, LockResult.C2396a.f16844b, LockingError.C2397a.f16845b);
        } catch (DbxWrappedException e) {
            throw new LockingErrorException("2/cloud_docs/lock", e.getRequestId(), e.getUserMessage(), (LockingError) e.getErrorValue());
        }
    }

    /* renamed from: d */
    public RenameResult m10277d(RenameArg renameArg) throws RenameErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16833a;
            return (RenameResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/cloud_docs/rename", renameArg, false, RenameArg.C2402a.f16855b, RenameResult.C2408a.f16867b, RenameError.C2403a.f16858b);
        } catch (DbxWrappedException e) {
            throw new RenameErrorException("2/cloud_docs/rename", e.getRequestId(), e.getUserMessage(), (RenameError) e.getErrorValue());
        }
    }

    /* renamed from: e */
    public UnlockResult m10278e(C2418d c2418d) throws LockingErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16833a;
            return (UnlockResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/cloud_docs/unlock", c2418d, false, C2418d.a.f16883b, UnlockResult.C2409a.f16868b, LockingError.C2397a.f16845b);
        } catch (DbxWrappedException e) {
            throw new LockingErrorException("2/cloud_docs/unlock", e.getRequestId(), e.getUserMessage(), (LockingError) e.getErrorValue());
        }
    }

    /* renamed from: f */
    public UpdateContentUploader m10279f(C2419e c2419e) throws DbxException {
        DbxRawClientV2 dbxRawClientV2 = this.f16833a;
        return new UpdateContentUploader(dbxRawClientV2.uploadStyle(dbxRawClientV2.getHost().getContent(), "2/cloud_docs/update_content", c2419e, false, C2419e.a.f16887b), this.f16833a.getUserId());
    }

    public DbxDownloader<Void> getContent(String str) throws CloudDocsAccessErrorException, DbxException {
        return m10274a(new C2415a(str), Collections.emptyList());
    }

    public GetContentBuilder getContentBuilder(String str) {
        return new GetContentBuilder(this, str);
    }

    public GetMetadataResult getMetadata() throws GetMetadataErrorException, DbxException {
        return m10275b(new C2416b());
    }

    public LockResult lock() throws LockingErrorException, DbxException {
        return m10276c(new C2417c());
    }

    public RenameResult rename() throws RenameErrorException, DbxException {
        return m10277d(new RenameArg());
    }

    public RenameBuilder renameBuilder() {
        return new RenameBuilder(this, RenameArg.m10304c());
    }

    public UnlockResult unlock() throws LockingErrorException, DbxException {
        return m10278e(new C2418d());
    }

    public UpdateContentUploader updateContent(String str, List<String> list) throws DbxException {
        return m10279f(new C2419e(str, list));
    }

    public GetMetadataResult getMetadata(String str) throws GetMetadataErrorException, DbxException {
        if (str != null) {
            return m10275b(new C2416b(str));
        }
        throw new IllegalArgumentException("Required value for 'fileId' is null");
    }

    public LockResult lock(String str) throws LockingErrorException, DbxException {
        if (str != null) {
            return m10276c(new C2417c(str));
        }
        throw new IllegalArgumentException("Required value for 'fileId' is null");
    }

    public UnlockResult unlock(String str) throws LockingErrorException, DbxException {
        if (str != null) {
            return m10278e(new C2418d(str));
        }
        throw new IllegalArgumentException("Required value for 'fileId' is null");
    }

    public UpdateContentUploader updateContent(String str, List<String> list, List<Content> list2) throws DbxException {
        if (list2 != null) {
            Iterator<Content> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'additionalContents' is null");
                }
            }
        }
        return m10279f(new C2419e(str, list, list2));
    }
}
