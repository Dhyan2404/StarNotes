package com.sunia.HTREnginev2;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import com.sunia.HTREnginev2.ptl;
import java.util.Comparator;
import java.util.TreeSet;

/* loaded from: classes5.dex */
public final class ptl {

    /* renamed from: e */
    @VisibleForTesting
    public static final int f81224e = 1000;

    /* renamed from: f */
    public static final int f81225f = 5000;

    /* renamed from: a */
    @GuardedBy("this")
    public final TreeSet<C14262a> f81226a = new TreeSet<>(new Comparator() { // from class: com.sunia.HTREnginev2.otl
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m56378d;
            m56378d = ptl.m56378d((ptl.C14262a) obj, (ptl.C14262a) obj2);
            return m56378d;
        }
    });

    /* renamed from: b */
    @GuardedBy("this")
    public int f81227b;

    /* renamed from: c */
    @GuardedBy("this")
    public int f81228c;

    /* renamed from: d */
    @GuardedBy("this")
    public boolean f81229d;

    /* renamed from: com.sunia.HTREnginev2.ptl$a */
    /* loaded from: classes5.dex */
    public static final class C14262a {

        /* renamed from: a */
        public final RtpPacket f81230a;

        /* renamed from: b */
        public final long f81231b;

        public C14262a(RtpPacket rtpPacket, long j) {
            this.f81230a = rtpPacket;
            this.f81231b = j;
        }
    }

    public ptl() {
        m56382g();
    }

    /* renamed from: c */
    public static int m56377c(int i, int i2) {
        int min;
        int i3 = i - i2;
        return (Math.abs(i3) <= 1000 || (min = (Math.min(i, i2) - Math.max(i, i2)) + 65535) >= 1000) ? i3 : i < i2 ? min : -min;
    }

    /* renamed from: d */
    public static /* synthetic */ int m56378d(C14262a c14262a, C14262a c14262a2) {
        return m56377c(c14262a.f81230a.sequenceNumber, c14262a2.f81230a.sequenceNumber);
    }

    /* renamed from: b */
    public final synchronized void m56379b(C14262a c14262a) {
        this.f81227b = c14262a.f81230a.sequenceNumber;
        this.f81226a.add(c14262a);
    }

    /* renamed from: e */
    public synchronized boolean m56380e(RtpPacket rtpPacket, long j) {
        if (this.f81226a.size() >= 5000) {
            throw new IllegalStateException("Queue size limit of 5000 reached.");
        }
        int i = rtpPacket.sequenceNumber;
        if (!this.f81229d) {
            m56382g();
            this.f81228c = RtpPacket.getPreviousSequenceNumber(i);
            this.f81229d = true;
            m56379b(new C14262a(rtpPacket, j));
            return true;
        }
        if (Math.abs(m56377c(i, RtpPacket.getNextSequenceNumber(this.f81227b))) < 1000) {
            if (m56377c(i, this.f81228c) <= 0) {
                return false;
            }
            m56379b(new C14262a(rtpPacket, j));
            return true;
        }
        this.f81228c = RtpPacket.getPreviousSequenceNumber(i);
        this.f81226a.clear();
        m56379b(new C14262a(rtpPacket, j));
        return true;
    }

    @Nullable
    /* renamed from: f */
    public synchronized RtpPacket m56381f(long j) {
        if (this.f81226a.isEmpty()) {
            return null;
        }
        C14262a first = this.f81226a.first();
        int i = first.f81230a.sequenceNumber;
        if (i != RtpPacket.getNextSequenceNumber(this.f81228c) && j < first.f81231b) {
            return null;
        }
        this.f81226a.pollFirst();
        this.f81228c = i;
        return first.f81230a;
    }

    /* renamed from: g */
    public synchronized void m56382g() {
        this.f81226a.clear();
        this.f81229d = false;
        this.f81228c = -1;
        this.f81227b = -1;
    }
}
