package com.dropbox.core.p006v2.async;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class PollErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final PollError errorValue;

    public PollErrorException(String str, String str2, LocalizedText localizedText, PollError pollError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, pollError));
        if (pollError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = pollError;
    }
}
