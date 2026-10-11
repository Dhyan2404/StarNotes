package com.onegravity.rteditor.converter.tagsoup;

import com.onyx.galaxy.note.DataBinderMapperImpl;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PushbackReader;
import java.io.Reader;
import okio.Utf8;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;

/* loaded from: classes7.dex */
public class HTMLScanner implements Scanner, Locator {

    /* renamed from: A0 */
    public static final int f40205A0 = 25;

    /* renamed from: B0 */
    public static final int f40206B0 = 26;

    /* renamed from: C0 */
    public static final int f40207C0 = 27;

    /* renamed from: D0 */
    public static final int f40208D0 = 28;

    /* renamed from: E0 */
    public static final int f40209E0 = 29;

    /* renamed from: F0 */
    public static final int f40210F0 = 30;

    /* renamed from: G0 */
    public static final int f40211G0 = 31;

    /* renamed from: H0 */
    public static final int f40212H0 = 32;

    /* renamed from: I0 */
    public static final int f40213I0 = 33;

    /* renamed from: J */
    public static final int f40214J = 12;

    /* renamed from: J0 */
    public static final int f40215J0 = 34;

    /* renamed from: K0 */
    public static final int f40216K0 = 35;

    /* renamed from: L0 */
    public static final int f40217L0 = 1;

    /* renamed from: M0 */
    public static final int f40218M0 = 2;

    /* renamed from: N0 */
    public static final int f40219N0 = 3;

    /* renamed from: O */
    public static final int f40220O = 13;

    /* renamed from: O0 */
    public static final int f40221O0 = 4;

    /* renamed from: P0 */
    public static final int f40222P0 = 5;

    /* renamed from: Q */
    public static final int f40223Q = 14;

    /* renamed from: Q0 */
    public static final int f40224Q0 = 6;

    /* renamed from: R0 */
    public static final int f40225R0 = 7;

    /* renamed from: S0 */
    public static final int f40226S0 = 8;

    /* renamed from: T0 */
    public static final int f40227T0 = 9;

    /* renamed from: U0 */
    public static final int f40228U0 = 10;

    /* renamed from: V0 */
    public static final int f40229V0 = 11;

    /* renamed from: W0 */
    public static final int f40230W0 = 12;

    /* renamed from: X0 */
    public static final int f40231X0 = 13;

    /* renamed from: Y0 */
    public static final int f40232Y0 = 14;

    /* renamed from: Z */
    public static final int f40233Z = 15;

    /* renamed from: Z0 */
    public static final int f40234Z0 = 15;

    /* renamed from: a1 */
    public static final int f40235a1 = 16;

    /* renamed from: b1 */
    public static final int f40236b1 = 17;

    /* renamed from: c1 */
    public static final int f40237c1 = 18;

    /* renamed from: d1 */
    public static final int f40238d1 = 19;

    /* renamed from: e1 */
    public static final int f40239e1 = 20;

    /* renamed from: f1 */
    public static final int f40240f1 = 21;

    /* renamed from: g1 */
    public static final int f40241g1 = 22;

    /* renamed from: h1 */
    public static final int f40242h1 = 23;

    /* renamed from: i1 */
    public static final int f40243i1 = 24;

    /* renamed from: j1 */
    public static final int f40244j1 = 25;

    /* renamed from: k0 */
    public static final int f40245k0 = 16;

    /* renamed from: k1 */
    public static final int f40246k1 = 26;

    /* renamed from: l1 */
    public static final int f40247l1 = 27;

    /* renamed from: m1 */
    public static final int f40248m1 = 28;

    /* renamed from: n1 */
    public static final int f40249n1 = 29;

    /* renamed from: o1 */
    public static final int f40250o1 = 30;

    /* renamed from: p */
    public static final int f40251p = 1;

    /* renamed from: p1 */
    public static final int f40252p1 = 31;

    /* renamed from: q */
    public static final int f40253q = 2;

    /* renamed from: q0 */
    public static final int f40254q0 = 17;

    /* renamed from: q1 */
    public static final int f40255q1 = 32;

    /* renamed from: r */
    public static final int f40256r = 3;

