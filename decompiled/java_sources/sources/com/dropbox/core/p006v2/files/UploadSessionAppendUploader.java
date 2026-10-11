package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.files.UploadSessionLookupError;
import com.dropbox.core.stone.StoneSerializers;

/* loaded from: classes4.dex */
public class UploadSessionAppendUploader extends DbxUploader<Void, UploadSessionLookupError, UploadSessionLookupErrorException> {
    public UploadSessionAppendUploader(HttpRequestor.Uploader uploader, String str) {
        super(uploader, StoneSerializers.void_(), UploadSessionLookupError.C2694b.f17474b, str);
    }

    @Override // com.dropbox.core.DbxUploader
    public UploadSessionLookupErrorException newException(DbxWrappedException dbxWrappedException) {
        return new UploadSessionLookupErrorException("2/files/upload_session/append", dbxWrappedException.getRequestId(), dbxWrappedException.getUserMessage(), (UploadSessionLookupError) dbxWrappedException.getErrorValue());
    }
}
