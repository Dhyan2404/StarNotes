package com.google.common.hash;

import com.google.common.hash.Striped64;
import com.sunia.HTREnginev2.d5j;
import com.sunia.HTREnginev2.wnf;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

@wnf
/* loaded from: classes6.dex */
final class LongAdder extends Striped64 implements Serializable, d5j {
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

    @Override // com.sunia.HTREnginev2.d5j
    public void add(long j) {
        int length;
        Striped64.C6191b c6191b;
        Striped64.C6191b[] c6191bArr = this.cells;
        if (c6191bArr == null) {
            long j2 = this.base;
            if (casBase(j2, j2 + j)) {
                return;
            }
        }
        int[] iArr = Striped64.threadHashCode.get();
        boolean z = true;
        if (iArr != null && c6191bArr != null && (length = c6191bArr.length) >= 1 && (c6191b = c6191bArr[(length - 1) & iArr[0]]) != null) {
            long j3 = c6191b.f34812h;
            z = c6191b.m27168a(j3, j3 + j);
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

    @Override // com.google.common.hash.Striped64
    /* renamed from: fn */
    public final long mo27154fn(long j, long j2) {
        return j + j2;
    }

    @Override // com.sunia.HTREnginev2.d5j
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

    @Override // com.sunia.HTREnginev2.d5j
    public long sum() {
        long j = this.base;
        Striped64.C6191b[] c6191bArr = this.cells;
        if (c6191bArr != null) {
            for (Striped64.C6191b c6191b : c6191bArr) {
                if (c6191b != null) {
                    j += c6191b.f34812h;
                }
            }
        }
        return j;
    }

    public long sumThenReset() {
        long j = this.base;
        Striped64.C6191b[] c6191bArr = this.cells;
        this.base = 0L;
        if (c6191bArr != null) {
            for (Striped64.C6191b c6191b : c6191bArr) {
                if (c6191b != null) {
                    j += c6191b.f34812h;
                    c6191b.f34812h = 0L;
                }
            }
        }
        return j;
    }

    public String toString() {
        return Long.toString(sum());
    }
}
