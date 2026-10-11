package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import com.sunia.HTREnginev2.AbstractC14121n2;
import com.sunia.HTREnginev2.AbstractC14378s3;
import com.sunia.HTREnginev2.gii;
import com.sunia.HTREnginev2.wnf;
import java.io.Serializable;
import java.util.zip.Checksum;

/* JADX INFO: Access modifiers changed from: package-private */
@Immutable
@wnf
/* loaded from: classes6.dex */
public final class ChecksumHashFunction extends AbstractC14378s3 implements Serializable {
    private static final long serialVersionUID = 0;
    private final int bits;
    private final gii<? extends Checksum> checksumSupplier;
    private final String toString;

    /* renamed from: com.google.common.hash.ChecksumHashFunction$b */
    /* loaded from: classes6.dex */
    public final class C6165b extends AbstractC14121n2 {

        /* renamed from: b */
        public final Checksum f34759b;

        @Override // com.sunia.HTREnginev2.AbstractC14121n2
        /* renamed from: b */
        public void mo27138b(byte b) {
            this.f34759b.update(b);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14121n2
        /* renamed from: e */
        public void mo27139e(byte[] bArr, int i, int i2) {
            this.f34759b.update(bArr, i, i2);
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            long value = this.f34759b.getValue();
            return ChecksumHashFunction.this.bits == 32 ? HashCode.fromInt((int) value) : HashCode.fromLong(value);
        }

        public C6165b(Checksum checksum) {
            this.f34759b = (Checksum) Preconditions.checkNotNull(checksum);
        }
    }

    public ChecksumHashFunction(gii<? extends Checksum> giiVar, int i, String str) {
        this.checksumSupplier = (gii) Preconditions.checkNotNull(giiVar);
        Preconditions.checkArgument(i == 32 || i == 64, "bits (%s) must be either 32 or 64", i);
        this.bits = i;
        this.toString = (String) Preconditions.checkNotNull(str);
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.bits;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new C6165b(this.checksumSupplier.get());
    }

    public String toString() {
        return this.toString;
    }
}
