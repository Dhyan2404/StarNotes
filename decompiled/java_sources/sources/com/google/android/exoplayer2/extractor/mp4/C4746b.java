package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.ExtractorUtil;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.mp4.AbstractC4745a;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.AvcConfig;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.exoplayer2.video.DolbyVisionConfig;
import com.google.android.exoplayer2.video.HevcConfig;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableList;
import com.sunia.HTREnginev2.pnj;
import com.sunia.HTREnginev2.ykn;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.google.android.exoplayer2.extractor.mp4.b */
/* loaded from: classes5.dex */
public final class C4746b {

    /* renamed from: a */
    public static final String f24184a = "AtomParsers";

    /* renamed from: b */
    public static final int f24185b = 1668047728;

    /* renamed from: c */
    public static final int f24186c = 1835299937;

    /* renamed from: d */
    public static final int f24187d = 1835365473;

    /* renamed from: e */
    public static final int f24188e = 1852009571;

    /* renamed from: f */
    public static final int f24189f = 1852009592;

    /* renamed from: g */
    public static final int f24190g = 1935832172;

    /* renamed from: h */
    public static final int f24191h = 1936684398;

    /* renamed from: i */
    public static final int f24192i = 1937072756;

    /* renamed from: j */
    public static final int f24193j = 1952807028;

    /* renamed from: k */
    public static final int f24194k = 1986618469;

    /* renamed from: l */
    public static final int f24195l = 4;

    /* renamed from: m */
    public static final byte[] f24196m = Util.getUtf8Bytes("OpusHead");

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.b$a */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a */
        public final int f24197a;

        /* renamed from: b */
        public int f24198b;

        /* renamed from: c */
        public int f24199c;

        /* renamed from: d */
        public long f24200d;

        /* renamed from: e */
        public final boolean f24201e;

        /* renamed from: f */
        public final ParsableByteArray f24202f;

        /* renamed from: g */
        public final ParsableByteArray f24203g;

        /* renamed from: h */
        public int f24204h;

        /* renamed from: i */
        public int f24205i;

        public a(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) throws ParserException {
            this.f24203g = parsableByteArray;
            this.f24202f = parsableByteArray2;
            this.f24201e = z;
            parsableByteArray2.setPosition(12);
            this.f24197a = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.f24205i = parsableByteArray.readUnsignedIntToInt();
            ExtractorUtil.checkContainerInput(parsableByteArray.readInt() == 1, "first_chunk must be 1");
            this.f24198b = -1;
        }

