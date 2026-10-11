package com.dropbox.core;

import com.dropbox.core.DbxWebAuth;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class DbxPKCEWebAuth {

    /* renamed from: a */
    public final DbxRequestConfig f16395a;

    /* renamed from: b */
    public final DbxAppInfo f16396b;

    /* renamed from: c */
    public final DbxWebAuth f16397c;

    /* renamed from: d */
    public final DbxPKCEManager f16398d;

    /* renamed from: e */
    public boolean f16399e;

    /* renamed from: f */
    public boolean f16400f;

    public DbxPKCEWebAuth(DbxRequestConfig dbxRequestConfig, DbxAppInfo dbxAppInfo) {
        if (dbxAppInfo.hasSecret()) {
            throw new IllegalStateException("PKCE cdoe flow doesn't require app secret, if you decide to embed it in your app, please use regular DbxWebAuth instead.");
        }
        this.f16395a = dbxRequestConfig;
        this.f16396b = dbxAppInfo;
        this.f16397c = new DbxWebAuth(dbxRequestConfig, dbxAppInfo);
        this.f16398d = new DbxPKCEManager();
        this.f16399e = false;
        this.f16400f = false;
    }

    /* renamed from: a */
    public DbxAuthFinish m9966a(String str, String str2, String str3) throws DbxException {
        if (str == null) {
            throw new NullPointerException("code");
        }
        if (!this.f16399e) {
            throw new IllegalStateException("Must initialize the PKCE flow by calling authorize first.");
        }
        if (this.f16400f) {
            throw new IllegalStateException("This DbxPKCEWebAuth instance has been consumed already. To start a new PKCE OAuth flow, please create a new instance.");
        }
        DbxAuthFinish makeTokenRequest = this.f16398d.makeTokenRequest(this.f16395a, str, this.f16396b.getKey(), str2, this.f16396b.getHost());
        this.f16400f = true;
        return makeTokenRequest.m9936b(str3);
    }

    public String authorize(DbxWebAuth.Request request) {
        if (this.f16400f) {
            throw new IllegalStateException("This DbxPKCEWebAuth instance has been consumed already. To start a new PKCE OAuth flow, please create a new instance.");
        }
        this.f16399e = true;
        HashMap hashMap = new HashMap();
        hashMap.put("code_challenge", this.f16398d.getCodeChallenge());
        hashMap.put("code_challenge_method", DbxPKCEManager.CODE_CHALLENGE_METHODS);
        return this.f16397c.m9981d(request, hashMap);
    }

    public DbxAuthFinish finishFromCode(String str) throws DbxException {
        return m9966a(str, null, null);
    }

    public DbxAuthFinish finishFromRedirect(String str, DbxSessionStore dbxSessionStore, Map<String, String[]> map) throws DbxException, DbxWebAuth.BadRequestException, DbxWebAuth.BadStateException, DbxWebAuth.CsrfException, DbxWebAuth.NotApprovedException, DbxWebAuth.ProviderException {
        return m9966a(DbxWebAuth.m9977g(map, "code"), str, DbxWebAuth.m9978h(str, dbxSessionStore, map));
    }
}
