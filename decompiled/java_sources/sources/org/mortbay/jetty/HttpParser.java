package org.mortbay.jetty;

import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import javax.servlet.ServletInputStream;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferCache;
import org.mortbay.io.Buffers;
import org.mortbay.io.EndPoint;
import org.mortbay.io.View;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class HttpParser implements Parser {
    public static final int STATE_CHUNK = 6;
    public static final int STATE_CHUNKED_CONTENT = 3;
    public static final int STATE_CHUNK_PARAMS = 5;
    public static final int STATE_CHUNK_SIZE = 4;
    public static final int STATE_CONTENT = 2;
    public static final int STATE_END = 0;
    public static final int STATE_END0 = -8;
    public static final int STATE_END1 = -7;
    public static final int STATE_EOF_CONTENT = 1;
    public static final int STATE_FIELD0 = -12;
    public static final int STATE_FIELD1 = -10;
    public static final int STATE_FIELD2 = -6;
    public static final int STATE_HEADER = -5;
    public static final int STATE_HEADER_IN_NAME = -3;
    public static final int STATE_HEADER_IN_VALUE = -1;
    public static final int STATE_HEADER_NAME = -4;
    public static final int STATE_HEADER_VALUE = -2;
    public static final int STATE_SPACE1 = -11;
    public static final int STATE_SPACE2 = -9;
    public static final int STATE_START = -13;
    protected int _chunkLength;
    protected int _chunkPosition;
    protected long _contentLength;
    protected long _contentPosition;
    protected byte _eol;
    protected int _length;

    /* renamed from: a */
    public Buffers f114640a;

    /* renamed from: b */
    public EndPoint f114641b;

    /* renamed from: c */
    public Buffer f114642c;

    /* renamed from: d */
    public Buffer f114643d;

    /* renamed from: e */
    public Buffer f114644e;

    /* renamed from: g */
    public int f114646g;

    /* renamed from: h */
    public int f114647h;

    /* renamed from: i */
    public EventHandler f114648i;

    /* renamed from: j */
    public BufferCache.CachedBuffer f114649j;

    /* renamed from: k */
    public View.CaseInsensitive f114650k;

    /* renamed from: l */
    public View.CaseInsensitive f114651l;

    /* renamed from: m */
    public String f114652m;

    /* renamed from: n */
    public int f114653n;

    /* renamed from: o */
    public boolean f114654o;

    /* renamed from: p */
    public Input f114655p;

    /* renamed from: f */
    public View f114645f = new View();
    protected int _state = -13;

    /* loaded from: classes13.dex */
    public static abstract class EventHandler {
        public abstract void content(Buffer buffer) throws IOException;

        public void headerComplete() throws IOException {
        }

        public void messageComplete(long j) throws IOException {
        }

        public void parsedHeader(Buffer buffer, Buffer buffer2) throws IOException {
        }

        public abstract void startRequest(Buffer buffer, Buffer buffer2, Buffer buffer3) throws IOException;

        public abstract void startResponse(Buffer buffer, int i, Buffer buffer2) throws IOException;
    }

    public HttpParser(Buffer buffer, EventHandler eventHandler) {
        this.f114642c = buffer;
        this.f114644e = buffer;
        this.f114648i = eventHandler;
        if (buffer != null) {
            this.f114650k = new View.CaseInsensitive(buffer);
            this.f114651l = new View.CaseInsensitive(buffer);
            View.CaseInsensitive caseInsensitive = this.f114650k;
            caseInsensitive.setPutIndex(caseInsensitive.getIndex());
            View.CaseInsensitive caseInsensitive2 = this.f114651l;
            caseInsensitive2.setPutIndex(caseInsensitive2.getIndex());
        }
    }

    public long fill() throws IOException {
        int fill;
        if (this.f114644e == null) {
            Buffer headerBuffer = getHeaderBuffer();
            this.f114642c = headerBuffer;
            this.f114644e = headerBuffer;
            this.f114650k = new View.CaseInsensitive(this.f114644e);
            this.f114651l = new View.CaseInsensitive(this.f114644e);
        }
        Buffer buffer = this.f114643d;
        if (buffer != null && this.f114644e != buffer) {
            this.f114644e = buffer;
        }
        Buffer buffer2 = this.f114644e;
        if (buffer2 == buffer) {
            buffer2.compact();
        }
        if (this.f114644e.space() == 0) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("FULL ");
            stringBuffer.append(this.f114644e == this.f114643d ? "body" : gon.f71289o);
            throw new HttpException(413, stringBuffer.toString());
        }
        EndPoint endPoint = this.f114641b;
        if (endPoint != null) {
            try {
                fill = endPoint.fill(this.f114644e);
            } catch (IOException e) {
                Log.debug(e);
                this.reset(true);
                if (e instanceof EofException) {
                    throw e;
                }
                throw new EofException(e);
            }
        } else {
            fill = -1;
        }
        return fill;
    }

    public Buffer getBodyBuffer() {
        return this.f114643d;
    }

    public long getContentLength() {
        return this._contentLength;
    }

    public long getContentRead() {
        return this._contentPosition;
    }

    public Buffer getHeaderBuffer() {
        if (this.f114642c == null) {
            this.f114642c = this.f114640a.getBuffer(this.f114646g);
        }
        return this.f114642c;
    }

    public int getState() {
        return this._state;
    }

    public boolean inContentState() {
        return this._state > 0;
    }

    public boolean inHeaderState() {
        return this._state < 0;
    }

    public boolean isChunking() {
        return this._contentLength == -2;
    }

    @Override // org.mortbay.jetty.Parser
    public boolean isComplete() {
        return isState(0);
    }

    @Override // org.mortbay.jetty.Parser
    public boolean isIdle() {
        return isState(-13);
    }

    @Override // org.mortbay.jetty.Parser
    public boolean isMoreInBuffer() throws IOException {
        Buffer buffer = this.f114642c;
        if (buffer != null && buffer.hasContent()) {
            return true;
        }
        Buffer buffer2 = this.f114643d;
        return buffer2 != null && buffer2.hasContent();
    }

    public boolean isState(int i) {
        return this._state == i;
    }

    public void parse() throws IOException {
        if (this._state == 0) {
            reset(false);
        }
        if (this._state != -13) {
            throw new IllegalStateException("!START");
        }
        while (this._state != 0) {
            parseNext();
        }
    }

    @Override // org.mortbay.jetty.Parser
    public long parseAvailable() throws IOException {
        Buffer buffer;
        long parseNext = parseNext();
        if (parseNext <= 0) {
            parseNext = 0;
        }
        while (!isComplete() && (buffer = this.f114644e) != null && buffer.length() > 0) {
            long parseNext2 = parseNext();
            if (parseNext2 > 0) {
                parseNext += parseNext2;
            }
        }
        return parseNext;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x049b, code lost:
    
        if (r2 >= (r4.capacity() - r17.f114642c.getIndex())) goto L243;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:320:0x0688. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:74:0x0162. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:187:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0473  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x04d5  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x068b  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x06c4  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x06e4  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0761  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0789 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:395:0x07ce A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long parseNext() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2084
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.HttpParser.parseNext():long");
    }

    @Override // org.mortbay.jetty.Parser
    public void reset(boolean z) {
        Buffers buffers;
        synchronized (this) {
            View view = this.f114645f;
            view.setGetIndex(view.putIndex());
            this._state = -13;
            this._contentLength = -3L;
            this._contentPosition = 0L;
            this._length = 0;
            this.f114653n = 0;
            Buffer buffer = this.f114644e;
            if (buffer != null && buffer.length() > 0 && this._eol == 13 && this.f114644e.peek() == 10) {
                this.f114644e.skip(1);
                this._eol = (byte) 10;
            }
            Buffer buffer2 = this.f114643d;
            if (buffer2 != null) {
                if (buffer2.hasContent()) {
                    this.f114642c.setMarkIndex(-1);
                    this.f114642c.compact();
                    int space = this.f114642c.space();
                    if (space > this.f114643d.length()) {
                        space = this.f114643d.length();
                    }
                    Buffer buffer3 = this.f114643d;
                    buffer3.peek(buffer3.getIndex(), space);
                    Buffer buffer4 = this.f114643d;
                    buffer4.skip(this.f114642c.put(buffer4.peek(buffer4.getIndex(), space)));
                }
                if (this.f114643d.length() == 0) {
                    Buffers buffers2 = this.f114640a;
                    if (buffers2 != null && z) {
                        buffers2.returnBuffer(this.f114643d);
                    }
                    this.f114643d = null;
                } else {
                    this.f114643d.setMarkIndex(-1);
                    this.f114643d.compact();
                }
            }
            Buffer buffer5 = this.f114642c;
            if (buffer5 != null) {
                buffer5.setMarkIndex(-1);
                if (this.f114642c.hasContent() || (buffers = this.f114640a) == null || !z) {
                    this.f114642c.compact();
                    this.f114650k.update(this.f114642c);
                    this.f114650k.update(0, 0);
                    this.f114651l.update(this.f114642c);
                    this.f114651l.update(0, 0);
                } else {
                    buffers.returnBuffer(this.f114642c);
                    this.f114642c = null;
                    this.f114644e = null;
                }
            }
            this.f114644e = this.f114642c;
        }
    }

    public void setForceContentBuffer(boolean z) {
        this.f114654o = z;
    }

    public void setState(int i) {
        this._state = i;
        this._contentLength = -3L;
    }

    public void skipCRLF() {
        byte peek;
        while (true) {
            Buffer buffer = this.f114642c;
            if (buffer == null || buffer.length() <= 0 || !((peek = this.f114642c.peek()) == 13 || peek == 10)) {
                break;
            }
            this._eol = peek;
            this.f114642c.skip(1);
        }
        while (true) {
            Buffer buffer2 = this.f114643d;
            if (buffer2 == null || buffer2.length() <= 0) {
                return;
            }
            byte peek2 = this.f114643d.peek();
            if (peek2 != 13 && peek2 != 10) {
                return;
            }
            this._eol = peek2;
            this.f114643d.skip(1);
        }
    }

    public String toString(Buffer buffer) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("state=");
        stringBuffer.append(this._state);
        stringBuffer.append(" length=");
        stringBuffer.append(this._length);
        stringBuffer.append(" buf=");
        stringBuffer.append(buffer.hashCode());
        return stringBuffer.toString();
    }

    /* loaded from: classes13.dex */
    public static class Input extends ServletInputStream {
        protected Buffer _content;
        protected EndPoint _endp;
        protected long _maxIdleTime;
        protected HttpParser _parser;

        public Input(HttpParser httpParser, long j) {
            this._parser = httpParser;
            this._endp = httpParser.f114641b;
            this._maxIdleTime = j;
            this._content = this._parser.f114645f;
            this._parser.f114655p = this;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            Buffer buffer = this._content;
            if (buffer != null && buffer.length() > 0) {
                return this._content.length();
            }
            if (!this._endp.isBlocking()) {
                this._parser.parseNext();
            }
            Buffer buffer2 = this._content;
            if (buffer2 == null) {
                return 0;
            }
            return buffer2.length();
        }

        /* renamed from: f */
        public final boolean m71522f() throws IOException {
            if (this._content.length() > 0) {
                return true;
            }
            if (this._parser.getState() <= 0) {
                return false;
            }
            EndPoint endPoint = this._endp;
            if (endPoint == null) {
                this._parser.parseNext();
            } else if (endPoint.isBlocking()) {
                try {
                    this._parser.parseNext();
                    while (this._content.length() == 0 && !this._parser.isState(0) && this._endp.isOpen()) {
                        this._parser.parseNext();
                    }
                } catch (IOException e) {
                    this._endp.close();
                    throw e;
                }
            } else {
                this._parser.parseNext();
                while (this._content.length() == 0 && !this._parser.isState(0) && this._endp.isOpen()) {
                    if (!this._endp.isBufferingInput() || this._parser.parseNext() <= 0) {
                        if (!this._endp.blockReadable(this._maxIdleTime)) {
                            this._endp.close();
                            throw new EofException("timeout");
                        }
                        this._parser.parseNext();
                    }
                }
            }
            return this._content.length() > 0;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (m71522f()) {
                return this._content.get() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (m71522f()) {
                return this._content.get(bArr, i, i2);
            }
            return -1;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("state=");
        stringBuffer.append(this._state);
        stringBuffer.append(" length=");
        stringBuffer.append(this._length);
        stringBuffer.append(" len=");
        stringBuffer.append(this._contentLength);
        return stringBuffer.toString();
    }

    public HttpParser(Buffers buffers, EndPoint endPoint, EventHandler eventHandler, int i, int i2) {
        this.f114640a = buffers;
        this.f114641b = endPoint;
        this.f114648i = eventHandler;
        this.f114646g = i;
        this.f114647h = i2;
    }
}
