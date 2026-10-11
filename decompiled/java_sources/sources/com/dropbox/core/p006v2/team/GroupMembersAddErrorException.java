package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class GroupMembersAddErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final GroupMembersAddError errorValue;

    public GroupMembersAddErrorException(String str, String str2, LocalizedText localizedText, GroupMembersAddError groupMembersAddError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, groupMembersAddError));
        if (groupMembersAddError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = groupMembersAddError;
    }
}
