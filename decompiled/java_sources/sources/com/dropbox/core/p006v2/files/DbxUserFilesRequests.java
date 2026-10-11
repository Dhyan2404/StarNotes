package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.async.PollArg;
import com.dropbox.core.p006v2.async.PollError;
import com.dropbox.core.p006v2.async.PollErrorException;
import com.dropbox.core.p006v2.fileproperties.AddPropertiesArg;
import com.dropbox.core.p006v2.fileproperties.AddPropertiesError;
import com.dropbox.core.p006v2.fileproperties.AddPropertiesErrorException;
import com.dropbox.core.p006v2.fileproperties.GetTemplateArg;
import com.dropbox.core.p006v2.fileproperties.GetTemplateResult;
import com.dropbox.core.p006v2.fileproperties.InvalidPropertyGroupError;
import com.dropbox.core.p006v2.fileproperties.InvalidPropertyGroupErrorException;
import com.dropbox.core.p006v2.fileproperties.ListTemplateResult;
import com.dropbox.core.p006v2.fileproperties.OverwritePropertyGroupArg;
import com.dropbox.core.p006v2.fileproperties.PropertyGroup;
import com.dropbox.core.p006v2.fileproperties.PropertyGroupUpdate;
import com.dropbox.core.p006v2.fileproperties.RemovePropertiesArg;
import com.dropbox.core.p006v2.fileproperties.RemovePropertiesError;
import com.dropbox.core.p006v2.fileproperties.RemovePropertiesErrorException;
import com.dropbox.core.p006v2.fileproperties.TemplateError;
import com.dropbox.core.p006v2.fileproperties.TemplateErrorException;
import com.dropbox.core.p006v2.fileproperties.UpdatePropertiesArg;
import com.dropbox.core.p006v2.fileproperties.UpdatePropertiesError;
import com.dropbox.core.p006v2.fileproperties.UpdatePropertiesErrorException;
import com.dropbox.core.p006v2.files.AlphaGetMetadataArg;
import com.dropbox.core.p006v2.files.AlphaGetMetadataError;
import com.dropbox.core.p006v2.files.C2705a;
import com.dropbox.core.p006v2.files.C2706b;
import com.dropbox.core.p006v2.files.C2707c;
import com.dropbox.core.p006v2.files.C2708d;
import com.dropbox.core.p006v2.files.C2709e;
import com.dropbox.core.p006v2.files.C2710f;
import com.dropbox.core.p006v2.files.C2711g;
import com.dropbox.core.p006v2.files.C2712h;
import com.dropbox.core.p006v2.files.C2713i;
import com.dropbox.core.p006v2.files.C2714j;
import com.dropbox.core.p006v2.files.C2715k;
import com.dropbox.core.p006v2.files.C2716l;
import com.dropbox.core.p006v2.files.C2717m;
import com.dropbox.core.p006v2.files.C2718n;
import com.dropbox.core.p006v2.files.C2719o;
import com.dropbox.core.p006v2.files.C2720p;
import com.dropbox.core.p006v2.files.C2721q;
import com.dropbox.core.p006v2.files.C2722r;
import com.dropbox.core.p006v2.files.C2723s;
import com.dropbox.core.p006v2.files.C2724t;
import com.dropbox.core.p006v2.files.C2725u;
import com.dropbox.core.p006v2.files.CommitInfo;
import com.dropbox.core.p006v2.files.CommitInfoWithProperties;
import com.dropbox.core.p006v2.files.CreateFolderBatchArg;
import com.dropbox.core.p006v2.files.CreateFolderBatchJobStatus;
import com.dropbox.core.p006v2.files.CreateFolderBatchLaunch;
import com.dropbox.core.p006v2.files.CreateFolderError;
import com.dropbox.core.p006v2.files.CreateFolderResult;
import com.dropbox.core.p006v2.files.DeleteArg;
import com.dropbox.core.p006v2.files.DeleteBatchJobStatus;
import com.dropbox.core.p006v2.files.DeleteBatchLaunch;
import com.dropbox.core.p006v2.files.DeleteError;
import com.dropbox.core.p006v2.files.DeleteResult;
import com.dropbox.core.p006v2.files.DownloadError;
import com.dropbox.core.p006v2.files.DownloadZipError;
import com.dropbox.core.p006v2.files.DownloadZipResult;
import com.dropbox.core.p006v2.files.ExportArg;
import com.dropbox.core.p006v2.files.ExportError;
import com.dropbox.core.p006v2.files.ExportResult;
import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.p006v2.files.FolderMetadata;
import com.dropbox.core.p006v2.files.GetCopyReferenceError;
import com.dropbox.core.p006v2.files.GetCopyReferenceResult;
import com.dropbox.core.p006v2.files.GetMetadataArg;
import com.dropbox.core.p006v2.files.GetMetadataError;
import com.dropbox.core.p006v2.files.GetTemporaryLinkError;
import com.dropbox.core.p006v2.files.GetTemporaryLinkResult;
import com.dropbox.core.p006v2.files.GetTemporaryUploadLinkResult;
import com.dropbox.core.p006v2.files.GetThumbnailBatchError;
import com.dropbox.core.p006v2.files.GetThumbnailBatchResult;
import com.dropbox.core.p006v2.files.ListFolderArg;
import com.dropbox.core.p006v2.files.ListFolderContinueError;
import com.dropbox.core.p006v2.files.ListFolderError;
import com.dropbox.core.p006v2.files.ListFolderGetLatestCursorResult;
import com.dropbox.core.p006v2.files.ListFolderLongpollError;
import com.dropbox.core.p006v2.files.ListFolderLongpollResult;
import com.dropbox.core.p006v2.files.ListFolderResult;
import com.dropbox.core.p006v2.files.ListRevisionsArg;
import com.dropbox.core.p006v2.files.ListRevisionsError;
import com.dropbox.core.p006v2.files.ListRevisionsResult;
import com.dropbox.core.p006v2.files.LockFileBatchResult;
import com.dropbox.core.p006v2.files.LockFileError;
import com.dropbox.core.p006v2.files.Metadata;
import com.dropbox.core.p006v2.files.MoveBatchArg;
import com.dropbox.core.p006v2.files.PreviewError;
import com.dropbox.core.p006v2.files.PreviewResult;
import com.dropbox.core.p006v2.files.RelocationArg;
import com.dropbox.core.p006v2.files.RelocationBatchArg;
import com.dropbox.core.p006v2.files.RelocationBatchJobStatus;
import com.dropbox.core.p006v2.files.RelocationBatchLaunch;
import com.dropbox.core.p006v2.files.RelocationBatchV2JobStatus;
import com.dropbox.core.p006v2.files.RelocationBatchV2Launch;
import com.dropbox.core.p006v2.files.RelocationError;
import com.dropbox.core.p006v2.files.RelocationResult;
import com.dropbox.core.p006v2.files.RestoreError;
import com.dropbox.core.p006v2.files.SaveCopyReferenceError;
import com.dropbox.core.p006v2.files.SaveCopyReferenceResult;
import com.dropbox.core.p006v2.files.SaveUrlError;
import com.dropbox.core.p006v2.files.SaveUrlJobStatus;
import com.dropbox.core.p006v2.files.SaveUrlResult;
import com.dropbox.core.p006v2.files.SearchArg;
import com.dropbox.core.p006v2.files.SearchError;
import com.dropbox.core.p006v2.files.SearchResult;
import com.dropbox.core.p006v2.files.SearchV2Arg;
import com.dropbox.core.p006v2.files.SearchV2Result;
import com.dropbox.core.p006v2.files.ThumbnailArg;
import com.dropbox.core.p006v2.files.ThumbnailError;
import com.dropbox.core.p006v2.files.ThumbnailV2Arg;
import com.dropbox.core.p006v2.files.ThumbnailV2Error;
import com.dropbox.core.p006v2.files.UploadSessionCursor;
import com.dropbox.core.p006v2.files.UploadSessionFinishArg;
import com.dropbox.core.p006v2.files.UploadSessionFinishBatchJobStatus;
import com.dropbox.core.p006v2.files.UploadSessionFinishBatchLaunch;
import com.dropbox.core.stone.StoneSerializers;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class DbxUserFilesRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f17089a;

    public DbxUserFilesRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f17089a = dbxRawClientV2;
    }

    /* renamed from: A */
    public DbxDownloader<FileMetadata> m10624A(ThumbnailArg thumbnailArg, List<HttpRequestor.Header> list) throws ThumbnailErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return dbxRawClientV2.downloadStyle(dbxRawClientV2.getHost().getContent(), "2/files/get_thumbnail", thumbnailArg, false, list, ThumbnailArg.C2665a.f17415b, FileMetadata.C2543a.f17151b, ThumbnailError.C2667b.f17419b);
        } catch (DbxWrappedException e) {
            throw new ThumbnailErrorException("2/files/get_thumbnail", e.getRequestId(), e.getUserMessage(), (ThumbnailError) e.getErrorValue());
        }
    }

    /* renamed from: B */
    public GetThumbnailBatchResult m10625B(C2712h c2712h) throws GetThumbnailBatchErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (GetThumbnailBatchResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getContent(), "2/files/get_thumbnail_batch", c2712h, false, C2712h.a.f17508b, GetThumbnailBatchResult.C2562a.f17188b, GetThumbnailBatchError.C2561b.f17187b);
        } catch (DbxWrappedException e) {
            throw new GetThumbnailBatchErrorException("2/files/get_thumbnail_batch", e.getRequestId(), e.getUserMessage(), (GetThumbnailBatchError) e.getErrorValue());
        }
    }

    /* renamed from: C */
    public DbxDownloader<PreviewResult> m10626C(ThumbnailV2Arg thumbnailV2Arg, List<HttpRequestor.Header> list) throws ThumbnailV2ErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return dbxRawClientV2.downloadStyle(dbxRawClientV2.getHost().getContent(), "2/files/get_thumbnail_v2", thumbnailV2Arg, false, list, ThumbnailV2Arg.C2674a.f17430b, PreviewResult.C2608a.f17294b, ThumbnailV2Error.C2676b.f17434b);
        } catch (DbxWrappedException e) {
            throw new ThumbnailV2ErrorException("2/files/get_thumbnail_v2", e.getRequestId(), e.getUserMessage(), (ThumbnailV2Error) e.getErrorValue());
        }
    }

    /* renamed from: D */
    public ListFolderResult m10627D(ListFolderArg listFolderArg) throws ListFolderErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (ListFolderResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/list_folder", listFolderArg, false, ListFolderArg.C2568a.f17209b, ListFolderResult.C2577a.f17227b, ListFolderError.C2572b.f17220b);
        } catch (DbxWrappedException e) {
            throw new ListFolderErrorException("2/files/list_folder", e.getRequestId(), e.getUserMessage(), (ListFolderError) e.getErrorValue());
        }
    }

    /* renamed from: E */
    public ListFolderResult m10628E(C2713i c2713i) throws ListFolderContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (ListFolderResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/list_folder/continue", c2713i, false, C2713i.a.f17510b, ListFolderResult.C2577a.f17227b, ListFolderContinueError.C2570b.f17215b);
        } catch (DbxWrappedException e) {
            throw new ListFolderContinueErrorException("2/files/list_folder/continue", e.getRequestId(), e.getUserMessage(), (ListFolderContinueError) e.getErrorValue());
        }
    }

    /* renamed from: F */
    public ListFolderGetLatestCursorResult m10629F(ListFolderArg listFolderArg) throws ListFolderErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (ListFolderGetLatestCursorResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/list_folder/get_latest_cursor", listFolderArg, false, ListFolderArg.C2568a.f17209b, ListFolderGetLatestCursorResult.C2573a.f17223b, ListFolderError.C2572b.f17220b);
        } catch (DbxWrappedException e) {
            throw new ListFolderErrorException("2/files/list_folder/get_latest_cursor", e.getRequestId(), e.getUserMessage(), (ListFolderError) e.getErrorValue());
        }
    }

    /* renamed from: G */
    public ListFolderLongpollResult m10630G(C2714j c2714j) throws ListFolderLongpollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (ListFolderLongpollResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getNotify(), "2/files/list_folder/longpoll", c2714j, true, C2714j.a.f17513b, ListFolderLongpollResult.C2576a.f17226b, ListFolderLongpollError.C2575b.f17225b);
        } catch (DbxWrappedException e) {
            throw new ListFolderLongpollErrorException("2/files/list_folder/longpoll", e.getRequestId(), e.getUserMessage(), (ListFolderLongpollError) e.getErrorValue());
        }
    }

    /* renamed from: H */
    public ListRevisionsResult m10631H(ListRevisionsArg listRevisionsArg) throws ListRevisionsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (ListRevisionsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/list_revisions", listRevisionsArg, false, ListRevisionsArg.C2578a.f17231b, ListRevisionsResult.C2583a.f17241b, ListRevisionsError.C2580b.f17237b);
        } catch (DbxWrappedException e) {
            throw new ListRevisionsErrorException("2/files/list_revisions", e.getRequestId(), e.getUserMessage(), (ListRevisionsError) e.getErrorValue());
        }
    }

    /* renamed from: I */
    public LockFileBatchResult m10632I(C2715k c2715k) throws LockFileErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (LockFileBatchResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/lock_file_batch", c2715k, false, C2715k.a.f17515b, LockFileBatchResult.C2586a.f17244b, LockFileError.C2588b.f17249b);
        } catch (DbxWrappedException e) {
            throw new LockFileErrorException("2/files/lock_file_batch", e.getRequestId(), e.getUserMessage(), (LockFileError) e.getErrorValue());
        }
    }

    /* renamed from: J */
    public Metadata m10633J(RelocationArg relocationArg) throws RelocationErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (Metadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/move", relocationArg, false, RelocationArg.C2609a.f17298b, Metadata.C2596a.f17264b, RelocationError.C2629b.f17348b);
        } catch (DbxWrappedException e) {
            throw new RelocationErrorException("2/files/move", e.getRequestId(), e.getUserMessage(), (RelocationError) e.getErrorValue());
        }
    }

    /* renamed from: K */
    public RelocationBatchLaunch m10634K(RelocationBatchArg relocationBatchArg) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (RelocationBatchLaunch) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/move_batch", relocationBatchArg, false, RelocationBatchArg.C2610a.f17301b, RelocationBatchLaunch.C2618b.f17323b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"move_batch\":" + e.getErrorValue());
        }
    }

    /* renamed from: L */
    public RelocationBatchJobStatus m10635L(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (RelocationBatchJobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/move_batch/check", pollArg, false, PollArg.Serializer.INSTANCE, RelocationBatchJobStatus.C2616b.f17318b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/files/move_batch/check", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: M */
    public RelocationBatchV2JobStatus m10636M(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (RelocationBatchV2JobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/move_batch/check_v2", pollArg, false, PollArg.Serializer.INSTANCE, RelocationBatchV2JobStatus.C2624b.f17334b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/files/move_batch/check_v2", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: N */
    public RelocationBatchV2Launch m10637N(MoveBatchArg moveBatchArg) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (RelocationBatchV2Launch) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/move_batch_v2", moveBatchArg, false, MoveBatchArg.C2600a.f17273b, RelocationBatchV2Launch.C2626b.f17339b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"move_batch_v2\":" + e.getErrorValue());
        }
    }

    /* renamed from: O */
    public RelocationResult m10638O(RelocationArg relocationArg) throws RelocationErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (RelocationResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/move_v2", relocationArg, false, RelocationArg.C2609a.f17298b, RelocationResult.C2631a.f17350b, RelocationError.C2629b.f17348b);
        } catch (DbxWrappedException e) {
            throw new RelocationErrorException("2/files/move_v2", e.getRequestId(), e.getUserMessage(), (RelocationError) e.getErrorValue());
        }
    }

    /* renamed from: P */
    public void m10639P(DeleteArg deleteArg) throws DeleteErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/permanently_delete", deleteArg, false, DeleteArg.C2513a.f17092b, StoneSerializers.void_(), DeleteError.C2525b.f17116b);
        } catch (DbxWrappedException e) {
            throw new DeleteErrorException("2/files/permanently_delete", e.getRequestId(), e.getUserMessage(), (DeleteError) e.getErrorValue());
        }
    }

    /* renamed from: Q */
    public void m10640Q(AddPropertiesArg addPropertiesArg) throws AddPropertiesErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/properties/add", addPropertiesArg, false, AddPropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), AddPropertiesError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new AddPropertiesErrorException("2/files/properties/add", e.getRequestId(), e.getUserMessage(), (AddPropertiesError) e.getErrorValue());
        }
    }

    /* renamed from: R */
    public void m10641R(OverwritePropertyGroupArg overwritePropertyGroupArg) throws InvalidPropertyGroupErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/properties/overwrite", overwritePropertyGroupArg, false, OverwritePropertyGroupArg.Serializer.INSTANCE, StoneSerializers.void_(), InvalidPropertyGroupError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new InvalidPropertyGroupErrorException("2/files/properties/overwrite", e.getRequestId(), e.getUserMessage(), (InvalidPropertyGroupError) e.getErrorValue());
        }
    }

    /* renamed from: S */
    public void m10642S(RemovePropertiesArg removePropertiesArg) throws RemovePropertiesErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/properties/remove", removePropertiesArg, false, RemovePropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), RemovePropertiesError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new RemovePropertiesErrorException("2/files/properties/remove", e.getRequestId(), e.getUserMessage(), (RemovePropertiesError) e.getErrorValue());
        }
    }

    /* renamed from: T */
    public GetTemplateResult m10643T(GetTemplateArg getTemplateArg) throws TemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (GetTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/properties/template/get", getTemplateArg, false, GetTemplateArg.Serializer.INSTANCE, GetTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new TemplateErrorException("2/files/properties/template/get", e.getRequestId(), e.getUserMessage(), (TemplateError) e.getErrorValue());
        }
    }

    /* renamed from: U */
    public void m10644U(UpdatePropertiesArg updatePropertiesArg) throws UpdatePropertiesErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/properties/update", updatePropertiesArg, false, UpdatePropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), UpdatePropertiesError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new UpdatePropertiesErrorException("2/files/properties/update", e.getRequestId(), e.getUserMessage(), (UpdatePropertiesError) e.getErrorValue());
        }
    }

    /* renamed from: V */
    public FileMetadata m10645V(C2718n c2718n) throws RestoreErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (FileMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/restore", c2718n, false, C2718n.a.f17524b, FileMetadata.C2543a.f17151b, RestoreError.C2633b.f17355b);
        } catch (DbxWrappedException e) {
            throw new RestoreErrorException("2/files/restore", e.getRequestId(), e.getUserMessage(), (RestoreError) e.getErrorValue());
        }
    }

    /* renamed from: W */
    public SaveUrlResult m10646W(C2720p c2720p) throws SaveUrlErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (SaveUrlResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/save_url", c2720p, false, C2720p.a.f17530b, SaveUrlResult.C2642b.f17374b, SaveUrlError.C2638b.f17364b);
        } catch (DbxWrappedException e) {
            throw new SaveUrlErrorException("2/files/save_url", e.getRequestId(), e.getUserMessage(), (SaveUrlError) e.getErrorValue());
        }
    }

    /* renamed from: X */
    public SaveUrlJobStatus m10647X(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (SaveUrlJobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/save_url/check_job_status", pollArg, false, PollArg.Serializer.INSTANCE, SaveUrlJobStatus.C2640b.f17369b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/files/save_url/check_job_status", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: Y */
    public SearchResult m10648Y(SearchArg searchArg) throws SearchErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (SearchResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/search", searchArg, false, SearchArg.C2643a.f17380b, SearchResult.C2654a.f17396b, SearchError.C2645b.f17387b);
        } catch (DbxWrappedException e) {
            throw new SearchErrorException("2/files/search", e.getRequestId(), e.getUserMessage(), (SearchError) e.getErrorValue());
        }
    }

    /* renamed from: Z */
    public SearchV2Result m10649Z(C2721q c2721q) throws SearchErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (SearchV2Result) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/search/continue_v2", c2721q, false, C2721q.a.f17532b, SearchV2Result.C2656a.f17404b, SearchError.C2645b.f17387b);
        } catch (DbxWrappedException e) {
            throw new SearchErrorException("2/files/search/continue_v2", e.getRequestId(), e.getUserMessage(), (SearchError) e.getErrorValue());
        }
    }

    /* renamed from: a */
    public Metadata m10650a(AlphaGetMetadataArg alphaGetMetadataArg) throws AlphaGetMetadataErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (Metadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/alpha/get_metadata", alphaGetMetadataArg, false, AlphaGetMetadataArg.C2492a.f17032b, Metadata.C2596a.f17264b, AlphaGetMetadataError.C2494b.f17039b);
        } catch (DbxWrappedException e) {
            throw new AlphaGetMetadataErrorException("2/files/alpha/get_metadata", e.getRequestId(), e.getUserMessage(), (AlphaGetMetadataError) e.getErrorValue());
        }
    }

    /* renamed from: a0 */
    public SearchV2Result m10651a0(SearchV2Arg searchV2Arg) throws SearchErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (SearchV2Result) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/search_v2", searchV2Arg, false, SearchV2Arg.C2655a.f17401b, SearchV2Result.C2656a.f17404b, SearchError.C2645b.f17387b);
        } catch (DbxWrappedException e) {
            throw new SearchErrorException("2/files/search_v2", e.getRequestId(), e.getUserMessage(), (SearchError) e.getErrorValue());
        }
    }

    @Deprecated
    public Metadata alphaGetMetadata(String str) throws AlphaGetMetadataErrorException, DbxException {
        return m10650a(new AlphaGetMetadataArg(str));
    }

    @Deprecated
    public AlphaGetMetadataBuilder alphaGetMetadataBuilder(String str) {
        return new AlphaGetMetadataBuilder(this, AlphaGetMetadataArg.m10555i(str));
    }

    @Deprecated
    public AlphaUploadUploader alphaUpload(String str) throws DbxException {
        return m10652b(new CommitInfoWithProperties(str));
    }

    @Deprecated
    public AlphaUploadBuilder alphaUploadBuilder(String str) {
        return new AlphaUploadBuilder(this, CommitInfoWithProperties.m10574a(str));
    }

    /* renamed from: b */
    public AlphaUploadUploader m10652b(CommitInfoWithProperties commitInfoWithProperties) throws DbxException {
        DbxRawClientV2 dbxRawClientV2 = this.f17089a;
        return new AlphaUploadUploader(dbxRawClientV2.uploadStyle(dbxRawClientV2.getHost().getContent(), "2/files/alpha/upload", commitInfoWithProperties, false, CommitInfoWithProperties.C2496a.f17043b), this.f17089a.getUserId());
    }

    /* renamed from: b0 */
    public LockFileBatchResult m10653b0(C2722r c2722r) throws LockFileErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (LockFileBatchResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/unlock_file_batch", c2722r, false, C2722r.a.f17534b, LockFileBatchResult.C2586a.f17244b, LockFileError.C2588b.f17249b);
        } catch (DbxWrappedException e) {
            throw new LockFileErrorException("2/files/unlock_file_batch", e.getRequestId(), e.getUserMessage(), (LockFileError) e.getErrorValue());
        }
    }

    /* renamed from: c */
    public Metadata m10654c(RelocationArg relocationArg) throws RelocationErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (Metadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/copy", relocationArg, false, RelocationArg.C2609a.f17298b, Metadata.C2596a.f17264b, RelocationError.C2629b.f17348b);
        } catch (DbxWrappedException e) {
            throw new RelocationErrorException("2/files/copy", e.getRequestId(), e.getUserMessage(), (RelocationError) e.getErrorValue());
        }
    }

    /* renamed from: c0 */
    public UploadUploader m10655c0(CommitInfo commitInfo) throws DbxException {
        DbxRawClientV2 dbxRawClientV2 = this.f17089a;
        return new UploadUploader(dbxRawClientV2.uploadStyle(dbxRawClientV2.getHost().getContent(), "2/files/upload", commitInfo, false, CommitInfo.C2495a.f17042b), this.f17089a.getUserId());
    }

    @Deprecated
    public Metadata copy(String str, String str2) throws RelocationErrorException, DbxException {
        return m10654c(new RelocationArg(str, str2));
    }

    @Deprecated
    public RelocationBatchLaunch copyBatch(List<RelocationPath> list) throws DbxApiException, DbxException {
        return m10656d(new RelocationBatchArg(list));
    }

    @Deprecated
    public CopyBatchBuilder copyBatchBuilder(List<RelocationPath> list) {
        return new CopyBatchBuilder(this, RelocationBatchArg.m10932f(list));
    }

    @Deprecated
    public RelocationBatchJobStatus copyBatchCheck(String str) throws PollErrorException, DbxException {
        return m10658e(new PollArg(str));
    }

    public RelocationBatchV2JobStatus copyBatchCheckV2(String str) throws PollErrorException, DbxException {
        return m10660f(new PollArg(str));
    }

    public RelocationBatchV2Launch copyBatchV2(List<RelocationPath> list) throws DbxApiException, DbxException {
        return m10662g(new C2717m(list));
    }

    @Deprecated
    public CopyBuilder copyBuilder(String str, String str2) {
        return new CopyBuilder(this, RelocationArg.m10926d(str, str2));
    }

    public GetCopyReferenceResult copyReferenceGet(String str) throws GetCopyReferenceErrorException, DbxException {
        return m10664h(new C2709e(str));
    }

    public SaveCopyReferenceResult copyReferenceSave(String str, String str2) throws SaveCopyReferenceErrorException, DbxException {
        return m10666i(new C2719o(str, str2));
    }

    public RelocationResult copyV2(String str, String str2) throws RelocationErrorException, DbxException {
        return m10668j(new RelocationArg(str, str2));
    }

    public CopyV2Builder copyV2Builder(String str, String str2) {
        return new CopyV2Builder(this, RelocationArg.m10926d(str, str2));
    }

    @Deprecated
    public FolderMetadata createFolder(String str) throws CreateFolderErrorException, DbxException {
        return m10669k(new C2705a(str));
    }

    public CreateFolderBatchLaunch createFolderBatch(List<String> list) throws DbxApiException, DbxException {
        return m10670l(new CreateFolderBatchArg(list));
    }

    public CreateFolderBatchBuilder createFolderBatchBuilder(List<String> list) {
        return new CreateFolderBatchBuilder(this, CreateFolderBatchArg.m10577d(list));
    }

    public CreateFolderBatchJobStatus createFolderBatchCheck(String str) throws PollErrorException, DbxException {
        return m10671m(new PollArg(str));
    }

    public CreateFolderResult createFolderV2(String str) throws CreateFolderErrorException, DbxException {
        return m10672n(new C2705a(str));
    }

    /* renamed from: d */
    public RelocationBatchLaunch m10656d(RelocationBatchArg relocationBatchArg) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (RelocationBatchLaunch) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/copy_batch", relocationBatchArg, false, RelocationBatchArg.C2610a.f17301b, RelocationBatchLaunch.C2618b.f17323b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"copy_batch\":" + e.getErrorValue());
        }
    }

    /* renamed from: d0 */
    public UploadSessionAppendUploader m10657d0(UploadSessionCursor uploadSessionCursor) throws DbxException {
        DbxRawClientV2 dbxRawClientV2 = this.f17089a;
        return new UploadSessionAppendUploader(dbxRawClientV2.uploadStyle(dbxRawClientV2.getHost().getContent(), "2/files/upload_session/append", uploadSessionCursor, false, UploadSessionCursor.C2682a.f17448b), this.f17089a.getUserId());
    }

    @Deprecated
    public Metadata delete(String str) throws DeleteErrorException, DbxException {
        return m10673o(new DeleteArg(str));
    }

    public DeleteBatchLaunch deleteBatch(List<DeleteArg> list) throws DbxApiException, DbxException {
        return m10674p(new C2706b(list));
    }

    public DeleteBatchJobStatus deleteBatchCheck(String str) throws PollErrorException, DbxException {
        return m10675q(new PollArg(str));
    }

    public DeleteResult deleteV2(String str) throws DeleteErrorException, DbxException {
        return m10676r(new DeleteArg(str));
    }

    public DbxDownloader<FileMetadata> download(String str) throws DownloadErrorException, DbxException {
        return m10677s(new C2707c(str), Collections.emptyList());
    }

    public DownloadBuilder downloadBuilder(String str) {
        return new DownloadBuilder(this, str);
    }

    public DbxDownloader<DownloadZipResult> downloadZip(String str) throws DownloadZipErrorException, DbxException {
        return m10678t(new C2708d(str), Collections.emptyList());
    }

    public DownloadZipBuilder downloadZipBuilder(String str) {
        return new DownloadZipBuilder(this, str);
    }

    /* renamed from: e */
    public RelocationBatchJobStatus m10658e(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (RelocationBatchJobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/copy_batch/check", pollArg, false, PollArg.Serializer.INSTANCE, RelocationBatchJobStatus.C2616b.f17318b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/files/copy_batch/check", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: e0 */
    public UploadSessionAppendV2Uploader m10659e0(C2723s c2723s) throws DbxException {
        DbxRawClientV2 dbxRawClientV2 = this.f17089a;
        return new UploadSessionAppendV2Uploader(dbxRawClientV2.uploadStyle(dbxRawClientV2.getHost().getContent(), "2/files/upload_session/append_v2", c2723s, false, C2723s.a.f17537b), this.f17089a.getUserId());
    }

    public DbxDownloader<ExportResult> export(String str) throws ExportErrorException, DbxException {
        return m10679u(new ExportArg(str), Collections.emptyList());
    }

    public ExportBuilder exportBuilder(String str) {
        return new ExportBuilder(this, str);
    }

    /* renamed from: f */
    public RelocationBatchV2JobStatus m10660f(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (RelocationBatchV2JobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/copy_batch/check_v2", pollArg, false, PollArg.Serializer.INSTANCE, RelocationBatchV2JobStatus.C2624b.f17334b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/files/copy_batch/check_v2", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: f0 */
    public UploadSessionFinishUploader m10661f0(UploadSessionFinishArg uploadSessionFinishArg) throws DbxException {
        DbxRawClientV2 dbxRawClientV2 = this.f17089a;
        return new UploadSessionFinishUploader(dbxRawClientV2.uploadStyle(dbxRawClientV2.getHost().getContent(), "2/files/upload_session/finish", uploadSessionFinishArg, false, UploadSessionFinishArg.C2683a.f17449b), this.f17089a.getUserId());
    }

    /* renamed from: g */
    public RelocationBatchV2Launch m10662g(C2717m c2717m) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (RelocationBatchV2Launch) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/copy_batch_v2", c2717m, false, C2717m.a.f17521b, RelocationBatchV2Launch.C2626b.f17339b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"copy_batch_v2\":" + e.getErrorValue());
        }
    }

    /* renamed from: g0 */
    public UploadSessionFinishBatchLaunch m10663g0(C2724t c2724t) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (UploadSessionFinishBatchLaunch) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/upload_session/finish_batch", c2724t, false, C2724t.a.f17539b, UploadSessionFinishBatchLaunch.C2687b.f17458b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"upload_session/finish_batch\":" + e.getErrorValue());
        }
    }

    public LockFileBatchResult getFileLockBatch(List<LockFileArg> list) throws LockFileErrorException, DbxException {
        return m10680v(new C2715k(list));
    }

    public Metadata getMetadata(String str) throws GetMetadataErrorException, DbxException {
        return m10681w(new GetMetadataArg(str));
    }

    public GetMetadataBuilder getMetadataBuilder(String str) {
        return new GetMetadataBuilder(this, GetMetadataArg.m10776f(str));
    }

    public DbxDownloader<FileMetadata> getPreview(String str) throws PreviewErrorException, DbxException {
        return m10682x(new C2716l(str), Collections.emptyList());
    }

    public GetPreviewBuilder getPreviewBuilder(String str) {
        return new GetPreviewBuilder(this, str);
    }

    public GetTemporaryLinkResult getTemporaryLink(String str) throws GetTemporaryLinkErrorException, DbxException {
        return m10683y(new C2710f(str));
    }

    public GetTemporaryUploadLinkResult getTemporaryUploadLink(CommitInfo commitInfo) throws DbxApiException, DbxException {
        return m10684z(new C2711g(commitInfo));
    }

    public DbxDownloader<FileMetadata> getThumbnail(String str) throws ThumbnailErrorException, DbxException {
        return m10624A(new ThumbnailArg(str), Collections.emptyList());
    }

    public GetThumbnailBatchResult getThumbnailBatch(List<ThumbnailArg> list) throws GetThumbnailBatchErrorException, DbxException {
        return m10625B(new C2712h(list));
    }

    public GetThumbnailBuilder getThumbnailBuilder(String str) {
        return new GetThumbnailBuilder(this, ThumbnailArg.newBuilder(str));
    }

    public DbxDownloader<PreviewResult> getThumbnailV2(PathOrLink pathOrLink) throws ThumbnailV2ErrorException, DbxException {
        return m10626C(new ThumbnailV2Arg(pathOrLink), Collections.emptyList());
    }

    public DbxUserGetThumbnailV2Builder getThumbnailV2Builder(PathOrLink pathOrLink) {
        return new DbxUserGetThumbnailV2Builder(this, ThumbnailV2Arg.m11108e(pathOrLink));
    }

    /* renamed from: h */
    public GetCopyReferenceResult m10664h(C2709e c2709e) throws GetCopyReferenceErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (GetCopyReferenceResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/copy_reference/get", c2709e, false, C2709e.a.f17501b, GetCopyReferenceResult.C2552a.f17164b, GetCopyReferenceError.C2551b.f17163b);
        } catch (DbxWrappedException e) {
            throw new GetCopyReferenceErrorException("2/files/copy_reference/get", e.getRequestId(), e.getUserMessage(), (GetCopyReferenceError) e.getErrorValue());
        }
    }

    /* renamed from: h0 */
    public UploadSessionFinishBatchJobStatus m10665h0(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (UploadSessionFinishBatchJobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/upload_session/finish_batch/check", pollArg, false, PollArg.Serializer.INSTANCE, UploadSessionFinishBatchJobStatus.C2685b.f17453b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/files/upload_session/finish_batch/check", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: i */
    public SaveCopyReferenceResult m10666i(C2719o c2719o) throws SaveCopyReferenceErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (SaveCopyReferenceResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/copy_reference/save", c2719o, false, C2719o.a.f17527b, SaveCopyReferenceResult.C2636a.f17360b, SaveCopyReferenceError.C2635b.f17359b);
        } catch (DbxWrappedException e) {
            throw new SaveCopyReferenceErrorException("2/files/copy_reference/save", e.getRequestId(), e.getUserMessage(), (SaveCopyReferenceError) e.getErrorValue());
        }
    }

    /* renamed from: i0 */
    public UploadSessionStartUploader m10667i0(C2725u c2725u) throws DbxException {
        DbxRawClientV2 dbxRawClientV2 = this.f17089a;
        return new UploadSessionStartUploader(dbxRawClientV2.uploadStyle(dbxRawClientV2.getHost().getContent(), "2/files/upload_session/start", c2725u, false, C2725u.a.f17541b), this.f17089a.getUserId());
    }

    /* renamed from: j */
    public RelocationResult m10668j(RelocationArg relocationArg) throws RelocationErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (RelocationResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/copy_v2", relocationArg, false, RelocationArg.C2609a.f17298b, RelocationResult.C2631a.f17350b, RelocationError.C2629b.f17348b);
        } catch (DbxWrappedException e) {
            throw new RelocationErrorException("2/files/copy_v2", e.getRequestId(), e.getUserMessage(), (RelocationError) e.getErrorValue());
        }
    }

    /* renamed from: k */
    public FolderMetadata m10669k(C2705a c2705a) throws CreateFolderErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (FolderMetadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/create_folder", c2705a, false, C2705a.a.f17492b, FolderMetadata.C2548a.f17158b, CreateFolderError.C2511b.f17084b);
        } catch (DbxWrappedException e) {
            throw new CreateFolderErrorException("2/files/create_folder", e.getRequestId(), e.getUserMessage(), (CreateFolderError) e.getErrorValue());
        }
    }

    /* renamed from: l */
    public CreateFolderBatchLaunch m10670l(CreateFolderBatchArg createFolderBatchArg) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (CreateFolderBatchLaunch) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/create_folder_batch", createFolderBatchArg, false, CreateFolderBatchArg.C2497a.f17055b, CreateFolderBatchLaunch.C2503b.f17069b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"create_folder_batch\":" + e.getErrorValue());
        }
    }

    public ListFolderResult listFolder(String str) throws ListFolderErrorException, DbxException {
        return m10627D(new ListFolderArg(str));
    }

    public ListFolderBuilder listFolderBuilder(String str) {
        return new ListFolderBuilder(this, ListFolderArg.m10810k(str));
    }

    public ListFolderResult listFolderContinue(String str) throws ListFolderContinueErrorException, DbxException {
        return m10628E(new C2713i(str));
    }

    public ListFolderGetLatestCursorResult listFolderGetLatestCursor(String str) throws ListFolderErrorException, DbxException {
        return m10629F(new ListFolderArg(str));
    }

    public ListFolderGetLatestCursorBuilder listFolderGetLatestCursorBuilder(String str) {
        return new ListFolderGetLatestCursorBuilder(this, ListFolderArg.m10810k(str));
    }

    public ListFolderLongpollResult listFolderLongpoll(String str) throws ListFolderLongpollErrorException, DbxException {
        return m10630G(new C2714j(str));
    }

    public ListRevisionsResult listRevisions(String str) throws ListRevisionsErrorException, DbxException {
        return m10631H(new ListRevisionsArg(str));
    }

    public ListRevisionsBuilder listRevisionsBuilder(String str) {
        return new ListRevisionsBuilder(this, ListRevisionsArg.m10844d(str));
    }

    public LockFileBatchResult lockFileBatch(List<LockFileArg> list) throws LockFileErrorException, DbxException {
        return m10632I(new C2715k(list));
    }

    /* renamed from: m */
    public CreateFolderBatchJobStatus m10671m(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (CreateFolderBatchJobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/create_folder_batch/check", pollArg, false, PollArg.Serializer.INSTANCE, CreateFolderBatchJobStatus.C2501b.f17064b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/files/create_folder_batch/check", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    @Deprecated
    public Metadata move(String str, String str2) throws RelocationErrorException, DbxException {
        return m10633J(new RelocationArg(str, str2));
    }

    @Deprecated
    public RelocationBatchLaunch moveBatch(List<RelocationPath> list) throws DbxApiException, DbxException {
        return m10634K(new RelocationBatchArg(list));
    }

    @Deprecated
    public MoveBatchBuilder moveBatchBuilder(List<RelocationPath> list) {
        return new MoveBatchBuilder(this, RelocationBatchArg.m10932f(list));
    }

    @Deprecated
    public RelocationBatchJobStatus moveBatchCheck(String str) throws PollErrorException, DbxException {
        return m10635L(new PollArg(str));
    }

    public RelocationBatchV2JobStatus moveBatchCheckV2(String str) throws PollErrorException, DbxException {
        return m10636M(new PollArg(str));
    }

    public RelocationBatchV2Launch moveBatchV2(List<RelocationPath> list) throws DbxApiException, DbxException {
        return m10637N(new MoveBatchArg(list));
    }

    public MoveBatchV2Builder moveBatchV2Builder(List<RelocationPath> list) {
        return new MoveBatchV2Builder(this, MoveBatchArg.m10901e(list));
    }

    @Deprecated
    public MoveBuilder moveBuilder(String str, String str2) {
        return new MoveBuilder(this, RelocationArg.m10926d(str, str2));
    }

    public RelocationResult moveV2(String str, String str2) throws RelocationErrorException, DbxException {
        return m10638O(new RelocationArg(str, str2));
    }

    public MoveV2Builder moveV2Builder(String str, String str2) {
        return new MoveV2Builder(this, RelocationArg.m10926d(str, str2));
    }

    /* renamed from: n */
    public CreateFolderResult m10672n(C2705a c2705a) throws CreateFolderErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (CreateFolderResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/create_folder_v2", c2705a, false, C2705a.a.f17492b, CreateFolderResult.C2512a.f17085b, CreateFolderError.C2511b.f17084b);
        } catch (DbxWrappedException e) {
            throw new CreateFolderErrorException("2/files/create_folder_v2", e.getRequestId(), e.getUserMessage(), (CreateFolderError) e.getErrorValue());
        }
    }

    /* renamed from: o */
    public Metadata m10673o(DeleteArg deleteArg) throws DeleteErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (Metadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/delete", deleteArg, false, DeleteArg.C2513a.f17092b, Metadata.C2596a.f17264b, DeleteError.C2525b.f17116b);
        } catch (DbxWrappedException e) {
            throw new DeleteErrorException("2/files/delete", e.getRequestId(), e.getUserMessage(), (DeleteError) e.getErrorValue());
        }
    }

    /* renamed from: p */
    public DeleteBatchLaunch m10674p(C2706b c2706b) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (DeleteBatchLaunch) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/delete_batch", c2706b, false, C2706b.a.f17494b, DeleteBatchLaunch.C2519b.f17104b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"delete_batch\":" + e.getErrorValue());
        }
    }

    public void permanentlyDelete(String str) throws DeleteErrorException, DbxException {
        m10639P(new DeleteArg(str));
    }

    @Deprecated
    public void propertiesAdd(String str, List<PropertyGroup> list) throws AddPropertiesErrorException, DbxException {
        m10640Q(new AddPropertiesArg(str, list));
    }

    @Deprecated
    public void propertiesOverwrite(String str, List<PropertyGroup> list) throws InvalidPropertyGroupErrorException, DbxException {
        m10641R(new OverwritePropertyGroupArg(str, list));
    }

    @Deprecated
    public void propertiesRemove(String str, List<String> list) throws RemovePropertiesErrorException, DbxException {
        m10642S(new RemovePropertiesArg(str, list));
    }

    @Deprecated
    public GetTemplateResult propertiesTemplateGet(String str) throws TemplateErrorException, DbxException {
        return m10643T(new GetTemplateArg(str));
    }

    @Deprecated
    public ListTemplateResult propertiesTemplateList() throws TemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (ListTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/properties/template/list", null, false, StoneSerializers.void_(), ListTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new TemplateErrorException("2/files/properties/template/list", e.getRequestId(), e.getUserMessage(), (TemplateError) e.getErrorValue());
        }
    }

    @Deprecated
    public void propertiesUpdate(String str, List<PropertyGroupUpdate> list) throws UpdatePropertiesErrorException, DbxException {
        m10644U(new UpdatePropertiesArg(str, list));
    }

    /* renamed from: q */
    public DeleteBatchJobStatus m10675q(PollArg pollArg) throws PollErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (DeleteBatchJobStatus) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/delete_batch/check", pollArg, false, PollArg.Serializer.INSTANCE, DeleteBatchJobStatus.C2517b.f17099b, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new PollErrorException("2/files/delete_batch/check", e.getRequestId(), e.getUserMessage(), (PollError) e.getErrorValue());
        }
    }

    /* renamed from: r */
    public DeleteResult m10676r(DeleteArg deleteArg) throws DeleteErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (DeleteResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/delete_v2", deleteArg, false, DeleteArg.C2513a.f17092b, DeleteResult.C2526a.f17117b, DeleteError.C2525b.f17116b);
        } catch (DbxWrappedException e) {
            throw new DeleteErrorException("2/files/delete_v2", e.getRequestId(), e.getUserMessage(), (DeleteError) e.getErrorValue());
        }
    }

    public FileMetadata restore(String str, String str2) throws RestoreErrorException, DbxException {
        return m10645V(new C2718n(str, str2));
    }

    /* renamed from: s */
    public DbxDownloader<FileMetadata> m10677s(C2707c c2707c, List<HttpRequestor.Header> list) throws DownloadErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return dbxRawClientV2.downloadStyle(dbxRawClientV2.getHost().getContent(), "2/files/download", c2707c, false, list, C2707c.a.f17497b, FileMetadata.C2543a.f17151b, DownloadError.C2530b.f17126b);
        } catch (DbxWrappedException e) {
            throw new DownloadErrorException("2/files/download", e.getRequestId(), e.getUserMessage(), (DownloadError) e.getErrorValue());
        }
    }

    public SaveUrlResult saveUrl(String str, String str2) throws SaveUrlErrorException, DbxException {
        return m10646W(new C2720p(str, str2));
    }

    public SaveUrlJobStatus saveUrlCheckJobStatus(String str) throws PollErrorException, DbxException {
        return m10647X(new PollArg(str));
    }

    @Deprecated
    public SearchResult search(String str, String str2) throws SearchErrorException, DbxException {
        return m10648Y(new SearchArg(str, str2));
    }

    @Deprecated
    public SearchBuilder searchBuilder(String str, String str2) {
        return new SearchBuilder(this, SearchArg.m11042f(str, str2));
    }

    public SearchV2Result searchContinueV2(String str) throws SearchErrorException, DbxException {
        return m10649Z(new C2721q(str));
    }

    public SearchV2Result searchV2(String str) throws SearchErrorException, DbxException {
        return m10651a0(new SearchV2Arg(str));
    }

    public SearchV2Builder searchV2Builder(String str) {
        return new SearchV2Builder(this, SearchV2Arg.m11072e(str));
    }

    /* renamed from: t */
    public DbxDownloader<DownloadZipResult> m10678t(C2708d c2708d, List<HttpRequestor.Header> list) throws DownloadZipErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return dbxRawClientV2.downloadStyle(dbxRawClientV2.getHost().getContent(), "2/files/download_zip", c2708d, false, list, C2708d.a.f17499b, DownloadZipResult.C2533a.f17133b, DownloadZipError.C2532b.f17132b);
        } catch (DbxWrappedException e) {
            throw new DownloadZipErrorException("2/files/download_zip", e.getRequestId(), e.getUserMessage(), (DownloadZipError) e.getErrorValue());
        }
    }

    /* renamed from: u */
    public DbxDownloader<ExportResult> m10679u(ExportArg exportArg, List<HttpRequestor.Header> list) throws ExportErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return dbxRawClientV2.downloadStyle(dbxRawClientV2.getHost().getContent(), "2/files/export", exportArg, false, list, ExportArg.Serializer.INSTANCE, ExportResult.Serializer.INSTANCE, ExportError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new ExportErrorException("2/files/export", e.getRequestId(), e.getUserMessage(), (ExportError) e.getErrorValue());
        }
    }

    public LockFileBatchResult unlockFileBatch(List<UnlockFileArg> list) throws LockFileErrorException, DbxException {
        return m10653b0(new C2722r(list));
    }

    public UploadUploader upload(String str) throws DbxException {
        return m10655c0(new CommitInfo(str));
    }

    public UploadBuilder uploadBuilder(String str) {
        return new UploadBuilder(this, CommitInfo.newBuilder(str));
    }

    @Deprecated
    public UploadSessionAppendUploader uploadSessionAppend(String str, long j) throws DbxException {
        return m10657d0(new UploadSessionCursor(str, j));
    }

    public UploadSessionAppendV2Uploader uploadSessionAppendV2(UploadSessionCursor uploadSessionCursor) throws DbxException {
        return m10659e0(new C2723s(uploadSessionCursor));
    }

    public UploadSessionFinishUploader uploadSessionFinish(UploadSessionCursor uploadSessionCursor, CommitInfo commitInfo) throws DbxException {
        return m10661f0(new UploadSessionFinishArg(uploadSessionCursor, commitInfo));
    }

    public UploadSessionFinishBatchLaunch uploadSessionFinishBatch(List<UploadSessionFinishArg> list) throws DbxApiException, DbxException {
        return m10663g0(new C2724t(list));
    }

    public UploadSessionFinishBatchJobStatus uploadSessionFinishBatchCheck(String str) throws PollErrorException, DbxException {
        return m10665h0(new PollArg(str));
    }

    public UploadSessionStartUploader uploadSessionStart() throws DbxException {
        return m10667i0(new C2725u());
    }

    /* renamed from: v */
    public LockFileBatchResult m10680v(C2715k c2715k) throws LockFileErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (LockFileBatchResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/get_file_lock_batch", c2715k, false, C2715k.a.f17515b, LockFileBatchResult.C2586a.f17244b, LockFileError.C2588b.f17249b);
        } catch (DbxWrappedException e) {
            throw new LockFileErrorException("2/files/get_file_lock_batch", e.getRequestId(), e.getUserMessage(), (LockFileError) e.getErrorValue());
        }
    }

    /* renamed from: w */
    public Metadata m10681w(GetMetadataArg getMetadataArg) throws GetMetadataErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (Metadata) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/get_metadata", getMetadataArg, false, GetMetadataArg.C2553a.f17170b, Metadata.C2596a.f17264b, GetMetadataError.C2555b.f17176b);
        } catch (DbxWrappedException e) {
            throw new GetMetadataErrorException("2/files/get_metadata", e.getRequestId(), e.getUserMessage(), (GetMetadataError) e.getErrorValue());
        }
    }

    /* renamed from: x */
    public DbxDownloader<FileMetadata> m10682x(C2716l c2716l, List<HttpRequestor.Header> list) throws PreviewErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return dbxRawClientV2.downloadStyle(dbxRawClientV2.getHost().getContent(), "2/files/get_preview", c2716l, false, list, C2716l.a.f17518b, FileMetadata.C2543a.f17151b, PreviewError.C2607b.f17293b);
        } catch (DbxWrappedException e) {
            throw new PreviewErrorException("2/files/get_preview", e.getRequestId(), e.getUserMessage(), (PreviewError) e.getErrorValue());
        }
    }

    /* renamed from: y */
    public GetTemporaryLinkResult m10683y(C2710f c2710f) throws GetTemporaryLinkErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (GetTemporaryLinkResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/get_temporary_link", c2710f, false, C2710f.a.f17503b, GetTemporaryLinkResult.C2558a.f17184b, GetTemporaryLinkError.C2557b.f17183b);
        } catch (DbxWrappedException e) {
            throw new GetTemporaryLinkErrorException("2/files/get_temporary_link", e.getRequestId(), e.getUserMessage(), (GetTemporaryLinkError) e.getErrorValue());
        }
    }

    /* renamed from: z */
    public GetTemporaryUploadLinkResult m10684z(C2711g c2711g) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17089a;
            return (GetTemporaryUploadLinkResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/files/get_temporary_upload_link", c2711g, false, C2711g.a.f17506b, GetTemporaryUploadLinkResult.C2559a.f17185b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"get_temporary_upload_link\":" + e.getErrorValue());
        }
    }

    public RelocationBatchV2Launch copyBatchV2(List<RelocationPath> list, boolean z) throws DbxApiException, DbxException {
        return m10662g(new C2717m(list, z));
    }

    @Deprecated
    public FolderMetadata createFolder(String str, boolean z) throws CreateFolderErrorException, DbxException {
        return m10669k(new C2705a(str, z));
    }

    public CreateFolderResult createFolderV2(String str, boolean z) throws CreateFolderErrorException, DbxException {
        return m10672n(new C2705a(str, z));
    }

    @Deprecated
    public Metadata delete(String str, String str2) throws DeleteErrorException, DbxException {
        if (str2 != null) {
            if (str2.length() >= 9) {
                if (!Pattern.matches("[0-9a-f]+", str2)) {
                    throw new IllegalArgumentException("String 'parentRev' does not match pattern");
                }
            } else {
                throw new IllegalArgumentException("String 'parentRev' is shorter than 9");
            }
        }
        return m10673o(new DeleteArg(str, str2));
    }

    public DeleteResult deleteV2(String str, String str2) throws DeleteErrorException, DbxException {
        if (str2 != null) {
            if (str2.length() >= 9) {
                if (!Pattern.matches("[0-9a-f]+", str2)) {
                    throw new IllegalArgumentException("String 'parentRev' does not match pattern");
                }
            } else {
                throw new IllegalArgumentException("String 'parentRev' is shorter than 9");
            }
        }
        return m10676r(new DeleteArg(str, str2));
    }

    public DbxDownloader<FileMetadata> download(String str, String str2) throws DownloadErrorException, DbxException {
        if (str2 != null) {
            if (str2.length() >= 9) {
                if (!Pattern.matches("[0-9a-f]+", str2)) {
                    throw new IllegalArgumentException("String 'rev' does not match pattern");
                }
            } else {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
        }
        return m10677s(new C2707c(str, str2), Collections.emptyList());
    }

    public DbxDownloader<FileMetadata> getPreview(String str, String str2) throws PreviewErrorException, DbxException {
        if (str2 != null) {
            if (str2.length() >= 9) {
                if (!Pattern.matches("[0-9a-f]+", str2)) {
                    throw new IllegalArgumentException("String 'rev' does not match pattern");
                }
            } else {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
        }
        return m10682x(new C2716l(str, str2), Collections.emptyList());
    }

    public GetTemporaryUploadLinkResult getTemporaryUploadLink(CommitInfo commitInfo, double d) throws DbxApiException, DbxException {
        if (d < 60.0d) {
            throw new IllegalArgumentException("Number 'duration' is smaller than 60.0");
        }
        if (d <= 14400.0d) {
            return m10684z(new C2711g(commitInfo, d));
        }
        throw new IllegalArgumentException("Number 'duration' is larger than 14400.0");
    }

    public ListFolderLongpollResult listFolderLongpoll(String str, long j) throws ListFolderLongpollErrorException, DbxException {
        if (j < 30) {
            throw new IllegalArgumentException("Number 'timeout' is smaller than 30L");
        }
        if (j <= 480) {
            return m10630G(new C2714j(str, j));
        }
        throw new IllegalArgumentException("Number 'timeout' is larger than 480L");
    }

    public void permanentlyDelete(String str, String str2) throws DeleteErrorException, DbxException {
        if (str2 != null) {
            if (str2.length() >= 9) {
                if (!Pattern.matches("[0-9a-f]+", str2)) {
                    throw new IllegalArgumentException("String 'parentRev' does not match pattern");
                }
            } else {
                throw new IllegalArgumentException("String 'parentRev' is shorter than 9");
            }
        }
        m10639P(new DeleteArg(str, str2));
    }

    public UploadSessionAppendV2Uploader uploadSessionAppendV2(UploadSessionCursor uploadSessionCursor, boolean z) throws DbxException {
        return m10659e0(new C2723s(uploadSessionCursor, z));
    }

    public UploadSessionStartUploader uploadSessionStart(boolean z) throws DbxException {
        return m10667i0(new C2725u(z));
    }
}
