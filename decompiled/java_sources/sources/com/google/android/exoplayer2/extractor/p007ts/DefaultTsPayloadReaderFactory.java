package com.google.android.exoplayer2.extractor.p007ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class DefaultTsPayloadReaderFactory implements TsPayloadReader.Factory {
    public static final int FLAG_ALLOW_NON_IDR_KEYFRAMES = 1;
    public static final int FLAG_DETECT_ACCESS_UNITS = 8;
    public static final int FLAG_ENABLE_HDMV_DTS_AUDIO_STREAMS = 64;
    public static final int FLAG_IGNORE_AAC_STREAM = 2;
    public static final int FLAG_IGNORE_H264_STREAM = 4;
    public static final int FLAG_IGNORE_SPLICE_INFO_STREAM = 16;
    public static final int FLAG_OVERRIDE_CAPTION_DESCRIPTORS = 32;

    /* renamed from: c */
    public static final int f24339c = 134;

    /* renamed from: a */
    public final int f24340a;

    /* renamed from: b */
    public final List<Format> f24341b;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Flags {
    }

    public DefaultTsPayloadReaderFactory() {
        this(0);
    }

    /* renamed from: a */
    public final SeiReader m19090a(TsPayloadReader.EsInfo esInfo) {
        return new SeiReader(m19092c(esInfo));
    }

    /* renamed from: b */
    public final C4756a m19091b(TsPayloadReader.EsInfo esInfo) {
        return new C4756a(m19092c(esInfo));
    }

    /* renamed from: c */
    public final List<Format> m19092c(TsPayloadReader.EsInfo esInfo) {
        String str;
        int i;
        if (m19093d(32)) {
            return this.f24341b;
        }
        ParsableByteArray parsableByteArray = new ParsableByteArray(esInfo.descriptorBytes);
        List<Format> list = this.f24341b;
        while (parsableByteArray.bytesLeft() > 0) {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition() + parsableByteArray.readUnsignedByte();
            if (readUnsignedByte == 134) {
                list = new ArrayList<>();
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte() & 31;
                for (int i2 = 0; i2 < readUnsignedByte2; i2++) {
                    String readString = parsableByteArray.readString(3);
                    int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                    boolean z = (readUnsignedByte3 & 128) != 0;
                    if (z) {
                        i = readUnsignedByte3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i = 1;
                    }
                    byte readUnsignedByte4 = (byte) parsableByteArray.readUnsignedByte();
                    parsableByteArray.skipBytes(1);
                    list.add(new Format.Builder().setSampleMimeType(str).setLanguage(readString).setAccessibilityChannel(i).setInitializationData(z ? CodecSpecificDataUtil.buildCea708InitializationData((readUnsignedByte4 & 64) != 0) : null).build());
                }
            }
            parsableByteArray.setPosition(position);
        }
        return list;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.TsPayloadReader.Factory
    public SparseArray<TsPayloadReader> createInitialPayloadReaders() {
        return new SparseArray<>();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x002e. Please report as an issue. */
    @Override // com.google.android.exoplayer2.extractor.ts.TsPayloadReader.Factory
    @Nullable
    public TsPayloadReader createPayloadReader(int i, TsPayloadReader.EsInfo esInfo) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new PesReader(new MpegAudioReader(esInfo.language));
            }
            if (i == 21) {
                return new PesReader(new Id3Reader());
            }
            if (i == 27) {
                if (m19093d(4)) {
                    return null;
                }
                return new PesReader(new H264Reader(m19090a(esInfo), m19093d(1), m19093d(8)));
            }
            if (i == 36) {
                return new PesReader(new H265Reader(m19090a(esInfo)));
            }
            if (i == 89) {
                return new PesReader(new DvbSubtitleReader(esInfo.dvbSubtitleInfos));
            }
            if (i != 138) {
                if (i == 172) {
                    return new PesReader(new Ac4Reader(esInfo.language));
                }
                if (i == 257) {
                    return new SectionReader(new PassthroughSectionPayloadReader(MimeTypes.APPLICATION_AIT));
                }
                if (i == 134) {
                    if (m19093d(16)) {
                        return null;
                    }
                    return new SectionReader(new PassthroughSectionPayloadReader(MimeTypes.APPLICATION_SCTE35));
                }
                if (i != 135) {
                    switch (i) {
                        case 15:
                            if (m19093d(2)) {
                                return null;
                            }
                            return new PesReader(new AdtsReader(false, esInfo.language));
                        case 16:
                            return new PesReader(new H263Reader(m19091b(esInfo)));
                        case 17:
                            if (m19093d(2)) {
                                return null;
                            }
                            return new PesReader(new LatmReader(esInfo.language));
                        default:
                            switch (i) {
                                case 128:
                                    break;
                                case 129:
                                    break;
                                case 130:
                                    if (!m19093d(64)) {
                                        return null;
                                    }
                                    break;
                                default:
                                    return null;
                            }
                    }
                }
                return new PesReader(new Ac3Reader(esInfo.language));
            }
            return new PesReader(new DtsReader(esInfo.language));
        }
        return new PesReader(new H262Reader(m19091b(esInfo)));
    }

    /* renamed from: d */
    public final boolean m19093d(int i) {
        return (this.f24340a & i) != 0;
    }

    public DefaultTsPayloadReaderFactory(int i) {
        this(i, ImmutableList.m26161of());
    }

    public DefaultTsPayloadReaderFactory(int i, List<Format> list) {
        this.f24340a = i;
        this.f24341b = list;
    }
}
