package org.mortbay.jetty;

import java.io.IOException;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferUtil;
import org.mortbay.io.Buffers;
import org.mortbay.io.EndPoint;
import org.mortbay.io.Portable;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class HttpGenerator extends AbstractGenerator {

    /* renamed from: j */
    public static byte[] f114624j = {48, 13, 10, 13, 10};

    /* renamed from: k */
    public static byte[] f114625k = Portable.getBytes("Content-Length: 0\r\n");

    /* renamed from: l */
    public static byte[] f114626l = Portable.getBytes("Connection: keep-alive\r\n");

    /* renamed from: m */
    public static byte[] f114627m = Portable.getBytes("Connection: close\r\n");

    /* renamed from: n */
    public static byte[] f114628n = Portable.getBytes("Connection: ");

    /* renamed from: o */
    public static byte[] f114629o = Portable.getBytes("\r\n");

    /* renamed from: p */
    public static byte[] f114630p = Portable.getBytes("Transfer-Encoding: chunked\r\n");

    /* renamed from: q */
    public static byte[] f114631q = Portable.getBytes("Server: Jetty(6.0.x)\r\n");

    /* renamed from: r */
    public static int f114632r = 12;

    /* renamed from: f */
    public boolean f114633f;

    /* renamed from: g */
    public boolean f114634g;

    /* renamed from: h */
    public boolean f114635h;

    /* renamed from: i */
    public boolean f114636i;

    public HttpGenerator(Buffers buffers, EndPoint endPoint, int i, int i2) {
        super(buffers, endPoint, i, i2);
        this.f114633f = false;
        this.f114634g = false;
        this.f114635h = false;
        this.f114636i = false;
    }

    public static void setServerVersion(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Server: Jetty(");
        stringBuffer.append(str);
        stringBuffer.append(")\r\n");
        f114631q = Portable.getBytes(stringBuffer.toString());
    }

    @Override // org.mortbay.jetty.Generator
    public void addContent(Buffer buffer, boolean z) throws IOException {
        if (!this._noContent) {
            if (!this._last && this._state != 4) {
                this._last = z;
                Buffer buffer2 = this._content;
                if ((buffer2 != null && buffer2.length() > 0) || this.f114636i) {
                    if (this._endp.isOpen()) {
                        flush();
                        Buffer buffer3 = this._content;
                        if ((buffer3 != null && buffer3.length() > 0) || this.f114636i) {
                            throw new IllegalStateException("FULL");
                        }
                    } else {
                        throw new EofException();
                    }
                }
                this._content = buffer;
                this._contentWritten += buffer.length();
                if (this._head) {
                    buffer.clear();
                    this._content = null;
                    return;
                }
                if (this._endp != null && this._buffer == null && buffer.length() > 0 && this._last) {
                    this.f114633f = true;
                    return;
                }
                if (this._buffer == null) {
                    this._buffer = this._buffers.getBuffer(this._contentBufferSize);
                }
                this._content.skip(this._buffer.put(this._content));
                if (this._content.length() == 0) {
                    this._content = null;
                    return;
                }
                return;
            }
            Log.debug("Ignoring extra content {}", buffer);
            buffer.clear();
            return;
        }
        throw new IllegalStateException("NO CONTENT");
    }

    @Override // org.mortbay.jetty.AbstractGenerator, org.mortbay.jetty.Generator
    public void complete() throws IOException {
        if (this._state == 4) {
            return;
        }
        super.complete();
        if (this._state < 3) {
            this._state = 3;
            if (this._contentLength == -2) {
                this.f114635h = true;
            }
        }
        flush();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0191  */
    @Override // org.mortbay.jetty.AbstractGenerator, org.mortbay.jetty.Generator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void completeHeader(org.mortbay.jetty.HttpFields r29, boolean r30) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1174
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.HttpGenerator.completeHeader(org.mortbay.jetty.HttpFields, boolean):void");
    }

    /* renamed from: e */
    public final void m71518e() {
        Buffer buffer;
        Buffer buffer2;
        if (!this.f114636i) {
            Buffer buffer3 = this._content;
            if (buffer3 != null && buffer3.length() > 0 && (buffer2 = this._buffer) != null && buffer2.space() > 0) {
                this._content.skip(this._buffer.put(this._content));
                if (this._content.length() == 0) {
                    this._content = null;
                }
            }
            if (this._contentLength == -2) {
                Buffer buffer4 = this._buffer;
                int length = buffer4 == null ? 0 : buffer4.length();
                if (length > 0) {
                    this.f114636i = true;
                    if (this._buffer.getIndex() == f114632r) {
                        Buffer buffer5 = this._buffer;
                        int index = buffer5.getIndex() - 2;
                        byte[] bArr = HttpTokens.CRLF;
                        buffer5.poke(index, bArr, 0, 2);
                        Buffer buffer6 = this._buffer;
                        buffer6.setGetIndex(buffer6.getIndex() - 2);
                        BufferUtil.prependHexInt(this._buffer, length);
                        if (this.f114634g) {
                            Buffer buffer7 = this._buffer;
                            buffer7.poke(buffer7.getIndex() - 2, bArr, 0, 2);
                            Buffer buffer8 = this._buffer;
                            buffer8.setGetIndex(buffer8.getIndex() - 2);
                            this.f114634g = false;
                        }
                    } else {
                        if (this.f114634g) {
                            if (this._header.length() > 0) {
                                throw new IllegalStateException("EOC");
                            }
                            this._header.put(HttpTokens.CRLF);
                            this.f114634g = false;
                        }
                        BufferUtil.putHexInt(this._header, length);
                        this._header.put(HttpTokens.CRLF);
                    }
                    if (this._buffer.space() >= 2) {
                        this._buffer.put(HttpTokens.CRLF);
                    } else {
                        this.f114634g = true;
                    }
                }
                if (this.f114635h && ((buffer = this._content) == null || buffer.length() == 0)) {
                    if (this.f114634g) {
                        if (this._buffer != null || this._header.space() < 2) {
                            Buffer buffer9 = this._buffer;
                            if (buffer9 != null && buffer9.space() >= 2) {
                                this._buffer.put(HttpTokens.CRLF);
                                this.f114634g = false;
                            }
                        } else {
                            this._header.put(HttpTokens.CRLF);
                            this.f114634g = false;
                        }
                    }
                    if (!this.f114634g && this.f114635h) {
                        if (this._buffer == null) {
                            int space = this._header.space();
                            byte[] bArr2 = f114624j;
                            if (space >= bArr2.length) {
                                if (!this._head) {
                                    this._header.put(bArr2);
                                    this.f114636i = true;
                                }
                                this.f114635h = false;
                            }
                        }
                        Buffer buffer10 = this._buffer;
                        if (buffer10 != null) {
                            int space2 = buffer10.space();
                            byte[] bArr3 = f114624j;
                            if (space2 >= bArr3.length) {
                                if (!this._head) {
                                    this._buffer.put(bArr3);
                                    this.f114636i = true;
                                }
                                this.f114635h = false;
                            }
                        }
                    }
                }
            }
        }
        Buffer buffer11 = this._content;
        if (buffer11 == null || buffer11.length() != 0) {
            return;
        }
        this._content = null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:40:0x0061. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0126 A[Catch: IOException -> 0x0133, LOOP:0: B:22:0x0032->B:44:0x0126, LOOP_END, TryCatch #0 {IOException -> 0x0133, blocks: (B:2:0x0000, B:4:0x0004, B:6:0x000c, B:8:0x0010, B:10:0x0014, B:11:0x0019, B:13:0x001d, B:15:0x0021, B:17:0x0025, B:18:0x002a, B:22:0x0032, B:24:0x0037, B:27:0x0040, B:29:0x0044, B:32:0x004d, B:34:0x0052, B:36:0x0056, B:39:0x005f, B:40:0x0061, B:44:0x0126, B:46:0x0129, B:90:0x0066, B:91:0x006b, B:48:0x006c, B:49:0x0078, B:50:0x0084, B:93:0x008e, B:94:0x0093, B:51:0x0094, B:52:0x009e, B:53:0x00a8, B:55:0x00ac, B:56:0x00af, B:58:0x00b8, B:60:0x00c3, B:62:0x00d5, B:64:0x00e1, B:67:0x00e5, B:68:0x00f4, B:70:0x00f8, B:72:0x00fc, B:74:0x0100, B:77:0x0106, B:79:0x010a, B:80:0x010c, B:82:0x0110, B:84:0x0114, B:86:0x011a, B:88:0x0120, B:98:0x012b, B:99:0x0132), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0129 A[SYNTHETIC] */
    @Override // org.mortbay.jetty.AbstractGenerator, org.mortbay.jetty.Generator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long flush() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.HttpGenerator.flush():long");
    }

    public int getBytesBuffered() {
        Buffer buffer = this._header;
        int length = buffer == null ? 0 : buffer.length();
        Buffer buffer2 = this._buffer;
        int length2 = length + (buffer2 == null ? 0 : buffer2.length());
        Buffer buffer3 = this._content;
        return length2 + (buffer3 != null ? buffer3.length() : 0);
    }

    @Override // org.mortbay.jetty.AbstractGenerator, org.mortbay.jetty.Generator
    public boolean isBufferFull() {
        Buffer buffer;
        return super.isBufferFull() || this.f114636i || this.f114633f || (this._contentLength == -2 && (buffer = this._buffer) != null && buffer.space() < f114632r);
    }

    public boolean isEmpty() {
        Buffer buffer;
        Buffer buffer2;
        Buffer buffer3 = this._header;
        return (buffer3 == null || buffer3.length() == 0) && ((buffer = this._buffer) == null || buffer.length() == 0) && ((buffer2 = this._content) == null || buffer2.length() == 0);
    }

    @Override // org.mortbay.jetty.AbstractGenerator
    public int prepareUncheckedAddContent() throws IOException {
        if (this._noContent || this._last || this._state == 4) {
            return -1;
        }
        Buffer buffer = this._content;
        if ((buffer != null && buffer.length() > 0) || this.f114636i) {
            flush();
            if ((buffer != null && buffer.length() > 0) || this.f114636i) {
                throw new IllegalStateException("FULL");
            }
        }
        if (this._buffer == null) {
            this._buffer = this._buffers.getBuffer(this._contentBufferSize);
        }
        this._contentWritten -= this._buffer.length();
        if (this._head) {
            return Integer.MAX_VALUE;
        }
        return this._buffer.space() - (this._contentLength == -2 ? f114632r : 0);
    }

    @Override // org.mortbay.jetty.AbstractGenerator, org.mortbay.jetty.Generator
    public void reset(boolean z) {
        super.reset(z);
        this.f114633f = false;
        this.f114634g = false;
        this.f114635h = false;
        this.f114636i = false;
        this._method = null;
        this._uri = null;
        this._noContent = false;
    }

    public void sendResponse(Buffer buffer) throws IOException {
        Buffer buffer2;
        if (this._noContent || this._state != 0 || (((buffer2 = this._content) != null && buffer2.length() > 0) || this.f114636i || this._head)) {
            throw new IllegalStateException();
        }
        this._last = true;
        this._content = buffer;
        this.f114633f = true;
        this._state = 3;
        long length = buffer.length();
        this._contentWritten = length;
        this._contentLength = length;
    }

    public String toString() {
        String stringBuffer;
        String stringBuffer2;
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append("HttpGenerator s=");
        stringBuffer3.append(this._state);
        stringBuffer3.append(" h=");
        String str = "null";
        if (this._header == null) {
            stringBuffer = "null";
        } else {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("");
            stringBuffer4.append(this._header.length());
            stringBuffer = stringBuffer4.toString();
        }
        stringBuffer3.append(stringBuffer);
        stringBuffer3.append(" b=");
        if (this._buffer == null) {
            stringBuffer2 = "null";
        } else {
            StringBuffer stringBuffer5 = new StringBuffer();
            stringBuffer5.append("");
            stringBuffer5.append(this._buffer.length());
            stringBuffer2 = stringBuffer5.toString();
        }
        stringBuffer3.append(stringBuffer2);
        stringBuffer3.append(" c=");
        if (this._content != null) {
            StringBuffer stringBuffer6 = new StringBuffer();
            stringBuffer6.append("");
            stringBuffer6.append(this._content.length());
            str = stringBuffer6.toString();
        }
        stringBuffer3.append(str);
        return stringBuffer3.toString();
    }

    @Override // org.mortbay.jetty.Generator
    public boolean addContent(byte b) throws IOException {
        if (!this._noContent) {
            if (!this._last && this._state != 4) {
                Buffer buffer = this._content;
                if ((buffer != null && buffer.length() > 0) || this.f114636i) {
                    flush();
                    Buffer buffer2 = this._content;
                    if ((buffer2 != null && buffer2.length() > 0) || this.f114636i) {
                        throw new IllegalStateException("FULL");
                    }
                }
                this._contentWritten++;
                if (this._head) {
                    return false;
                }
                if (this._buffer == null) {
                    this._buffer = this._buffers.getBuffer(this._contentBufferSize);
                }
                this._buffer.put(b);
                return this._buffer.space() <= ((this._contentLength > (-2L) ? 1 : (this._contentLength == (-2L) ? 0 : -1)) == 0 ? f114632r : 0);
            }
            Log.debug("Ignoring extra content {}", new Byte(b));
            return false;
        }
        throw new IllegalStateException("NO CONTENT");
    }
}
