package com.tencent.qimei.sdk.p099S;

import androidx.annotation.Nullable;
import com.tencent.qimei.p092m.C16800a;
import java.io.Serializable;

/* loaded from: classes10.dex */
public class SpreadValue implements Serializable {
    public String aid;
    public String appKey;
    public long firstTime;
    public String fromKey;
    public String fromSource;
    public String oaid;
    public String q16;
    public String q36;
    public String source;
    public long updateTime;

    /* renamed from: a */
    public SpreadValue m60085a(long j) {
        this.firstTime = j;
        return this;
    }

    /* renamed from: b */
    public SpreadValue m60088b(long j) {
        this.updateTime = j;
        return this;
    }

    /* renamed from: c */
    public long m60091c() {
        return this.firstTime;
    }

    /* renamed from: d */
    public SpreadValue m60093d(String str) {
        this.fromSource = str;
        return this;
    }

    /* renamed from: e */
    public SpreadValue m60095e(String str) {
        this.oaid = str;
        return this;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof SpreadValue)) {
            return false;
        }
        SpreadValue spreadValue = (SpreadValue) obj;
        return C16800a.m59975a(this.oaid, spreadValue.oaid) && C16800a.m59975a(this.aid, spreadValue.aid) && C16800a.m59975a(this.q16, spreadValue.q16) && C16800a.m59975a(this.q36, spreadValue.q36);
    }

    /* renamed from: f */
    public SpreadValue m60097f(String str) {
        this.q16 = str;
        return this;
    }

    /* renamed from: g */
    public SpreadValue m60099g(String str) {
        this.q36 = str;
        return this;
    }

    /* renamed from: h */
    public SpreadValue m60101h(String str) {
        this.source = str;
        return this;
    }

    /* renamed from: i */
    public String m60103i() {
        return this.source;
    }

    /* renamed from: j */
    public long m60104j() {
        return this.updateTime;
    }

    /* renamed from: a */
    public SpreadValue m60086a(String str) {
        this.aid = str;
        return this;
    }

    /* renamed from: b */
    public SpreadValue m60089b(String str) {
        this.appKey = str;
        return this;
    }

    /* renamed from: c */
    public SpreadValue m60092c(String str) {
        this.fromKey = str;
        return this;
    }

    /* renamed from: d */
    public String m60094d() {
        return this.fromKey;
    }

    /* renamed from: e */
    public String m60096e() {
        return this.fromSource;
    }

    /* renamed from: f */
    public String m60098f() {
        return this.oaid;
    }

    /* renamed from: g */
    public String m60100g() {
        return this.q16;
    }

    /* renamed from: h */
    public String m60102h() {
        return this.q36;
    }

    /* renamed from: a */
    public String m60087a() {
        return this.aid;
    }

    /* renamed from: b */
    public String m60090b() {
        return this.appKey;
    }
}
