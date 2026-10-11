package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class GetTeamEventsErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final GetTeamEventsError errorValue;

    public GetTeamEventsErrorException(String str, String str2, LocalizedText localizedText, GetTeamEventsError getTeamEventsError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, getTeamEventsError));
        if (getTeamEventsError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = getTeamEventsError;
    }
}
