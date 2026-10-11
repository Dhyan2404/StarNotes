package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.clouddocs.UpdateContentError;
import com.dropbox.core.p006v2.clouddocs.UpdateContentResult;

/* loaded from: classes4.dex */
public class UpdateContentUploader extends DbxUploader<UpdateContentResult, UpdateContentError, UpdateContentErrorException> {
    public UpdateContentUploader(HttpRequestor.Uploader uploader, String str) {
        super(uploader, UpdateContentResult.C2412a.f16871b, UpdateContentError.C2411b.f16870b, str);
    }

    @Override // com.dropbox.core.DbxUploader
    public UpdateContentErrorException newException(DbxWrappedException dbxWrappedException) {
        return new UpdateContentErrorException("2/cloud_docs/update_content", dbxWrappedException.getRequestId(), dbxWrappedException.getUserMessage(), (UpdateContentError) dbxWrappedException.getErrorValue());
    }
}
