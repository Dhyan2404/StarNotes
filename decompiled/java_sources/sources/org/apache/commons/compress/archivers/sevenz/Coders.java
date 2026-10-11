package org.apache.commons.compress.archivers.sevenz;

import com.sunia.HTREnginev2.C14581w1;
import com.sunia.HTREnginev2.oui;
import com.sunia.HTREnginev2.pui;
import com.sunia.HTREnginev2.rwd;
import com.sunia.HTREnginev2.swd;
import com.sunia.HTREnginev2.x3f;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorOutputStream;
import org.apache.commons.compress.compressors.deflate64.Deflate64CompressorInputStream;
import org.apache.commons.compress.utils.FlushShieldFilterOutputStream;
import org.tukaani.xz.ARMOptions;
import org.tukaani.xz.ARMThumbOptions;
import org.tukaani.xz.FilterOptions;
import org.tukaani.xz.FinishableWrapperOutputStream;
import org.tukaani.xz.IA64Options;
import org.tukaani.xz.PowerPCOptions;
import org.tukaani.xz.SPARCOptions;
import org.tukaani.xz.X86Options;

/* loaded from: classes12.dex */
public class Coders {

    /* renamed from: a */
    public static final Map<SevenZMethod, swd> f105597a = new HashMap<SevenZMethod, swd>() { // from class: org.apache.commons.compress.archivers.sevenz.Coders.1
        private static final long serialVersionUID = 1664829131806520867L;

        {
            put(SevenZMethod.COPY, new C18839c());
            put(SevenZMethod.LZMA, new pui());
            put(SevenZMethod.LZMA2, new oui());
            put(SevenZMethod.DEFLATE, new C18841e());
            put(SevenZMethod.DEFLATE64, new C18840d());
            put(SevenZMethod.BZIP2, new C18838b());
            put(SevenZMethod.AES256SHA256, new C14581w1());
            put(SevenZMethod.BCJ_X86_FILTER, new C18837a(new X86Options()));
            put(SevenZMethod.BCJ_PPC_FILTER, new C18837a(new PowerPCOptions()));
            put(SevenZMethod.BCJ_IA64_FILTER, new C18837a(new IA64Options()));
            put(SevenZMethod.BCJ_ARM_FILTER, new C18837a(new ARMOptions()));
            put(SevenZMethod.BCJ_ARM_THUMB_FILTER, new C18837a(new ARMThumbOptions()));
            put(SevenZMethod.BCJ_SPARC_FILTER, new C18837a(new SPARCOptions()));
            put(SevenZMethod.DELTA_FILTER, new x3f());
        }
    };

    /* renamed from: org.apache.commons.compress.archivers.sevenz.Coders$a */
    /* loaded from: classes12.dex */
    public static class C18837a extends swd {

        /* renamed from: b */
        public final FilterOptions f105598b;

        public C18837a(FilterOptions filterOptions) {
            super(new Class[0]);
            this.f105598b = filterOptions;
        }

        @Override // com.sunia.HTREnginev2.swd
        /* renamed from: b */
        public InputStream mo56158b(String str, InputStream inputStream, long j, rwd rwdVar, byte[] bArr, int i) throws IOException {
            try {
                return this.f105598b.getInputStream(inputStream);
            } catch (AssertionError e) {
                throw new IOException("BCJ filter used in " + str + " needs XZ for Java > 1.4 - see https://commons.apache.org/proper/commons-compress/limitations.html#7Z", e);
            }
        }

