package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class TeamFolderUpdateSyncSettingsErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final TeamFolderUpdateSyncSettingsError errorValue;

    public TeamFolderUpdateSyncSettingsErrorException(String str, String str2, LocalizedText localizedText, TeamFolderUpdateSyncSettingsError teamFolderUpdateSyncSettingsError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, teamFolderUpdateSyncSettingsError));
        if (teamFolderUpdateSyncSettingsError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = teamFolderUpdateSyncSettingsError;
    }
}