    /* renamed from: r1 */
    public static int[] f40257r1 = {1, 47, 5, 22, 1, 61, 4, 3, 1, 62, 6, 28, 1, 0, 27, 1, 1, -1, 6, 21, 1, 32, 4, 24, 1, 10, 4, 24, 1, 9, 4, 24, 2, 39, 7, 34, 2, 0, 27, 2, 2, -1, 8, 21, 2, 32, 29, 2, 2, 10, 29, 2, 2, 9, 29, 2, 3, 39, 28, 2, 3, 34, 28, 31, 3, 62, 8, 28, 3, 0, 27, 32, 3, -1, 8, 21, 3, 32, 28, 3, 3, 10, 28, 3, 3, 9, 28, 3, 4, 67, 28, 5, 4, 0, 28, 19, 4, -1, 28, 21, 5, 68, 28, 6, 5, 0, 28, 19, 5, -1, 28, 21, 6, 65, 28, 7, 6, 0, 28, 19, 6, -1, 28, 21, 7, 84, 28, 8, 7, 0, 28, 19, 7, -1, 28, 21, 8, 65, 28, 9, 8, 0, 28, 19, 8, -1, 28, 21, 9, 91, 28, 12, 9, 0, 28, 19, 9, -1, 28, 21, 10, 60, 27, 11, 10, 0, 27, 10, 10, -1, 23, 21, 11, 47, 32, 25, 11, 0, 27, 10, 11, -1, 32, 21, 12, 93, 27, 13, 12, 0, 27, 12, 12, -1, 28, 21, 13, 93, 27, 14, 13, 0, 27, 12, 13, -1, 28, 21, 14, 62, 9, 28, 14, 0, 27, 12, 14, -1, 28, 21, 15, 45, 28, 16, 15, 0, 27, 16, 15, -1, 10, 21, 16, 45, 28, 17, 16, 0, 27, 16, 16, -1, 10, 21, 17, 45, 28, 18, 17, 0, 20, 16, 17, -1, 10, 21, 18, 45, 22, 18, 18, 62, 10, 28, 18, 0, 21, 16, 18, -1, 10, 21, 19, 45, 28, 15, 19, 91, 28, 4, 19, 62, 28, 28, 19, 0, 27, 20, 19, -1, 28, 21, 20, 62, 11, 28, 20, 0, 27, 20, 20, -1, 28, 21, 22, 62, 12, 28, 22, 0, 27, 1, 22, 32, 28, 34, 22, 10, 28, 34, 22, 9, 28, 34, 23, 0, 13, 23, 23, -1, 13, 21, 24, 61, 28, 3, 24, 62, 3, 28, 24, 0, 2, 1, 24, -1, 3, 21, 24, 32, 28, 24, 24, 10, 28, 24, 24, 9, 28, 24, 25, 62, 15, 28, 25, 0, 27, 25, 25, -1, 15, 21, 25, 32, 28, 25, 25, 10, 28, 25, 25, 9, 28, 25, 26, 47, 28, 22, 26, 62, 17, 28, 26, 0, 27, 26, 26, -1, 28, 21, 26, 32, 16, 34, 26, 10, 16, 34, 26, 9, 16, 34, 27, 0, 13, 27, 27, -1, 13, 21, 28, 38, 14, 23, 28, 60, 23, 33, 28, 0, 27, 28, 28, -1, 23, 21, 29, 62, 24, 28, 29, 0, 27, 29, 29, -1, 24, 21, 30, 62, 26, 28, 30, 0, 27, 30, 30, -1, 26, 21, 30, 32, 25, 29, 30, 10, 25, 29, 30, 9, 25, 29, 31, 34, 7, 34, 31, 0, 27, 31, 31, -1, 8, 21, 31, 32, 29, 31, 31, 10, 29, 31, 31, 9, 29, 31, 32, 62, 8, 28, 32, 0, 27, 32, 32, -1, 8, 21, 32, 32, 7, 34, 32, 10, 7, 34, 32, 9, 7, 34, 33, 33, 28, 19, 33, 63, 28, 30, 33, 47, 28, 25, 33, 60, 27, 33, 33, 0, 27, 26, 33, -1, 19, 21, 33, 32, 18, 28, 33, 10, 18, 28, 33, 9, 18, 28, 34, 47, 28, 22, 34, 62, 30, 28, 34, 0, 27, 1, 34, -1, 30, 21, 34, 32, 28, 34, 34, 10, 28, 34, 34, 9, 28, 34, 35, 0, 13, 35, 35, -1, 13, 21};

    /* renamed from: s */
    public static final int f40258s = 4;

    /* renamed from: t */
    public static final int f40259t = 5;

