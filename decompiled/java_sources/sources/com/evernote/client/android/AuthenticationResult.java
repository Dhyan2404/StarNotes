package com.evernote.client.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;

/* loaded from: classes4.dex */
public class AuthenticationResult {

    /* renamed from: g */
    public static final String f20777g = "evernote.mAuthToken";

    /* renamed from: h */
    public static final String f20778h = "evernote.notestoreUrl";

    /* renamed from: i */
    public static final String f20779i = "evernote.webApiUrlPrefix";

    /* renamed from: j */
    public static final String f20780j = "evernote.userId";

    /* renamed from: k */
    public static final String f20781k = "evernote.mEvernoteHost";

    /* renamed from: l */
    public static final String f20782l = "evernote.isAppLinkedNotebook";

    /* renamed from: m */
    public static final String f20783m = "evernote.preferences";

    /* renamed from: a */
    public String f20784a;

    /* renamed from: b */
    public String f20785b;

    /* renamed from: c */
    public String f20786c;

    /* renamed from: d */
    public String f20787d;

    /* renamed from: e */
    public int f20788e;

    /* renamed from: f */
    public boolean f20789f;

    public AuthenticationResult(String str, String str2, boolean z) {
        this(str, str2, m16909d(str2), m16908c(str2), -1, z);
    }

    /* renamed from: b */
    public static AuthenticationResult m16907b(Context context) {
        SharedPreferences preferences = getPreferences(context);
        String string = preferences.getString(f20777g, null);
        String string2 = preferences.getString(f20778h, null);
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
            return null;
        }
        return new AuthenticationResult(string, string2, preferences.getString(f20779i, null), preferences.getString(f20781k, null), preferences.getInt(f20780j, -1), preferences.getBoolean(f20782l, false));
    }

    /* renamed from: c */
    public static String m16908c(String str) {
        return Uri.parse(str).getHost();
    }

    /* renamed from: d */
    public static String m16909d(String str) {
        int indexOf = str.indexOf("notestore");
        return indexOf > 0 ? str.substring(0, indexOf) : str;
    }

    public static SharedPreferences getPreferences(Context context) {
        return context.getSharedPreferences(f20783m, 0);
    }

    /* renamed from: a */
    public void m16910a() {
        getPreferences(EvernoteSession.getInstance().getApplicationContext()).edit().remove(f20777g).remove(f20778h).remove(f20779i).remove(f20781k).remove(f20780j).remove(f20782l).apply();
    }

    /* renamed from: e */
    public void m16911e() {
        getPreferences(EvernoteSession.getInstance().getApplicationContext()).edit().putString(f20777g, this.f20784a).putString(f20778h, this.f20785b).putString(f20779i, this.f20786c).putString(f20781k, this.f20787d).putInt(f20780j, this.f20788e).putBoolean(f20782l, this.f20789f).apply();
    }

    public String getAuthToken() {
        return this.f20784a;
    }

    public String getEvernoteHost() {
        return this.f20787d;
    }

    public String getNoteStoreUrl() {
        return this.f20785b;
    }

    public int getUserId() {
        return this.f20788e;
    }

    public String getWebApiUrlPrefix() {
        return this.f20786c;
    }

    public boolean isAppLinkedNotebook() {
        return this.f20789f;
    }

    public AuthenticationResult(String str, String str2, String str3, String str4, int i, boolean z) {
        this.f20784a = str;
        this.f20785b = str2;
        this.f20786c = str3;
        this.f20787d = str4;
        this.f20788e = i;
        this.f20789f = z;
    }
}
