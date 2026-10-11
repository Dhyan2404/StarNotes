package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class RenameErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final RenameError errorValue;

    public RenameErrorException(String str, String str2, LocalizedText localizedText, RenameError renameError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, renameError));
        if (renameError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = renameError;
    }
}
