package com.twelvemonkeys.imageio.spi;

import com.twelvemonkeys.lang.Validate;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes10.dex */
public abstract class ReaderWriterProviderInfo extends ProviderInfo {

    /* renamed from: d */
    public final String[] f94183d;

    /* renamed from: e */
    public final String[] f94184e;

    /* renamed from: f */
    public final String[] f94185f;

    /* renamed from: g */
    public final String f94186g;

    /* renamed from: h */
    public final String[] f94187h;

    /* renamed from: i */
    public final Class[] f94188i;

    /* renamed from: j */
    public final String f94189j;

    /* renamed from: k */
    public final String[] f94190k;

    /* renamed from: l */
    public final Class[] f94191l;

    /* renamed from: m */
    public final boolean f94192m;

    /* renamed from: n */
    public final String f94193n;

    /* renamed from: o */
    public final String f94194o;

    /* renamed from: p */
    public final String[] f94195p;

    /* renamed from: q */
    public final String[] f94196q;

    /* renamed from: r */
    public final boolean f94197r;

    /* renamed from: s */
    public final String f94198s;

    /* renamed from: t */
    public final String f94199t;

    /* renamed from: u */
    public final String[] f94200u;

    /* renamed from: v */
    public final String[] f94201v;

    public ReaderWriterProviderInfo(Class<? extends ReaderWriterProviderInfo> cls, String[] strArr, String[] strArr2, String[] strArr3, String str, String[] strArr4, String str2, String[] strArr5, boolean z, String str3, String str4, String[] strArr6, String[] strArr7, boolean z2, String str5, String str6, String[] strArr8, String[] strArr9) {
        super(((Class) Validate.notNull(cls)).getPackage());
        this.f94188i = new Class[]{ImageInputStream.class};
        this.f94191l = new Class[]{ImageOutputStream.class};
        this.f94183d = strArr;
        this.f94184e = strArr2;
        this.f94185f = strArr3;
        this.f94186g = str;
        this.f94187h = strArr4;
        this.f94189j = str2;
        this.f94190k = strArr5;
        this.f94192m = z;
        this.f94193n = str3;
        this.f94194o = str4;
        this.f94195p = strArr6;
        this.f94196q = strArr7;
        this.f94197r = z2;
        this.f94198s = str5;
        this.f94199t = str6;
        this.f94200u = strArr8;
        this.f94201v = strArr9;
    }

    public String[] extraImageMetadataFormatClassNames() {
        return this.f94201v;
    }

    public String[] extraImageMetadataFormatNames() {
        return this.f94200u;
    }

    public String[] extraStreamMetadataFormatClassNames() {
        return this.f94196q;
    }

    public String[] extraStreamMetadataFormatNames() {
        return this.f94195p;
    }

    public String[] formatNames() {
        return this.f94183d;
    }

    public Class[] inputTypes() {
        return this.f94188i;
    }

    public String[] mimeTypes() {
        return this.f94185f;
    }

    public String nativeImageMetadataFormatClassName() {
        return this.f94199t;
    }

    public String nativeImageMetadataFormatName() {
        return this.f94198s;
    }

    public String nativeStreamMetadataFormatClassName() {
        return this.f94194o;
    }

    public String nativeStreamMetadataFormatName() {
        return this.f94193n;
    }

    public Class[] outputTypes() {
        return this.f94191l;
    }

    public String readerClassName() {
        return this.f94186g;
    }

    public String[] readerSpiClassNames() {
        return this.f94187h;
    }

    public String[] suffixes() {
        return this.f94184e;
    }

    public boolean supportsStandardImageMetadataFormat() {
        return this.f94197r;
    }

    public boolean supportsStandardStreamMetadataFormat() {
        return this.f94192m;
    }

    public String writerClassName() {
        return this.f94189j;
    }

    public String[] writerSpiClassNames() {
        return this.f94190k;
    }
}
