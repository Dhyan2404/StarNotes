package com.sunia.HTREnginev2;

import com.google.protobuf.Internal;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* loaded from: classes6.dex */
public class fqi extends InputStream {

    /* renamed from: e */
    public Iterator<ByteBuffer> f70263e;

    /* renamed from: f */
    public ByteBuffer f70264f;

    /* renamed from: g */
    public int f70265g = 0;

    /* renamed from: h */
    public int f70266h;

    /* renamed from: i */
    public int f70267i;

    /* renamed from: j */
    public boolean f70268j;

    /* renamed from: k */
    public byte[] f70269k;

    /* renamed from: l */
    public int f70270l;

    /* renamed from: m */
    public long f70271m;

    public fqi(Iterable<ByteBuffer> data) {
        this.f70263e = data.iterator();
        for (ByteBuffer byteBuffer : data) {
            this.f70265g++;
        }
        this.f70266h = -1;
        if (m54173f()) {
            return;
        }
        this.f70264f = Internal.EMPTY_BYTE_BUFFER;
        this.f70266h = 0;
        this.f70267i = 0;
        this.f70271m = 0L;
    }

    /* renamed from: f */
    public final boolean m54173f() {
        this.f70266h++;
        if (!this.f70263e.hasNext()) {
            return false;
        }
        ByteBuffer next = this.f70263e.next();
        this.f70264f = next;
        this.f70267i = next.position();
        if (this.f70264f.hasArray()) {
            this.f70268j = true;
            this.f70269k = this.f70264f.array();
            this.f70270l = this.f70264f.arrayOffset();
        } else {
            this.f70268j = false;
            this.f70271m = dun.m53756k(this.f70264f);
            this.f70269k = null;
        }
        return true;
    }

    /* renamed from: j */
    public final void m54174j(int numberOfBytesRead) {
        int i = this.f70267i + numberOfBytesRead;
        this.f70267i = i;
        if (i == this.f70264f.limit()) {
            m54173f();
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f70266h == this.f70265g) {
            return -1;
        }
        if (this.f70268j) {
            int i = this.f70269k[this.f70267i + this.f70270l] & 255;
            m54174j(1);
            return i;
        }
        int m53710A = dun.m53710A(this.f70267i + this.f70271m) & 255;
        m54174j(1);
        return m53710A;
    }

    @Override // java.io.InputStream
    public int read(byte[] output, int offset, int length) throws IOException {
        if (this.f70266h == this.f70265g) {
            return -1;
        }
        int limit = this.f70264f.limit();
        int i = this.f70267i;
        int i2 = limit - i;
        if (length > i2) {
            length = i2;
        }
        if (this.f70268j) {
            System.arraycopy(this.f70269k, i + this.f70270l, output, offset, length);
            m54174j(length);
        } else {
            int position = this.f70264f.position();
            iri.m54775e(this.f70264f, this.f70267i);
            this.f70264f.get(output, offset, length);
            iri.m54775e(this.f70264f, position);
            m54174j(length);
        }
        return length;
    }
}
