package com.alibaba.fastjson2.reader;

import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReader7<T> extends ObjectReaderAdapter<T> {
    protected final FieldReader fieldReader0;
    protected final FieldReader fieldReader1;
    protected final FieldReader fieldReader2;
    protected final FieldReader fieldReader3;
    protected final FieldReader fieldReader4;
    protected final FieldReader fieldReader5;
    protected final FieldReader fieldReader6;

    /* renamed from: l */
    public final long f12585l;

    /* renamed from: m */
    public final long f12586m;

    /* renamed from: n */
    public final long f12587n;

    /* renamed from: o */
    public final long f12588o;
    protected ObjectReader objectReader0;
    protected ObjectReader objectReader1;
    protected ObjectReader objectReader2;
    protected ObjectReader objectReader3;
    protected ObjectReader objectReader4;
    protected ObjectReader objectReader5;
    protected ObjectReader objectReader6;

    /* renamed from: p */
    public final long f12589p;

    /* renamed from: q */
    public final long f12590q;

    /* renamed from: r */
    public final long f12591r;

    /* renamed from: s */
    public final long f12592s;

    /* renamed from: t */
    public final long f12593t;

    /* renamed from: u */
    public final long f12594u;

    /* renamed from: v */
    public final long f12595v;

    /* renamed from: w */
    public final long f12596w;

    /* renamed from: x */
    public final long f12597x;

    /* renamed from: y */
    public final long f12598y;

    public ObjectReader7(Class cls, String str, String str2, long j, Supplier<T> supplier, Function function, FieldReader... fieldReaderArr) {
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
        this.f12585l = fieldReader.f12469f;
        this.f12586m = fieldReader2.f12469f;
        this.f12587n = fieldReader3.f12469f;
        this.f12588o = fieldReader4.f12469f;
        this.f12589p = fieldReader5.f12469f;
        this.f12590q = fieldReader6.f12469f;
        this.f12591r = fieldReader7.f12469f;
        this.f12592s = fieldReader.f12470g;
        this.f12593t = fieldReader2.f12470g;
        this.f12594u = fieldReader3.f12470g;
        this.f12595v = fieldReader4.f12470g;
        this.f12596w = fieldReader5.f12470g;
        this.f12597x = fieldReader6.f12470g;
        this.f12598y = fieldReader7.f12470g;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReader(long j) {
        if (j == this.f12585l) {
            return this.fieldReader0;
        }
        if (j == this.f12586m) {
            return this.fieldReader1;
        }
        if (j == this.f12587n) {
            return this.fieldReader2;
        }
        if (j == this.f12588o) {
            return this.fieldReader3;
        }
        if (j == this.f12589p) {
            return this.fieldReader4;
        }
        if (j == this.f12590q) {
            return this.fieldReader5;
        }
        if (j == this.f12591r) {
            return this.fieldReader6;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReaderLCase(long j) {
        if (j == this.f12592s) {
            return this.fieldReader0;
        }
        if (j == this.f12593t) {
            return this.fieldReader1;
        }
        if (j == this.f12594u) {
            return this.fieldReader2;
        }
        if (j == this.f12595v) {
            return this.fieldReader3;
        }
        if (j == this.f12596w) {
            return this.fieldReader4;
        }
        if (j == this.f12597x) {
            return this.fieldReader5;
        }
        if (j == this.f12598y) {
            return this.fieldReader6;
        }
        return null;
    }
}
