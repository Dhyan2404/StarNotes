package com.dropbox.core.p006v2.filerequests;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.filerequests.C2488a;
import com.dropbox.core.p006v2.filerequests.C2489b;
import com.dropbox.core.p006v2.filerequests.C2490c;
import com.dropbox.core.p006v2.filerequests.C2491d;
import com.dropbox.core.p006v2.filerequests.CountFileRequestsError;
import com.dropbox.core.p006v2.filerequests.CountFileRequestsResult;
import com.dropbox.core.p006v2.filerequests.CreateFileRequestArgs;
import com.dropbox.core.p006v2.filerequests.CreateFileRequestError;
import com.dropbox.core.p006v2.filerequests.DeleteAllClosedFileRequestsError;
import com.dropbox.core.p006v2.filerequests.DeleteAllClosedFileRequestsResult;
import com.dropbox.core.p006v2.filerequests.DeleteFileRequestError;
import com.dropbox.core.p006v2.filerequests.DeleteFileRequestsResult;
import com.dropbox.core.p006v2.filerequests.FileRequest;
import com.dropbox.core.p006v2.filerequests.GetFileRequestError;
import com.dropbox.core.p006v2.filerequests.ListFileRequestsContinueError;
import com.dropbox.core.p006v2.filerequests.ListFileRequestsError;
import com.dropbox.core.p006v2.filerequests.ListFileRequestsResult;
import com.dropbox.core.p006v2.filerequests.ListFileRequestsV2Result;
import com.dropbox.core.p006v2.filerequests.UpdateFileRequestArgs;
import com.dropbox.core.p006v2.filerequests.UpdateFileRequestError;
import com.dropbox.core.stone.StoneSerializers;
import java.util.List;

