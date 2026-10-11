package com.tencent.qmsp.oaid2;

import org.apache.logging.log4j.util.Chars;

/* renamed from: com.tencent.qmsp.oaid2.z */
/* loaded from: classes10.dex */
public class C16901z {

    /* renamed from: a */
    public int f93823a;

    /* renamed from: b */
    public long f93824b = System.currentTimeMillis() + 86400000;

    /* renamed from: c */
    public String f93825c;

    public C16901z(String str, int i) {
        this.f93825c = str;
        this.f93823a = i;
    }

    public String toString() {
        return "ValueData{value='" + this.f93825c + Chars.QUOTE + ", code=" + this.f93823a + ", expired=" + this.f93824b + '}';
    }
}
