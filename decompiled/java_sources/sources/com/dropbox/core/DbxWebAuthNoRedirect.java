package com.dropbox.core;

@Deprecated
/* loaded from: classes4.dex */
public class DbxWebAuthNoRedirect {

    /* renamed from: a */
    public final DbxWebAuth f16469a;

    public DbxWebAuthNoRedirect(DbxRequestConfig dbxRequestConfig, DbxAppInfo dbxAppInfo) {
        this.f16469a = new DbxWebAuth(dbxRequestConfig, dbxAppInfo);
    }

    public DbxAuthFinish finish(String str) throws DbxException {
        return this.f16469a.finishFromCode(str);
    }

    public String start() {
        return this.f16469a.authorize(DbxWebAuth.newRequestBuilder().withNoRedirect().build());
    }
}
