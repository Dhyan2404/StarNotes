package com.sunia.authlib.nativelibs;

import com.sunia.authlib.bean.VerifyData;
import com.sunia.authlib.interfaces.IAuthenticateCallback;

/* loaded from: classes10.dex */
public class AuthenticateLib {
    public static native int Authenticate(VerifyData verifyData, String str, boolean z, IAuthenticateCallback iAuthenticateCallback);
}
