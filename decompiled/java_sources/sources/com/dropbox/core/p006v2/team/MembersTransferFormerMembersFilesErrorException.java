package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class MembersTransferFormerMembersFilesErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final MembersTransferFormerMembersFilesError errorValue;

    public MembersTransferFormerMembersFilesErrorException(String str, String str2, LocalizedText localizedText, MembersTransferFormerMembersFilesError membersTransferFormerMembersFilesError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, membersTransferFormerMembersFilesError));
        if (membersTransferFormerMembersFilesError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = membersTransferFormerMembersFilesError;
    }
}
