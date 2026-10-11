package com.sunia.HTREnginev2;

import okhttp3.Authenticator;
import okhttp3.Credentials;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* renamed from: com.sunia.HTREnginev2.mo */
/* loaded from: classes10.dex */
public class C14106mo implements Authenticator {

    /* renamed from: a */
    public String f77817a;

    /* renamed from: b */
    public String f77818b;

    public C14106mo(String str, String str2) {
        this.f77817a = str;
        this.f77818b = str2;
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) {
        if (response.request().header("Authorization") != null) {
            return null;
        }
        System.out.println("Authenticating for response: " + response);
        System.out.println("Challenges: " + response.challenges());
        return response.request().newBuilder().header("Authorization", Credentials.basic(this.f77817a, this.f77818b)).build();
    }
}
