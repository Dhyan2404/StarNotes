package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class DefaultAllocator implements Allocator {

    /* renamed from: h */
    public static final int f27982h = 100;

    /* renamed from: a */
    public final boolean f27983a;

    /* renamed from: b */
    public final int f27984b;

    /* renamed from: c */
    @Nullable
    public final byte[] f27985c;

    /* renamed from: d */
    public int f27986d;

    /* renamed from: e */
    public int f27987e;

    /* renamed from: f */
    public int f27988f;

    /* renamed from: g */
    public Allocation[] f27989g;

    public DefaultAllocator(boolean z, int i) {
        this(z, i, 0);
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized Allocation allocate() {
        Allocation allocation;
        this.f27987e++;
        int i = this.f27988f;
        if (i > 0) {
            Allocation[] allocationArr = this.f27989g;
            int i2 = i - 1;
            this.f27988f = i2;
            allocation = (Allocation) Assertions.checkNotNull(allocationArr[i2]);
            this.f27989g[this.f27988f] = null;
        } else {
            allocation = new Allocation(new byte[this.f27984b], 0);
            int i3 = this.f27987e;
            Allocation[] allocationArr2 = this.f27989g;
            if (i3 > allocationArr2.length) {
                this.f27989g = (Allocation[]) Arrays.copyOf(allocationArr2, allocationArr2.length * 2);
            }
        }
        return allocation;
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public int getIndividualAllocationLength() {
        return this.f27984b;
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized int getTotalBytesAllocated() {
        return this.f27987e * this.f27984b;
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized void release(Allocation allocation) {
        Allocation[] allocationArr = this.f27989g;
        int i = this.f27988f;
        this.f27988f = i + 1;
        allocationArr[i] = allocation;
        this.f27987e--;
        notifyAll();
    }

    public synchronized void reset() {
        if (this.f27983a) {
            setTargetBufferSize(0);
        }
    }

    public synchronized void setTargetBufferSize(int i) {
        boolean z = i < this.f27986d;
        this.f27986d = i;
        if (z) {
            trim();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized void trim() {
        int i = 0;
        int max = Math.max(0, Util.ceilDivide(this.f27986d, this.f27984b) - this.f27987e);
        int i2 = this.f27988f;
        if (max >= i2) {
            return;
        }
        if (this.f27985c != null) {
            int i3 = i2 - 1;
            while (i <= i3) {
                Allocation allocation = (Allocation) Assertions.checkNotNull(this.f27989g[i]);
                if (allocation.data == this.f27985c) {
                    i++;
                } else {
                    Allocation allocation2 = (Allocation) Assertions.checkNotNull(this.f27989g[i3]);
                    if (allocation2.data != this.f27985c) {
                        i3--;
                    } else {
                        Allocation[] allocationArr = this.f27989g;
                        allocationArr[i] = allocation2;
                        allocationArr[i3] = allocation;
                        i3--;
                        i++;
                    }
                }
            }
            max = Math.max(max, i);
            if (max >= this.f27988f) {
                return;
            }
        }
        Arrays.fill(this.f27989g, max, this.f27988f, (Object) null);
        this.f27988f = max;
    }

    public DefaultAllocator(boolean z, int i, int i2) {
        Assertions.checkArgument(i > 0);
        Assertions.checkArgument(i2 >= 0);
        this.f27983a = z;
        this.f27984b = i;
        this.f27988f = i2;
        this.f27989g = new Allocation[i2 + 100];
        if (i2 > 0) {
            this.f27985c = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.f27989g[i3] = new Allocation(this.f27985c, i3 * i);
            }
            return;
        }
        this.f27985c = null;
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized void release(@Nullable Allocator.AllocationNode allocationNode) {
        while (allocationNode != null) {
            Allocation[] allocationArr = this.f27989g;
            int i = this.f27988f;
            this.f27988f = i + 1;
            allocationArr[i] = allocationNode.getAllocation();
            this.f27987e--;
            allocationNode = allocationNode.next();
        }
        notifyAll();
    }
}
