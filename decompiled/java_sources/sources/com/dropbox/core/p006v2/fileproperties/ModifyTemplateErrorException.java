package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

/* loaded from: classes4.dex */
public class ModifyTemplateErrorException extends DbxApiException {
    private static final long serialVersionUID = 0;
    public final ModifyTemplateError errorValue;

    public ModifyTemplateErrorException(String str, String str2, LocalizedText localizedText, ModifyTemplateError modifyTemplateError) {
        super(str2, localizedText, DbxApiException.buildMessage(str, localizedText, modifyTemplateError));
        if (modifyTemplateError == null) {
            throw new NullPointerException("errorValue");
        }
        this.errorValue = modifyTemplateError;
    }
}
