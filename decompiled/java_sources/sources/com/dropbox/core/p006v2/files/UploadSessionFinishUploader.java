package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.p006v2.files.UploadSessionFinishError;

/* loaded from: classes4.dex */
public class UploadSessionFinishUploader extends DbxUploader<FileMetadata, UploadSessionFinishError, UploadSessionFinishErrorException> {
    public UploadSessionFinishUploader(HttpRequestor.Uploader uploader, String str) {
        super(uploader, FileMetadata.C2543a.f17151b, UploadSessionFinishError.C2692b.f17470b, str);
    }

    @Override // com.dropbox.core.DbxUploader
    public UploadSessionFinishErrorException newException(DbxWrappedException dbxWrappedException) {
        return new UploadSessionFinishErrorException("2/files/upload_session/finish", dbxWrappedException.getRequestId(), dbxWrappedException.getUserMessage(), (UploadSessionFinishError) dbxWrappedException.getErrorValue());
    }
}
