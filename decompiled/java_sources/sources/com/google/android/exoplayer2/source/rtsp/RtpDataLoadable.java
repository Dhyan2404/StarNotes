package com.google.android.exoplayer2.source.rtsp;

import android.os.Handler;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.extractor.DefaultExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.source.rtsp.RtpDataChannel;
import com.google.android.exoplayer2.source.rtsp.RtpDataLoadable;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.upstream.DataSourceUtil;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.mtl;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class RtpDataLoadable implements Loader.Loadable {

    /* renamed from: a */
    public final int f26277a;

    /* renamed from: b */
    public final C4919c f26278b;

    /* renamed from: c */
    public final EventListener f26279c;

    /* renamed from: d */
    public final ExtractorOutput f26280d;

    /* renamed from: f */
    public final RtpDataChannel.Factory f26282f;

    /* renamed from: g */
    public mtl f26283g;

    /* renamed from: h */
    public volatile boolean f26284h;

    /* renamed from: j */
    public volatile long f26286j;

    /* renamed from: e */
    public final Handler f26281e = Util.createHandlerForCurrentLooper();

    /* renamed from: i */
    public volatile long f26285i = C4649C.TIME_UNSET;

    /* loaded from: classes5.dex */
    public interface EventListener {
        void onTransportReady(String str, RtpDataChannel rtpDataChannel);
    }

    public RtpDataLoadable(int i, C4919c c4919c, EventListener eventListener, ExtractorOutput extractorOutput, RtpDataChannel.Factory factory) {
        this.f26277a = i;
        this.f26278b = c4919c;
        this.f26279c = eventListener;
        this.f26280d = extractorOutput;
        this.f26282f = factory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m20275b(String str, RtpDataChannel rtpDataChannel) {
        this.f26279c.onTransportReady(str, rtpDataChannel);
    }

    /* renamed from: c */
    public void m20276c() {
        ((mtl) Assertions.checkNotNull(this.f26283g)).m55682c();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void cancelLoad() {
        this.f26284h = true;
    }

    /* renamed from: d */
    public void m20277d(long j, long j2) {
        this.f26285i = j;
        this.f26286j = j2;
    }

    /* renamed from: e */
    public void m20278e(int i) {
        if (((mtl) Assertions.checkNotNull(this.f26283g)).m55681b()) {
            return;
        }
        this.f26283g.m55683d(i);
    }

    /* renamed from: f */
    public void m20279f(long j) {
        if (j == C4649C.TIME_UNSET || ((mtl) Assertions.checkNotNull(this.f26283g)).m55681b()) {
            return;
        }
        this.f26283g.m55684e(j);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void load() throws IOException {
        final RtpDataChannel rtpDataChannel = null;
        try {
            rtpDataChannel = this.f26282f.createAndOpenDataChannel(this.f26277a);
            final String transport = rtpDataChannel.getTransport();
            this.f26281e.post(new Runnable() { // from class: com.sunia.HTREnginev2.ltl
                @Override // java.lang.Runnable
                public final void run() {
                    RtpDataLoadable.this.m20275b(transport, rtpDataChannel);
                }
            });
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput((DataReader) Assertions.checkNotNull(rtpDataChannel), 0L, -1L);
            mtl mtlVar = new mtl(this.f26278b.f26519a, this.f26277a);
            this.f26283g = mtlVar;
            mtlVar.init(this.f26280d);
            while (!this.f26284h) {
                if (this.f26285i != C4649C.TIME_UNSET) {
                    this.f26283g.seek(this.f26286j, this.f26285i);
                    this.f26285i = C4649C.TIME_UNSET;
                }
                if (this.f26283g.read(defaultExtractorInput, new PositionHolder()) == -1) {
                    break;
                }
            }
        } finally {
            DataSourceUtil.closeQuietly(rtpDataChannel);
        }
    }
}
