package org.apache.commons.compress.harmony.unpack200;

import com.google.android.material.motion.MotionUtils;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.harmony.pack200.BHSDCodec;
import org.apache.commons.compress.harmony.pack200.Codec;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;

/* loaded from: classes12.dex */
public class SegmentHeader {

    /* renamed from: C */
    public static final int[] f107059C = {202, 254, 208, 13};

    /* renamed from: A */
    public final Segment f107060A;

    /* renamed from: B */
    public int f107061B;

    /* renamed from: a */
    public int f107062a;

    /* renamed from: b */
    public int f107063b;

    /* renamed from: c */
    public long f107064c;

    /* renamed from: d */
    public long f107065d;

    /* renamed from: e */
    public int f107066e;

    /* renamed from: f */
    public InputStream f107067f;

    /* renamed from: g */
    public int f107068g;

    /* renamed from: h */
    public int f107069h;

    /* renamed from: i */
    public int f107070i;

    /* renamed from: j */
    public int f107071j;

    /* renamed from: k */
    public int f107072k;

    /* renamed from: l */
    public int f107073l;

    /* renamed from: m */
    public int f107074m;

    /* renamed from: n */
    public int f107075n;

    /* renamed from: o */
    public int f107076o;

    /* renamed from: p */
    public int f107077p;

    /* renamed from: q */
    public int f107078q;

    /* renamed from: r */
    public int f107079r;

    /* renamed from: s */
    public int f107080s;

    /* renamed from: t */
    public int f107081t;

    /* renamed from: u */
    public int f107082u;

    /* renamed from: v */
    public int f107083v;

    /* renamed from: w */
    public int f107084w;

    /* renamed from: x */
    public int f107085x;

    /* renamed from: y */
    public int f107086y;

    /* renamed from: z */
    public SegmentOptions f107087z;

    public SegmentHeader(Segment segment) {
        this.f107060A = segment;
    }

    /* renamed from: a */
    public final int m67095a(String str, InputStream inputStream, BHSDCodec bHSDCodec) throws IOException, Pack200Exception {
        int decode = bHSDCodec.decode(inputStream);
        this.f107060A.log(2, "Parsed #" + str + " as " + decode);
        return decode;
    }

