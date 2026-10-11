package com.dropbox.core.p006v2.filerequests;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class DeleteFileRequestErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final DeleteFileRequestError errorValue;

    public DeleteFileRequestErrorException(String str, String str2, LocalizedText localizedText, DeleteFileRequestError deleteFileRequestError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, deleteFileRequestError));
        if (deleteFileRequestError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = deleteFileRequestError;
    }
}
