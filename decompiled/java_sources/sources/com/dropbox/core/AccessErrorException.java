package com.dropbox.core;

import com.dropbox.core.p006v2.auth.AccessError;

/* loaded from: classes4.dex */
public class AccessErrorException extends DbxException {
    private static final long serialVersionUID = 0;
    private final AccessError accessError;

    public AccessErrorException(String str, String str2, AccessError accessError) {
        super(str, str2);
        this.accessError = accessError;
    }

    public AccessError getAccessError() {
        return this.accessError;
    }
}
