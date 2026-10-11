package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class UpdateContentErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final UpdateContentError errorValue;

    public UpdateContentErrorException(String str, String str2, LocalizedText localizedText, UpdateContentError updateContentError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, updateContentError));
        if (updateContentError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = updateContentError;
    }
}
