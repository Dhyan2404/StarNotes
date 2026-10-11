package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class GroupsMembersListContinueErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final GroupsMembersListContinueError errorValue;

    public GroupsMembersListContinueErrorException(String str, String str2, LocalizedText localizedText, GroupsMembersListContinueError groupsMembersListContinueError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, groupsMembersListContinueError));
        if (groupsMembersListContinueError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = groupsMembersListContinueError;
    }
}
