package com.tencent.beacon.base.net;

import org.apache.logging.log4j.util.Chars;

/* renamed from: com.tencent.beacon.base.net.d */
/* loaded from: classes10.dex */
public final class C14950d {

    /* renamed from: a */
    public String f92902a;

    /* renamed from: b */
    public String f92903b;

    /* renamed from: c */
    public int f92904c;

    /* renamed from: d */
    public String f92905d;

    /* renamed from: e */
    public Throwable f92906e;

    public C14950d(String str, String str2, int i, String str3) {
        this.f92902a = str;
        this.f92903b = str2;
        this.f92904c = i;
        this.f92905d = str3;
    }

    public String toString() {
        return "NetFailure{requestType='" + this.f92902a + Chars.QUOTE + ", attaCode='" + this.f92903b + Chars.QUOTE + ", responseCode=" + this.f92904c + ", msg='" + this.f92905d + Chars.QUOTE + ", exception=" + this.f92906e + '}';
    }

    public C14950d(String str, String str2, int i, String str3, Throwable th) {
        this.f92902a = str;
        this.f92903b = str2;
        this.f92904c = i;
        this.f92905d = str3;
        this.f92906e = th;
    }
}
