package com.sunia.HTREnginev2;

import com.google.protobuf.Internal;
import java.nio.ByteBuffer;

@htd
/* renamed from: com.sunia.HTREnginev2.v9 */
/* loaded from: classes6.dex */
public abstract class AbstractC14537v9 {

    /* renamed from: com.sunia.HTREnginev2.v9$a */
    /* loaded from: classes6.dex */
    public class a extends AbstractC14537v9 {

        /* renamed from: a */
        public final /* synthetic */ ByteBuffer f87259a;

        public a(final ByteBuffer val$buffer) {
            this.f87259a = val$buffer;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: a */
        public byte[] mo57761a() {
            return this.f87259a.array();
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: b */
        public int mo57762b() {
            return this.f87259a.arrayOffset();
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: c */
        public boolean mo57763c() {
            return this.f87259a.hasArray();
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: d */
        public boolean mo57764d() {
            return true;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: e */
        public int mo57765e() {
            return this.f87259a.limit();
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: f */
        public ByteBuffer mo57766f() {
            return this.f87259a;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: g */
        public int mo57767g() {
            return this.f87259a.position();
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: h */
        public AbstractC14537v9 mo57768h(int position) {
            iri.m54775e(this.f87259a, position);
            return this;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: i */
        public int mo57769i() {
            return this.f87259a.remaining();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.v9$b */
    /* loaded from: classes6.dex */
    public class b extends AbstractC14537v9 {

        /* renamed from: a */
        public int f87260a;

        /* renamed from: b */
        public final /* synthetic */ byte[] f87261b;

        /* renamed from: c */
        public final /* synthetic */ int f87262c;

        /* renamed from: d */
        public final /* synthetic */ int f87263d;

        public b(final byte[] val$bytes, final int val$offset, final int val$length) {
            this.f87261b = val$bytes;
            this.f87262c = val$offset;
            this.f87263d = val$length;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: a */
        public byte[] mo57761a() {
            return this.f87261b;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: b */
        public int mo57762b() {
            return this.f87262c;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: c */
        public boolean mo57763c() {
            return true;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: d */
        public boolean mo57764d() {
            return false;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: e */
        public int mo57765e() {
            return this.f87263d;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: f */
        public ByteBuffer mo57766f() {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: g */
        public int mo57767g() {
            return this.f87260a;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: h */
        public AbstractC14537v9 mo57768h(int position) {
            if (position >= 0 && position <= this.f87263d) {
                this.f87260a = position;
                return this;
            }
            throw new IllegalArgumentException("Invalid position: " + position);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14537v9
        /* renamed from: i */
        public int mo57769i() {
            return this.f87263d - this.f87260a;
        }
    }

    /* renamed from: j */
    public static AbstractC14537v9 m57757j(final ByteBuffer buffer) {
        Internal.m29344b(buffer, "buffer");
        return new a(buffer);
    }

    /* renamed from: k */
    public static AbstractC14537v9 m57758k(byte[] bytes) {
        return m57760m(bytes, 0, bytes.length);
    }

    /* renamed from: l */
    public static AbstractC14537v9 m57759l(final byte[] bytes, final int offset, final int length) {
        if (offset < 0 || length < 0 || offset + length > bytes.length) {
            throw new IndexOutOfBoundsException(String.format("bytes.length=%d, offset=%d, length=%d", Integer.valueOf(bytes.length), Integer.valueOf(offset), Integer.valueOf(length)));
        }
        return m57760m(bytes, offset, length);
    }

    /* renamed from: m */
    public static AbstractC14537v9 m57760m(final byte[] bytes, final int offset, final int length) {
        return new b(bytes, offset, length);
    }

    /* renamed from: a */
    public abstract byte[] mo57761a();

    /* renamed from: b */
    public abstract int mo57762b();

    /* renamed from: c */
    public abstract boolean mo57763c();

    /* renamed from: d */
    public abstract boolean mo57764d();

    /* renamed from: e */
    public abstract int mo57765e();

    /* renamed from: f */
    public abstract ByteBuffer mo57766f();

    /* renamed from: g */
    public abstract int mo57767g();

    @bnd
    /* renamed from: h */
    public abstract AbstractC14537v9 mo57768h(int position);

    /* renamed from: i */
    public abstract int mo57769i();
}
