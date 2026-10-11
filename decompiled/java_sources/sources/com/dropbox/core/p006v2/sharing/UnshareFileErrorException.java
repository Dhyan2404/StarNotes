package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class UnshareFileErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final UnshareFileError errorValue;

    public UnshareFileErrorException(String str, String str2, LocalizedText localizedText, UnshareFileError unshareFileError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, unshareFileError));
        if (unshareFileError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = unshareFileError;
    }
}
