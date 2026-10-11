package com.google.android.gms.signin;

import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.sunia.HTREnginev2.u9p;
import com.sunia.HTREnginev2.z8p;

/* loaded from: classes5.dex */
public final class zad {

    /* renamed from: a */
    public static final Api.AbstractClientBuilder f30064a;
    public static final Api.ClientKey zaa;

    @ShowFirstParty
    public static final Api.ClientKey zab;
    public static final Api.AbstractClientBuilder zac;
    public static final Scope zae;
    public static final Scope zaf;
    public static final Api zag;
    public static final Api zah;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zaa = clientKey;
        Api.ClientKey clientKey2 = new Api.ClientKey();
        zab = clientKey2;
        z8p z8pVar = new z8p();
        zac = z8pVar;
        u9p u9pVar = new u9p();
        f30064a = u9pVar;
        zae = new Scope(Scopes.PROFILE);
        zaf = new Scope("email");
        zag = new Api("SignIn.API", z8pVar, clientKey);
        zah = new Api("SignIn.INTERNAL_API", u9pVar, clientKey2);
    }
}