    /* renamed from: t0 */
    public static final int f40260t0 = 18;

    /* renamed from: u */
    public static final int f40261u = 6;

    /* renamed from: u0 */
    public static final int f40262u0 = 19;

    /* renamed from: v */
    public static final int f40263v = 7;

    /* renamed from: v0 */
    public static final int f40264v0 = 20;

    /* renamed from: w */
    public static final int f40265w = 8;

    /* renamed from: w0 */
    public static final int f40266w0 = 21;

    /* renamed from: x */
    public static final int f40267x = 9;

    /* renamed from: x0 */
    public static final int f40268x0 = 22;

    /* renamed from: y */
    public static final int f40269y = 10;

    /* renamed from: y0 */
    public static final int f40270y0 = 23;

    /* renamed from: z */
    public static final int f40271z = 11;

    /* renamed from: z0 */
    public static final int f40272z0 = 24;

    /* renamed from: e */
    public String f40273e;

    /* renamed from: f */
    public String f40274f;

    /* renamed from: g */
    public int f40275g;

    /* renamed from: h */
    public int f40276h;

    /* renamed from: i */
    public int f40277i;

    /* renamed from: j */
    public int f40278j;

    /* renamed from: k */
    public int f40279k;

    /* renamed from: l */
    public int f40280l;

    /* renamed from: n */
    public int f40282n;

    /* renamed from: m */
    public char[] f40281m = new char[200];

    /* renamed from: o */
    public int[] f40283o = {8364, Utf8.REPLACEMENT_CODE_POINT, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, DataBinderMapperImpl.f53082N5, 8249, 338, Utf8.REPLACEMENT_CODE_POINT, 381, Utf8.REPLACEMENT_CODE_POINT, Utf8.REPLACEMENT_CODE_POINT, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, DataBinderMapperImpl.f53089O5, 8250, 339, Utf8.REPLACEMENT_CODE_POINT, 382, 376};

    /* renamed from: a */
    public final void m31626a() {
        this.f40276h = this.f40278j;
        this.f40275g = this.f40277i;
    }

    /* renamed from: b */
    public final void m31627b(int i, ScanHandler scanHandler) throws IOException, SAXException {
        m31628c(scanHandler);
        char[] cArr = this.f40281m;
        int i2 = this.f40282n;
        this.f40282n = i2 + 1;
        cArr[i2] = (char) i;
    }

    /* renamed from: c */
    public final void m31628c(ScanHandler scanHandler) throws IOException, SAXException {
        int i = this.f40282n;
        char[] cArr = this.f40281m;
        if (i >= cArr.length - 20) {
            int i2 = this.f40279k;
            if (i2 == 28 || i2 == 10) {
                scanHandler.pcdata(cArr, 0, i);
                this.f40282n = 0;
            } else {
                char[] cArr2 = new char[cArr.length * 2];
                System.arraycopy(cArr, 0, cArr2, 0, i + 1);
                this.f40281m = cArr2;
            }
        }
    }

