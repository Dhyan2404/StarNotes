package org.apache.xerces.xinclude;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.io.ASCIIReader;
import org.apache.xerces.impl.io.Latin1Reader;
import org.apache.xerces.impl.io.UTF16Reader;
import org.apache.xerces.impl.io.UTF8Reader;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public class XIncludeTextReader {

    /* renamed from: a */
    public Reader f113580a;

    /* renamed from: b */
    public final XIncludeHandler f113581b;

    /* renamed from: c */
    public XMLInputSource f113582c;

    /* renamed from: d */
    public XMLErrorReporter f113583d;

    /* renamed from: e */
    public XMLString f113584e;

    public XIncludeTextReader(XMLInputSource xMLInputSource, XIncludeHandler xIncludeHandler, int i) throws IOException {
        this.f113584e = new XMLString();
        this.f113581b = xIncludeHandler;
        this.f113582c = xMLInputSource;
        this.f113584e = new XMLString(new char[i + 1], 0, 0);
    }

    /* renamed from: a */
    public final Reader m70631a(InputStream inputStream) {
        return new ASCIIReader(inputStream, this.f113584e.f113585ch.length, this.f113583d.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210"), this.f113583d.getLocale());
    }

    /* renamed from: b */
    public final Reader m70632b(InputStream inputStream) {
        return new Latin1Reader(inputStream, this.f113584e.f113585ch.length);
    }

    /* renamed from: c */
    public final Reader m70633c(InputStream inputStream, boolean z) {
        return new UTF16Reader(inputStream, this.f113584e.f113585ch.length << 1, z, this.f113583d.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210"), this.f113583d.getLocale());
    }

    public void close() throws IOException {
        Reader reader = this.f113580a;
        if (reader != null) {
            reader.close();
            this.f113580a = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
    
        if (r0 == 191) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String consumeBOM(java.io.InputStream r7, java.lang.String r8) throws java.io.IOException {
        /*
            r6 = this;
            r6 = 3
            byte[] r0 = new byte[r6]
            r7.mark(r6)
            java.lang.String r1 = "UTF-8"
            boolean r1 = r8.equals(r1)
            r2 = 1
            r3 = 2
            r4 = 0
            r5 = 255(0xff, float:3.57E-43)
            if (r1 == 0) goto L32
            int r1 = r7.read(r0, r4, r6)
            if (r1 != r6) goto L2e
            r6 = r0[r4]
            r6 = r6 & r5
            r1 = r0[r2]
            r1 = r1 & r5
            r0 = r0[r3]
            r0 = r0 & r5
            r2 = 239(0xef, float:3.35E-43)
            if (r6 != r2) goto L2e
            r6 = 187(0xbb, float:2.62E-43)
            if (r1 != r6) goto L2e
            r6 = 191(0xbf, float:2.68E-43)
            if (r0 == r6) goto L56
        L2e:
            r7.reset()
            goto L56
        L32:
            java.lang.String r6 = "UTF-16"
            boolean r6 = r8.startsWith(r6)
            if (r6 == 0) goto L56
            int r6 = r7.read(r0, r4, r3)
            if (r6 != r3) goto L2e
            r6 = r0[r4]
            r6 = r6 & r5
            r0 = r0[r2]
            r0 = r0 & r5
            r1 = 254(0xfe, float:3.56E-43)
            if (r6 != r1) goto L4f
            if (r0 != r5) goto L4f
            java.lang.String r6 = "UTF-16BE"
            return r6
        L4f:
            if (r6 != r5) goto L2e
            if (r0 != r1) goto L2e
            java.lang.String r6 = "UTF-16LE"
            return r6
        L56:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.xinclude.XIncludeTextReader.consumeBOM(java.io.InputStream, java.lang.String):java.lang.String");
    }

    /* renamed from: d */
    public final Reader m70634d(InputStream inputStream) {
        return new UTF8Reader(inputStream, this.f113584e.f113585ch.length, this.f113583d.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210"), this.f113583d.getLocale());
    }

    public String getEncodingName(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4];
        inputStream.mark(4);
        int read = inputStream.read(bArr, 0, 4);
        inputStream.reset();
        if (read == 4) {
            return getEncodingName(bArr);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x010e, code lost:
    
        if (r2 != null) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0118, code lost:
    
        if (r5.endsWith("+xml") != false) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.Reader getReader(org.apache.xerces.xni.parser.XMLInputSource r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.xinclude.XIncludeTextReader.getReader(org.apache.xerces.xni.parser.XMLInputSource):java.io.Reader");
    }

    public boolean isValid(int i) {
        return XMLChar.isValid(i);
    }

    public void parse() throws IOException {
        int i;
        Reader reader = getReader(this.f113582c);
        this.f113580a = reader;
        this.f113582c = null;
        char[] cArr = this.f113584e.f113585ch;
        int read = reader.read(cArr, 0, cArr.length - 1);
        this.f113581b.f113574q = true;
        while (read != -1) {
            int i2 = 0;
            while (i2 < read) {
                char c = this.f113584e.f113585ch[i2];
                if (!isValid(c)) {
                    if (XMLChar.isHighSurrogate(c)) {
                        i2++;
                        if (i2 < read) {
                            i = this.f113584e.f113585ch[i2];
                        } else {
                            int read2 = this.f113580a.read();
                            i = read2;
                            if (read2 != -1) {
                                this.f113584e.f113585ch[read] = (char) read2;
                                read++;
                                i = read2;
                            }
                        }
                        if (XMLChar.isLowSurrogate(i)) {
                            int supplemental = XMLChar.supplemental(c, (char) i);
                            if (!isValid(supplemental)) {
                                this.f113583d.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInContent", new Object[]{Integer.toString(supplemental, 16)}, (short) 2);
                            }
                        } else {
                            this.f113583d.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInContent", new Object[]{Integer.toString(i, 16)}, (short) 2);
                        }
                    } else {
                        this.f113583d.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInContent", new Object[]{Integer.toString(c, 16)}, (short) 2);
                    }
                }
                i2++;
            }
            XIncludeHandler xIncludeHandler = this.f113581b;
            if (xIncludeHandler != null && read > 0) {
                XMLString xMLString = this.f113584e;
                xMLString.offset = 0;
                xMLString.length = read;
                xIncludeHandler.characters(xMLString, xIncludeHandler.modifyAugmentations(null, true));
            }
            Reader reader2 = this.f113580a;
            char[] cArr2 = this.f113584e.f113585ch;
            read = reader2.read(cArr2, 0, cArr2.length - 1);
        }
    }

    public void setBufferSize(int i) {
        XMLString xMLString = this.f113584e;
        int i2 = i + 1;
        if (xMLString.f113585ch.length != i2) {
            xMLString.f113585ch = new char[i2];
        }
    }

    public void setErrorReporter(XMLErrorReporter xMLErrorReporter) {
        this.f113583d = xMLErrorReporter;
    }

    public void setInputSource(XMLInputSource xMLInputSource) {
        this.f113582c = xMLInputSource;
    }

    public String getEncodingName(byte[] bArr) {
        int i = bArr[0] & 255;
        int i2 = bArr[1] & 255;
        if (i == 254 && i2 == 255) {
            return "UTF-16BE";
        }
        if (i == 255 && i2 == 254) {
            return "UTF-16LE";
        }
        int i3 = bArr[2] & 255;
        if (i == 239 && i2 == 187 && i3 == 191) {
            return "UTF-8";
        }
        int i4 = bArr[3] & 255;
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 60) {
            return "ISO-10646-UCS-4";
        }
        if (i == 60 && i2 == 0 && i3 == 0 && i4 == 0) {
            return "ISO-10646-UCS-4";
        }
        if (i == 0 && i2 == 0 && i3 == 60 && i4 == 0) {
            return "ISO-10646-UCS-4";
        }
        if (i == 0 && i2 == 60 && i3 == 0 && i4 == 0) {
            return "ISO-10646-UCS-4";
        }
        if (i == 0 && i2 == 60 && i3 == 0 && i4 == 63) {
            return "UTF-16BE";
        }
        if (i == 60 && i2 == 0 && i3 == 63 && i4 == 0) {
            return "UTF-16LE";
        }
        if (i == 76 && i2 == 111 && i3 == 167 && i4 == 148) {
            return "CP037";
        }
        return null;
    }
}
