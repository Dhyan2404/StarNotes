package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class CloudDocsAccessErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final CloudDocsAccessError errorValue;

    public CloudDocsAccessErrorException(String str, String str2, LocalizedText localizedText, CloudDocsAccessError cloudDocsAccessError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, cloudDocsAccessError));
        if (cloudDocsAccessError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = cloudDocsAccessError;
    }
}