        /* renamed from: a */
        public boolean m19043a() {
            int i = this.f24198b + 1;
            this.f24198b = i;
            if (i == this.f24197a) {
                return false;
            }
            this.f24200d = this.f24201e ? this.f24202f.readUnsignedLongToLong() : this.f24202f.readUnsignedInt();
            if (this.f24198b == this.f24204h) {
                this.f24199c = this.f24203g.readUnsignedIntToInt();
                this.f24203g.skipBytes(4);
                int i2 = this.f24205i - 1;
                this.f24205i = i2;
                this.f24204h = i2 > 0 ? this.f24203g.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.b$b */
    /* loaded from: classes5.dex */
    public interface b {
        /* renamed from: a */
        int mo19044a();

        /* renamed from: b */
        int mo19045b();

        /* renamed from: c */
        int mo19046c();
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.b$c */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: e */
        public static final int f24206e = 8;

        /* renamed from: a */
        public final TrackEncryptionBox[] f24207a;

        /* renamed from: b */
        @Nullable
        public Format f24208b;

        /* renamed from: c */
        public int f24209c;

        /* renamed from: d */
        public int f24210d = 0;

        public c(int i) {
            this.f24207a = new TrackEncryptionBox[i];
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.b$d */
    /* loaded from: classes5.dex */
    public static final class d implements b {

        /* renamed from: a */
        public final int f24211a;

        /* renamed from: b */
        public final int f24212b;

        /* renamed from: c */
        public final ParsableByteArray f24213c;

        public d(AbstractC4745a.b bVar, Format format) {
            ParsableByteArray parsableByteArray = bVar.f24183C1;
            this.f24213c = parsableByteArray;
            parsableByteArray.setPosition(12);
            int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            if (MimeTypes.AUDIO_RAW.equals(format.sampleMimeType)) {
                int pcmFrameSize = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
                if (readUnsignedIntToInt == 0 || readUnsignedIntToInt % pcmFrameSize != 0) {
                    StringBuilder sb = new StringBuilder(88);
                    sb.append("Audio sample size mismatch. stsd sample size: ");
                    sb.append(pcmFrameSize);
                    sb.append(", stsz sample size: ");
                    sb.append(readUnsignedIntToInt);
                    Log.m21493w(C4746b.f24184a, sb.toString());
                    readUnsignedIntToInt = pcmFrameSize;
                }
            }
            this.f24211a = readUnsignedIntToInt == 0 ? -1 : readUnsignedIntToInt;
            this.f24212b = parsableByteArray.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.C4746b.b
        /* renamed from: a */
        public int mo19044a() {
            int i = this.f24211a;
            return i == -1 ? this.f24213c.readUnsignedIntToInt() : i;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.C4746b.b
        /* renamed from: b */
        public int mo19045b() {
            return this.f24211a;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.C4746b.b
        /* renamed from: c */
        public int mo19046c() {
            return this.f24212b;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.b$e */
    /* loaded from: classes5.dex */
    public static final class e implements b {

        /* renamed from: a */
        public final ParsableByteArray f24214a;

        /* renamed from: b */
        public final int f24215b;

        /* renamed from: c */
        public final int f24216c;

        /* renamed from: d */
        public int f24217d;

        /* renamed from: e */
        public int f24218e;

        public e(AbstractC4745a.b bVar) {
            ParsableByteArray parsableByteArray = bVar.f24183C1;
            this.f24214a = parsableByteArray;
            parsableByteArray.setPosition(12);
            this.f24216c = parsableByteArray.readUnsignedIntToInt() & 255;
            this.f24215b = parsableByteArray.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.C4746b.b
        /* renamed from: a */
        public int mo19044a() {
            int i = this.f24216c;
            if (i == 8) {
                return this.f24214a.readUnsignedByte();
            }
            if (i == 16) {
                return this.f24214a.readUnsignedShort();
            }
            int i2 = this.f24217d;
            this.f24217d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.f24218e & 15;
            }
            int readUnsignedByte = this.f24214a.readUnsignedByte();
            this.f24218e = readUnsignedByte;
            return (readUnsignedByte & 240) >> 4;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.C4746b.b
        /* renamed from: b */
        public int mo19045b() {
            return -1;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.C4746b.b
        /* renamed from: c */
        public int mo19046c() {
            return this.f24215b;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.b$f */
    /* loaded from: classes5.dex */
    public static final class f {

        /* renamed from: a */
        public final int f24219a;

        /* renamed from: b */
        public final long f24220b;

        /* renamed from: c */
        public final int f24221c;

        public f(int i, long j, int i2) {
            this.f24219a = i;
            this.f24220b = j;
            this.f24221c = i2;
        }
    }

    /* renamed from: A */
    public static List<ykn> m19013A(AbstractC4745a.a aVar, GaplessInfoHolder gaplessInfoHolder, long j, @Nullable DrmInitData drmInitData, boolean z, boolean z2, Function<Track, Track> function) throws ParserException {
        Track apply;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < aVar.f24182E1.size(); i++) {
            AbstractC4745a.a aVar2 = aVar.f24182E1.get(i);
            if (aVar2.f24179a == 1953653099 && (apply = function.apply(m19042z(aVar2, (AbstractC4745a.b) Assertions.checkNotNull(aVar.m19012h(AbstractC4745a.f24123h0)), j, drmInitData, z, z2))) != null) {
                arrayList.add(m19038v(apply, (AbstractC4745a.a) Assertions.checkNotNull(((AbstractC4745a.a) Assertions.checkNotNull(((AbstractC4745a.a) Assertions.checkNotNull(aVar2.m19011g(AbstractC4745a.f24129j0))).m19011g(AbstractC4745a.f24132k0))).m19011g(AbstractC4745a.f24135l0)), gaplessInfoHolder));
            }
        }
        return arrayList;
    }

    /* renamed from: B */
    public static Pair<Metadata, Metadata> m19014B(AbstractC4745a.b bVar) {
        ParsableByteArray parsableByteArray = bVar.f24183C1;
        parsableByteArray.setPosition(8);
        Metadata metadata = null;
        Metadata metadata2 = null;
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 1835365473) {
                parsableByteArray.setPosition(position);
                metadata = m19015C(parsableByteArray, position + readInt);
            } else if (readInt2 == 1936553057) {
                parsableByteArray.setPosition(position);
                metadata2 = m19037u(parsableByteArray, position + readInt);
            }
            parsableByteArray.setPosition(position + readInt);
        }
        return Pair.create(metadata, metadata2);
    }

    @Nullable
    /* renamed from: C */
    public static Metadata m19015C(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        m19021e(parsableByteArray);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1768715124) {
                parsableByteArray.setPosition(position);
                return m19028l(parsableByteArray, position + readInt);
            }
            parsableByteArray.setPosition(position + readInt);
        }
        return null;
    }

    /* renamed from: D */
    public static void m19016D(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, int i5, @Nullable DrmInitData drmInitData, c cVar, int i6) throws ParserException {
        DrmInitData drmInitData2;
        int i7;
        int i8;
        byte[] bArr;
        float f2;
        List<byte[]> list;
        String str;
        int i9 = i2;
        int i10 = i3;
        DrmInitData drmInitData3 = drmInitData;
        c cVar2 = cVar;
        parsableByteArray.setPosition(i9 + 8 + 8);
        parsableByteArray.skipBytes(16);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        int i11 = i;
        if (i11 == 1701733238) {
            Pair<Integer, TrackEncryptionBox> m19035s = m19035s(parsableByteArray, i9, i10);
            if (m19035s != null) {
                i11 = ((Integer) m19035s.first).intValue();
                drmInitData3 = drmInitData3 == null ? null : drmInitData3.copyWithSchemeType(((TrackEncryptionBox) m19035s.second).schemeType);
                cVar2.f24207a[i6] = (TrackEncryptionBox) m19035s.second;
            }
            parsableByteArray.setPosition(position);
        }
        String str2 = MimeTypes.VIDEO_H263;
        String str3 = i11 == 1831958048 ? MimeTypes.VIDEO_MPEG : i11 == 1211250227 ? MimeTypes.VIDEO_H263 : null;
        float f3 = 1.0f;
        byte[] bArr2 = null;
        String str4 = null;
        List<byte[]> list2 = null;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        int i15 = -1;
        ByteBuffer byteBuffer = null;
        boolean z = false;
        while (true) {
            if (position - i9 >= i10) {
                drmInitData2 = drmInitData3;
                break;
            }
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            String str5 = str2;
            int readInt = parsableByteArray.readInt();
            if (readInt == 0) {
                drmInitData2 = drmInitData3;
                if (parsableByteArray.getPosition() - i9 == i10) {
                    break;
                }
            } else {
                drmInitData2 = drmInitData3;
            }
            ExtractorUtil.checkContainerInput(readInt > 0, "childAtomSize must be positive");
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 1635148611) {
                ExtractorUtil.checkContainerInput(str3 == null, null);
                parsableByteArray.setPosition(position2 + 8);
                AvcConfig parse = AvcConfig.parse(parsableByteArray);
                list2 = parse.initializationData;
                cVar2.f24209c = parse.nalUnitLengthFieldLength;
                if (!z) {
                    f3 = parse.pixelWidthHeightRatio;
                }
                str4 = parse.codecs;
                str = MimeTypes.VIDEO_H264;
            } else if (readInt2 == 1752589123) {
                ExtractorUtil.checkContainerInput(str3 == null, null);
                parsableByteArray.setPosition(position2 + 8);
                HevcConfig parse2 = HevcConfig.parse(parsableByteArray);
                list2 = parse2.initializationData;
                cVar2.f24209c = parse2.nalUnitLengthFieldLength;
                if (!z) {
                    f3 = parse2.pixelWidthHeightRatio;
                }
                str4 = parse2.codecs;
                str = MimeTypes.VIDEO_H265;
            } else {
                if (readInt2 == 1685480259 || readInt2 == 1685485123) {
                    i7 = readUnsignedShort2;
                    i8 = i11;
                    bArr = bArr2;
                    f2 = f3;
                    list = list2;
                    DolbyVisionConfig parse3 = DolbyVisionConfig.parse(parsableByteArray);
                    if (parse3 != null) {
                        str4 = parse3.codecs;
                        str3 = MimeTypes.VIDEO_DOLBY_VISION;
                    }
                } else if (readInt2 == 1987076931) {
                    ExtractorUtil.checkContainerInput(str3 == null, null);
                    str = i11 == 1987063864 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                } else if (readInt2 == 1635135811) {
                    ExtractorUtil.checkContainerInput(str3 == null, null);
                    str = MimeTypes.VIDEO_AV1;
                } else if (readInt2 == 1668050025) {
                    ByteBuffer m19017a = byteBuffer == null ? m19017a() : byteBuffer;
                    m19017a.position(21);
                    m19017a.putShort(parsableByteArray.readShort());
                    m19017a.putShort(parsableByteArray.readShort());
                    byteBuffer = m19017a;
                    i7 = readUnsignedShort2;
                    i8 = i11;
                    position += readInt;
                    i9 = i2;
                    i10 = i3;
                    cVar2 = cVar;
                    str2 = str5;
                    drmInitData3 = drmInitData2;
                    i11 = i8;
                    readUnsignedShort2 = i7;
                } else if (readInt2 == 1835295606) {
                    ByteBuffer m19017a2 = byteBuffer == null ? m19017a() : byteBuffer;
                    short readShort = parsableByteArray.readShort();
                    short readShort2 = parsableByteArray.readShort();
                    short readShort3 = parsableByteArray.readShort();
                    i8 = i11;
                    short readShort4 = parsableByteArray.readShort();
                    short readShort5 = parsableByteArray.readShort();
                    List<byte[]> list3 = list2;
                    short readShort6 = parsableByteArray.readShort();
                    byte[] bArr3 = bArr2;
                    short readShort7 = parsableByteArray.readShort();
                    float f4 = f3;
                    short readShort8 = parsableByteArray.readShort();
                    long readUnsignedInt = parsableByteArray.readUnsignedInt();
                    long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
                    i7 = readUnsignedShort2;
                    m19017a2.position(1);
                    m19017a2.putShort(readShort5);
                    m19017a2.putShort(readShort6);
                    m19017a2.putShort(readShort);
                    m19017a2.putShort(readShort2);
                    m19017a2.putShort(readShort3);
                    m19017a2.putShort(readShort4);
                    m19017a2.putShort(readShort7);
                    m19017a2.putShort(readShort8);
                    m19017a2.putShort((short) (readUnsignedInt / 10000));
                    m19017a2.putShort((short) (readUnsignedInt2 / 10000));
                    byteBuffer = m19017a2;
                    list2 = list3;
                    bArr2 = bArr3;
                    f3 = f4;
                    position += readInt;
                    i9 = i2;
                    i10 = i3;
                    cVar2 = cVar;
                    str2 = str5;
                    drmInitData3 = drmInitData2;
                    i11 = i8;
                    readUnsignedShort2 = i7;
                } else {
                    i7 = readUnsignedShort2;
                    i8 = i11;
                    bArr = bArr2;
                    f2 = f3;
                    list = list2;
                    if (readInt2 == 1681012275) {
                        ExtractorUtil.checkContainerInput(str3 == null, null);
                        str3 = str5;
                    } else if (readInt2 == 1702061171) {
                        ExtractorUtil.checkContainerInput(str3 == null, null);
                        Pair<String, byte[]> m19025i = m19025i(parsableByteArray, position2);
                        String str6 = (String) m19025i.first;
                        byte[] bArr4 = (byte[]) m19025i.second;
                        list2 = bArr4 != null ? ImmutableList.m26162of(bArr4) : list;
                        str3 = str6;
                        bArr2 = bArr;
                        f3 = f2;
                        position += readInt;
                        i9 = i2;
                        i10 = i3;
                        cVar2 = cVar;
                        str2 = str5;
                        drmInitData3 = drmInitData2;
                        i11 = i8;
                        readUnsignedShort2 = i7;
                    } else if (readInt2 == 1885434736) {
                        f3 = m19033q(parsableByteArray, position2);
                        list2 = list;
                        bArr2 = bArr;
                        z = true;
                        position += readInt;
                        i9 = i2;
                        i10 = i3;
                        cVar2 = cVar;
                        str2 = str5;
                        drmInitData3 = drmInitData2;
                        i11 = i8;
                        readUnsignedShort2 = i7;
                    } else if (readInt2 == 1937126244) {
                        bArr2 = m19034r(parsableByteArray, position2, readInt);
                        list2 = list;
                        f3 = f2;
                        position += readInt;
                        i9 = i2;
                        i10 = i3;
                        cVar2 = cVar;
                        str2 = str5;
                        drmInitData3 = drmInitData2;
                        i11 = i8;
                        readUnsignedShort2 = i7;
                    } else if (readInt2 == 1936995172) {
                        int readUnsignedByte = parsableByteArray.readUnsignedByte();
                        parsableByteArray.skipBytes(3);
                        if (readUnsignedByte == 0) {
                            int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                            if (readUnsignedByte2 == 0) {
                                i12 = 0;
                            } else if (readUnsignedByte2 == 1) {
                                i12 = 1;
                            } else if (readUnsignedByte2 == 2) {
                                i12 = 2;
                            } else if (readUnsignedByte2 == 3) {
                                i12 = 3;
                            }
                        }
                    } else if (readInt2 == 1668246642) {
                        int readInt3 = parsableByteArray.readInt();
                        if (readInt3 == 1852009592 || readInt3 == 1852009571) {
                            int readUnsignedShort3 = parsableByteArray.readUnsignedShort();
                            int readUnsignedShort4 = parsableByteArray.readUnsignedShort();
                            parsableByteArray.skipBytes(2);
                            boolean z2 = readInt == 19 && (parsableByteArray.readUnsignedByte() & 128) != 0;
                            i13 = ColorInfo.isoColorPrimariesToColorSpace(readUnsignedShort3);
                            i14 = z2 ? 1 : 2;
                            i15 = ColorInfo.isoTransferCharacteristicsToColorTransfer(readUnsignedShort4);
                        } else {
                            String valueOf = String.valueOf(AbstractC4745a.m19005a(readInt3));
                            Log.m21493w(f24184a, valueOf.length() != 0 ? "Unsupported color type: ".concat(valueOf) : new String("Unsupported color type: "));
                        }
                    }
                }
                list2 = list;
                bArr2 = bArr;
                f3 = f2;
                position += readInt;
                i9 = i2;
                i10 = i3;
                cVar2 = cVar;
                str2 = str5;
                drmInitData3 = drmInitData2;
                i11 = i8;
                readUnsignedShort2 = i7;
            }
            str3 = str;
            i7 = readUnsignedShort2;
            i8 = i11;
            position += readInt;
            i9 = i2;
            i10 = i3;
            cVar2 = cVar;
            str2 = str5;
            drmInitData3 = drmInitData2;
            i11 = i8;
            readUnsignedShort2 = i7;
        }
        int i16 = readUnsignedShort2;
        byte[] bArr5 = bArr2;
        float f5 = f3;
        List<byte[]> list4 = list2;
        if (str3 == null) {
            return;
        }
        Format.Builder drmInitData4 = new Format.Builder().setId(i4).setSampleMimeType(str3).setCodecs(str4).setWidth(readUnsignedShort).setHeight(i16).setPixelWidthHeightRatio(f5).setRotationDegrees(i5).setProjectionData(bArr5).setStereoMode(i12).setInitializationData(list4).setDrmInitData(drmInitData2);
        int i17 = i13;
        int i18 = i14;
        int i19 = i15;
        if (i17 != -1 || i18 != -1 || i19 != -1 || byteBuffer != null) {
            drmInitData4.setColorInfo(new ColorInfo(i17, i18, i19, byteBuffer != null ? byteBuffer.array() : null));
        }
        cVar.f24208b = drmInitData4.build();
    }

    /* renamed from: a */
    public static ByteBuffer m19017a() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* renamed from: b */
    public static boolean m19018b(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[Util.constrainValue(4, 0, length)] && jArr[Util.constrainValue(jArr.length - 4, 0, length)] < j3 && j3 <= j;
    }

    /* renamed from: c */
    public static int m19019c(ParsableByteArray parsableByteArray, int i, int i2, int i3) throws ParserException {
        int position = parsableByteArray.getPosition();
        ExtractorUtil.checkContainerInput(position >= i2, null);
        while (position - i2 < i3) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(readInt > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == i) {
                return position;
            }
            position += readInt;
        }
        return -1;
    }

    /* renamed from: d */
    public static int m19020d(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    /* renamed from: e */
    public static void m19021e(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() != 1751411826) {
            position += 4;
        }
        parsableByteArray.setPosition(position);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0165  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m19022f(com.google.android.exoplayer2.util.ParsableByteArray r22, int r23, int r24, int r25, int r26, java.lang.String r27, boolean r28, @androidx.annotation.Nullable com.google.android.exoplayer2.drm.DrmInitData r29, com.google.android.exoplayer2.extractor.mp4.C4746b.c r30, int r31) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 840
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.C4746b.m19022f(com.google.android.exoplayer2.util.ParsableByteArray, int, int, int, int, java.lang.String, boolean, com.google.android.exoplayer2.drm.DrmInitData, com.google.android.exoplayer2.extractor.mp4.b$c, int):void");
    }

    @Nullable
    /* renamed from: g */
    public static Pair<Integer, TrackEncryptionBox> m19023g(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        int i3 = i + 8;
        int i4 = -1;
        int i5 = 0;
        String str = null;
        Integer num = null;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 1718775137) {
                num = Integer.valueOf(parsableByteArray.readInt());
            } else if (readInt2 == 1935894637) {
                parsableByteArray.skipBytes(4);
                str = parsableByteArray.readString(4);
            } else if (readInt2 == 1935894633) {
                i4 = i3;
                i5 = readInt;
            }
            i3 += readInt;
        }
        if (!"cenc".equals(str) && !C4649C.CENC_TYPE_cbc1.equals(str) && !C4649C.CENC_TYPE_cens.equals(str) && !C4649C.CENC_TYPE_cbcs.equals(str)) {
            return null;
        }
        ExtractorUtil.checkContainerInput(num != null, "frma atom is mandatory");
        ExtractorUtil.checkContainerInput(i4 != -1, "schi atom is mandatory");
        TrackEncryptionBox m19036t = m19036t(parsableByteArray, i4, i5, str);
        ExtractorUtil.checkContainerInput(m19036t != null, "tenc atom is mandatory");
        return Pair.create(num, (TrackEncryptionBox) Util.castNonNull(m19036t));
    }

    @Nullable
    /* renamed from: h */
    public static Pair<long[], long[]> m19024h(AbstractC4745a.a aVar) {
        AbstractC4745a.b m19012h = aVar.m19012h(AbstractC4745a.f24159t0);
        if (m19012h == null) {
            return null;
        }
        ParsableByteArray parsableByteArray = m19012h.f24183C1;
        parsableByteArray.setPosition(8);
        int m19007c = AbstractC4745a.m19007c(parsableByteArray.readInt());
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[readUnsignedIntToInt];
        long[] jArr2 = new long[readUnsignedIntToInt];
        for (int i = 0; i < readUnsignedIntToInt; i++) {
            jArr[i] = m19007c == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i] = m19007c == 1 ? parsableByteArray.readLong() : parsableByteArray.readInt();
            if (parsableByteArray.readShort() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            parsableByteArray.skipBytes(2);
        }
        return Pair.create(jArr, jArr2);
    }

    /* renamed from: i */
    public static Pair<String, byte[]> m19025i(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 4);
        parsableByteArray.skipBytes(1);
        m19026j(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if ((readUnsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((readUnsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort());
        }
        if ((readUnsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        m19026j(parsableByteArray);
        String mimeTypeFromMp4ObjectType = MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if ("audio/mpeg".equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS_HD.equals(mimeTypeFromMp4ObjectType)) {
            return Pair.create(mimeTypeFromMp4ObjectType, null);
        }
        parsableByteArray.skipBytes(12);
        parsableByteArray.skipBytes(1);
        int m19026j = m19026j(parsableByteArray);
        byte[] bArr = new byte[m19026j];
        parsableByteArray.readBytes(bArr, 0, m19026j);
        return Pair.create(mimeTypeFromMp4ObjectType, bArr);
    }

    /* renamed from: j */
    public static int m19026j(ParsableByteArray parsableByteArray) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i = readUnsignedByte & 127;
        while ((readUnsignedByte & 128) == 128) {
            readUnsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (readUnsignedByte & 127);
        }
        return i;
    }

    /* renamed from: k */
    public static int m19027k(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    @Nullable
    /* renamed from: l */
    public static Metadata m19028l(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < i) {
            Metadata.Entry m56339c = pnj.m56339c(parsableByteArray);
            if (m56339c != null) {
                arrayList.add(m56339c);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    /* renamed from: m */
    public static Pair<Long, String> m19029m(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int m19007c = AbstractC4745a.m19007c(parsableByteArray.readInt());
        parsableByteArray.skipBytes(m19007c == 0 ? 8 : 16);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(m19007c == 0 ? 4 : 8);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        StringBuilder sb = new StringBuilder(3);
        sb.append((char) (((readUnsignedShort >> 10) & 31) + 96));
        sb.append((char) (((readUnsignedShort >> 5) & 31) + 96));
        sb.append((char) ((readUnsignedShort & 31) + 96));
        return Pair.create(Long.valueOf(readUnsignedInt), sb.toString());
    }

    @Nullable
    /* renamed from: n */
    public static Metadata m19030n(AbstractC4745a.a aVar) {
        AbstractC4745a.b m19012h = aVar.m19012h(AbstractC4745a.f24165v0);
        AbstractC4745a.b m19012h2 = aVar.m19012h(AbstractC4745a.f24124h1);
        AbstractC4745a.b m19012h3 = aVar.m19012h(AbstractC4745a.f24127i1);
        if (m19012h == null || m19012h2 == null || m19012h3 == null || m19027k(m19012h.f24183C1) != 1835299937) {
            return null;
        }
        ParsableByteArray parsableByteArray = m19012h2.f24183C1;
        parsableByteArray.setPosition(12);
        int readInt = parsableByteArray.readInt();
        String[] strArr = new String[readInt];
        for (int i = 0; i < readInt; i++) {
            int readInt2 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            strArr[i] = parsableByteArray.readString(readInt2 - 8);
        }
        ParsableByteArray parsableByteArray2 = m19012h3.f24183C1;
        parsableByteArray2.setPosition(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray2.bytesLeft() > 8) {
            int position = parsableByteArray2.getPosition();
            int readInt3 = parsableByteArray2.readInt();
            int readInt4 = parsableByteArray2.readInt() - 1;
            if (readInt4 < 0 || readInt4 >= readInt) {
                StringBuilder sb = new StringBuilder(52);
                sb.append("Skipped metadata with unknown key index: ");
                sb.append(readInt4);
                Log.m21493w(f24184a, sb.toString());
            } else {
                MdtaMetadataEntry m56342f = pnj.m56342f(parsableByteArray2, position + readInt3, strArr[readInt4]);
                if (m56342f != null) {
                    arrayList.add(m56342f);
                }
            }
            parsableByteArray2.setPosition(position + readInt3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    /* renamed from: o */
    public static void m19031o(ParsableByteArray parsableByteArray, int i, int i2, int i3, c cVar) {
        parsableByteArray.setPosition(i2 + 8 + 8);
        if (i == 1835365492) {
            parsableByteArray.readNullTerminatedString();
            String readNullTerminatedString = parsableByteArray.readNullTerminatedString();
            if (readNullTerminatedString != null) {
                cVar.f24208b = new Format.Builder().setId(i3).setSampleMimeType(readNullTerminatedString).build();
            }
        }
    }

    /* renamed from: p */
    public static long m19032p(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skipBytes(AbstractC4745a.m19007c(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    /* renamed from: q */
    public static float m19033q(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    @Nullable
    /* renamed from: r */
    public static byte[] m19034r(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1886547818) {
                return Arrays.copyOfRange(parsableByteArray.getData(), i3, readInt + i3);
            }
            i3 += readInt;
        }
        return null;
    }

    @Nullable
    /* renamed from: s */
    public static Pair<Integer, TrackEncryptionBox> m19035s(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        Pair<Integer, TrackEncryptionBox> m19023g;
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(readInt > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1936289382 && (m19023g = m19023g(parsableByteArray, position, readInt)) != null) {
                return m19023g;
            }
            position += readInt;
        }
        return null;
    }

    @Nullable
    /* renamed from: t */
    public static TrackEncryptionBox m19036t(ParsableByteArray parsableByteArray, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            parsableByteArray.setPosition(i5);
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1952804451) {
                int m19007c = AbstractC4745a.m19007c(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (m19007c == 0) {
                    parsableByteArray.skipBytes(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    i3 = readUnsignedByte & 15;
                    i4 = (readUnsignedByte & 240) >> 4;
                }
                boolean z = parsableByteArray.readUnsignedByte() == 1;
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray.readBytes(bArr2, 0, 16);
                if (z && readUnsignedByte2 == 0) {
                    int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                    bArr = new byte[readUnsignedByte3];
                    parsableByteArray.readBytes(bArr, 0, readUnsignedByte3);
                }
                return new TrackEncryptionBox(z, str, readUnsignedByte2, bArr2, i4, i3, bArr);
            }
            i5 += readInt;
        }
    }

    @Nullable
    /* renamed from: u */
    public static Metadata m19037u(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1935766900) {
                if (readInt < 14) {
                    return null;
                }
                parsableByteArray.skipBytes(5);
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                if (readUnsignedByte != 12 && readUnsignedByte != 13) {
                    return null;
                }
                float f2 = readUnsignedByte == 12 ? 240.0f : 120.0f;
                parsableByteArray.skipBytes(1);
                return new Metadata(new SmtaMetadataEntry(f2, parsableByteArray.readUnsignedByte()));
            }
            parsableByteArray.setPosition(position + readInt);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0430 A[EDGE_INSN: B:97:0x0430->B:98:0x0430 BREAK  A[LOOP:2: B:76:0x03d2->B:92:0x0428], SYNTHETIC] */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.sunia.HTREnginev2.ykn m19038v(com.google.android.exoplayer2.extractor.mp4.Track r37, com.google.android.exoplayer2.extractor.mp4.AbstractC4745a.a r38, com.google.android.exoplayer2.extractor.GaplessInfoHolder r39) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 1321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.C4746b.m19038v(com.google.android.exoplayer2.extractor.mp4.Track, com.google.android.exoplayer2.extractor.mp4.a$a, com.google.android.exoplayer2.extractor.GaplessInfoHolder):com.sunia.HTREnginev2.ykn");
    }

    /* renamed from: w */
    public static c m19039w(ParsableByteArray parsableByteArray, int i, int i2, String str, @Nullable DrmInitData drmInitData, boolean z) throws ParserException {
        int i3;
        parsableByteArray.setPosition(12);
        int readInt = parsableByteArray.readInt();
        c cVar = new c(readInt);
        for (int i4 = 0; i4 < readInt; i4++) {
            int position = parsableByteArray.getPosition();
            int readInt2 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(readInt2 > 0, "childAtomSize must be positive");
            int readInt3 = parsableByteArray.readInt();
            if (readInt3 == 1635148593 || readInt3 == 1635148595 || readInt3 == 1701733238 || readInt3 == 1831958048 || readInt3 == 1836070006 || readInt3 == 1752589105 || readInt3 == 1751479857 || readInt3 == 1932670515 || readInt3 == 1211250227 || readInt3 == 1987063864 || readInt3 == 1987063865 || readInt3 == 1635135537 || readInt3 == 1685479798 || readInt3 == 1685479729 || readInt3 == 1685481573 || readInt3 == 1685481521) {
                i3 = position;
                m19016D(parsableByteArray, readInt3, i3, readInt2, i, i2, drmInitData, cVar, i4);
            } else if (readInt3 == 1836069985 || readInt3 == 1701733217 || readInt3 == 1633889587 || readInt3 == 1700998451 || readInt3 == 1633889588 || readInt3 == 1835823201 || readInt3 == 1685353315 || readInt3 == 1685353317 || readInt3 == 1685353320 || readInt3 == 1685353324 || readInt3 == 1685353336 || readInt3 == 1935764850 || readInt3 == 1935767394 || readInt3 == 1819304813 || readInt3 == 1936684916 || readInt3 == 1953984371 || readInt3 == 778924082 || readInt3 == 778924083 || readInt3 == 1835557169 || readInt3 == 1835560241 || readInt3 == 1634492771 || readInt3 == 1634492791 || readInt3 == 1970037111 || readInt3 == 1332770163 || readInt3 == 1716281667) {
                i3 = position;
                m19022f(parsableByteArray, readInt3, position, readInt2, i, str, z, drmInitData, cVar, i4);
            } else {
                if (readInt3 == 1414810956 || readInt3 == 1954034535 || readInt3 == 2004251764 || readInt3 == 1937010800 || readInt3 == 1664495672) {
                    m19040x(parsableByteArray, readInt3, position, readInt2, i, str, cVar);
                } else if (readInt3 == 1835365492) {
                    m19031o(parsableByteArray, readInt3, position, i, cVar);
                } else if (readInt3 == 1667329389) {
                    cVar.f24208b = new Format.Builder().setId(i).setSampleMimeType(MimeTypes.APPLICATION_CAMERA_MOTION).build();
                }
                i3 = position;
            }
            parsableByteArray.setPosition(i3 + readInt2);
        }
        return cVar;
    }

    /* renamed from: x */
    public static void m19040x(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, c cVar) {
        parsableByteArray.setPosition(i2 + 8 + 8);
        String str2 = MimeTypes.APPLICATION_TTML;
        ImmutableList immutableList = null;
        long j = Long.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i5 = (i3 - 8) - 8;
                byte[] bArr = new byte[i5];
                parsableByteArray.readBytes(bArr, 0, i5);
                immutableList = ImmutableList.m26162of(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i == 2004251764) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i == 1937010800) {
                j = 0;
            } else {
                if (i != 1664495672) {
                    throw new IllegalStateException();
                }
                cVar.f24210d = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        cVar.f24208b = new Format.Builder().setId(i4).setSampleMimeType(str2).setLanguage(str).setSubsampleOffsetUs(j).setInitializationData(immutableList).build();
    }

    /* renamed from: y */
    public static f m19041y(ParsableByteArray parsableByteArray) {
        boolean z;
        parsableByteArray.setPosition(8);
        int m19007c = AbstractC4745a.m19007c(parsableByteArray.readInt());
        parsableByteArray.skipBytes(m19007c == 0 ? 8 : 16);
        int readInt = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        int i = m19007c == 0 ? 4 : 8;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= i) {
                z = true;
                break;
            }
            if (parsableByteArray.getData()[position + i3] != -1) {
                z = false;
                break;
            }
            i3++;
        }
        long j = C4649C.TIME_UNSET;
        if (z) {
            parsableByteArray.skipBytes(i);
        } else {
            long readUnsignedInt = m19007c == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
            if (readUnsignedInt != 0) {
                j = readUnsignedInt;
            }
        }
        parsableByteArray.skipBytes(16);
        int readInt2 = parsableByteArray.readInt();
        int readInt3 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int readInt4 = parsableByteArray.readInt();
        int readInt5 = parsableByteArray.readInt();
        if (readInt2 == 0 && readInt3 == 65536 && readInt4 == -65536 && readInt5 == 0) {
            i2 = 90;
        } else if (readInt2 == 0 && readInt3 == -65536 && readInt4 == 65536 && readInt5 == 0) {
            i2 = 270;
        } else if (readInt2 == -65536 && readInt3 == 0 && readInt4 == 0 && readInt5 == -65536) {
            i2 = 180;
        }
        return new f(readInt, j, i2);
    }

    @Nullable
    /* renamed from: z */
    public static Track m19042z(AbstractC4745a.a aVar, AbstractC4745a.b bVar, long j, @Nullable DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        AbstractC4745a.b bVar2;
        long j2;
        long[] jArr;
        long[] jArr2;
        AbstractC4745a.a m19011g;
        Pair<long[], long[]> m19024h;
        AbstractC4745a.a aVar2 = (AbstractC4745a.a) Assertions.checkNotNull(aVar.m19011g(AbstractC4745a.f24129j0));
        int m19020d = m19020d(m19027k(((AbstractC4745a.b) Assertions.checkNotNull(aVar2.m19012h(AbstractC4745a.f24165v0))).f24183C1));
        if (m19020d == -1) {
            return null;
        }
        f m19041y = m19041y(((AbstractC4745a.b) Assertions.checkNotNull(aVar.m19012h(AbstractC4745a.f24153r0))).f24183C1);
        long j3 = C4649C.TIME_UNSET;
        if (j == C4649C.TIME_UNSET) {
            bVar2 = bVar;
            j2 = m19041y.f24220b;
        } else {
            bVar2 = bVar;
            j2 = j;
        }
        long m19032p = m19032p(bVar2.f24183C1);
        if (j2 != C4649C.TIME_UNSET) {
            j3 = Util.scaleLargeTimestamp(j2, 1000000L, m19032p);
        }
        long j4 = j3;
        AbstractC4745a.a aVar3 = (AbstractC4745a.a) Assertions.checkNotNull(((AbstractC4745a.a) Assertions.checkNotNull(aVar2.m19011g(AbstractC4745a.f24132k0))).m19011g(AbstractC4745a.f24135l0));
        Pair<Long, String> m19029m = m19029m(((AbstractC4745a.b) Assertions.checkNotNull(aVar2.m19012h(AbstractC4745a.f24162u0))).f24183C1);
        c m19039w = m19039w(((AbstractC4745a.b) Assertions.checkNotNull(aVar3.m19012h(AbstractC4745a.f24168w0))).f24183C1, m19041y.f24219a, m19041y.f24221c, (String) m19029m.second, drmInitData, z2);
        if (z || (m19011g = aVar.m19011g(AbstractC4745a.f24156s0)) == null || (m19024h = m19024h(m19011g)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) m19024h.first;
            jArr2 = (long[]) m19024h.second;
            jArr = jArr3;
        }
        if (m19039w.f24208b == null) {
            return null;
        }
        return new Track(m19041y.f24219a, m19020d, ((Long) m19029m.first).longValue(), m19032p, j4, m19039w.f24208b, m19039w.f24210d, m19039w.f24207a, m19039w.f24209c, jArr, jArr2);
    }
}
