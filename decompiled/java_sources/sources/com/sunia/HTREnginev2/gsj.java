package com.sunia.HTREnginev2;

import com.squareup.okhttp.internal.spdy.Header;
import com.squareup.okhttp.internal.spdy.Spdy3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSource;
import okio.InflaterSource;
import okio.Okio;
import okio.Source;

/* loaded from: classes9.dex */
public class gsj {

    /* renamed from: a */
    public final InflaterSource f71424a;

    /* renamed from: b */
    public int f71425b;

    /* renamed from: c */
    public final BufferedSource f71426c;

    /* renamed from: com.sunia.HTREnginev2.gsj$a */
    /* loaded from: classes9.dex */
    public class C13785a extends ForwardingSource {
        public C13785a(Source source) {
            super(source);
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            if (gsj.this.f71425b == 0) {
                return -1L;
            }
            long read = super.read(buffer, Math.min(j, gsj.this.f71425b));
            if (read == -1) {
                return -1L;
            }
            gsj.this.f71425b = (int) (r5.f71425b - read);
            return read;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.gsj$b */
    /* loaded from: classes9.dex */
    public class C13786b extends Inflater {
        public C13786b() {
        }

        @Override // java.util.zip.Inflater
        public int inflate(byte[] bArr, int i, int i2) throws DataFormatException {
            int inflate = super.inflate(bArr, i, i2);
            if (inflate != 0 || !needsDictionary()) {
                return inflate;
            }
            setDictionary(Spdy3.f63914m);
            return super.inflate(bArr, i, i2);
        }
    }

    public gsj(BufferedSource bufferedSource) {
        InflaterSource inflaterSource = new InflaterSource(new C13785a(bufferedSource), new C13786b());
        this.f71424a = inflaterSource;
        this.f71426c = Okio.buffer(inflaterSource);
    }

    /* renamed from: c */
    public void m54344c() throws IOException {
        this.f71426c.close();
    }

    /* renamed from: d */
    public final void m54345d() throws IOException {
        if (this.f71425b > 0) {
            this.f71424a.refill();
            if (this.f71425b == 0) {
                return;
            }
            throw new IOException("compressedLimit > 0: " + this.f71425b);
        }
    }

    /* renamed from: e */
    public final ByteString m54346e() throws IOException {
        return this.f71426c.readByteString(this.f71426c.readInt());
    }

    /* renamed from: f */
    public List<Header> m54347f(int i) throws IOException {
        this.f71425b += i;
        int readInt = this.f71426c.readInt();
        if (readInt < 0) {
            throw new IOException("numberOfPairs < 0: " + readInt);
        }
        if (readInt > 1024) {
            throw new IOException("numberOfPairs > 1024: " + readInt);
        }
        ArrayList arrayList = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            ByteString asciiLowercase = m54346e().toAsciiLowercase();
            ByteString m54346e = m54346e();
            if (asciiLowercase.size() == 0) {
                throw new IOException("name.size == 0");
            }
            arrayList.add(new Header(asciiLowercase, m54346e));
        }
        m54345d();
        return arrayList;
    }
}
