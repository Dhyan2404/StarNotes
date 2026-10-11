package com.dropbox.core.p006v2.paper;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.paper.PaperDocCreateUpdateResult;
import com.dropbox.core.p006v2.paper.PaperDocUpdateError;

/* loaded from: classes4.dex */
public class DocsUpdateUploader extends DbxUploader<PaperDocCreateUpdateResult, PaperDocUpdateError, PaperDocUpdateErrorException> {
    public DocsUpdateUploader(HttpRequestor.Uploader uploader, String str) {
        super(uploader, PaperDocCreateUpdateResult.C2762a.f17604b, PaperDocUpdateError.C2767b.f17609b, str);
    }

    @Override // com.dropbox.core.DbxUploader
    public PaperDocUpdateErrorException newException(DbxWrappedException dbxWrappedException) {
        return new PaperDocUpdateErrorException("2/paper/docs/update", dbxWrappedException.getRequestId(), dbxWrappedException.getUserMessage(), (PaperDocUpdateError) dbxWrappedException.getErrorValue());
    }
}
