package com.dropbox.core.android;

import android.content.Context;
import android.content.Intent;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.IncludeGrantedScopes;
import com.dropbox.core.TokenAccessType;
import com.dropbox.core.oauth.DbxCredential;
import java.util.Collection;

/* loaded from: classes4.dex */
public class Auth {
    /* renamed from: a */
    public static void m10001a(Context context, String str, String str2, String[] strArr, String str3, String str4, TokenAccessType tokenAccessType, DbxRequestConfig dbxRequestConfig, DbxHost dbxHost) {
        m10002b(context, str, str2, strArr, str3, str4, tokenAccessType, dbxRequestConfig, dbxHost, null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
    
        r0 = com.dropbox.core.util.StringUtil.join(r22, " ");
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m10002b(android.content.Context r13, java.lang.String r14, java.lang.String r15, java.lang.String[] r16, java.lang.String r17, java.lang.String r18, com.dropbox.core.TokenAccessType r19, com.dropbox.core.DbxRequestConfig r20, com.dropbox.core.DbxHost r21, java.util.Collection<java.lang.String> r22, com.dropbox.core.IncludeGrantedScopes r23) {
        /*
            r12 = r13
            r0 = r22
            r1 = 1
            r2 = r14
            boolean r1 = com.dropbox.core.android.AuthActivity.checkAppBeforeAuth(r13, r14, r1)
            if (r1 != 0) goto Lc
            return
        Lc:
            if (r16 == 0) goto L22
            java.util.List r1 = java.util.Arrays.asList(r16)
            r3 = r15
            boolean r1 = r1.contains(r15)
            if (r1 != 0) goto L1a
            goto L23
        L1a:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "desiredUid cannot be present in alreadyAuthedUids"
            r0.<init>(r1)
            throw r0
        L22:
            r3 = r15
        L23:
            if (r0 == 0) goto L2c
            java.lang.String r1 = " "
            java.lang.String r0 = com.dropbox.core.util.StringUtil.join(r0, r1)
            goto L2d
        L2c:
            r0 = 0
        L2d:
            r10 = r0
            java.lang.String r6 = "1"
            r0 = r13
            r1 = r14
            r2 = r15
            r3 = r16
            r4 = r17
            r5 = r18
            r7 = r19
            r8 = r20
            r9 = r21
            r11 = r23
            android.content.Intent r0 = com.dropbox.core.android.AuthActivity.m10013o(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            boolean r1 = r12 instanceof android.app.Activity
            if (r1 != 0) goto L4e
            r1 = 268435456(0x10000000, float:2.5243549E-29)
            r0.addFlags(r1)
        L4e:
            r13.startActivity(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.android.Auth.m10002b(android.content.Context, java.lang.String, java.lang.String, java.lang.String[], java.lang.String, java.lang.String, com.dropbox.core.TokenAccessType, com.dropbox.core.DbxRequestConfig, com.dropbox.core.DbxHost, java.util.Collection, com.dropbox.core.IncludeGrantedScopes):void");
    }

    public static DbxCredential getDbxCredential() {
        Intent intent = AuthActivity.result;
        if (intent == null) {
            return null;
        }
        String stringExtra = intent.getStringExtra(AuthActivity.EXTRA_ACCESS_TOKEN);
        String stringExtra2 = intent.getStringExtra(AuthActivity.EXTRA_ACCESS_SECRET);
        String stringExtra3 = intent.getStringExtra(AuthActivity.EXTRA_UID);
        if (stringExtra == null || "".equals(stringExtra) || stringExtra2 == null || "".equals(stringExtra2) || stringExtra3 == null || "".equals(stringExtra3)) {
            return null;
        }
        String stringExtra4 = intent.getStringExtra(AuthActivity.EXTRA_CONSUMER_KEY);
        String stringExtra5 = intent.getStringExtra(AuthActivity.EXTRA_REFRESH_TOKEN);
        long longExtra = intent.getLongExtra(AuthActivity.EXTRA_EXPIRES_AT, -1L);
        return new DbxCredential(stringExtra2, longExtra >= 0 ? Long.valueOf(longExtra) : null, stringExtra5, stringExtra4);
    }

    public static String getOAuth2Token() {
        DbxCredential dbxCredential = getDbxCredential();
        if (dbxCredential == null) {
            return null;
        }
        return dbxCredential.getAccessToken();
    }

    public static String getScope() {
        Intent intent = AuthActivity.result;
        if (intent == null) {
            return null;
        }
        return intent.getStringExtra(AuthActivity.EXTRA_SCOPE);
    }

    public static String getUid() {
        if (getDbxCredential() == null) {
            return null;
        }
        return AuthActivity.result.getStringExtra(AuthActivity.EXTRA_UID);
    }

    public static void startOAuth2Authentication(Context context, String str) {
        startOAuth2Authentication(context, str, null, null, null);
    }

    public static void startOAuth2PKCE(Context context, String str, DbxRequestConfig dbxRequestConfig) {
        startOAuth2PKCE(context, str, dbxRequestConfig, null, null);
    }

    public static void startOAuth2Authentication(Context context, String str, String str2, String[] strArr, String str3) {
        startOAuth2Authentication(context, str, str2, strArr, str3, AuthActivity.f16487s);
    }

    public static void startOAuth2PKCE(Context context, String str, DbxRequestConfig dbxRequestConfig, Collection<String> collection) {
        startOAuth2PKCE(context, str, dbxRequestConfig, null, collection);
    }

    public static void startOAuth2Authentication(Context context, String str, String str2, String[] strArr, String str3, String str4) {
        m10001a(context, str, str2, strArr, str3, str4, null, null, null);
    }

    public static void startOAuth2PKCE(Context context, String str, DbxRequestConfig dbxRequestConfig, DbxHost dbxHost) {
        if (dbxRequestConfig != null) {
            m10001a(context, str, null, null, null, null, TokenAccessType.OFFLINE, dbxRequestConfig, dbxHost);
            return;
        }
        throw new IllegalArgumentException("Invalid Dbx requestConfig for PKCE flow.");
    }

    public static void startOAuth2PKCE(Context context, String str, DbxRequestConfig dbxRequestConfig, DbxHost dbxHost, Collection<String> collection) {
        if (dbxRequestConfig != null) {
            m10002b(context, str, null, null, null, null, TokenAccessType.OFFLINE, dbxRequestConfig, dbxHost, collection, null);
            return;
        }
        throw new IllegalArgumentException("Invalid Dbx requestConfig for PKCE flow.");
    }

    public static void startOAuth2PKCE(Context context, String str, DbxRequestConfig dbxRequestConfig, DbxHost dbxHost, Collection<String> collection, IncludeGrantedScopes includeGrantedScopes) {
        if (dbxRequestConfig == null) {
            throw new IllegalArgumentException("Invalid Dbx requestConfig for PKCE flow.");
        }
        if (includeGrantedScopes != null && collection == null) {
            throw new IllegalArgumentException("If you are using includeGrantedScope, you must ask for specific new scopes");
        }
        m10002b(context, str, null, null, null, null, TokenAccessType.OFFLINE, dbxRequestConfig, dbxHost, collection, includeGrantedScopes);
    }
}
