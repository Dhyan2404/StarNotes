package com.google.android.exoplayer2.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.BaseRenderer;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class TextRenderer extends BaseRenderer implements Handler.Callback {

    /* renamed from: t0 */
    public static final String f26772t0 = "TextRenderer";

    /* renamed from: u0 */
    public static final int f26773u0 = 0;

    /* renamed from: v0 */
    public static final int f26774v0 = 1;

    /* renamed from: w0 */
    public static final int f26775w0 = 2;

    /* renamed from: x0 */
    public static final int f26776x0 = 0;

    /* renamed from: J */
    @Nullable
    public SubtitleDecoder f26777J;

    /* renamed from: O */
    @Nullable
    public SubtitleInputBuffer f26778O;

    /* renamed from: Q */
    @Nullable
    public SubtitleOutputBuffer f26779Q;

    /* renamed from: Z */
    @Nullable
    public SubtitleOutputBuffer f26780Z;

    /* renamed from: k0 */
    public int f26781k0;

    /* renamed from: q0 */
    public long f26782q0;

    /* renamed from: r */
    @Nullable
    public final Handler f26783r;

    /* renamed from: s */
    public final TextOutput f26784s;

    /* renamed from: t */
    public final SubtitleDecoderFactory f26785t;

    /* renamed from: u */
    public final FormatHolder f26786u;

    /* renamed from: v */
    public boolean f26787v;

    /* renamed from: w */
    public boolean f26788w;

    /* renamed from: x */
    public boolean f26789x;

    /* renamed from: y */
    public int f26790y;

    /* renamed from: z */
    @Nullable
    public Format f26791z;

    public TextRenderer(TextOutput textOutput, @Nullable Looper looper) {
        this(textOutput, looper, SubtitleDecoderFactory.DEFAULT);
    }

    /* renamed from: b */
    public final void m20549b() {
        m20556i(Collections.emptyList());
    }

    /* renamed from: c */
    public final long m20550c() {
        if (this.f26781k0 == -1) {
            return Long.MAX_VALUE;
        }
        Assertions.checkNotNull(this.f26779Q);
        if (this.f26781k0 >= this.f26779Q.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.f26779Q.getEventTime(this.f26781k0);
    }

    /* renamed from: d */
    public final void m20551d(SubtitleDecoderException subtitleDecoderException) {
        String valueOf = String.valueOf(this.f26791z);
        StringBuilder sb = new StringBuilder(valueOf.length() + 39);
        sb.append("Subtitle decoding failed. streamFormat=");
        sb.append(valueOf);
        Log.m21490e(f26772t0, sb.toString(), subtitleDecoderException);
        m20549b();
        m20555h();
    }

    /* renamed from: e */
    public final void m20552e() {
        this.f26789x = true;
        this.f26777J = this.f26785t.createDecoder((Format) Assertions.checkNotNull(this.f26791z));
    }

    /* renamed from: f */
    public final void m20553f(List<Cue> list) {
        this.f26784s.onCues(list);
    }

    /* renamed from: g */
    public final void m20554g() {
        this.f26778O = null;
        this.f26781k0 = -1;
        SubtitleOutputBuffer subtitleOutputBuffer = this.f26779Q;
        if (subtitleOutputBuffer != null) {
            subtitleOutputBuffer.release();
            this.f26779Q = null;
        }
        SubtitleOutputBuffer subtitleOutputBuffer2 = this.f26780Z;
        if (subtitleOutputBuffer2 != null) {
            subtitleOutputBuffer2.release();
            this.f26780Z = null;
        }
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public String getName() {
        return f26772t0;
    }

    /* renamed from: h */
    public final void m20555h() {
        releaseDecoder();
        m20552e();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        m20553f((List) message.obj);
        return true;
    }

    /* renamed from: i */
    public final void m20556i(List<Cue> list) {
        Handler handler = this.f26783r;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            m20553f(list);
        }
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return this.f26788w;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        this.f26791z = null;
        this.f26782q0 = C4649C.TIME_UNSET;
        m20549b();
        releaseDecoder();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) {
        m20549b();
        this.f26787v = false;
        this.f26788w = false;
        this.f26782q0 = C4649C.TIME_UNSET;
        if (this.f26790y != 0) {
            m20555h();
        } else {
            m20554g();
            ((SubtitleDecoder) Assertions.checkNotNull(this.f26777J)).flush();
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j, long j2) {
        this.f26791z = formatArr[0];
        if (this.f26777J != null) {
            this.f26790y = 1;
        } else {
            m20552e();
        }
    }

    public final void releaseDecoder() {
        m20554g();
        ((SubtitleDecoder) Assertions.checkNotNull(this.f26777J)).release();
        this.f26777J = null;
        this.f26790y = 0;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) {
        boolean z;
        if (isCurrentStreamFinal()) {
            long j3 = this.f26782q0;
            if (j3 != C4649C.TIME_UNSET && j >= j3) {
                m20554g();
                this.f26788w = true;
            }
        }
        if (this.f26788w) {
            return;
        }
        if (this.f26780Z == null) {
            ((SubtitleDecoder) Assertions.checkNotNull(this.f26777J)).setPositionUs(j);
            try {
                this.f26780Z = ((SubtitleDecoder) Assertions.checkNotNull(this.f26777J)).dequeueOutputBuffer();
            } catch (SubtitleDecoderException e) {
                m20551d(e);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.f26779Q != null) {
            long m20550c = m20550c();
            z = false;
            while (m20550c <= j) {
                this.f26781k0++;
                m20550c = m20550c();
                z = true;
            }
        } else {
            z = false;
        }
        SubtitleOutputBuffer subtitleOutputBuffer = this.f26780Z;
        if (subtitleOutputBuffer != null) {
            if (subtitleOutputBuffer.isEndOfStream()) {
                if (!z && m20550c() == Long.MAX_VALUE) {
                    if (this.f26790y == 2) {
                        m20555h();
                    } else {
                        m20554g();
                        this.f26788w = true;
                    }
                }
            } else if (subtitleOutputBuffer.timeUs <= j) {
                SubtitleOutputBuffer subtitleOutputBuffer2 = this.f26779Q;
                if (subtitleOutputBuffer2 != null) {
                    subtitleOutputBuffer2.release();
                }
                this.f26781k0 = subtitleOutputBuffer.getNextEventTimeIndex(j);
                this.f26779Q = subtitleOutputBuffer;
                this.f26780Z = null;
                z = true;
            }
        }
        if (z) {
            Assertions.checkNotNull(this.f26779Q);
            m20556i(this.f26779Q.getCues(j));
        }
        if (this.f26790y == 2) {
            return;
        }
        while (!this.f26787v) {
            try {
                SubtitleInputBuffer subtitleInputBuffer = this.f26778O;
                if (subtitleInputBuffer == null) {
                    subtitleInputBuffer = ((SubtitleDecoder) Assertions.checkNotNull(this.f26777J)).dequeueInputBuffer();
                    if (subtitleInputBuffer == null) {
                        return;
                    } else {
                        this.f26778O = subtitleInputBuffer;
                    }
                }
                if (this.f26790y == 1) {
                    subtitleInputBuffer.setFlags(4);
                    ((SubtitleDecoder) Assertions.checkNotNull(this.f26777J)).queueInputBuffer(subtitleInputBuffer);
                    this.f26778O = null;
                    this.f26790y = 2;
                    return;
                }
                int readSource = readSource(this.f26786u, subtitleInputBuffer, 0);
                if (readSource == -4) {
                    if (subtitleInputBuffer.isEndOfStream()) {
                        this.f26787v = true;
                        this.f26789x = false;
                    } else {
                        Format format = this.f26786u.format;
                        if (format == null) {
                            return;
                        }
                        subtitleInputBuffer.subsampleOffsetUs = format.subsampleOffsetUs;
                        subtitleInputBuffer.flip();
                        this.f26789x &= !subtitleInputBuffer.isKeyFrame();
                    }
                    if (!this.f26789x) {
                        ((SubtitleDecoder) Assertions.checkNotNull(this.f26777J)).queueInputBuffer(subtitleInputBuffer);
                        this.f26778O = null;
                    }
                } else if (readSource == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e2) {
                m20551d(e2);
                return;
            }
        }
    }

    public void setFinalStreamEndPositionUs(long j) {
        Assertions.checkState(isCurrentStreamFinal());
        this.f26782q0 = j;
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public int supportsFormat(Format format) {
        if (this.f26785t.supportsFormat(format)) {
            return RendererCapabilities.create(format.cryptoType == 0 ? 4 : 2);
        }
        return MimeTypes.isText(format.sampleMimeType) ? RendererCapabilities.create(1) : RendererCapabilities.create(0);
    }

    public TextRenderer(TextOutput textOutput, @Nullable Looper looper, SubtitleDecoderFactory subtitleDecoderFactory) {
        super(3);
        this.f26784s = (TextOutput) Assertions.checkNotNull(textOutput);
        this.f26783r = looper == null ? null : Util.createHandler(looper, this);
        this.f26785t = subtitleDecoderFactory;
        this.f26786u = new FormatHolder();
        this.f26782q0 = C4649C.TIME_UNSET;
    }
}
