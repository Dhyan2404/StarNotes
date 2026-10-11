package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class ListMembersDevicesErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final ListMembersDevicesError errorValue;

    public ListMembersDevicesErrorException(String str, String str2, LocalizedText localizedText, ListMembersDevicesError listMembersDevicesError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, listMembersDevicesError));
        if (listMembersDevicesError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = listMembersDevicesError;
    }
}
