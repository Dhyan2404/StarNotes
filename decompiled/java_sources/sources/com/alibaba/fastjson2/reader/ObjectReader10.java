package com.alibaba.fastjson2.reader;

import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReader10<T> extends ObjectReaderAdapter<T> {

    /* renamed from: A */
    public final long f12483A;

    /* renamed from: B */
    public final long f12484B;

    /* renamed from: C */
    public final long f12485C;

    /* renamed from: D */
    public final long f12486D;

    /* renamed from: E */
    public final long f12487E;
    protected final FieldReader fieldReader0;
    protected final FieldReader fieldReader1;
    protected final FieldReader fieldReader2;
    protected final FieldReader fieldReader3;
    protected final FieldReader fieldReader4;
    protected final FieldReader fieldReader5;
    protected final FieldReader fieldReader6;
    protected final FieldReader fieldReader7;
    protected final FieldReader fieldReader8;
    protected final FieldReader fieldReader9;

    /* renamed from: l */
    public final long f12488l;

    /* renamed from: m */
    public final long f12489m;

    /* renamed from: n */
    public final long f12490n;

    /* renamed from: o */
    public final long f12491o;
    protected ObjectReader objectReader0;
    protected ObjectReader objectReader1;
    protected ObjectReader objectReader2;
    protected ObjectReader objectReader3;
    protected ObjectReader objectReader4;
    protected ObjectReader objectReader5;
    protected ObjectReader objectReader6;
    protected ObjectReader objectReader7;
    protected ObjectReader objectReader8;
    protected ObjectReader objectReader9;

    /* renamed from: p */
    public final long f12492p;

    /* renamed from: q */
    public final long f12493q;

    /* renamed from: r */
    public final long f12494r;

    /* renamed from: s */
    public final long f12495s;

    /* renamed from: t */
    public final long f12496t;

    /* renamed from: u */
    public final long f12497u;

    /* renamed from: v */
    public final long f12498v;

    /* renamed from: w */
    public final long f12499w;

    /* renamed from: x */
    public final long f12500x;

    /* renamed from: y */
    public final long f12501y;

    /* renamed from: z */
    public final long f12502z;

    public ObjectReader10(Class cls, String str, String str2, long j, Supplier<T> supplier, Function function, FieldReader... fieldReaderArr) {
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
        this.f12488l = fieldReader.f12469f;
        this.f12489m = fieldReader2.f12469f;
        this.f12490n = fieldReader3.f12469f;
        this.f12491o = fieldReader4.f12469f;
        this.f12492p = fieldReader5.f12469f;
        this.f12493q = fieldReader6.f12469f;
        this.f12494r = fieldReader7.f12469f;
        this.f12495s = fieldReader8.f12469f;
        this.f12496t = fieldReader9.f12469f;
        this.f12497u = fieldReader10.f12469f;
        this.f12498v = fieldReader.f12470g;
        this.f12499w = fieldReader2.f12470g;
        this.f12500x = fieldReader3.f12470g;
        this.f12501y = fieldReader4.f12470g;
        this.f12502z = fieldReader5.f12470g;
        this.f12483A = fieldReader6.f12470g;
        this.f12484B = fieldReader7.f12470g;
        this.f12485C = fieldReader8.f12470g;
        this.f12486D = fieldReader9.f12470g;
        this.f12487E = fieldReader10.f12470g;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReader(long j) {
        if (j == this.f12488l) {
            return this.fieldReader0;
        }
        if (j == this.f12489m) {
            return this.fieldReader1;
        }
        if (j == this.f12490n) {
            return this.fieldReader2;
        }
        if (j == this.f12491o) {
            return this.fieldReader3;
        }
        if (j == this.f12492p) {
            return this.fieldReader4;
        }
        if (j == this.f12493q) {
            return this.fieldReader5;
        }
        if (j == this.f12494r) {
            return this.fieldReader6;
        }
        if (j == this.f12495s) {
            return this.fieldReader7;
        }
        if (j == this.f12496t) {
            return this.fieldReader8;
        }
        if (j == this.f12497u) {
            return this.fieldReader9;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReaderLCase(long j) {
        if (j == this.f12498v) {
            return this.fieldReader0;
        }
        if (j == this.f12499w) {
            return this.fieldReader1;
        }
        if (j == this.f12500x) {
            return this.fieldReader2;
        }
        if (j == this.f12501y) {
            return this.fieldReader3;
        }
        if (j == this.f12502z) {
            return this.fieldReader4;
        }
        if (j == this.f12483A) {
            return this.fieldReader5;
        }
        if (j == this.f12484B) {
            return this.fieldReader6;
        }
        if (j == this.f12485C) {
            return this.fieldReader7;
        }
        if (j == this.f12486D) {
            return this.fieldReader8;
        }
        if (j == this.f12487E) {
            return this.fieldReader9;
        }
        return null;
    }
}
