package com.alibaba.fastjson2.reader;

import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReader8<T> extends ObjectReaderAdapter<T> {

    /* renamed from: A */
    public final long f12599A;
    protected final FieldReader fieldReader0;
    protected final FieldReader fieldReader1;
    protected final FieldReader fieldReader2;
    protected final FieldReader fieldReader3;
    protected final FieldReader fieldReader4;
    protected final FieldReader fieldReader5;
    protected final FieldReader fieldReader6;
    protected final FieldReader fieldReader7;

    /* renamed from: l */
    public final long f12600l;

    /* renamed from: m */
    public final long f12601m;

    /* renamed from: n */
    public final long f12602n;

    /* renamed from: o */
    public final long f12603o;
    protected ObjectReader objectReader0;
    protected ObjectReader objectReader1;
    protected ObjectReader objectReader2;
    protected ObjectReader objectReader3;
    protected ObjectReader objectReader4;
    protected ObjectReader objectReader5;
    protected ObjectReader objectReader6;
    protected ObjectReader objectReader7;

    /* renamed from: p */
    public final long f12604p;

    /* renamed from: q */
    public final long f12605q;

    /* renamed from: r */
    public final long f12606r;

    /* renamed from: s */
    public final long f12607s;

    /* renamed from: t */
    public final long f12608t;

    /* renamed from: u */
    public final long f12609u;

    /* renamed from: v */
    public final long f12610v;

    /* renamed from: w */
    public final long f12611w;

    /* renamed from: x */
    public final long f12612x;

    /* renamed from: y */
    public final long f12613y;

    /* renamed from: z */
    public final long f12614z;

    public ObjectReader8(Class cls, String str, String str2, long j, Supplier<T> supplier, Function function, FieldReader... fieldReaderArr) {
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
        this.f12600l = fieldReader.f12469f;
        this.f12601m = fieldReader2.f12469f;
        this.f12602n = fieldReader3.f12469f;
        this.f12603o = fieldReader4.f12469f;
        this.f12604p = fieldReader5.f12469f;
        this.f12605q = fieldReader6.f12469f;
        this.f12606r = fieldReader7.f12469f;
        this.f12607s = fieldReader8.f12469f;
        this.f12608t = fieldReader.f12470g;
        this.f12609u = fieldReader2.f12470g;
        this.f12610v = fieldReader3.f12470g;
        this.f12611w = fieldReader4.f12470g;
        this.f12612x = fieldReader5.f12470g;
        this.f12613y = fieldReader6.f12470g;
        this.f12614z = fieldReader7.f12470g;
        this.f12599A = fieldReader8.f12470g;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReader(long j) {
        if (j == this.f12600l) {
            return this.fieldReader0;
        }
        if (j == this.f12601m) {
            return this.fieldReader1;
        }
        if (j == this.f12602n) {
            return this.fieldReader2;
        }
        if (j == this.f12603o) {
            return this.fieldReader3;
        }
        if (j == this.f12604p) {
            return this.fieldReader4;
        }
        if (j == this.f12605q) {
            return this.fieldReader5;
        }
        if (j == this.f12606r) {
            return this.fieldReader6;
        }
        if (j == this.f12607s) {
            return this.fieldReader7;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReaderLCase(long j) {
        if (j == this.f12608t) {
            return this.fieldReader0;
        }
        if (j == this.f12609u) {
            return this.fieldReader1;
        }
        if (j == this.f12610v) {
            return this.fieldReader2;
        }
        if (j == this.f12611w) {
            return this.fieldReader3;
        }
        if (j == this.f12612x) {
            return this.fieldReader4;
        }
        if (j == this.f12613y) {
            return this.fieldReader5;
        }
        if (j == this.f12614z) {
            return this.fieldReader6;
        }
        if (j == this.f12599A) {
            return this.fieldReader7;
        }
        return null;
    }
}