/* loaded from: classes4.dex */
public class DbxUserFileRequestsRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f16987a;

    public DbxUserFileRequestsRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f16987a = dbxRawClientV2;
    }

    /* renamed from: a */
    public FileRequest m10493a(CreateFileRequestArgs createFileRequestArgs) throws CreateFileRequestErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16987a;
            return (FileRequest) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_requests/create", createFileRequestArgs, false, CreateFileRequestArgs.C2462a.f16984b, FileRequest.C2471a.f16996b, CreateFileRequestError.C2464b.f16986b);
        } catch (DbxWrappedException e) {
            throw new CreateFileRequestErrorException("2/file_requests/create", e.getRequestId(), e.getUserMessage(), (CreateFileRequestError) e.getErrorValue());
        }
    }

    /* renamed from: b */
    public DeleteFileRequestsResult m10494b(C2488a c2488a) throws DeleteFileRequestErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16987a;
            return (DeleteFileRequestsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_requests/delete", c2488a, false, C2488a.a.f17024b, DeleteFileRequestsResult.C2470a.f16993b, DeleteFileRequestError.C2469b.f16992b);
        } catch (DbxWrappedException e) {
            throw new DeleteFileRequestErrorException("2/file_requests/delete", e.getRequestId(), e.getUserMessage(), (DeleteFileRequestError) e.getErrorValue());
        }
    }

    /* renamed from: c */
    public FileRequest m10495c(C2489b c2489b) throws GetFileRequestErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16987a;
            return (FileRequest) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_requests/get", c2489b, false, C2489b.a.f17026b, FileRequest.C2471a.f16996b, GetFileRequestError.C2474b.f16999b);
        } catch (DbxWrappedException e) {
            throw new GetFileRequestErrorException("2/file_requests/get", e.getRequestId(), e.getUserMessage(), (GetFileRequestError) e.getErrorValue());
        }
    }

    public CountFileRequestsResult count() throws CountFileRequestsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16987a;
            return (CountFileRequestsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_requests/count", null, false, StoneSerializers.void_(), CountFileRequestsResult.C2461a.f16977b, CountFileRequestsError.C2460b.f16976b);
        } catch (DbxWrappedException e) {
            throw new CountFileRequestsErrorException("2/file_requests/count", e.getRequestId(), e.getUserMessage(), (CountFileRequestsError) e.getErrorValue());
        }
    }

    public FileRequest create(String str, String str2) throws CreateFileRequestErrorException, DbxException {
        return m10493a(new CreateFileRequestArgs(str, str2));
    }

    public CreateBuilder createBuilder(String str, String str2) {
        return new CreateBuilder(this, CreateFileRequestArgs.m10483e(str, str2));
    }

    /* renamed from: d */
    public ListFileRequestsV2Result m10496d(C2491d c2491d) throws ListFileRequestsContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16987a;
            return (ListFileRequestsV2Result) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_requests/list/continue", c2491d, false, C2491d.a.f17030b, ListFileRequestsV2Result.C2482a.f17007b, ListFileRequestsContinueError.C2478b.f17003b);
        } catch (DbxWrappedException e) {
            throw new ListFileRequestsContinueErrorException("2/file_requests/list/continue", e.getRequestId(), e.getUserMessage(), (ListFileRequestsContinueError) e.getErrorValue());
        }
    }

    public DeleteFileRequestsResult delete(List<String> list) throws DeleteFileRequestErrorException, DbxException {
        return m10494b(new C2488a(list));
    }

    public DeleteAllClosedFileRequestsResult deleteAllClosed() throws DeleteAllClosedFileRequestsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16987a;
            return (DeleteAllClosedFileRequestsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_requests/delete_all_closed", null, false, StoneSerializers.void_(), DeleteAllClosedFileRequestsResult.C2467a.f16990b, DeleteAllClosedFileRequestsError.C2466b.f16989b);
        } catch (DbxWrappedException e) {
            throw new DeleteAllClosedFileRequestsErrorException("2/file_requests/delete_all_closed", e.getRequestId(), e.getUserMessage(), (DeleteAllClosedFileRequestsError) e.getErrorValue());
        }
    }

    /* renamed from: e */
    public ListFileRequestsV2Result m10497e(C2490c c2490c) throws ListFileRequestsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16987a;
            return (ListFileRequestsV2Result) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_requests/list_v2", c2490c, false, C2490c.a.f17028b, ListFileRequestsV2Result.C2482a.f17007b, ListFileRequestsError.C2480b.f17005b);
        } catch (DbxWrappedException e) {
            throw new ListFileRequestsErrorException("2/file_requests/list_v2", e.getRequestId(), e.getUserMessage(), (ListFileRequestsError) e.getErrorValue());
        }
    }

    /* renamed from: f */
    public FileRequest m10498f(UpdateFileRequestArgs updateFileRequestArgs) throws UpdateFileRequestErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16987a;
            return (FileRequest) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_requests/update", updateFileRequestArgs, false, UpdateFileRequestArgs.C2483a.f17016b, FileRequest.C2471a.f16996b, UpdateFileRequestError.C2487b.f17022b);
        } catch (DbxWrappedException e) {
            throw new UpdateFileRequestErrorException("2/file_requests/update", e.getRequestId(), e.getUserMessage(), (UpdateFileRequestError) e.getErrorValue());
        }
    }

    public FileRequest get(String str) throws GetFileRequestErrorException, DbxException {
        return m10495c(new C2489b(str));
    }

    public ListFileRequestsResult list() throws ListFileRequestsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16987a;
            return (ListFileRequestsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_requests/list", null, false, StoneSerializers.void_(), ListFileRequestsResult.C2481a.f17006b, ListFileRequestsError.C2480b.f17005b);
        } catch (DbxWrappedException e) {
            throw new ListFileRequestsErrorException("2/file_requests/list", e.getRequestId(), e.getUserMessage(), (ListFileRequestsError) e.getErrorValue());
        }
    }

    public ListFileRequestsV2Result listContinue(String str) throws ListFileRequestsContinueErrorException, DbxException {
        return m10496d(new C2491d(str));
    }

    public ListFileRequestsV2Result listV2() throws ListFileRequestsErrorException, DbxException {
        return m10497e(new C2490c());
    }

    public FileRequest update(String str) throws UpdateFileRequestErrorException, DbxException {
        return m10498f(new UpdateFileRequestArgs(str));
    }

    public UpdateBuilder updateBuilder(String str) {
        return new UpdateBuilder(this, UpdateFileRequestArgs.m10523f(str));
    }

    public ListFileRequestsV2Result listV2(long j) throws ListFileRequestsErrorException, DbxException {
        return m10497e(new C2490c(j));
    }
}
