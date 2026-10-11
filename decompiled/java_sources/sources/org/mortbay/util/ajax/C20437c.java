package org.mortbay.util.ajax;

import org.mortbay.util.QuotedStringTokenizer;
import org.mortbay.util.TypeUtil;
import org.mortbay.util.ajax.JSON;

/* renamed from: org.mortbay.util.ajax.c */
/* loaded from: classes13.dex */
public class C20437c implements JSON.Output {

    /* renamed from: a */
    public final /* synthetic */ char[] f115438a;

    /* renamed from: b */
    public final /* synthetic */ StringBuffer f115439b;

    /* renamed from: c */
    public final /* synthetic */ JSON f115440c;

    public C20437c(JSON json, char[] cArr, StringBuffer stringBuffer) {
        this.f115440c = json;
        this.f115438a = cArr;
        this.f115439b = stringBuffer;
    }

    @Override // org.mortbay.util.ajax.JSON.Output
    public void add(Object obj) {
        if (this.f115438a[0] != 0) {
            this.f115440c.append(this.f115439b, obj);
            this.f115438a[0] = 0;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // org.mortbay.util.ajax.JSON.Output
    public void addClass(Class cls) {
        char[] cArr = this.f115438a;
        if (cArr[0] == 0) {
            throw new IllegalStateException();
        }
        this.f115439b.append(cArr);
        this.f115439b.append("\"class\":");
        this.f115440c.append(this.f115439b, cls.getName());
        this.f115438a[0] = ',';
    }

    @Override // org.mortbay.util.ajax.JSON.Output
    public void add(String str, Object obj) {
        char[] cArr = this.f115438a;
        if (cArr[0] != 0) {
            this.f115439b.append(cArr);
            QuotedStringTokenizer.quote(this.f115439b, str);
            this.f115439b.append(':');
            this.f115440c.append(this.f115439b, obj);
            this.f115438a[0] = ',';
            return;
        }
        throw new IllegalStateException();
    }

    @Override // org.mortbay.util.ajax.JSON.Output
    public void add(String str, double d) {
        char[] cArr = this.f115438a;
        if (cArr[0] != 0) {
            this.f115439b.append(cArr);
            QuotedStringTokenizer.quote(this.f115439b, str);
            this.f115439b.append(':');
            this.f115440c.appendNumber(this.f115439b, new Double(d));
            this.f115438a[0] = ',';
            return;
        }
        throw new IllegalStateException();
    }

    @Override // org.mortbay.util.ajax.JSON.Output
    public void add(String str, long j) {
        char[] cArr = this.f115438a;
        if (cArr[0] != 0) {
            this.f115439b.append(cArr);
            QuotedStringTokenizer.quote(this.f115439b, str);
            this.f115439b.append(':');
            this.f115440c.appendNumber(this.f115439b, TypeUtil.newLong(j));
            this.f115438a[0] = ',';
            return;
        }
        throw new IllegalStateException();
    }

    @Override // org.mortbay.util.ajax.JSON.Output
    public void add(String str, boolean z) {
        char[] cArr = this.f115438a;
        if (cArr[0] != 0) {
            this.f115439b.append(cArr);
            QuotedStringTokenizer.quote(this.f115439b, str);
            this.f115439b.append(':');
            this.f115440c.appendBoolean(this.f115439b, z ? Boolean.TRUE : Boolean.FALSE);
            this.f115438a[0] = ',';
            return;
        }
        throw new IllegalStateException();
    }
}
