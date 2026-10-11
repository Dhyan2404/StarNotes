package com.sunia.HTREnginev2;

import android.content.res.AssetManager;
import androidx.annotation.AnyThread;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.flatbuffer.MetadataList;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@AnyThread
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class nnj {

    /* renamed from: a */
    public static final int f78820a = 1164798569;

    /* renamed from: b */
    public static final int f78821b = 1701669481;

    /* renamed from: c */
    public static final int f78822c = 1835365473;

    /* renamed from: com.sunia.HTREnginev2.nnj$a */
    /* loaded from: classes3.dex */
    public static class C14146a implements InterfaceC14149d {

        /* renamed from: c */
        @NonNull
        public final ByteBuffer f78823c;

        public C14146a(@NonNull ByteBuffer byteBuffer) {
            this.f78823c = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.sunia.HTREnginev2.nnj.InterfaceC14149d
        /* renamed from: a */
        public int mo55779a() throws IOException {
            return this.f78823c.getInt();
        }

        @Override // com.sunia.HTREnginev2.nnj.InterfaceC14149d
        public long getPosition() {
            return this.f78823c.position();
        }

        @Override // com.sunia.HTREnginev2.nnj.InterfaceC14149d
        public long readUnsignedInt() throws IOException {
            return nnj.m55777e(this.f78823c.getInt());
        }

        @Override // com.sunia.HTREnginev2.nnj.InterfaceC14149d
        public int readUnsignedShort() throws IOException {
            return nnj.m55778f(this.f78823c.getShort());
        }

        @Override // com.sunia.HTREnginev2.nnj.InterfaceC14149d
        public void skip(int i) throws IOException {
            ByteBuffer byteBuffer = this.f78823c;
            byteBuffer.position(byteBuffer.position() + i);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.nnj$b */
    /* loaded from: classes3.dex */
    public static class C14147b implements InterfaceC14149d {

        /* renamed from: c */
        @NonNull
        public final byte[] f78824c;

        /* renamed from: d */
        @NonNull
        public final ByteBuffer f78825d;

        /* renamed from: e */
        @NonNull
        public final InputStream f78826e;

        /* renamed from: f */
        public long f78827f = 0;

        public C14147b(@NonNull InputStream inputStream) {
            this.f78826e = inputStream;
            byte[] bArr = new byte[4];
            this.f78824c = bArr;
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            this.f78825d = wrap;
            wrap.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.sunia.HTREnginev2.nnj.InterfaceC14149d
        /* renamed from: a */
        public int mo55779a() throws IOException {
            this.f78825d.position(0);
            m55780b(4);
            return this.f78825d.getInt();
        }

        /* renamed from: b */
        public final void m55780b(@IntRange(from = 0, m281to = 4) int i) throws IOException {
            if (this.f78826e.read(this.f78824c, 0, i) != i) {
                throw new IOException("read failed");
            }
            this.f78827f += i;
        }

        @Override // com.sunia.HTREnginev2.nnj.InterfaceC14149d
        public long getPosition() {
            return this.f78827f;
        }

        @Override // com.sunia.HTREnginev2.nnj.InterfaceC14149d
        public long readUnsignedInt() throws IOException {
            this.f78825d.position(0);
            m55780b(4);
            return nnj.m55777e(this.f78825d.getInt());
        }

        @Override // com.sunia.HTREnginev2.nnj.InterfaceC14149d
        public int readUnsignedShort() throws IOException {
            this.f78825d.position(0);
            m55780b(2);
            return nnj.m55778f(this.f78825d.getShort());
        }

        @Override // com.sunia.HTREnginev2.nnj.InterfaceC14149d
        public void skip(int i) throws IOException {
            while (i > 0) {
                int skip = (int) this.f78826e.skip(i);
                if (skip < 1) {
                    throw new IOException("Skip didn't move at least 1 byte forward");
                }
                i -= skip;
                this.f78827f += skip;
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.nnj$c */
    /* loaded from: classes3.dex */
    public static class C14148c {

        /* renamed from: a */
        public final long f78828a;

        /* renamed from: b */
        public final long f78829b;

        public C14148c(long j, long j2) {
            this.f78828a = j;
            this.f78829b = j2;
        }

        /* renamed from: a */
        public long m55781a() {
            return this.f78829b;
        }

        /* renamed from: b */
        public long m55782b() {
            return this.f78828a;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.nnj$d */
    /* loaded from: classes3.dex */
    public interface InterfaceC14149d {

        /* renamed from: a */
        public static final int f78830a = 2;

        /* renamed from: b */
        public static final int f78831b = 4;

        /* renamed from: a */
        int mo55779a() throws IOException;

        long getPosition();

        long readUnsignedInt() throws IOException;

        int readUnsignedShort() throws IOException;

        void skip(int i) throws IOException;
    }

    /* renamed from: a */
    public static C14148c m55773a(InterfaceC14149d interfaceC14149d) throws IOException {
        long j;
        interfaceC14149d.skip(4);
        int readUnsignedShort = interfaceC14149d.readUnsignedShort();
        if (readUnsignedShort > 100) {
            throw new IOException("Cannot read metadata.");
        }
        interfaceC14149d.skip(6);
        int i = 0;
        while (true) {
            if (i >= readUnsignedShort) {
                j = -1;
                break;
            }
            int mo55779a = interfaceC14149d.mo55779a();
            interfaceC14149d.skip(4);
            j = interfaceC14149d.readUnsignedInt();
            interfaceC14149d.skip(4);
            if (1835365473 == mo55779a) {
                break;
            }
            i++;
        }
        if (j != -1) {
            interfaceC14149d.skip((int) (j - interfaceC14149d.getPosition()));
            interfaceC14149d.skip(12);
            long readUnsignedInt = interfaceC14149d.readUnsignedInt();
            for (int i2 = 0; i2 < readUnsignedInt; i2++) {
                int mo55779a2 = interfaceC14149d.mo55779a();
                long readUnsignedInt2 = interfaceC14149d.readUnsignedInt();
                long readUnsignedInt3 = interfaceC14149d.readUnsignedInt();
                if (1164798569 == mo55779a2 || 1701669481 == mo55779a2) {
                    return new C14148c(readUnsignedInt2 + j, readUnsignedInt3);
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    /* renamed from: b */
    public static MetadataList m55774b(AssetManager assetManager, String str) throws IOException {
        InputStream open = assetManager.open(str);
        try {
            MetadataList m55775c = m55775c(open);
            if (open != null) {
                open.close();
            }
            return m55775c;
        } catch (Throwable th) {
            if (open != null) {
                try {
                    open.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* renamed from: c */
    public static MetadataList m55775c(InputStream inputStream) throws IOException {
        C14147b c14147b = new C14147b(inputStream);
        C14148c m55773a = m55773a(c14147b);
        c14147b.skip((int) (m55773a.m55782b() - c14147b.getPosition()));
        ByteBuffer allocate = ByteBuffer.allocate((int) m55773a.m55781a());
        int read = inputStream.read(allocate.array());
        if (read == m55773a.m55781a()) {
            return MetadataList.getRootAsMetadataList(allocate);
        }
        throw new IOException("Needed " + m55773a.m55781a() + " bytes, got " + read);
    }

    /* renamed from: d */
    public static MetadataList m55776d(ByteBuffer byteBuffer) throws IOException {
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position((int) m55773a(new C14146a(duplicate)).m55782b());
        return MetadataList.getRootAsMetadataList(duplicate);
    }

    /* renamed from: e */
    public static long m55777e(int i) {
        return i & 4294967295L;
    }

    /* renamed from: f */
    public static int m55778f(short s) {
        return s & 65535;
    }
}