    /* renamed from: d */
    public final void m31629d(String str, int i, ScanHandler scanHandler) throws IOException, SAXException {
        if (str == null) {
            m31627b(i, scanHandler);
            return;
        }
        m31628c(scanHandler);
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char[] cArr = this.f40281m;
            int i3 = this.f40282n;
            this.f40282n = i3 + 1;
            cArr[i3] = str.charAt(i2);
        }
    }

    /* renamed from: e */
    public final void m31630e(PushbackReader pushbackReader, int i) throws IOException {
        if (i != -1) {
            pushbackReader.unread(i);
        }
    }

    @Override // org.xml.sax.Locator
    public int getColumnNumber() {
        return this.f40276h;
    }

    @Override // org.xml.sax.Locator
    public int getLineNumber() {
        return this.f40275g;
    }

    @Override // org.xml.sax.Locator
    public String getPublicId() {
        return this.f40273e;
    }

    @Override // org.xml.sax.Locator
    public String getSystemId() {
        return this.f40274f;
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.Scanner
    public void resetDocumentLocator(String str, String str2) {
        this.f40273e = str;
        this.f40274f = str2;
        this.f40278j = 0;
        this.f40277i = 0;
        this.f40276h = 0;
        this.f40275g = 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:47:0x00e2. Please report as an issue. */
    @Override // com.onegravity.rteditor.converter.tagsoup.Scanner
    public void scan(Reader reader, ScanHandler scanHandler) throws IOException, SAXException {
        PushbackReader pushbackReader;
        String str;
        this.f40279k = 28;
        if (reader instanceof PushbackReader) {
            pushbackReader = (PushbackReader) reader;
        } else {
            pushbackReader = reader instanceof BufferedReader ? new PushbackReader(reader) : new PushbackReader(new BufferedReader(reader, 200));
        }
        int read = pushbackReader.read();
        if (read != 65279) {
            m31630e(pushbackReader, read);
        }
        while (this.f40279k != 21) {
            int read2 = pushbackReader.read();
            char c = (char) read2;
            boolean isHighSurrogate = Character.isHighSurrogate(c);
            int read3 = isHighSurrogate ? pushbackReader.read() : -1;
            if (isHighSurrogate) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(c);
                stringBuffer.append((char) read3);
                str = stringBuffer.toString();
            } else {
                str = null;
            }
            if (!isHighSurrogate && read2 >= 128 && read2 <= 159) {
                read2 = this.f40283o[read2 - 128];
            }
            if (!isHighSurrogate && read2 == 13 && (read2 = pushbackReader.read()) != 10) {
                m31630e(pushbackReader, read2);
                read2 = 10;
            }
            if (isHighSurrogate || read2 != 10) {
                this.f40278j++;
            } else {
                this.f40277i++;
                this.f40278j = 0;
            }
            if (!isHighSurrogate || read2 >= 32 || read2 == 10 || read2 == 9 || read2 == -1) {
                int i = 0;
                int i2 = 0;
                while (true) {
                    int[] iArr = f40257r1;
                    if (i < iArr.length) {
                        if (this.f40279k == iArr[i]) {
                            int i3 = iArr[i + 1];
                            if (i3 == 0) {
                                i2 = iArr[i + 2];
                                this.f40280l = iArr[i + 3];
                            } else if (!isHighSurrogate && i3 == read2) {
                                i2 = iArr[i + 2];
                                this.f40280l = iArr[i + 3];
                            }
                            i += 4;
                        } else if (i2 == 0) {
                            i += 4;
                        }
                    }
                }
                int i4 = i2;
                switch (i4) {
                    case 0:
                        throw new Error("HTMLScanner can't cope with " + Integer.toString(read2) + " in state " + Integer.toString(this.f40279k));
                    case 1:
                        scanHandler.adup(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 2:
                        scanHandler.adup(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        if (str != null) {
                            m31629d(str, read2, scanHandler);
                        }
                        this.f40279k = this.f40280l;
                        break;
                    case 3:
                        scanHandler.adup(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        scanHandler.stagc(this.f40281m, 0, 0);
                        this.f40279k = this.f40280l;
                        break;
                    case 4:
                        scanHandler.aname(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 5:
                        scanHandler.aname(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        scanHandler.adup(this.f40281m, 0, 0);
                        this.f40279k = this.f40280l;
                        break;
                    case 6:
                        scanHandler.aname(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        scanHandler.adup(this.f40281m, 0, 0);
                        scanHandler.stagc(this.f40281m, 0, this.f40282n);
                        this.f40279k = this.f40280l;
                        break;
                    case 7:
                        scanHandler.aval(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 8:
                        scanHandler.aval(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        scanHandler.stagc(this.f40281m, 0, 0);
                        this.f40279k = this.f40280l;
                        break;
                    case 9:
                        m31626a();
                        int i5 = this.f40282n;
                        if (i5 > 1) {
                            this.f40282n = i5 - 2;
                        }
                        scanHandler.pcdata(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 10:
                        m31626a();
                        scanHandler.cmnt(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 11:
                        scanHandler.decl(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 12:
                        m31626a();
                        int i6 = this.f40282n;
                        if (i6 > 0) {
                            scanHandler.mo31655gi(this.f40281m, 0, i6);
                        }
                        this.f40282n = 0;
                        scanHandler.stage(this.f40281m, 0, 0);
                        this.f40279k = this.f40280l;
                        break;
                    case 13:
                        m31626a();
                        int i7 = this.f40279k;
                        if (i7 == 23 && c == '#') {
                            this.f40280l = 27;
                            m31629d(str, read2, scanHandler);
                        } else if (i7 == 27 && (c == 'x' || c == 'X')) {
                            this.f40280l = 35;
                            m31629d(str, read2, scanHandler);
                        } else if (i7 == 23 && Character.isLetterOrDigit(c)) {
                            m31629d(str, read2, scanHandler);
                        } else if (this.f40279k == 27 && Character.isDigit(c)) {
                            m31629d(str, read2, scanHandler);
                        } else if (this.f40279k != 35 || (!Character.isDigit(c) && "abcdefABCDEF".indexOf(c) == -1)) {
                            scanHandler.entity(this.f40281m, 1, this.f40282n - 1);
                            int entity = scanHandler.getEntity();
                            if (entity != 0) {
                                this.f40282n = 0;
                                if (entity >= 128 && entity <= 159) {
                                    entity = this.f40283o[entity - 128];
                                }
                                if (entity >= 32 && (entity < 55296 || entity > 57343)) {
                                    if (entity <= 65535) {
                                        m31627b(entity, scanHandler);
                                    } else {
                                        int i8 = entity - 65536;
                                        m31627b((i8 >> 10) + 55296, scanHandler);
                                        m31627b((i8 & 1023) + 56320, scanHandler);
                                    }
                                }
                                if (isHighSurrogate || read2 != 59) {
                                    if (isHighSurrogate) {
                                        m31630e(pushbackReader, read3);
                                        this.f40278j--;
                                    }
                                    m31630e(pushbackReader, read2);
                                    this.f40278j--;
                                }
                            } else {
                                if (isHighSurrogate) {
                                    m31630e(pushbackReader, read3);
                                    this.f40278j--;
                                }
                                m31630e(pushbackReader, read2);
                                this.f40278j--;
                            }
                            this.f40280l = 28;
                            this.f40279k = this.f40280l;
                            break;
                        } else {
                            m31629d(str, read2, scanHandler);
                        }
                        this.f40279k = this.f40280l;
                        break;
                    case 14:
                        scanHandler.pcdata(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        m31629d(str, read2, scanHandler);
                        this.f40279k = this.f40280l;
                        break;
                    case 15:
                        scanHandler.etag(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 16:
                        scanHandler.mo31655gi(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 17:
                        scanHandler.mo31655gi(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        scanHandler.stagc(this.f40281m, 0, 0);
                        this.f40279k = this.f40280l;
                        break;
                    case 18:
                        m31626a();
                        m31627b(60, scanHandler);
                        m31629d(str, read2, scanHandler);
                        this.f40279k = this.f40280l;
                        break;
                    case 19:
                        m31626a();
                        m31627b(60, scanHandler);
                        scanHandler.pcdata(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 20:
                        m31627b(45, scanHandler);
                        m31629d(str, read2, scanHandler);
                        this.f40279k = this.f40280l;
                        break;
                    case 21:
                        m31627b(45, scanHandler);
                        m31627b(32, scanHandler);
                        m31627b(45, scanHandler);
                        m31629d(str, read2, scanHandler);
                        this.f40279k = this.f40280l;
                        break;
                    case 22:
                        m31627b(45, scanHandler);
                        m31627b(32, scanHandler);
                        this.f40279k = this.f40280l;
                        break;
                    case 23:
                        m31626a();
                        scanHandler.pcdata(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 24:
                        m31626a();
                        scanHandler.mo31665pi(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 25:
                        scanHandler.pitarget(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 26:
                        scanHandler.pitarget(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        scanHandler.mo31665pi(this.f40281m, 0, 0);
                        this.f40279k = this.f40280l;
                        break;
                    case 27:
                        m31629d(str, read2, scanHandler);
                        this.f40279k = this.f40280l;
                        break;
                    case 28:
                        this.f40279k = this.f40280l;
                        break;
                    case 29:
                        m31627b(32, scanHandler);
                        this.f40279k = this.f40280l;
                        break;
                    case 30:
                        scanHandler.stagc(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    case 31:
                        m31630e(pushbackReader, read2);
                        this.f40278j--;
                        this.f40279k = this.f40280l;
                        break;
                    case 32:
                        int i9 = this.f40282n;
                        if (i9 > 0) {
                            this.f40282n = i9 - 1;
                        }
                        scanHandler.pcdata(this.f40281m, 0, this.f40282n);
                        this.f40282n = 0;
                        this.f40279k = this.f40280l;
                        break;
                    default:
                        throw new Error("Can't process state " + i4);
                }
            }
        }
        scanHandler.eof(this.f40281m, 0, 0);
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.Scanner
    public void startCDATA() {
        this.f40280l = 10;
    }
}
