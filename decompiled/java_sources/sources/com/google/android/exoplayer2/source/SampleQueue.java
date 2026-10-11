package com.google.android.exoplayer2.source;

import android.os.Looper;
import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.zvm;
import java.io.IOException;

/* loaded from: classes5.dex */
public class SampleQueue implements TrackOutput {

    /* renamed from: H */
    @VisibleForTesting
    public static final int f25321H = 1000;

    /* renamed from: I */
    public static final String f25322I = "SampleQueue";

    /* renamed from: A */
    @Nullable
    public Format f25323A;

    /* renamed from: B */
    @Nullable
    public Format f25324B;

    /* renamed from: C */
    public int f25325C;

    /* renamed from: D */
    public boolean f25326D;

    /* renamed from: E */
    public boolean f25327E;

    /* renamed from: F */
    public long f25328F;

    /* renamed from: G */
    public boolean f25329G;

    /* renamed from: a */
    public final C4859c f25330a;

    /* renamed from: d */
    @Nullable
    public final DrmSessionManager f25333d;

    /* renamed from: e */
    @Nullable
    public final DrmSessionEventListener.EventDispatcher f25334e;

    /* renamed from: f */
    @Nullable
    public UpstreamFormatChangedListener f25335f;

    /* renamed from: g */
    @Nullable
    public Format f25336g;

    /* renamed from: h */
    @Nullable
    public DrmSession f25337h;

    /* renamed from: p */
    public int f25345p;

    /* renamed from: q */
    public int f25346q;

    /* renamed from: r */
    public int f25347r;

    /* renamed from: s */
    public int f25348s;

    /* renamed from: w */
    public boolean f25352w;

    /* renamed from: z */
    public boolean f25355z;

    /* renamed from: b */
    public final C4844b f25331b = new C4844b();

    /* renamed from: i */
    public int f25338i = 1000;

    /* renamed from: j */
    public int[] f25339j = new int[1000];

    /* renamed from: k */
    public long[] f25340k = new long[1000];

    /* renamed from: n */
    public long[] f25343n = new long[1000];

    /* renamed from: m */
    public int[] f25342m = new int[1000];

    /* renamed from: l */
    public int[] f25341l = new int[1000];

    /* renamed from: o */
    public TrackOutput.CryptoData[] f25344o = new TrackOutput.CryptoData[1000];

    /* renamed from: c */
    public final zvm<C4845c> f25332c = new zvm<>(new Consumer() { // from class: com.sunia.HTREnginev2.o0m
        @Override // com.google.android.exoplayer2.util.Consumer
        public final void accept(Object obj) {
            SampleQueue.m19682m((SampleQueue.C4845c) obj);
        }
    });

    /* renamed from: t */
    public long f25349t = Long.MIN_VALUE;

    /* renamed from: u */
    public long f25350u = Long.MIN_VALUE;

    /* renamed from: v */
    public long f25351v = Long.MIN_VALUE;

    /* renamed from: y */
    public boolean f25354y = true;

    /* renamed from: x */
    public boolean f25353x = true;

    /* loaded from: classes5.dex */
    public interface UpstreamFormatChangedListener {
        void onUpstreamFormatChanged(Format format);
    }

    /* renamed from: com.google.android.exoplayer2.source.SampleQueue$b */
    /* loaded from: classes5.dex */
    public static final class C4844b {

        /* renamed from: a */
        public int f25356a;

        /* renamed from: b */
        public long f25357b;

        /* renamed from: c */
        @Nullable
        public TrackOutput.CryptoData f25358c;
    }

    /* renamed from: com.google.android.exoplayer2.source.SampleQueue$c */
    /* loaded from: classes5.dex */
    public static final class C4845c {

        /* renamed from: a */
        public final Format f25359a;

        /* renamed from: b */
        public final DrmSessionManager.DrmSessionReference f25360b;

        public C4845c(Format format, DrmSessionManager.DrmSessionReference drmSessionReference) {
            this.f25359a = format;
            this.f25360b = drmSessionReference;
        }
    }

    public SampleQueue(Allocator allocator, @Nullable DrmSessionManager drmSessionManager, @Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.f25333d = drmSessionManager;
        this.f25334e = eventDispatcher;
        this.f25330a = new C4859c(allocator);
    }

    public static SampleQueue createWithDrm(Allocator allocator, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return new SampleQueue(allocator, (DrmSessionManager) Assertions.checkNotNull(drmSessionManager), (DrmSessionEventListener.EventDispatcher) Assertions.checkNotNull(eventDispatcher));
    }

