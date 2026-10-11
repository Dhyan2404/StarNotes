package com.sunia.HTREnginev2;

import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import com.google.android.exoplayer2.source.rtsp.RtpPayloadFormat;
import com.google.android.exoplayer2.source.rtsp.reader.DefaultRtpPayloadReaderFactory;
import com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class mtl implements Extractor {

    /* renamed from: a */
    public final RtpPayloadReader f77983a;

    /* renamed from: d */
    public final int f77986d;

    /* renamed from: g */
    public ExtractorOutput f77989g;

    /* renamed from: h */
    public boolean f77990h;

    /* renamed from: k */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public boolean f77993k;

    /* renamed from: b */
    public final ParsableByteArray f77984b = new ParsableByteArray(65507);

    /* renamed from: c */
    public final ParsableByteArray f77985c = new ParsableByteArray();

    /* renamed from: e */
    public final Object f77987e = new Object();

    /* renamed from: f */
    public final ptl f77988f = new ptl();

    /* renamed from: i */
    public volatile long f77991i = C4649C.TIME_UNSET;

    /* renamed from: j */
    public volatile int f77992j = -1;

    /* renamed from: l */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public long f77994l = C4649C.TIME_UNSET;

    /* renamed from: m */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public long f77995m = C4649C.TIME_UNSET;

    public mtl(RtpPayloadFormat rtpPayloadFormat, int i) {
        this.f77986d = i;
        this.f77983a = (RtpPayloadReader) Assertions.checkNotNull(new DefaultRtpPayloadReaderFactory().createPayloadReader(rtpPayloadFormat));
    }

    /* renamed from: a */
    public static long m55680a(long j) {
        return j - 30;
    }

    /* renamed from: b */
    public boolean m55681b() {
        return this.f77990h;
    }

    /* renamed from: c */
    public void m55682c() {
        synchronized (this.f77987e) {
            this.f77993k = true;
        }
    }

    /* renamed from: d */
    public void m55683d(int i) {
        this.f77992j = i;
    }

    /* renamed from: e */
    public void m55684e(long j) {
        this.f77991i = j;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f77983a.createTracks(extractorOutput, this.f77986d);
        extractorOutput.endTracks();
        extractorOutput.seekMap(new SeekMap.Unseekable(C4649C.TIME_UNSET));
        this.f77989g = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.checkNotNull(this.f77989g);
        int read = extractorInput.read(this.f77984b.getData(), 0, 65507);
        if (read == -1) {
            return -1;
        }
        if (read == 0) {
            return 0;
        }
        this.f77984b.setPosition(0);
        this.f77984b.setLimit(read);
        RtpPacket parse = RtpPacket.parse(this.f77984b);
        if (parse == null) {
            return 0;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long m55680a = m55680a(elapsedRealtime);
        this.f77988f.m56380e(parse, elapsedRealtime);
        RtpPacket m56381f = this.f77988f.m56381f(m55680a);
        if (m56381f == null) {
            return 0;
        }
        if (!this.f77990h) {
            if (this.f77991i == C4649C.TIME_UNSET) {
                this.f77991i = m56381f.timestamp;
            }
            if (this.f77992j == -1) {
                this.f77992j = m56381f.sequenceNumber;
            }
            this.f77983a.onReceivingFirstPacket(this.f77991i, this.f77992j);
            this.f77990h = true;
        }
        synchronized (this.f77987e) {
            if (this.f77993k) {
                if (this.f77994l != C4649C.TIME_UNSET && this.f77995m != C4649C.TIME_UNSET) {
                    this.f77988f.m56382g();
                    this.f77983a.seek(this.f77994l, this.f77995m);
                    this.f77993k = false;
                    this.f77994l = C4649C.TIME_UNSET;
                    this.f77995m = C4649C.TIME_UNSET;
                }
            }
            do {
                this.f77985c.reset(m56381f.payloadData);
                this.f77983a.consume(this.f77985c, m56381f.timestamp, m56381f.sequenceNumber, m56381f.marker);
                m56381f = this.f77988f.m56381f(m55680a);
            } while (m56381f != null);
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        synchronized (this.f77987e) {
            this.f77994l = j;
            this.f77995m = j2;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        throw new UnsupportedOperationException("RTP packets are transmitted in a packet stream do not support sniffing.");
    }
}
