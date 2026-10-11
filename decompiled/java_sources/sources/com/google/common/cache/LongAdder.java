package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.cache.Striped64;
import com.sunia.HTREnginev2.e5j;
import com.sunia.HTREnginev2.rnf;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

@rnf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
final class LongAdder extends Striped64 implements Serializable, e5j {
    private static final long serialVersionUID = 7249069246863182397L;

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.busy = 0;
        this.cells = null;
        this.base = objectInputStream.readLong();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(sum());
    }

    @Override // com.sunia.HTREnginev2.e5j
    public void add(long j) {
        int length;
        Striped64.C5746b c5746b;
        Striped64.C5746b[] c5746bArr = this.cells;
        if (c5746bArr == null) {
            long j2 = this.base;
            if (casBase(j2, j2 + j)) {
                return;
            }
        }
        int[] iArr = Striped64.threadHashCode.get();
        boolean z = true;
        if (iArr != null && c5746bArr != null && (length = c5746bArr.length) >= 1 && (c5746b = c5746bArr[(length - 1) & iArr[0]]) != null) {
            long j3 = c5746b.f33842h;
            z = c5746b.m26005a(j3, j3 + j);
            if (z) {
                return;
            }
        }
        retryUpdate(j, iArr, z);
    }

    public void decrement() {
        add(-1L);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return sum();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) sum();
    }

    @Override // com.google.common.cache.Striped64
    /* renamed from: fn */
    public final long mo25999fn(long j, long j2) {
        return j + j2;
    }

    @Override // com.sunia.HTREnginev2.e5j
    public void increment() {
        add(1L);
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) sum();
    }

    @Override // java.lang.Number
    public long longValue() {
        return sum();
    }

    public void reset() {
        internalReset(0L);
    }

    @Override // com.sunia.HTREnginev2.e5j
    public long sum() {
        long j = this.base;
        Striped64.C5746b[] c5746bArr = this.cells;
        if (c5746bArr != null) {
            for (Striped64.C5746b c5746b : c5746bArr) {
                if (c5746b != null) {
                    j += c5746b.f33842h;
                }
            }
        }
        return j;
    }

    public long sumThenReset() {
        long j = this.base;
        Striped64.C5746b[] c5746bArr = this.cells;
        this.base = 0L;
        if (c5746bArr != null) {
            for (Striped64.C5746b c5746b : c5746bArr) {
                if (c5746b != null) {
                    j += c5746b.f33842h;
                    c5746b.f33842h = 0L;
                }
            }
        }
        return j;
    }

    public String toString() {
        return Long.toString(sum());
    }
}