    public static SampleQueue createWithoutDrm(Allocator allocator) {
        return new SampleQueue(allocator, null, null);
    }

    /* renamed from: m */
    public static /* synthetic */ void m19682m(C4845c c4845c) {
        c4845c.f25360b.release();
    }

    /* renamed from: b */
    public final synchronized boolean m19683b(long j) {
        if (this.f25345p == 0) {
            return j > this.f25350u;
        }
        if (getLargestReadTimestampUs() >= j) {
            return false;
        }
        m19689h(this.f25346q + m19685d(j));
        return true;
    }

    /* renamed from: c */
    public final synchronized void m19684c(long j, int i, long j2, int i2, @Nullable TrackOutput.CryptoData cryptoData) {
        int i3 = this.f25345p;
        if (i3 > 0) {
            int m19692k = m19692k(i3 - 1);
            Assertions.checkArgument(this.f25340k[m19692k] + ((long) this.f25341l[m19692k]) <= j2);
        }
        this.f25352w = (536870912 & i) != 0;
        this.f25351v = Math.max(this.f25351v, j);
        int m19692k2 = m19692k(this.f25345p);
        this.f25343n[m19692k2] = j;
        this.f25340k[m19692k2] = j2;
        this.f25341l[m19692k2] = i2;
        this.f25342m[m19692k2] = i;
        this.f25344o[m19692k2] = cryptoData;
        this.f25339j[m19692k2] = this.f25325C;
        if (this.f25332c.m58763h() || !this.f25332c.m58762g().f25359a.equals(this.f25324B)) {
            DrmSessionManager drmSessionManager = this.f25333d;
            this.f25332c.m58757b(getWriteIndex(), new C4845c((Format) Assertions.checkNotNull(this.f25324B), drmSessionManager != null ? drmSessionManager.preacquireSession(this.f25334e, this.f25324B) : DrmSessionManager.DrmSessionReference.EMPTY));
        }
        int i4 = this.f25345p + 1;
        this.f25345p = i4;
        int i5 = this.f25338i;
        if (i4 == i5) {
            int i6 = i5 + 1000;
            int[] iArr = new int[i6];
            long[] jArr = new long[i6];
            long[] jArr2 = new long[i6];
            int[] iArr2 = new int[i6];
            int[] iArr3 = new int[i6];
            TrackOutput.CryptoData[] cryptoDataArr = new TrackOutput.CryptoData[i6];
            int i7 = this.f25347r;
            int i8 = i5 - i7;
            System.arraycopy(this.f25340k, i7, jArr, 0, i8);
            System.arraycopy(this.f25343n, this.f25347r, jArr2, 0, i8);
            System.arraycopy(this.f25342m, this.f25347r, iArr2, 0, i8);
            System.arraycopy(this.f25341l, this.f25347r, iArr3, 0, i8);
            System.arraycopy(this.f25344o, this.f25347r, cryptoDataArr, 0, i8);
            System.arraycopy(this.f25339j, this.f25347r, iArr, 0, i8);
            int i9 = this.f25347r;
            System.arraycopy(this.f25340k, 0, jArr, i8, i9);
            System.arraycopy(this.f25343n, 0, jArr2, i8, i9);
            System.arraycopy(this.f25342m, 0, iArr2, i8, i9);
            System.arraycopy(this.f25341l, 0, iArr3, i8, i9);
            System.arraycopy(this.f25344o, 0, cryptoDataArr, i8, i9);
            System.arraycopy(this.f25339j, 0, iArr, i8, i9);
            this.f25340k = jArr;
            this.f25343n = jArr2;
            this.f25342m = iArr2;
            this.f25341l = iArr3;
            this.f25344o = cryptoDataArr;
            this.f25339j = iArr;
            this.f25347r = 0;
            this.f25338i = i6;
        }
    }

    /* renamed from: d */
    public final int m19685d(long j) {
        int i = this.f25345p;
        int m19692k = m19692k(i - 1);
        while (i > this.f25348s && this.f25343n[m19692k] >= j) {
            i--;
            m19692k--;
            if (m19692k == -1) {
                m19692k = this.f25338i - 1;
            }
        }
        return i;
    }

    public synchronized long discardSampleMetadataToRead() {
        int i = this.f25348s;
        if (i == 0) {
            return -1L;
        }
        return m19688g(i);
    }