    /* renamed from: b */
    public final int[] m67096b(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException, Pack200Exception {
        this.f107060A.log(2, "Parsed #" + str + " (" + i + MotionUtils.f31762d);
        return bHSDCodec.decodeInts(i, inputStream);
    }

    /* renamed from: c */
    public final void m67097c(InputStream inputStream) throws IOException, Pack200Exception {
        if (this.f107087z.hasArchiveFileCounts()) {
            BHSDCodec bHSDCodec = Codec.UNSIGNED5;
            setArchiveSize((m67095a("archive_size_hi", inputStream, bHSDCodec) << 32) | m67095a("archive_size_lo", inputStream, bHSDCodec));
            this.f107061B = inputStream.available();
            setSegmentsRemaining(m67095a("archive_next_count", inputStream, bHSDCodec));
            setArchiveModtime(m67095a("archive_modtime", inputStream, bHSDCodec));
            this.f107085x = m67095a("file_count", inputStream, bHSDCodec);
        }
    }

    /* renamed from: d */
    public final void m67098d(InputStream inputStream) throws IOException, Pack200Exception {
        if (getOptions().hasSpecialFormats()) {
            this.f107068g = m67095a("band_headers_size", inputStream, Codec.UNSIGNED5);
            m67104j(m67095a("attr_definition_count", inputStream, r0));
        }
    }

    /* renamed from: e */
    public final void m67099e(InputStream inputStream) throws IOException, Pack200Exception {
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        this.f107084w = m67095a("ic_count", inputStream, bHSDCodec);
        this.f107083v = m67095a("default_class_minver", inputStream, bHSDCodec);
        this.f107082u = m67095a("default_class_majver", inputStream, bHSDCodec);
        this.f107069h = m67095a("class_count", inputStream, bHSDCodec);
    }

    /* renamed from: f */
    public final void m67100f(InputStream inputStream) throws IOException, Pack200Exception {
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        this.f107081t = m67095a("cp_Utf8_count", inputStream, bHSDCodec);
        if (getOptions().hasCPNumberCounts()) {
            this.f107076o = m67095a("cp_Int_count", inputStream, bHSDCodec);
            this.f107074m = m67095a("cp_Float_count", inputStream, bHSDCodec);
            this.f107077p = m67095a("cp_Long_count", inputStream, bHSDCodec);
            this.f107072k = m67095a("cp_Double_count", inputStream, bHSDCodec);
        }
        this.f107080s = m67095a("cp_String_count", inputStream, bHSDCodec);
        this.f107070i = m67095a("cp_Class_count", inputStream, bHSDCodec);
        this.f107079r = m67095a("cp_Signature_count", inputStream, bHSDCodec);
        this.f107071j = m67095a("cp_Descr_count", inputStream, bHSDCodec);
        this.f107073l = m67095a("cp_Field_count", inputStream, bHSDCodec);
        this.f107078q = m67095a("cp_Method_count", inputStream, bHSDCodec);
        this.f107075n = m67095a("cp_Imethod_count", inputStream, bHSDCodec);
    }

    /* renamed from: g */
    public final void m67101g(InputStream inputStream, byte[] bArr) throws IOException {
        int read = inputStream.read(bArr);
        if (read == -1) {
            throw new EOFException("Failed to read any data from input stream");
        }
        while (read < bArr.length) {
            int read2 = inputStream.read(bArr, read, bArr.length - read);
            if (read2 == -1) {
                throw new EOFException("Failed to read some data from input stream");
            }
            read += read2;
        }
    }

    public long getArchiveModtime() {
        return this.f107064c;
    }

    public long getArchiveSize() {
        return this.f107065d;
    }

    public int getArchiveSizeOffset() {
        return this.f107061B;
    }

    public int getAttributeDefinitionCount() {
        return this.f107066e;
    }

    public InputStream getBandHeadersInputStream() {
        if (this.f107067f == null) {
            this.f107067f = new ByteArrayInputStream(new byte[0]);
        }
        return this.f107067f;
    }

    public int getBandHeadersSize() {
        return this.f107068g;
    }

    public int getClassCount() {
        return this.f107069h;
    }

    public int getCpClassCount() {
        return this.f107070i;
    }

    public int getCpDescriptorCount() {
        return this.f107071j;
    }

    public int getCpDoubleCount() {
        return this.f107072k;
    }

    public int getCpFieldCount() {
        return this.f107073l;
    }

    public int getCpFloatCount() {
        return this.f107074m;
    }

    public int getCpIMethodCount() {
        return this.f107075n;
    }

    public int getCpIntCount() {
        return this.f107076o;
    }

    public int getCpLongCount() {
        return this.f107077p;
    }

    public int getCpMethodCount() {
        return this.f107078q;
    }

    public int getCpSignatureCount() {
        return this.f107079r;
    }

    public int getCpStringCount() {
        return this.f107080s;
    }

    public int getCpUTF8Count() {
        return this.f107081t;
    }

    public int getDefaultClassMajorVersion() {
        return this.f107082u;
    }

    public int getDefaultClassMinorVersion() {
        return this.f107083v;
    }

    public int getInnerClassCount() {
        return this.f107084w;
    }

    public int getNumberOfFiles() {
        return this.f107085x;
    }

    public SegmentOptions getOptions() {
        return this.f107087z;
    }

    public int getSegmentsRemaining() {
        return this.f107086y;
    }

    /* renamed from: h */
    public final void m67102h(int i) throws Pack200Exception {
        if (i == 150) {
            this.f107062a = i;
            return;
        }
        throw new Pack200Exception("Invalid segment major version: " + i);
    }

    /* renamed from: i */
    public final void m67103i(int i) throws Pack200Exception {
        if (i != 7) {
            throw new Pack200Exception("Invalid segment minor version");
        }
        this.f107063b = i;
    }

    /* renamed from: j */
    public final void m67104j(long j) {
        this.f107066e = (int) j;
    }

    /* renamed from: k */
    public final void m67105k(byte[] bArr) {
        this.f107067f = new ByteArrayInputStream(bArr);
    }

    public void read(InputStream inputStream) throws IOException, Error, Pack200Exception {
        int[] m67096b = m67096b("archive_magic_word", inputStream, Codec.BYTE1, f107059C.length);
        int i = 0;
        while (true) {
            int[] iArr = f107059C;
            if (i >= iArr.length) {
                BHSDCodec bHSDCodec = Codec.UNSIGNED5;
                m67103i(m67095a("archive_minver", inputStream, bHSDCodec));
                m67102h(m67095a("archive_majver", inputStream, bHSDCodec));
                this.f107087z = new SegmentOptions(m67095a("archive_options", inputStream, bHSDCodec));
                m67097c(inputStream);
                m67098d(inputStream);
                m67100f(inputStream);
                m67099e(inputStream);
                if (getBandHeadersSize() > 0) {
                    byte[] bArr = new byte[getBandHeadersSize()];
                    m67101g(inputStream, bArr);
                    m67105k(bArr);
                }
                this.f107061B -= inputStream.available();
                return;
            }
            if (m67096b[i] != iArr[i]) {
                throw new Error("Bad header");
            }
            i++;
        }
    }

    public void setArchiveModtime(long j) {
        this.f107064c = j;
    }

    public void setArchiveSize(long j) {
        this.f107065d = j;
    }

    public void setSegmentsRemaining(long j) {
        this.f107086y = (int) j;
    }

    public void unpack() {
    }
}
