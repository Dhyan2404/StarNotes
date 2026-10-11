package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class TeamFolderListContinueErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final TeamFolderListContinueError errorValue;

    public TeamFolderListContinueErrorException(String str, String str2, LocalizedText localizedText, TeamFolderListContinueError teamFolderListContinueError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, teamFolderListContinueError));
        if (teamFolderListContinueError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = teamFolderListContinueError;
    }
}
