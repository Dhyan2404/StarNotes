package com.google.android.exoplayer2.util;

import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;

/* loaded from: classes5.dex */
public final class PriorityTaskManager {

    /* renamed from: a */
    public final Object f28422a = new Object();

    /* renamed from: b */
    public final PriorityQueue<Integer> f28423b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c */
    public int f28424c = Integer.MIN_VALUE;

    /* loaded from: classes5.dex */
    public static class PriorityTooLowException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public PriorityTooLowException(int r3, int r4) {
            /*
                r2 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = 60
                r0.<init>(r1)
                java.lang.String r1 = "Priority too low [priority="
                r0.append(r1)
                r0.append(r3)
                java.lang.String r3 = ", highest="
                r0.append(r3)
                r0.append(r4)
                java.lang.String r3 = "]"
                r0.append(r3)
                java.lang.String r3 = r0.toString()
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.PriorityTaskManager.PriorityTooLowException.<init>(int, int):void");
        }
    }

    public void add(int i) {
        synchronized (this.f28422a) {
            this.f28423b.add(Integer.valueOf(i));
            this.f28424c = Math.max(this.f28424c, i);
        }
    }

    public void proceed(int i) throws InterruptedException {
        synchronized (this.f28422a) {
            while (this.f28424c != i) {
                this.f28422a.wait();
            }
        }
    }

    public boolean proceedNonBlocking(int i) {
        boolean z;
        synchronized (this.f28422a) {
            z = this.f28424c == i;
        }
        return z;
    }

    public void proceedOrThrow(int i) throws PriorityTooLowException {
        synchronized (this.f28422a) {
            if (this.f28424c != i) {
                throw new PriorityTooLowException(i, this.f28424c);
            }
        }
    }

    public void remove(int i) {
        synchronized (this.f28422a) {
            this.f28423b.remove(Integer.valueOf(i));
            this.f28424c = this.f28423b.isEmpty() ? Integer.MIN_VALUE : ((Integer) Util.castNonNull(this.f28423b.peek())).intValue();
            this.f28422a.notifyAll();
        }
    }
}
