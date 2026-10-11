package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.extractor.VorbisUtil;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import com.sunia.HTREnginev2.e0n;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* loaded from: classes5.dex */
public final class rhk extends e0n {

    /* renamed from: r */
    public static final byte[] f83103r = {79, 112, UTF8JsonGenerator.f21285e, 115, JSONB.Constants.BC_INT32, 101, 97, 100};

    /* renamed from: s */
    public static final byte[] f83104s = {79, 112, UTF8JsonGenerator.f21285e, 115, 84, 97, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 115};

    /* renamed from: o */
    public static boolean m56951o(ParsableByteArray parsableByteArray, byte[] bArr) {
        if (parsableByteArray.bytesLeft() < bArr.length) {
            return false;
        }
        int position = parsableByteArray.getPosition();
        byte[] bArr2 = new byte[bArr.length];
        parsableByteArray.readBytes(bArr2, 0, bArr.length);
        parsableByteArray.setPosition(position);
        return Arrays.equals(bArr2, bArr);
    }

    /* renamed from: p */
    public static boolean m56952p(ParsableByteArray parsableByteArray) {
        return m56951o(parsableByteArray, f83103r);
    }

    @Override // com.sunia.HTREnginev2.e0n
    /* renamed from: f */
    public long mo53891f(ParsableByteArray parsableByteArray) {
        return m53888c(m56953n(parsableByteArray.getData()));
    }

    @Override // com.sunia.HTREnginev2.e0n
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /* renamed from: i */
    public boolean mo53894i(ParsableByteArray parsableByteArray, long j, e0n.C13650b c13650b) throws ParserException {
        if (m56951o(parsableByteArray, f83103r)) {
            byte[] copyOf = Arrays.copyOf(parsableByteArray.getData(), parsableByteArray.limit());
            int channelCount = OpusUtil.getChannelCount(copyOf);
            List<byte[]> buildInitializationData = OpusUtil.buildInitializationData(copyOf);
            Assertions.checkState(c13650b.f68456a == null);
            c13650b.f68456a = new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_OPUS).setChannelCount(channelCount).setSampleRate(48000).setInitializationData(buildInitializationData).build();
            return true;
        }
        byte[] bArr = f83104s;
        if (!m56951o(parsableByteArray, bArr)) {
            Assertions.checkStateNotNull(c13650b.f68456a);
            return false;
        }
        Assertions.checkStateNotNull(c13650b.f68456a);
        parsableByteArray.skipBytes(bArr.length);
        Metadata parseVorbisComments = VorbisUtil.parseVorbisComments(ImmutableList.copyOf(VorbisUtil.readVorbisCommentHeader(parsableByteArray, false, false).comments));
        if (parseVorbisComments == null) {
            return true;
        }
        c13650b.f68456a = c13650b.f68456a.buildUpon().setMetadata(parseVorbisComments.copyWithAppendedEntriesFrom(c13650b.f68456a.metadata)).build();
        return true;
    }

    /* renamed from: n */
    public final long m56953n(byte[] bArr) {
        int i;
        int i2 = bArr[0] & 255;
        int i3 = i2 & 3;
        if (i3 != 0) {
            i = 2;
            if (i3 != 1 && i3 != 2) {
                i = bArr[1] & 63;
            }
        } else {
            i = 1;
        }
        int i4 = i2 >> 3;
        return i * (i4 >= 16 ? DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS << r0 : i4 >= 12 ? 10000 << (r0 & 1) : (i4 & 3) == 3 ? 60000 : 10000 << r0);
    }
}
