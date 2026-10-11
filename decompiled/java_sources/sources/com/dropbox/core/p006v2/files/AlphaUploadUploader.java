package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.p006v2.files.UploadErrorWithProperties;

/* loaded from: classes4.dex */
public class AlphaUploadUploader extends DbxUploader<FileMetadata, UploadErrorWithProperties, UploadErrorWithPropertiesException> {
    public AlphaUploadUploader(HttpRequestor.Uploader uploader, String str) {
        super(uploader, FileMetadata.C2543a.f17151b, UploadErrorWithProperties.C2681b.f17447b, str);
    }

    @Override // com.dropbox.core.DbxUploader
    public UploadErrorWithPropertiesException newException(DbxWrappedException dbxWrappedException) {
        return new UploadErrorWithPropertiesException("2/files/alpha/upload", dbxWrappedException.getRequestId(), dbxWrappedException.getUserMessage(), (UploadErrorWithProperties) dbxWrappedException.getErrorValue());
    }
}
