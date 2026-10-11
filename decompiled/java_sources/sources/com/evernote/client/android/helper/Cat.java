package com.evernote.client.android.helper;

import android.util.Log;
import java.util.Locale;

/* loaded from: classes4.dex */
public class Cat {

    /* renamed from: a */
    public final String f21130a;

    public Cat(String str) {
        this.f21130a = str == null ? "" : str;
    }

    /* renamed from: a */
    public static String m17068a(String str, Object[] objArr) {
        return str == null ? "null" : String.format(Locale.US, str, objArr);
    }

    /* renamed from: b */
    public final void m17069b(int i, String str, Throwable th) {
        if (str == null) {
            str = "";
        }
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        Log.println(i, this.f21130a, str);
    }

    /* renamed from: d */
    public void m17070d(String str) {
        m17069b(3, str, null);
    }

    /* renamed from: e */
    public void m17075e(Throwable th) {
        if (th == null) {
            th = new Exception("null exception logged");
        }
        m17069b(6, th.getMessage(), th);
    }

    /* renamed from: i */
    public void m17077i(String str) {
        m17069b(4, str, null);
    }

    /* renamed from: v */
    public void m17080v(String str) {
        m17069b(2, str, null);
    }

    /* renamed from: w */
    public void m17083w(String str) {
        m17069b(5, str, null);
    }

    /* renamed from: d */
    public void m17071d(String str, Object... objArr) {
        m17069b(3, m17068a(str, objArr), null);
    }

    /* renamed from: i */
    public void m17078i(String str, Object... objArr) {
        m17069b(4, m17068a(str, objArr), null);
    }

    /* renamed from: v */
    public void m17081v(String str, Object... objArr) {
        m17069b(2, m17068a(str, objArr), null);
    }

    /* renamed from: w */
    public void m17084w(String str, Object... objArr) {
        m17069b(5, m17068a(str, objArr), null);
    }

    /* renamed from: d */
    public void m17072d(Throwable th, String str, Object... objArr) {
        m17069b(3, m17068a(str, objArr), th);
    }

    /* renamed from: e */
    public void m17073e(String str) {
        m17069b(6, str, null);
    }

    /* renamed from: i */
    public void m17079i(Throwable th, String str, Object... objArr) {
        m17069b(4, m17068a(str, objArr), th);
    }

    /* renamed from: v */
    public void m17082v(Throwable th, String str, Object... objArr) {
        m17069b(2, m17068a(str, objArr), th);
    }

    /* renamed from: w */
    public void m17086w(Throwable th, String str, Object... objArr) {
        m17069b(5, m17068a(str, objArr), th);
    }

    /* renamed from: e */
    public void m17074e(String str, Object... objArr) {
        m17069b(6, m17068a(str, objArr), null);
    }

    /* renamed from: w */
    public void m17085w(Throwable th) {
        if (th == null) {
            th = new Exception("null exception logged");
        }
        m17069b(5, th.getMessage(), th);
    }

    /* renamed from: e */
    public void m17076e(Throwable th, String str, Object... objArr) {
        m17069b(6, m17068a(str, objArr), th);
    }
}
