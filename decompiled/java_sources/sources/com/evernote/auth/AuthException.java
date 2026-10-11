package com.evernote.auth;

/* loaded from: classes4.dex */
public class AuthException extends RuntimeException {
    private static final long serialVersionUID = 1;

    public AuthException(String str, Exception exc) {
        super(str, exc);
    }

    public AuthException(String str) {
        super(str, null);
    }
}
