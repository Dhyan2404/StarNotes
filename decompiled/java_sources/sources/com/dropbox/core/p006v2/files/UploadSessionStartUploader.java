package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.files.UploadSessionStartResult;
import com.dropbox.core.stone.StoneSerializers;

/* loaded from: classes4.dex */
public class UploadSessionStartUploader extends DbxUploader<UploadSessionStartResult, Void, DbxApiException> {
    public UploadSessionStartUploader(HttpRequestor.Uploader uploader, String str) {
        super(uploader, UploadSessionStartResult.C2696a.f17476b, StoneSerializers.void_(), str);
    }

    @Override // com.dropbox.core.DbxUploader
    public DbxApiException newException(DbxWrappedException dbxWrappedException) {
        return new DbxApiException(dbxWrappedException.getRequestId(), dbxWrappedException.getUserMessage(), "Unexpected error response for \"upload_session/start\":" + dbxWrappedException.getErrorValue());
    }
}