        @Override // com.sunia.HTREnginev2.swd
        /* renamed from: c */
        public OutputStream mo56159c(OutputStream outputStream, Object obj) {
            return new FlushShieldFilterOutputStream(this.f105598b.getOutputStream(new FinishableWrapperOutputStream(outputStream)));
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.sevenz.Coders$b */
    /* loaded from: classes12.dex */
    public static class C18838b extends swd {
        public C18838b() {
            super(Number.class);
        }

        @Override // com.sunia.HTREnginev2.swd
        /* renamed from: b */
        public InputStream mo56158b(String str, InputStream inputStream, long j, rwd rwdVar, byte[] bArr, int i) throws IOException {
            return new BZip2CompressorInputStream(inputStream);
        }

        @Override // com.sunia.HTREnginev2.swd
        /* renamed from: c */
        public OutputStream mo56159c(OutputStream outputStream, Object obj) throws IOException {
            return new BZip2CompressorOutputStream(outputStream, swd.m57269f(obj, 9));
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.sevenz.Coders$c */
    /* loaded from: classes12.dex */
    public static class C18839c extends swd {
        public C18839c() {
            super(new Class[0]);
        }

        @Override // com.sunia.HTREnginev2.swd
        /* renamed from: b */
        public InputStream mo56158b(String str, InputStream inputStream, long j, rwd rwdVar, byte[] bArr, int i) throws IOException {
            return inputStream;
        }

        @Override // com.sunia.HTREnginev2.swd
        /* renamed from: c */
        public OutputStream mo56159c(OutputStream outputStream, Object obj) {
            return outputStream;
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.sevenz.Coders$d */
    /* loaded from: classes12.dex */
    public static class C18840d extends swd {
        public C18840d() {
            super(Number.class);
        }

        @Override // com.sunia.HTREnginev2.swd
        /* renamed from: b */
        public InputStream mo56158b(String str, InputStream inputStream, long j, rwd rwdVar, byte[] bArr, int i) throws IOException {
            return new Deflate64CompressorInputStream(inputStream);
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.sevenz.Coders$e */
    /* loaded from: classes12.dex */
    public static class C18841e extends swd {

        /* renamed from: b */
        public static final byte[] f105599b = new byte[1];

        /* renamed from: org.apache.commons.compress.archivers.sevenz.Coders$e$a */
        /* loaded from: classes12.dex */
        public static class a extends InputStream {

            /* renamed from: e */
            public final InflaterInputStream f105600e;

            /* renamed from: f */
            public Inflater f105601f;

            public a(InflaterInputStream inflaterInputStream, Inflater inflater) {
                this.f105600e = inflaterInputStream;
                this.f105601f = inflater;
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                try {
                    this.f105600e.close();
                } finally {
                    this.f105601f.end();
                }
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                return this.f105600e.read();
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                return this.f105600e.read(bArr, i, i2);
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr) throws IOException {
                return this.f105600e.read(bArr);
            }
        }

        /* renamed from: org.apache.commons.compress.archivers.sevenz.Coders$e$b */
        /* loaded from: classes12.dex */
        public static class b extends OutputStream {

            /* renamed from: e */
            public final DeflaterOutputStream f105602e;

            /* renamed from: f */
            public Deflater f105603f;

            public b(DeflaterOutputStream deflaterOutputStream, Deflater deflater) {
                this.f105602e = deflaterOutputStream;
                this.f105603f = deflater;
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                try {
                    this.f105602e.close();
                } finally {
                    this.f105603f.end();
                }
            }

            @Override // java.io.OutputStream
            public void write(int i) throws IOException {
                this.f105602e.write(i);
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr) throws IOException {
                this.f105602e.write(bArr);
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) throws IOException {
                this.f105602e.write(bArr, i, i2);
            }
        }

        public C18841e() {
            super(Number.class);
        }

        @Override // com.sunia.HTREnginev2.swd
        /* renamed from: b */
        public InputStream mo56158b(String str, InputStream inputStream, long j, rwd rwdVar, byte[] bArr, int i) throws IOException {
            Inflater inflater = new Inflater(true);
            return new a(new InflaterInputStream(new SequenceInputStream(inputStream, new ByteArrayInputStream(f105599b)), inflater), inflater);
        }

        @Override // com.sunia.HTREnginev2.swd
        /* renamed from: c */
        public OutputStream mo56159c(OutputStream outputStream, Object obj) {
            Deflater deflater = new Deflater(swd.m57269f(obj, 9), true);
            return new b(new DeflaterOutputStream(outputStream, deflater), deflater);
        }
    }

    /* renamed from: a */
    public static InputStream m66197a(String str, InputStream inputStream, long j, rwd rwdVar, byte[] bArr, int i) throws IOException {
        swd m66199c = m66199c(SevenZMethod.byId(rwdVar.f83567a));
        if (m66199c != null) {
            return m66199c.mo56158b(str, inputStream, j, rwdVar, bArr, i);
        }
        throw new IOException("Unsupported compression method " + Arrays.toString(rwdVar.f83567a) + " used in " + str);
    }

    /* renamed from: b */
    public static OutputStream m66198b(OutputStream outputStream, SevenZMethod sevenZMethod, Object obj) throws IOException {
        swd m66199c = m66199c(sevenZMethod);
        if (m66199c != null) {
            return m66199c.mo56159c(outputStream, obj);
        }
        throw new IOException("Unsupported compression method " + sevenZMethod);
    }

    /* renamed from: c */
    public static swd m66199c(SevenZMethod sevenZMethod) {
        return f105597a.get(sevenZMethod);
    }
}
