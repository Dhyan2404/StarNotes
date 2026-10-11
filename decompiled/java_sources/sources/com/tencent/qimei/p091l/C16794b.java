package com.tencent.qimei.p091l;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import com.alibaba.fastjson2.JSONB;
import com.tencent.qimei.p105y.C16858d;
import java.nio.charset.Charset;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

@Deprecated
/* renamed from: com.tencent.qimei.l.b */
/* loaded from: classes10.dex */
public class C16794b {

    /* renamed from: a */
    public static C16794b f93515a;

    /* renamed from: b */
    public static byte[] f93516b = {33, 94, 120, JSONB.Constants.BC_STR_ASCII_FIX_1, 111, 43, 35};

    /* renamed from: c */
    public SharedPreferences f93517c;

    /* renamed from: d */
    public SharedPreferences.Editor f93518d;

    /* renamed from: e */
    public Lock f93519e = new ReentrantLock();

    public C16794b() {
        new RunnableC16793a(this);
        Context mo60059c = C16858d.m60143b().mo60059c();
        if (mo60059c != null) {
            this.f93517c = mo60059c.getSharedPreferences("DENGTA_META", 0);
        }
    }

    /* renamed from: b */
    public static synchronized C16794b m59949b() {
        C16794b c16794b;
        synchronized (C16794b.class) {
            if (f93515a == null) {
                f93515a = new C16794b();
            }
            c16794b = f93515a;
        }
        return c16794b;
    }

    /* renamed from: a */
    public synchronized String m59950a(String str, String str2) {
        return this.f93517c.getString(str, str2);
    }

    /* renamed from: a */
    public final synchronized void m59952a() {
        if (this.f93519e.tryLock()) {
            this.f93518d.commit();
            this.f93519e.unlock();
        }
    }

    /* renamed from: a */
    public synchronized String m59951a(String str, String str2, String str3) {
        SharedPreferences sharedPreferences = this.f93517c;
        String string = sharedPreferences.getString(str, "");
        int i = 0;
        if (string != null && !string.trim().equals("")) {
            byte[] bytes = string.getBytes(Charset.defaultCharset());
            int i2 = 0;
            while (i < bytes.length) {
                byte b = bytes[i];
                byte[] bArr = f93516b;
                bytes[i] = (byte) (b ^ bArr[i2]);
                i2 = (i2 + 1) % bArr.length;
                i++;
            }
            sharedPreferences.edit().remove(str).putString(str2, Base64.encodeToString(bytes, 2)).commit();
            return string;
        }
        String string2 = sharedPreferences.getString(str2, "");
        if (string2 == null || string2.trim().equals("")) {
            return str3;
        }
        byte[] decode = Base64.decode(string2, 2);
        int i3 = 0;
        while (i < decode.length) {
            byte b2 = decode[i];
            byte[] bArr2 = f93516b;
            decode[i] = (byte) (b2 ^ bArr2[i3]);
            i3 = (i3 + 1) % bArr2.length;
            i++;
        }
        return new String(decode, Charset.defaultCharset());
    }
}
