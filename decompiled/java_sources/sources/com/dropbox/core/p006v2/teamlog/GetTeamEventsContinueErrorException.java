package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class GetTeamEventsContinueErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final GetTeamEventsContinueError errorValue;

    public GetTeamEventsContinueErrorException(String str, String str2, LocalizedText localizedText, GetTeamEventsContinueError getTeamEventsContinueError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, getTeamEventsContinueError));
        if (getTeamEventsContinueError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = getTeamEventsContinueError;
    }
}
