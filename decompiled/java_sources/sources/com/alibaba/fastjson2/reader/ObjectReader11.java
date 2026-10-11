package com.alibaba.fastjson2.reader;

import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReader11<T> extends ObjectReaderAdapter<T> {

    /* renamed from: A */
    public final long f12503A;

    /* renamed from: B */
    public final long f12504B;

    /* renamed from: C */
    public final long f12505C;

    /* renamed from: D */
    public final long f12506D;

    /* renamed from: E */
    public final long f12507E;

    /* renamed from: F */
    public final long f12508F;

    /* renamed from: G */
    public final long f12509G;
    protected final FieldReader fieldReader0;
    protected final FieldReader fieldReader1;
    protected final FieldReader fieldReader10;
    protected final FieldReader fieldReader2;
    protected final FieldReader fieldReader3;
    protected final FieldReader fieldReader4;
    protected final FieldReader fieldReader5;
    protected final FieldReader fieldReader6;
    protected final FieldReader fieldReader7;
    protected final FieldReader fieldReader8;
    protected final FieldReader fieldReader9;

    /* renamed from: l */
    public final long f12510l;

    /* renamed from: m */
    public final long f12511m;

    /* renamed from: n */
    public final long f12512n;

    /* renamed from: o */
    public final long f12513o;
    protected ObjectReader objectReader0;
    protected ObjectReader objectReader1;
    protected ObjectReader objectReader10;
    protected ObjectReader objectReader2;
    protected ObjectReader objectReader3;
    protected ObjectReader objectReader4;
    protected ObjectReader objectReader5;
    protected ObjectReader objectReader6;
    protected ObjectReader objectReader7;
    protected ObjectReader objectReader8;
    protected ObjectReader objectReader9;

    /* renamed from: p */
    public final long f12514p;

    /* renamed from: q */
    public final long f12515q;

    /* renamed from: r */
    public final long f12516r;

    /* renamed from: s */
    public final long f12517s;

    /* renamed from: t */
    public final long f12518t;

    /* renamed from: u */
    public final long f12519u;

    /* renamed from: v */
    public final long f12520v;

    /* renamed from: w */
    public final long f12521w;

    /* renamed from: x */
    public final long f12522x;

    /* renamed from: y */
    public final long f12523y;

    /* renamed from: z */
    public final long f12524z;

    public ObjectReader11(Class cls, String str, String str2, long j, Supplier<T> supplier, Function function, FieldReader... fieldReaderArr) {
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
        FieldReader fieldReader10 = fieldReaderArr[9];
        this.fieldReader9 = fieldReader10;
        FieldReader fieldReader11 = fieldReaderArr[10];
        this.fieldReader10 = fieldReader11;
        this.f12510l = fieldReader.f12469f;
        this.f12511m = fieldReader2.f12469f;
        this.f12512n = fieldReader3.f12469f;
        this.f12513o = fieldReader4.f12469f;
        this.f12514p = fieldReader5.f12469f;
        this.f12515q = fieldReader6.f12469f;
        this.f12516r = fieldReader7.f12469f;
        this.f12517s = fieldReader8.f12469f;
        this.f12518t = fieldReader9.f12469f;
        this.f12519u = fieldReader10.f12469f;
        this.f12520v = fieldReader11.f12469f;
        this.f12521w = fieldReader.f12470g;
        this.f12522x = fieldReader2.f12470g;
        this.f12523y = fieldReader3.f12470g;
        this.f12524z = fieldReader4.f12470g;
        this.f12503A = fieldReader5.f12470g;
        this.f12504B = fieldReader6.f12470g;
        this.f12505C = fieldReader7.f12470g;
        this.f12506D = fieldReader8.f12470g;
        this.f12507E = fieldReader9.f12470g;
        this.f12508F = fieldReader10.f12470g;
        this.f12509G = fieldReader11.f12470g;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReader(long j) {
        if (j == this.f12510l) {
            return this.fieldReader0;
        }
        if (j == this.f12511m) {
            return this.fieldReader1;
        }
        if (j == this.f12512n) {
            return this.fieldReader2;
        }
        if (j == this.f12513o) {
            return this.fieldReader3;
        }
        if (j == this.f12514p) {
            return this.fieldReader4;
        }
        if (j == this.f12515q) {
            return this.fieldReader5;
        }
        if (j == this.f12516r) {
            return this.fieldReader6;
        }
        if (j == this.f12517s) {
            return this.fieldReader7;
        }
        if (j == this.f12518t) {
            return this.fieldReader8;
        }
        if (j == this.f12519u) {
            return this.fieldReader9;
        }
        if (j == this.f12520v) {
            return this.fieldReader10;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReaderLCase(long j) {
        if (j == this.f12521w) {
            return this.fieldReader0;
        }
        if (j == this.f12522x) {
            return this.fieldReader1;
        }
        if (j == this.f12523y) {
            return this.fieldReader2;
        }
        if (j == this.f12524z) {
            return this.fieldReader3;
        }
        if (j == this.f12503A) {
            return this.fieldReader4;
        }
        if (j == this.f12504B) {
            return this.fieldReader5;
        }
        if (j == this.f12505C) {
            return this.fieldReader6;
        }
        if (j == this.f12506D) {
            return this.fieldReader7;
        }
        if (j == this.f12507E) {
            return this.fieldReader8;
        }
        if (j == this.f12508F) {
            return this.fieldReader9;
        }
        if (j == this.f12509G) {
            return this.fieldReader10;
        }
        return null;
    }
}