    public final void discardTo(long j, boolean z, boolean z2) {
        this.f25330a.m19867b(m19686e(j, z, z2));
    }

    public final void discardToEnd() {
        this.f25330a.m19867b(m19687f());
    }

    public final void discardToRead() {
        this.f25330a.m19867b(discardSampleMetadataToRead());
    }

    public final void discardUpstreamFrom(long j) {
        if (this.f25345p == 0) {
            return;
        }
        Assertions.checkArgument(j > getLargestReadTimestampUs());
        discardUpstreamSamples(this.f25346q + m19685d(j));
    }

    public final void discardUpstreamSamples(int i) {
        this.f25330a.m19868c(m19689h(i));
    }

    /* renamed from: e */
    public final synchronized long m19686e(long j, boolean z, boolean z2) {
        int i;
        int i2 = this.f25345p;
        if (i2 != 0) {
            long[] jArr = this.f25343n;
            int i3 = this.f25347r;
            if (j >= jArr[i3]) {
                if (z2 && (i = this.f25348s) != i2) {
                    i2 = i + 1;
                }
                int m19690i = m19690i(i3, i2, j, z);
                if (m19690i == -1) {
                    return -1L;
                }
                return m19688g(m19690i);
            }
        }
        return -1L;
    }

    /* renamed from: f */
    public final synchronized long m19687f() {
        int i = this.f25345p;
        if (i == 0) {
            return -1L;
        }
        return m19688g(i);
    }

    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    public final void format(Format format) {
        Format adjustedUpstreamFormat = getAdjustedUpstreamFormat(format);
        this.f25355z = false;
        this.f25323A = format;
        boolean m19699s = m19699s(adjustedUpstreamFormat);
        UpstreamFormatChangedListener upstreamFormatChangedListener = this.f25335f;
        if (upstreamFormatChangedListener == null || !m19699s) {
            return;
        }
        upstreamFormatChangedListener.onUpstreamFormatChanged(adjustedUpstreamFormat);
    }

    @GuardedBy("this")
    /* renamed from: g */
    public final long m19688g(int i) {
        this.f25350u = Math.max(this.f25350u, m19691j(i));
        this.f25345p -= i;
        int i2 = this.f25346q + i;
        this.f25346q = i2;
        int i3 = this.f25347r + i;
        this.f25347r = i3;
        int i4 = this.f25338i;
        if (i3 >= i4) {
            this.f25347r = i3 - i4;
        }
        int i5 = this.f25348s - i;
        this.f25348s = i5;
        if (i5 < 0) {
            this.f25348s = 0;
        }
        this.f25332c.m58760e(i2);
        if (this.f25345p != 0) {
            return this.f25340k[this.f25347r];
        }
        int i6 = this.f25347r;
        if (i6 == 0) {
            i6 = this.f25338i;
        }
        return this.f25340k[i6 - 1] + this.f25341l[r5];
    }

    @CallSuper
    public Format getAdjustedUpstreamFormat(Format format) {
        return (this.f25328F == 0 || format.subsampleOffsetUs == Long.MAX_VALUE) ? format : format.buildUpon().setSubsampleOffsetUs(format.subsampleOffsetUs + this.f25328F).build();
    }

    public final int getFirstIndex() {
        return this.f25346q;
    }

    public final synchronized long getFirstTimestampUs() {
        return this.f25345p == 0 ? Long.MIN_VALUE : this.f25343n[this.f25347r];
    }

    public final synchronized long getLargestQueuedTimestampUs() {
        return this.f25351v;
    }

    public final synchronized long getLargestReadTimestampUs() {
        return Math.max(this.f25350u, m19691j(this.f25348s));
    }

    public final int getReadIndex() {
        return this.f25346q + this.f25348s;
    }

    public final synchronized int getSkipCount(long j, boolean z) {
        int m19692k = m19692k(this.f25348s);
        if (m19693l() && j >= this.f25343n[m19692k]) {
            if (j > this.f25351v && z) {
                return this.f25345p - this.f25348s;
            }
            int m19690i = m19690i(m19692k, this.f25345p - this.f25348s, j, true);
            if (m19690i == -1) {
                return 0;
            }
            return m19690i;
        }
        return 0;
    }

    @Nullable
    public final synchronized Format getUpstreamFormat() {
        return this.f25354y ? null : this.f25324B;
    }

