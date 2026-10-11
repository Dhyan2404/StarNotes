package com.alibaba.fastjson2.reader;

import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReader12<T> extends ObjectReaderAdapter<T> {

    /* renamed from: A */
    public final long f12525A;

    /* renamed from: B */
    public final long f12526B;

    /* renamed from: C */
    public final long f12527C;

    /* renamed from: D */
    public final long f12528D;

    /* renamed from: E */
    public final long f12529E;

    /* renamed from: F */
    public final long f12530F;

    /* renamed from: G */
    public final long f12531G;

    /* renamed from: H */
    public final long f12532H;

    /* renamed from: I */
    public final long f12533I;
    protected final FieldReader fieldReader0;
    protected final FieldReader fieldReader1;
    protected final FieldReader fieldReader10;
    protected final FieldReader fieldReader11;
    protected final FieldReader fieldReader2;
    protected final FieldReader fieldReader3;
    protected final FieldReader fieldReader4;
    protected final FieldReader fieldReader5;
    protected final FieldReader fieldReader6;
    protected final FieldReader fieldReader7;
    protected final FieldReader fieldReader8;
    protected final FieldReader fieldReader9;

    /* renamed from: l */
    public final long f12534l;

    /* renamed from: m */
    public final long f12535m;

    /* renamed from: n */
    public final long f12536n;

    /* renamed from: o */
    public final long f12537o;
    protected ObjectReader objectReader0;
    protected ObjectReader objectReader1;
    protected ObjectReader objectReader10;
    protected ObjectReader objectReader11;
    protected ObjectReader objectReader2;
    protected ObjectReader objectReader3;
    protected ObjectReader objectReader4;
    protected ObjectReader objectReader5;
    protected ObjectReader objectReader6;
    protected ObjectReader objectReader7;
    protected ObjectReader objectReader8;
    protected ObjectReader objectReader9;

    /* renamed from: p */
    public final long f12538p;

    /* renamed from: q */
    public final long f12539q;

    /* renamed from: r */
    public final long f12540r;

    /* renamed from: s */
    public final long f12541s;

    /* renamed from: t */
    public final long f12542t;

    /* renamed from: u */
    public final long f12543u;

    /* renamed from: v */
    public final long f12544v;

    /* renamed from: w */
    public final long f12545w;

    /* renamed from: x */
    public final long f12546x;

    /* renamed from: y */
    public final long f12547y;

    /* renamed from: z */
    public final long f12548z;

    public ObjectReader12(Class cls, String str, String str2, long j, Supplier<T> supplier, Function function, FieldReader... fieldReaderArr) {
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
        FieldReader fieldReader12 = fieldReaderArr[11];
        this.fieldReader11 = fieldReader12;
        this.f12534l = fieldReader.f12469f;
        this.f12535m = fieldReader2.f12469f;
        this.f12536n = fieldReader3.f12469f;
        this.f12537o = fieldReader4.f12469f;
        this.f12538p = fieldReader5.f12469f;
        this.f12539q = fieldReader6.f12469f;
        this.f12540r = fieldReader7.f12469f;
        this.f12541s = fieldReader8.f12469f;
        this.f12542t = fieldReader9.f12469f;
        this.f12543u = fieldReader10.f12469f;
        this.f12544v = fieldReader11.f12469f;
        this.f12545w = fieldReader12.f12469f;
        this.f12546x = fieldReader.f12470g;
        this.f12547y = fieldReader2.f12470g;
        this.f12548z = fieldReader3.f12470g;
        this.f12525A = fieldReader4.f12470g;
        this.f12526B = fieldReader5.f12470g;
        this.f12527C = fieldReader6.f12470g;
        this.f12528D = fieldReader7.f12470g;
        this.f12529E = fieldReader8.f12470g;
        this.f12530F = fieldReader9.f12470g;
        this.f12531G = fieldReader10.f12470g;
        this.f12532H = fieldReader11.f12470g;
        this.f12533I = fieldReader12.f12470g;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReader(long j) {
        if (j == this.f12534l) {
            return this.fieldReader0;
        }
        if (j == this.f12535m) {
            return this.fieldReader1;
        }
        if (j == this.f12536n) {
            return this.fieldReader2;
        }
        if (j == this.f12537o) {
            return this.fieldReader3;
        }
        if (j == this.f12538p) {
            return this.fieldReader4;
        }
        if (j == this.f12539q) {
            return this.fieldReader5;
        }
        if (j == this.f12540r) {
            return this.fieldReader6;
        }
        if (j == this.f12541s) {
            return this.fieldReader7;
        }
        if (j == this.f12542t) {
            return this.fieldReader8;
        }
        if (j == this.f12543u) {
            return this.fieldReader9;
        }
        if (j == this.f12544v) {
            return this.fieldReader10;
        }
        if (j == this.f12545w) {
            return this.fieldReader11;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReaderLCase(long j) {
        if (j == this.f12546x) {
            return this.fieldReader0;
        }
        if (j == this.f12547y) {
            return this.fieldReader1;
        }
        if (j == this.f12548z) {
            return this.fieldReader2;
        }
        if (j == this.f12525A) {
            return this.fieldReader3;
        }
        if (j == this.f12526B) {
            return this.fieldReader4;
        }
        if (j == this.f12527C) {
            return this.fieldReader5;
        }
        if (j == this.f12528D) {
            return this.fieldReader6;
        }
        if (j == this.f12529E) {
            return this.fieldReader7;
        }
        if (j == this.f12530F) {
            return this.fieldReader8;
        }
        if (j == this.f12531G) {
            return this.fieldReader9;
        }
        if (j == this.f12532H) {
            return this.fieldReader10;
        }
        if (j == this.f12533I) {
            return this.fieldReader11;
        }
        return null;
    }
}
