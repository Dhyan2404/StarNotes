package com.sun.org.apache.xerces.internal.xinclude;

import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* loaded from: classes10.dex */
public class XIncludeTextReader {
    private XMLErrorReporter fErrorReporter;
    private XIncludeHandler fHandler;
    private Reader fReader;
    private XMLInputSource fSource;
    private XMLString fTempString;

    public XIncludeTextReader(XMLInputSource xMLInputSource, XIncludeHandler xIncludeHandler, int i) throws IOException {
        this.fTempString = new XMLString();
        this.fHandler = xIncludeHandler;
        this.fSource = xMLInputSource;
        this.fTempString = new XMLString(new char[i + 1], 0, 0);
    }

    public void close() throws IOException {
        Reader reader = this.fReader;
        if (reader != null) {
            reader.close();
            this.fReader = null;
        }
    }

    public String consumeBOM(InputStream inputStream, String str) throws IOException {
        byte[] bArr = new byte[3];
        inputStream.mark(3);
        if (str.equals("UTF-8")) {
            if (inputStream.read(bArr, 0, 3) == 3) {
                int i = bArr[0] & 255;
                int i2 = bArr[1] & 255;
                int i3 = bArr[2] & 255;
                if (i != 239 || i2 != 187 || i3 != 191) {
                    inputStream.reset();
                }
            } else {
                inputStream.reset();
            }
        } else if (str.startsWith("UTF-16")) {
            if (inputStream.read(bArr, 0, 2) == 2) {
                int i4 = bArr[0] & 255;
                int i5 = bArr[1] & 255;
                if (i4 == 254 && i5 == 255) {
                    return "UTF-16BE";
                }
                if (i4 == 255 && i5 == 254) {
                    return "UTF-16LE";
                }
            }
            inputStream.reset();
        }
        return str;
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

    /* JADX WARN: Removed duplicated region for block: B:54:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.Reader getReader(com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.xinclude.XIncludeTextReader.getReader(com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource):java.io.Reader");
    }

    public boolean isValid(int i) {
        return XMLChar.isValid(i);
    }

    public void parse() throws IOException {
        int i;
        Reader reader = getReader(this.fSource);
        this.fReader = reader;
        this.fSource = null;
        char[] cArr = this.fTempString.f64120ch;
        int read = reader.read(cArr, 0, cArr.length - 1);
        while (read != -1) {
            int i2 = 0;
            while (i2 < read) {
                char c = this.fTempString.f64120ch[i2];
                if (!isValid(c)) {
                    if (XMLChar.isHighSurrogate(c)) {
                        i2++;
                        if (i2 < read) {
                            i = this.fTempString.f64120ch[i2];
                        } else {
                            int read2 = this.fReader.read();
                            i = read2;
                            if (read2 != -1) {
                                this.fTempString.f64120ch[read] = (char) read2;
                                read++;
                                i = read2;
                            }
                        }
                        if (XMLChar.isLowSurrogate(i)) {
                            int supplemental = XMLChar.supplemental(c, (char) i);
                            if (!isValid(supplemental)) {
                                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInContent", new Object[]{Integer.toString(supplemental, 16)}, (short) 2);
                            }
                        } else {
                            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInContent", new Object[]{Integer.toString(i, 16)}, (short) 2);
                        }
                    } else {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInContent", new Object[]{Integer.toString(c, 16)}, (short) 2);
                    }
                }
                i2++;
            }
            XIncludeHandler xIncludeHandler = this.fHandler;
            if (xIncludeHandler != null && read > 0) {
                XMLString xMLString = this.fTempString;
                xMLString.offset = 0;
                xMLString.length = read;
                xIncludeHandler.characters(xMLString, xIncludeHandler.modifyAugmentations(null, true));
            }
            Reader reader2 = this.fReader;
            char[] cArr2 = this.fTempString.f64120ch;
            read = reader2.read(cArr2, 0, cArr2.length - 1);
        }
    }

    public void setBufferSize(int i) {
        XMLString xMLString = this.fTempString;
        int i2 = i + 1;
        if (xMLString.f64120ch.length != i2) {
            xMLString.f64120ch = new char[i2];
        }
    }

    public void setErrorReporter(XMLErrorReporter xMLErrorReporter) {
        this.fErrorReporter = xMLErrorReporter;
    }

    public void setInputSource(XMLInputSource xMLInputSource) {
        this.fSource = xMLInputSource;
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
