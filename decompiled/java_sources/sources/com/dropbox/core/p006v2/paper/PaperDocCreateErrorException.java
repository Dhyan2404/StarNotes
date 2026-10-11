package com.dropbox.core.p006v2.paper;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class PaperDocCreateErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final PaperDocCreateError errorValue;

    public PaperDocCreateErrorException(String str, String str2, LocalizedText localizedText, PaperDocCreateError paperDocCreateError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, paperDocCreateError));
        if (paperDocCreateError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = paperDocCreateError;
    }
}
