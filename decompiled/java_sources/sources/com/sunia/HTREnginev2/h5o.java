package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.VorbisUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import com.sunia.HTREnginev2.e0n;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* loaded from: classes5.dex */
public final class h5o extends e0n {

    /* renamed from: r */
    @Nullable
    public C13814a f71848r;

    /* renamed from: s */
    public int f71849s;

    /* renamed from: t */
    public boolean f71850t;

    /* renamed from: u */
    @Nullable
    public VorbisUtil.VorbisIdHeader f71851u;

    /* renamed from: v */
    @Nullable
    public VorbisUtil.CommentHeader f71852v;

    /* renamed from: com.sunia.HTREnginev2.h5o$a */
    /* loaded from: classes5.dex */
    public static final class C13814a {

        /* renamed from: a */
        public final VorbisUtil.VorbisIdHeader f71853a;

        /* renamed from: b */
        public final VorbisUtil.CommentHeader f71854b;

        /* renamed from: c */
        public final byte[] f71855c;

        /* renamed from: d */
        public final VorbisUtil.Mode[] f71856d;

        /* renamed from: e */
        public final int f71857e;

        public C13814a(VorbisUtil.VorbisIdHeader vorbisIdHeader, VorbisUtil.CommentHeader commentHeader, byte[] bArr, VorbisUtil.Mode[] modeArr, int i) {
            this.f71853a = vorbisIdHeader;
            this.f71854b = commentHeader;
            this.f71855c = bArr;
            this.f71856d = modeArr;
            this.f71857e = i;
        }
    }

    @VisibleForTesting
    /* renamed from: n */
    public static void m54408n(ParsableByteArray parsableByteArray, long j) {
        if (parsableByteArray.capacity() < parsableByteArray.limit() + 4) {
            parsableByteArray.reset(Arrays.copyOf(parsableByteArray.getData(), parsableByteArray.limit() + 4));
        } else {
            parsableByteArray.setLimit(parsableByteArray.limit() + 4);
        }
        byte[] data = parsableByteArray.getData();
        data[parsableByteArray.limit() - 4] = (byte) (j & 255);
        data[parsableByteArray.limit() - 3] = (byte) ((j >>> 8) & 255);
        data[parsableByteArray.limit() - 2] = (byte) ((j >>> 16) & 255);
        data[parsableByteArray.limit() - 1] = (byte) ((j >>> 24) & 255);
    }

    /* renamed from: o */
    public static int m54409o(byte b, C13814a c13814a) {
        return !c13814a.f71856d[m54410p(b, c13814a.f71857e, 1)].blockFlag ? c13814a.f71853a.blockSize0 : c13814a.f71853a.blockSize1;
    }

    @VisibleForTesting
    /* renamed from: p */
    public static int m54410p(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    /* renamed from: r */
    public static boolean m54411r(ParsableByteArray parsableByteArray) {
        try {
            return VorbisUtil.verifyVorbisHeaderCapturePattern(1, parsableByteArray, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override // com.sunia.HTREnginev2.e0n
    /* renamed from: e */
    public void mo53890e(long j) {
        super.mo53890e(j);
        this.f71850t = j != 0;
        VorbisUtil.VorbisIdHeader vorbisIdHeader = this.f71851u;
        this.f71849s = vorbisIdHeader != null ? vorbisIdHeader.blockSize0 : 0;
    }

    @Override // com.sunia.HTREnginev2.e0n
    /* renamed from: f */
    public long mo53891f(ParsableByteArray parsableByteArray) {
        if ((parsableByteArray.getData()[0] & 1) == 1) {
            return -1L;
        }
        int m54409o = m54409o(parsableByteArray.getData()[0], (C13814a) Assertions.checkStateNotNull(this.f71848r));
        long j = this.f71850t ? (this.f71849s + m54409o) / 4 : 0;
        m54408n(parsableByteArray, j);
        this.f71850t = true;
        this.f71849s = m54409o;
        return j;
    }

    @Override // com.sunia.HTREnginev2.e0n
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /* renamed from: i */
    public boolean mo53894i(ParsableByteArray parsableByteArray, long j, e0n.C13650b c13650b) throws IOException {
        if (this.f71848r != null) {
            Assertions.checkNotNull(c13650b.f68456a);
            return false;
        }
        C13814a m54412q = m54412q(parsableByteArray);
        this.f71848r = m54412q;
        if (m54412q == null) {
            return true;
        }
        VorbisUtil.VorbisIdHeader vorbisIdHeader = m54412q.f71853a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(vorbisIdHeader.data);
        arrayList.add(m54412q.f71855c);
        c13650b.f68456a = new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_VORBIS).setAverageBitrate(vorbisIdHeader.bitrateNominal).setPeakBitrate(vorbisIdHeader.bitrateMaximum).setChannelCount(vorbisIdHeader.channels).setSampleRate(vorbisIdHeader.sampleRate).setInitializationData(arrayList).setMetadata(VorbisUtil.parseVorbisComments(ImmutableList.copyOf(m54412q.f71854b.comments))).build();
        return true;
    }

    @Override // com.sunia.HTREnginev2.e0n
    /* renamed from: l */
    public void mo53897l(boolean z) {
        super.mo53897l(z);
        if (z) {
            this.f71848r = null;
            this.f71851u = null;
            this.f71852v = null;
        }
        this.f71849s = 0;
        this.f71850t = false;
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: q */
    public C13814a m54412q(ParsableByteArray parsableByteArray) throws IOException {
        VorbisUtil.VorbisIdHeader vorbisIdHeader = this.f71851u;
        if (vorbisIdHeader == null) {
            this.f71851u = VorbisUtil.readVorbisIdentificationHeader(parsableByteArray);
            return null;
        }
        VorbisUtil.CommentHeader commentHeader = this.f71852v;
        if (commentHeader == null) {
            this.f71852v = VorbisUtil.readVorbisCommentHeader(parsableByteArray);
            return null;
        }
        byte[] bArr = new byte[parsableByteArray.limit()];
        System.arraycopy(parsableByteArray.getData(), 0, bArr, 0, parsableByteArray.limit());
        return new C13814a(vorbisIdHeader, commentHeader, bArr, VorbisUtil.readVorbisModes(parsableByteArray, vorbisIdHeader.channels), VorbisUtil.iLog(r4.length - 1));
    }
}
