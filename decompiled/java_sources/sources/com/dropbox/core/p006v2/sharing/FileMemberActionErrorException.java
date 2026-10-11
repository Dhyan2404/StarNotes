package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class FileMemberActionErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final FileMemberActionError errorValue;

    public FileMemberActionErrorException(String str, String str2, LocalizedText localizedText, FileMemberActionError fileMemberActionError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, fileMemberActionError));
        if (fileMemberActionError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = fileMemberActionError;
    }
}
