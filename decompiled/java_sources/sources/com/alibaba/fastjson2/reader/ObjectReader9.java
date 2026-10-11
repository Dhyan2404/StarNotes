package com.alibaba.fastjson2.reader;

import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReader9<T> extends ObjectReaderAdapter<T> {

    /* renamed from: A */
    public final long f12615A;

    /* renamed from: B */
    public final long f12616B;

    /* renamed from: C */
    public final long f12617C;
    protected final FieldReader fieldReader0;
    protected final FieldReader fieldReader1;
    protected final FieldReader fieldReader2;
    protected final FieldReader fieldReader3;
    protected final FieldReader fieldReader4;
    protected final FieldReader fieldReader5;
    protected final FieldReader fieldReader6;
    protected final FieldReader fieldReader7;
    protected final FieldReader fieldReader8;

    /* renamed from: l */
    public final long f12618l;

    /* renamed from: m */
    public final long f12619m;

    /* renamed from: n */
    public final long f12620n;

    /* renamed from: o */
    public final long f12621o;
    protected ObjectReader objectReader0;
    protected ObjectReader objectReader1;
    protected ObjectReader objectReader2;
    protected ObjectReader objectReader3;
    protected ObjectReader objectReader4;
    protected ObjectReader objectReader5;
    protected ObjectReader objectReader6;
    protected ObjectReader objectReader7;
    protected ObjectReader objectReader8;

    /* renamed from: p */
    public final long f12622p;

    /* renamed from: q */
    public final long f12623q;

    /* renamed from: r */
    public final long f12624r;

    /* renamed from: s */
    public final long f12625s;

    /* renamed from: t */
    public final long f12626t;

    /* renamed from: u */
    public final long f12627u;

    /* renamed from: v */
    public final long f12628v;

    /* renamed from: w */
    public final long f12629w;

    /* renamed from: x */
    public final long f12630x;

    /* renamed from: y */
    public final long f12631y;

    /* renamed from: z */
    public final long f12632z;

    public ObjectReader9(Class cls, String str, String str2, long j, Supplier<T> supplier, Function function, FieldReader... fieldReaderArr) {
        super(cls, str, str2, j, supplier, function, null, null, null, fieldReaderArr);
        FieldReader fieldReader = fieldReaderArr[0];
        this.fieldReader0 = fieldReader;
        FieldReader fieldReader2 = fieldReaderArr[1];
        this.fieldReader1 = fieldReader2;
        FieldReader fieldReader3 = fieldReaderArr[2];
        this.fieldReader2 = fieldReader3;
        FieldReader fieldReader4 = fieldReaderArr[3];
        this.fieldReader3 = fieldReader4;
        FieldReader fieldReader5 = fieldReaderArr[4];
        this.fieldReader4 = fieldReader5;
        FieldReader fieldReader6 = fieldReaderArr[5];
        this.fieldReader5 = fieldReader6;
        FieldReader fieldReader7 = fieldReaderArr[6];
        this.fieldReader6 = fieldReader7;
        FieldReader fieldReader8 = fieldReaderArr[7];
        this.fieldReader7 = fieldReader8;
        FieldReader fieldReader9 = fieldReaderArr[8];
        this.fieldReader8 = fieldReader9;
        this.f12618l = fieldReader.f12469f;
        this.f12619m = fieldReader2.f12469f;
        this.f12620n = fieldReader3.f12469f;
        this.f12621o = fieldReader4.f12469f;
        this.f12622p = fieldReader5.f12469f;
        this.f12623q = fieldReader6.f12469f;
        this.f12624r = fieldReader7.f12469f;
        this.f12625s = fieldReader8.f12469f;
        this.f12626t = fieldReader9.f12469f;
        this.f12627u = fieldReader.f12470g;
        this.f12628v = fieldReader2.f12470g;
        this.f12629w = fieldReader3.f12470g;
        this.f12630x = fieldReader4.f12470g;
        this.f12631y = fieldReader5.f12470g;
        this.f12632z = fieldReader6.f12470g;
        this.f12615A = fieldReader7.f12470g;
        this.f12616B = fieldReader8.f12470g;
        this.f12617C = fieldReader9.f12470g;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReader(long j) {
        if (j == this.f12618l) {
            return this.fieldReader0;
        }
        if (j == this.f12619m) {
            return this.fieldReader1;
        }
        if (j == this.f12620n) {
            return this.fieldReader2;
        }
        if (j == this.f12621o) {
            return this.fieldReader3;
        }
        if (j == this.f12622p) {
            return this.fieldReader4;
        }
        if (j == this.f12623q) {
            return this.fieldReader5;
        }
        if (j == this.f12624r) {
            return this.fieldReader6;
        }
        if (j == this.f12625s) {
            return this.fieldReader7;
        }
        if (j == this.f12626t) {
            return this.fieldReader8;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReaderLCase(long j) {
        if (j == this.f12627u) {
            return this.fieldReader0;
        }
        if (j == this.f12628v) {
            return this.fieldReader1;
        }
        if (j == this.f12629w) {
            return this.fieldReader2;
        }
        if (j == this.f12630x) {
            return this.fieldReader3;
        }
        if (j == this.f12631y) {
            return this.fieldReader4;
        }
        if (j == this.f12632z) {
            return this.fieldReader5;
        }
        if (j == this.f12615A) {
            return this.fieldReader6;
        }
        if (j == this.f12616B) {
            return this.fieldReader7;
        }
        if (j == this.f12617C) {
            return this.fieldReader8;
        }
        return null;
    }
}
