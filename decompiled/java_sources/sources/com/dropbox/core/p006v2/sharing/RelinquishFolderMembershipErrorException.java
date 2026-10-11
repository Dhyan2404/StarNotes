package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class RelinquishFolderMembershipErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final RelinquishFolderMembershipError errorValue;

    public RelinquishFolderMembershipErrorException(String str, String str2, LocalizedText localizedText, RelinquishFolderMembershipError relinquishFolderMembershipError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, relinquishFolderMembershipError));
        if (relinquishFolderMembershipError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = relinquishFolderMembershipError;
    }
}
