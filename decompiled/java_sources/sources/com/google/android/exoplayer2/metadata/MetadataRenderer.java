package com.google.android.exoplayer2.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.BaseRenderer;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class MetadataRenderer extends BaseRenderer implements Handler.Callback {

    /* renamed from: O */
    public static final String f24857O = "MetadataRenderer";

    /* renamed from: Q */
    public static final int f24858Q = 0;

    /* renamed from: J */
    @Nullable
    public Metadata f24859J;

    /* renamed from: r */
    public final MetadataDecoderFactory f24860r;

    /* renamed from: s */
    public final MetadataOutput f24861s;

    /* renamed from: t */
    @Nullable
    public final Handler f24862t;

    /* renamed from: u */
    public final MetadataInputBuffer f24863u;

    /* renamed from: v */
    @Nullable
    public MetadataDecoder f24864v;

    /* renamed from: w */
    public boolean f24865w;

    /* renamed from: x */
    public boolean f24866x;

    /* renamed from: y */
    public long f24867y;

    /* renamed from: z */
    public long f24868z;

    public MetadataRenderer(MetadataOutput metadataOutput, @Nullable Looper looper) {
        this(metadataOutput, looper, MetadataDecoderFactory.DEFAULT);
    }

    /* renamed from: b */
    public final void m19333b(Metadata metadata, List<Metadata.Entry> list) {
        for (int i = 0; i < metadata.length(); i++) {
            Format wrappedMetadataFormat = metadata.get(i).getWrappedMetadataFormat();
            if (wrappedMetadataFormat == null || !this.f24860r.supportsFormat(wrappedMetadataFormat)) {
                list.add(metadata.get(i));
            } else {
                MetadataDecoder createDecoder = this.f24860r.createDecoder(wrappedMetadataFormat);
                byte[] bArr = (byte[]) Assertions.checkNotNull(metadata.get(i).getWrappedMetadataBytes());
                this.f24863u.clear();
                this.f24863u.ensureSpaceForWrite(bArr.length);
                ((ByteBuffer) Util.castNonNull(this.f24863u.data)).put(bArr);
                this.f24863u.flip();
                Metadata decode = createDecoder.decode(this.f24863u);
                if (decode != null) {
                    m19333b(decode, list);
                }
            }
        }
    }

    /* renamed from: c */
    public final void m19334c(Metadata metadata) {
        Handler handler = this.f24862t;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            m19335d(metadata);
        }
    }

    /* renamed from: d */
    public final void m19335d(Metadata metadata) {
        this.f24861s.onMetadata(metadata);
    }

    /* renamed from: e */
    public final boolean m19336e(long j) {
        boolean z;
        Metadata metadata = this.f24859J;
        if (metadata == null || this.f24868z > j) {
            z = false;
        } else {
            m19334c(metadata);
            this.f24859J = null;
            this.f24868z = C4649C.TIME_UNSET;
            z = true;
        }
        if (this.f24865w && this.f24859J == null) {
            this.f24866x = true;
        }
        return z;
    }

    /* renamed from: f */
    public final void m19337f() {
        if (this.f24865w || this.f24859J != null) {
            return;
        }
        this.f24863u.clear();
        FormatHolder formatHolder = getFormatHolder();
        int readSource = readSource(formatHolder, this.f24863u, 0);
        if (readSource != -4) {
            if (readSource == -5) {
                this.f24867y = ((Format) Assertions.checkNotNull(formatHolder.format)).subsampleOffsetUs;
                return;
            }
            return;
        }
        if (this.f24863u.isEndOfStream()) {
            this.f24865w = true;
            return;
        }
        MetadataInputBuffer metadataInputBuffer = this.f24863u;
        metadataInputBuffer.subsampleOffsetUs = this.f24867y;
        metadataInputBuffer.flip();
        Metadata decode = ((MetadataDecoder) Util.castNonNull(this.f24864v)).decode(this.f24863u);
        if (decode != null) {
            ArrayList arrayList = new ArrayList(decode.length());
            m19333b(decode, arrayList);
            if (arrayList.isEmpty()) {
                return;
            }
            this.f24859J = new Metadata(arrayList);
            this.f24868z = this.f24863u.timeUs;
        }
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public String getName() {
        return f24857O;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        m19335d((Metadata) message.obj);
        return true;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return this.f24866x;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        this.f24859J = null;
        this.f24868z = C4649C.TIME_UNSET;
        this.f24864v = null;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) {
        this.f24859J = null;
        this.f24868z = C4649C.TIME_UNSET;
        this.f24865w = false;
        this.f24866x = false;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j, long j2) {
        this.f24864v = this.f24860r.createDecoder(formatArr[0]);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) {
        boolean z = true;
        while (z) {
            m19337f();
            z = m19336e(j);
        }
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public int supportsFormat(Format format) {
        if (this.f24860r.supportsFormat(format)) {
            return RendererCapabilities.create(format.cryptoType == 0 ? 4 : 2);
        }
        return RendererCapabilities.create(0);
    }

    public MetadataRenderer(MetadataOutput metadataOutput, @Nullable Looper looper, MetadataDecoderFactory metadataDecoderFactory) {
        super(5);
        this.f24861s = (MetadataOutput) Assertions.checkNotNull(metadataOutput);
        this.f24862t = looper == null ? null : Util.createHandler(looper, this);
        this.f24860r = (MetadataDecoderFactory) Assertions.checkNotNull(metadataDecoderFactory);
        this.f24863u = new MetadataInputBuffer();
        this.f24868z = C4649C.TIME_UNSET;
    }
}
