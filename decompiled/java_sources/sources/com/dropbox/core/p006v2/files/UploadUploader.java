package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.p006v2.files.UploadError;

/* loaded from: classes4.dex */
public class UploadUploader extends DbxUploader<FileMetadata, UploadError, UploadErrorException> {
    public UploadUploader(HttpRequestor.Uploader uploader, String str) {
        super(uploader, FileMetadata.C2543a.f17151b, UploadError.C2679b.f17442b, str);
    }

    @Override // com.dropbox.core.DbxUploader
    public UploadErrorException newException(DbxWrappedException dbxWrappedException) {
        return new UploadErrorException("2/files/upload", dbxWrappedException.getRequestId(), dbxWrappedException.getUserMessage(), (UploadError) dbxWrappedException.getErrorValue());
    }
}
