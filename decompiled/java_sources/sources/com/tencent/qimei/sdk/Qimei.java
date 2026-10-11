package com.tencent.qimei.sdk;

import android.text.TextUtils;
import com.tencent.qimei.p078a.C16733a;
import com.tencent.qimei.p079aa.C16734a;

/* loaded from: classes10.dex */
public final class Qimei {

    /* renamed from: a */
    public String f93655a;

    /* renamed from: b */
    public String f93656b;

    /* renamed from: c */
    public String f93657c;

    public Qimei(String str) {
        this("", "", str);
    }

    /* renamed from: a */
    public String m60079a() {
        return this.f93656b;
    }

    /* renamed from: b */
    public String m60081b() {
        return this.f93657c;
    }

    public String getQimei16() {
        return !C16734a.m59797a(this.f93655a).m59798a().m59824f() ? "" : this.f93656b;
    }

    public String getQimei36() {
        return !C16734a.m59797a(this.f93655a).m59798a().m59825g() ? "" : this.f93657c;
    }

    public boolean isEmpty() {
        String str;
        String str2 = this.f93656b;
        return (str2 == null || str2.isEmpty()) && ((str = this.f93657c) == null || str.isEmpty());
    }

    public String toString() {
        String sb;
        StringBuilder m59796a = C16733a.m59796a("Q16:");
        m59796a.append(this.f93656b);
        if (TextUtils.isEmpty(this.f93657c)) {
            sb = "";
        } else {
            StringBuilder m59796a2 = C16733a.m59796a("\nQ36:");
            m59796a2.append(this.f93657c);
            sb = m59796a2.toString();
        }
        m59796a.append(sb);
        return m59796a.toString();
    }

    public Qimei(String str, String str2, String str3) {
        this.f93656b = str == null ? "" : str;
        this.f93657c = str2 == null ? "" : str2;
        this.f93655a = str3;
    }

    @Deprecated
    /* renamed from: a */
    public void m60080a(String str) {
        this.f93656b = str;
    }

    /* renamed from: b */
    public void m60082b(String str) {
        this.f93657c = str;
    }

    public Qimei() {
        this("", "", "");
    }
}