    public final int getWriteIndex() {
        return this.f25346q + this.f25345p;
    }

    /* renamed from: h */
    public final long m19689h(int i) {
        int writeIndex = getWriteIndex() - i;
        boolean z = false;
        Assertions.checkArgument(writeIndex >= 0 && writeIndex <= this.f25345p - this.f25348s);
        int i2 = this.f25345p - writeIndex;
        this.f25345p = i2;
        this.f25351v = Math.max(this.f25350u, m19691j(i2));
        if (writeIndex == 0 && this.f25352w) {
            z = true;
        }
        this.f25352w = z;
        this.f25332c.m58759d(i);
        int i3 = this.f25345p;
        if (i3 == 0) {
            return 0L;
        }
        return this.f25340k[m19692k(i3 - 1)] + this.f25341l[r9];
    }

    /* renamed from: i */
    public final int m19690i(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.f25343n[i];
            if (j2 > j) {
                return i3;
            }
            if (!z || (this.f25342m[i] & 1) != 0) {
                if (j2 == j) {
                    return i4;
                }
                i3 = i4;
            }
            i++;
            if (i == this.f25338i) {
                i = 0;
            }
        }
        return i3;
    }

    public final void invalidateUpstreamFormatAdjustment() {
        this.f25355z = true;
    }

    public final synchronized boolean isLastSampleQueued() {
        return this.f25352w;
    }

    @CallSuper
    public synchronized boolean isReady(boolean z) {
        Format format;
        boolean z2 = true;
        if (m19693l()) {
            if (this.f25332c.m58761f(getReadIndex()).f25359a != this.f25336g) {
                return true;
            }
            return m19694n(m19692k(this.f25348s));
        }
        if (!z && !this.f25352w && ((format = this.f25324B) == null || format == this.f25336g)) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: j */
    public final long m19691j(int i) {
        long j = Long.MIN_VALUE;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int m19692k = m19692k(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            j = Math.max(j, this.f25343n[m19692k]);
            if ((this.f25342m[m19692k] & 1) != 0) {
                break;
            }
            m19692k--;
            if (m19692k == -1) {
                m19692k = this.f25338i - 1;
            }
        }
        return j;
    }

    /* renamed from: k */
    public final int m19692k(int i) {
        int i2 = this.f25347r + i;
        int i3 = this.f25338i;
        return i2 < i3 ? i2 : i2 - i3;
    }

    /* renamed from: l */
    public final boolean m19693l() {
        return this.f25348s != this.f25345p;
    }

    @CallSuper
    public void maybeThrowError() throws IOException {
        DrmSession drmSession = this.f25337h;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((DrmSession.DrmSessionException) Assertions.checkNotNull(this.f25337h.getError()));
        }
    }

    /* renamed from: n */
    public final boolean m19694n(int i) {
        DrmSession drmSession = this.f25337h;
        return drmSession == null || drmSession.getState() == 4 || ((this.f25342m[i] & 1073741824) == 0 && this.f25337h.playClearSamplesWithoutKeys());
    }

    /* renamed from: o */
    public final void m19695o(Format format, FormatHolder formatHolder) {
        Format format2 = this.f25336g;
        boolean z = format2 == null;
        DrmInitData drmInitData = z ? null : format2.drmInitData;
        this.f25336g = format;
        DrmInitData drmInitData2 = format.drmInitData;
        DrmSessionManager drmSessionManager = this.f25333d;
        formatHolder.format = drmSessionManager != null ? format.copyWithCryptoType(drmSessionManager.getCryptoType(format)) : format;
        formatHolder.drmSession = this.f25337h;
        if (this.f25333d == null) {
            return;
        }
        if (z || !Util.areEqual(drmInitData, drmInitData2)) {
            DrmSession drmSession = this.f25337h;
            DrmSession acquireSession = this.f25333d.acquireSession(this.f25334e, format);
            this.f25337h = acquireSession;
            formatHolder.drmSession = acquireSession;
            if (drmSession != null) {
                drmSession.release(this.f25334e);
            }
        }
    }

    /* renamed from: p */
    public final synchronized int m19696p(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z, boolean z2, C4844b c4844b) {
        decoderInputBuffer.waitingForKeys = false;
        if (!m19693l()) {
            if (!z2 && !this.f25352w) {
                Format format = this.f25324B;
                if (format == null || (!z && format == this.f25336g)) {
                    return -3;
                }
                m19695o((Format) Assertions.checkNotNull(format), formatHolder);
                return -5;
            }
            decoderInputBuffer.setFlags(4);
            return -4;
        }
        Format format2 = this.f25332c.m58761f(getReadIndex()).f25359a;
        if (!z && format2 == this.f25336g) {
            int m19692k = m19692k(this.f25348s);
            if (!m19694n(m19692k)) {
                decoderInputBuffer.waitingForKeys = true;
                return -3;
            }
            decoderInputBuffer.setFlags(this.f25342m[m19692k]);
            long j = this.f25343n[m19692k];
            decoderInputBuffer.timeUs = j;
            if (j < this.f25349t) {
                decoderInputBuffer.addFlag(Integer.MIN_VALUE);
            }
            c4844b.f25356a = this.f25341l[m19692k];
            c4844b.f25357b = this.f25340k[m19692k];
            c4844b.f25358c = this.f25344o[m19692k];
            return -4;
        }
        m19695o(format2, formatHolder);
        return -5;
    }

    public final synchronized int peekSourceId() {
        return m19693l() ? this.f25339j[m19692k(this.f25348s)] : this.f25325C;
    }

    @CallSuper
    public void preRelease() {
        discardToEnd();
        m19697q();
    }

    /* renamed from: q */
    public final void m19697q() {
        DrmSession drmSession = this.f25337h;
        if (drmSession != null) {
            drmSession.release(this.f25334e);
            this.f25337h = null;
            this.f25336g = null;
        }
    }

    /* renamed from: r */
    public final synchronized void m19698r() {
        this.f25348s = 0;
        this.f25330a.m19875o();
    }

    @CallSuper
    public int read(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i, boolean z) {
        int m19696p = m19696p(formatHolder, decoderInputBuffer, (i & 2) != 0, z, this.f25331b);
        if (m19696p == -4 && !decoderInputBuffer.isEndOfStream()) {
            boolean z2 = (i & 1) != 0;
            if ((i & 4) == 0) {
                if (z2) {
                    this.f25330a.m19870f(decoderInputBuffer, this.f25331b);
                } else {
                    this.f25330a.m19873m(decoderInputBuffer, this.f25331b);
                }
            }
            if (!z2) {
                this.f25348s++;
            }
        }
        return m19696p;
    }

    @CallSuper
    public void release() {
        reset(true);
        m19697q();
    }

    public final void reset() {
        reset(false);
    }

    /* renamed from: s */
    public final synchronized boolean m19699s(Format format) {
        this.f25354y = false;
        if (Util.areEqual(format, this.f25324B)) {
            return false;
        }
        if (this.f25332c.m58763h() || !this.f25332c.m58762g().f25359a.equals(format)) {
            this.f25324B = format;
        } else {
            this.f25324B = this.f25332c.m58762g().f25359a;
        }
        Format format2 = this.f25324B;
        this.f25326D = MimeTypes.allSamplesAreSyncSamples(format2.sampleMimeType, format2.codecs);
        this.f25327E = false;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    public final int sampleData(DataReader dataReader, int i, boolean z, int i2) throws IOException {
        return this.f25330a.m19876p(dataReader, i, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0063  */
    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sampleMetadata(long r11, int r13, int r14, int r15, @androidx.annotation.Nullable com.google.android.exoplayer2.extractor.TrackOutput.CryptoData r16) {
        /*
            r10 = this;
            r0 = r10
            boolean r1 = r0.f25355z
            if (r1 == 0) goto L10
            com.google.android.exoplayer2.Format r1 = r0.f25323A
            java.lang.Object r1 = com.google.android.exoplayer2.util.Assertions.checkStateNotNull(r1)
            com.google.android.exoplayer2.Format r1 = (com.google.android.exoplayer2.Format) r1
            r10.format(r1)
        L10:
            r1 = r13 & 1
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L18
            r4 = r3
            goto L19
        L18:
            r4 = r2
        L19:
            boolean r5 = r0.f25353x
            if (r5 == 0) goto L22
            if (r4 != 0) goto L20
            return
        L20:
            r0.f25353x = r2
        L22:
            long r5 = r0.f25328F
            long r5 = r5 + r11
            boolean r7 = r0.f25326D
            if (r7 == 0) goto L5e
            long r7 = r0.f25349t
            int r7 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r7 >= 0) goto L30
            return
        L30:
            if (r1 != 0) goto L5e
            boolean r1 = r0.f25327E
            if (r1 != 0) goto L5a
            com.google.android.exoplayer2.Format r1 = r0.f25324B
            java.lang.String r1 = java.lang.String.valueOf(r1)
            int r7 = r1.length()
            int r7 = r7 + 50
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>(r7)
            java.lang.String r7 = "Overriding unexpected non-sync sample for format: "
            r8.append(r7)
            r8.append(r1)
            java.lang.String r1 = r8.toString()
            java.lang.String r7 = "SampleQueue"
            com.google.android.exoplayer2.util.Log.m21493w(r7, r1)
            r0.f25327E = r3
        L5a:
            r1 = r13 | 1
            r3 = r1
            goto L5f
        L5e:
            r3 = r13
        L5f:
            boolean r1 = r0.f25329G
            if (r1 == 0) goto L70
            if (r4 == 0) goto L6f
            boolean r1 = r10.m19683b(r5)
            if (r1 != 0) goto L6c
            goto L6f
        L6c:
            r0.f25329G = r2
            goto L70
        L6f:
            return
        L70:
            com.google.android.exoplayer2.source.c r1 = r0.f25330a
            long r1 = r1.m19869e()
            r7 = r14
            long r8 = (long) r7
            long r1 = r1 - r8
            r4 = r15
            long r8 = (long) r4
            long r8 = r1 - r8
            r0 = r10
            r1 = r5
            r4 = r8
            r6 = r14
            r7 = r16
            r0.m19684c(r1, r3, r4, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.SampleQueue.sampleMetadata(long, int, int, int, com.google.android.exoplayer2.extractor.TrackOutput$CryptoData):void");
    }

    public final synchronized boolean seekTo(int i) {
        m19698r();
        int i2 = this.f25346q;
        if (i >= i2 && i <= this.f25345p + i2) {
            this.f25349t = Long.MIN_VALUE;
            this.f25348s = i - i2;
            return true;
        }
        return false;
    }

    public final void setSampleOffsetUs(long j) {
        if (this.f25328F != j) {
            this.f25328F = j;
            invalidateUpstreamFormatAdjustment();
        }
    }

    public final void setStartTimeUs(long j) {
        this.f25349t = j;
    }

    public final void setUpstreamFormatChangeListener(@Nullable UpstreamFormatChangedListener upstreamFormatChangedListener) {
        this.f25335f = upstreamFormatChangedListener;
    }

    public final synchronized void skip(int i) {
        boolean z;
        if (i >= 0) {
            try {
                if (this.f25348s + i <= this.f25345p) {
                    z = true;
                    Assertions.checkArgument(z);
                    this.f25348s += i;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        z = false;
        Assertions.checkArgument(z);
        this.f25348s += i;
    }

    public final void sourceId(int i) {
        this.f25325C = i;
    }

    public final void splice() {
        this.f25329G = true;
    }

    @CallSuper
    public void reset(boolean z) {
        this.f25330a.m19874n();
        this.f25345p = 0;
        this.f25346q = 0;
        this.f25347r = 0;
        this.f25348s = 0;
        this.f25353x = true;
        this.f25349t = Long.MIN_VALUE;
        this.f25350u = Long.MIN_VALUE;
        this.f25351v = Long.MIN_VALUE;
        this.f25352w = false;
        this.f25332c.m58758c();
        if (z) {
            this.f25323A = null;
            this.f25324B = null;
            this.f25354y = true;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    public final void sampleData(ParsableByteArray parsableByteArray, int i, int i2) {
        this.f25330a.m19877q(parsableByteArray, i);
    }

    @Deprecated
    public static SampleQueue createWithDrm(Allocator allocator, Looper looper, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        drmSessionManager.setPlayer(looper, PlayerId.UNSET);
        return new SampleQueue(allocator, (DrmSessionManager) Assertions.checkNotNull(drmSessionManager), (DrmSessionEventListener.EventDispatcher) Assertions.checkNotNull(eventDispatcher));
    }

    public final synchronized boolean seekTo(long j, boolean z) {
        m19698r();
        int m19692k = m19692k(this.f25348s);
        if (m19693l() && j >= this.f25343n[m19692k] && (j <= this.f25351v || z)) {
            int m19690i = m19690i(m19692k, this.f25345p - this.f25348s, j, true);
            if (m19690i == -1) {
                return false;
            }
            this.f25349t = j;
            this.f25348s += m19690i;
            return true;
        }
        return false;
    }
}
