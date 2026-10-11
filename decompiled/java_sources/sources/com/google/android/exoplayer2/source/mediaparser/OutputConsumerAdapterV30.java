package com.google.android.exoplayer2.source.mediaparser;

import android.annotation.SuppressLint;
import android.media.DrmInitData;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaParser;
import android.media.MediaParser$InputReader;
import android.media.MediaParser$OutputConsumer;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.fasterxml.jackson.core.base.ParserBase;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.DummyExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.common.collect.ImmutableList;
import com.sunia.HTREnginev2.blj;
import com.sunia.HTREnginev2.ijk;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RequiresApi(30)
@SuppressLint({"Override"})
/* loaded from: classes5.dex */
public final class OutputConsumerAdapterV30 implements MediaParser$OutputConsumer {

    /* renamed from: A */
    public static final String f26225A = "chunk-index-long-us-times";

    /* renamed from: B */
    public static final Pattern f26226B;

    /* renamed from: u */
    public static final String f26227u = "OConsumerAdapterV30";

    /* renamed from: v */
    public static final Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> f26228v;

    /* renamed from: w */
    public static final String f26229w = "track-type-string";

    /* renamed from: x */
    public static final String f26230x = "chunk-index-int-sizes";

    /* renamed from: y */
    public static final String f26231y = "chunk-index-long-offsets";

    /* renamed from: z */
    public static final String f26232z = "chunk-index-long-us-durations";

    /* renamed from: a */
    public final ArrayList<TrackOutput> f26233a;

    /* renamed from: b */
    public final ArrayList<Format> f26234b;

    /* renamed from: c */
    public final ArrayList<MediaCodec.CryptoInfo> f26235c;

    /* renamed from: d */
    public final ArrayList<TrackOutput.CryptoData> f26236d;

    /* renamed from: e */
    public final C4899b f26237e;

    /* renamed from: f */
    public final boolean f26238f;

    /* renamed from: g */
    public final int f26239g;

    /* renamed from: h */
    @Nullable
    public final Format f26240h;

    /* renamed from: i */
    public ExtractorOutput f26241i;

    /* renamed from: j */
    @Nullable
    public MediaParser.SeekMap f26242j;

    /* renamed from: k */
    @Nullable
    public MediaParser.SeekMap f26243k;

    /* renamed from: l */
    @Nullable
    public String f26244l;

    /* renamed from: m */
    @Nullable
    public ChunkIndex f26245m;

    /* renamed from: n */
    @Nullable
    public TimestampAdjuster f26246n;

    /* renamed from: o */
    public List<Format> f26247o;

    /* renamed from: p */
    public int f26248p;

    /* renamed from: q */
    public long f26249q;

    /* renamed from: r */
    public boolean f26250r;

    /* renamed from: s */
    public boolean f26251s;

    /* renamed from: t */
    public boolean f26252t;

    /* renamed from: com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30$b */
    /* loaded from: classes5.dex */
    public static final class C4899b implements DataReader {

        /* renamed from: a */
        @Nullable
        public MediaParser$InputReader f26253a;

        public C4899b() {
        }

        @Override // com.google.android.exoplayer2.upstream.DataReader
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read;
            read = ijk.m54718a(Util.castNonNull(this.f26253a)).read(bArr, i, i2);
            return read;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30$c */
    /* loaded from: classes5.dex */
    public static final class C4900c implements SeekMap {

        /* renamed from: a */
        public final MediaParser.SeekMap f26254a;

        public C4900c(MediaParser.SeekMap seekMap) {
            this.f26254a = seekMap;
        }

        /* renamed from: a */
        public static SeekPoint m20263a(MediaParser.SeekPoint seekPoint) {
            long j;
            long j2;
            j = seekPoint.timeMicros;
            j2 = seekPoint.position;
            return new SeekPoint(j, j2);
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            long durationMicros;
            durationMicros = this.f26254a.getDurationMicros();
            return durationMicros != ParserBase.f21225q ? durationMicros : C4649C.TIME_UNSET;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j) {
            Pair seekPoints;
            seekPoints = this.f26254a.getSeekPoints(j);
            Object obj = seekPoints.first;
            return obj == seekPoints.second ? new SeekMap.SeekPoints(m20263a(blj.m53281a(obj))) : new SeekMap.SeekPoints(m20263a(blj.m53281a(obj)), m20263a(blj.m53281a(seekPoints.second)));
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            boolean isSeekable;
            isSeekable = this.f26254a.isSeekable();
            return isSeekable;
        }
    }

    static {
        MediaParser.SeekPoint seekPoint;
        MediaParser.SeekPoint seekPoint2;
        seekPoint = MediaParser.SeekPoint.START;
        seekPoint2 = MediaParser.SeekPoint.START;
        f26228v = Pair.create(seekPoint, seekPoint2);
        f26226B = Pattern.compile("pattern \\(encrypt: (\\d+), skip: (\\d+)\\)");
    }

    public OutputConsumerAdapterV30() {
        this(null, -2, false);
    }

    /* renamed from: b */
    public static byte[] m20250b(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return bArr;
    }

    @Nullable
    /* renamed from: c */
    public static ColorInfo m20251c(MediaFormat mediaFormat) {
        ByteBuffer byteBuffer = mediaFormat.getByteBuffer("hdr-static-info");
        byte[] m20250b = byteBuffer != null ? m20250b(byteBuffer) : null;
        int integer = mediaFormat.getInteger("color-transfer", -1);
        int integer2 = mediaFormat.getInteger("color-range", -1);
        int integer3 = mediaFormat.getInteger("color-standard", -1);
        if (m20250b == null && integer == -1 && integer2 == -1 && integer3 == -1) {
            return null;
        }
        return new ColorInfo(integer3, integer2, integer, m20250b);
    }

    /* renamed from: d */
    public static int m20252d(MediaFormat mediaFormat, String str, int i) {
        if (mediaFormat.getInteger(str, 0) != 0) {
            return i;
        }
        return 0;
    }

    /* renamed from: e */
    public static List<byte[]> m20253e(MediaFormat mediaFormat) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i + 1;
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            ByteBuffer byteBuffer = mediaFormat.getByteBuffer(sb.toString());
            if (byteBuffer == null) {
                return arrayList;
            }
            arrayList.add(m20250b(byteBuffer));
            i = i2;
        }
    }

    /* renamed from: f */
    public static String m20254f(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2063506020:
                if (str.equals("android.media.mediaparser.Mp4Parser")) {
                    c = 0;
                    break;
                }
                break;
            case -1870824006:
                if (str.equals("android.media.mediaparser.OggParser")) {
                    c = 1;
                    break;
                }
                break;
            case -1566427438:
                if (str.equals("android.media.mediaparser.TsParser")) {
                    c = 2;
                    break;
                }
                break;
            case -900207883:
                if (str.equals("android.media.mediaparser.AdtsParser")) {
                    c = 3;
                    break;
                }
                break;
            case -589864617:
                if (str.equals("android.media.mediaparser.WavParser")) {
                    c = 4;
                    break;
                }
                break;
            case 52265814:
                if (str.equals("android.media.mediaparser.PsParser")) {
                    c = 5;
                    break;
                }
                break;
            case 116768877:
                if (str.equals("android.media.mediaparser.FragmentedMp4Parser")) {
                    c = 6;
                    break;
                }
                break;
            case 376876796:
                if (str.equals("android.media.mediaparser.Ac3Parser")) {
                    c = 7;
                    break;
                }
                break;
            case 703268017:
                if (str.equals("android.media.mediaparser.AmrParser")) {
                    c = '\b';
                    break;
                }
                break;
            case 768643067:
                if (str.equals("android.media.mediaparser.FlacParser")) {
                    c = '\t';
                    break;
                }
                break;
            case 965962719:
                if (str.equals("android.media.mediaparser.MatroskaParser")) {
                    c = '\n';
                    break;
                }
                break;
            case 1264380477:
                if (str.equals("android.media.mediaparser.Ac4Parser")) {
                    c = 11;
                    break;
                }
                break;
            case 1343957595:
                if (str.equals("android.media.mediaparser.Mp3Parser")) {
                    c = '\f';
                    break;
                }
                break;
            case 2063134683:
                if (str.equals("android.media.mediaparser.FlvParser")) {
                    c = '\r';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 6:
                return "video/mp4";
            case 1:
                return MimeTypes.AUDIO_OGG;
            case 2:
                return MimeTypes.VIDEO_MP2T;
            case 3:
                return MimeTypes.AUDIO_AAC;
            case 4:
                return MimeTypes.AUDIO_RAW;
            case 5:
                return MimeTypes.VIDEO_PS;
            case 7:
                return MimeTypes.AUDIO_AC3;
            case '\b':
                return "audio/amr";
            case '\t':
                return MimeTypes.AUDIO_FLAC;
            case '\n':
                return MimeTypes.VIDEO_WEBM;
            case 11:
                return MimeTypes.AUDIO_AC4;
            case '\f':
                return "audio/mpeg";
            case '\r':
                return MimeTypes.VIDEO_FLV;
            default:
                throw new IllegalArgumentException(str.length() != 0 ? "Illegal parser name: ".concat(str) : new String("Illegal parser name: "));
        }
    }

    /* renamed from: g */
    public static int m20255g(MediaFormat mediaFormat) {
        return m20252d(mediaFormat, "is-forced-subtitle", 2) | m20252d(mediaFormat, "is-autoselect", 4) | 0 | m20252d(mediaFormat, "is-default", 1);
    }

    @Nullable
    /* renamed from: k */
    public static DrmInitData m20256k(@Nullable String str, @Nullable android.media.DrmInitData drmInitData) {
        int schemeInitDataCount;
        DrmInitData.SchemeInitData schemeInitDataAt;
        UUID uuid;
        if (drmInitData == null) {
            return null;
        }
        schemeInitDataCount = drmInitData.getSchemeInitDataCount();
        DrmInitData.SchemeData[] schemeDataArr = new DrmInitData.SchemeData[schemeInitDataCount];
        for (int i = 0; i < schemeInitDataCount; i++) {
            schemeInitDataAt = drmInitData.getSchemeInitDataAt(i);
            uuid = schemeInitDataAt.uuid;
            schemeDataArr[i] = new DrmInitData.SchemeData(uuid, schemeInitDataAt.mimeType, schemeInitDataAt.data);
        }
        return new com.google.android.exoplayer2.drm.DrmInitData(str, schemeDataArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: m */
    public static int m20257m(@Nullable String str) {
        char c;
        if (str == null) {
            return -1;
        }
        switch (str.hashCode()) {
            case -450004177:
                if (str.equals("metadata")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -284840886:
                if (str.equals("unknown")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 3556653:
                if (str.equals("text")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 93166550:
                if (str.equals("audio")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 112202875:
                if (str.equals("video")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return 5;
            case 1:
                return -1;
            case 2:
                return 3;
            case 3:
                return 1;
            case 4:
                return 2;
            default:
                return MimeTypes.getTrackType(str);
        }
    }

    /* renamed from: a */
    public final void m20258a(int i) {
        for (int size = this.f26233a.size(); size <= i; size++) {
            this.f26233a.add(null);
            this.f26234b.add(null);
            this.f26235c.add(null);
            this.f26236d.add(null);
        }
    }

    public void disableSeeking() {
        this.f26252t = true;
    }

    @Nullable
    public ChunkIndex getChunkIndex() {
        return this.f26245m;
    }

    @Nullable
    public MediaParser.SeekMap getDummySeekMap() {
        return this.f26242j;
    }

    @Nullable
    public Format[] getSampleFormats() {
        if (!this.f26250r) {
            return null;
        }
        Format[] formatArr = new Format[this.f26234b.size()];
        for (int i = 0; i < this.f26234b.size(); i++) {
            formatArr[i] = (Format) Assertions.checkNotNull(this.f26234b.get(i));
        }
        return formatArr;
    }

    public Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> getSeekPoints(long j) {
        Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> seekPoints;
        MediaParser.SeekMap seekMap = this.f26243k;
        if (seekMap == null) {
            return f26228v;
        }
        seekPoints = seekMap.getSeekPoints(j);
        return seekPoints;
    }

    /* renamed from: h */
    public final void m20259h() {
        if (!this.f26250r || this.f26251s) {
            return;
        }
        int size = this.f26233a.size();
        for (int i = 0; i < size; i++) {
            if (this.f26233a.get(i) == null) {
                return;
            }
        }
        this.f26241i.endTracks();
        this.f26251s = true;
    }

    /* renamed from: i */
    public final boolean m20260i(MediaFormat mediaFormat) {
        ByteBuffer byteBuffer = mediaFormat.getByteBuffer(f26230x);
        if (byteBuffer == null) {
            return false;
        }
        IntBuffer asIntBuffer = byteBuffer.asIntBuffer();
        LongBuffer asLongBuffer = ((ByteBuffer) Assertions.checkNotNull(mediaFormat.getByteBuffer(f26231y))).asLongBuffer();
        LongBuffer asLongBuffer2 = ((ByteBuffer) Assertions.checkNotNull(mediaFormat.getByteBuffer(f26232z))).asLongBuffer();
        LongBuffer asLongBuffer3 = ((ByteBuffer) Assertions.checkNotNull(mediaFormat.getByteBuffer(f26225A))).asLongBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        long[] jArr = new long[asLongBuffer.remaining()];
        long[] jArr2 = new long[asLongBuffer2.remaining()];
        long[] jArr3 = new long[asLongBuffer3.remaining()];
        asIntBuffer.get(iArr);
        asLongBuffer.get(jArr);
        asLongBuffer2.get(jArr2);
        asLongBuffer3.get(jArr3);
        ChunkIndex chunkIndex = new ChunkIndex(iArr, jArr, jArr2, jArr3);
        this.f26245m = chunkIndex;
        this.f26241i.seekMap(chunkIndex);
        return true;
    }

    @Nullable
    /* renamed from: j */
    public final TrackOutput.CryptoData m20261j(int i, @Nullable MediaCodec.CryptoInfo cryptoInfo) {
        int i2;
        int i3;
        if (cryptoInfo == null) {
            return null;
        }
        if (this.f26235c.get(i) == cryptoInfo) {
            return (TrackOutput.CryptoData) Assertions.checkNotNull(this.f26236d.get(i));
        }
        try {
            Matcher matcher = f26226B.matcher(cryptoInfo.toString());
            matcher.find();
            i2 = Integer.parseInt((String) Util.castNonNull(matcher.group(1)));
            i3 = Integer.parseInt((String) Util.castNonNull(matcher.group(2)));
        } catch (RuntimeException e) {
            String valueOf = String.valueOf(cryptoInfo);
            StringBuilder sb = new StringBuilder(valueOf.length() + 43);
            sb.append("Unexpected error while parsing CryptoInfo: ");
            sb.append(valueOf);
            Log.m21490e(f26227u, sb.toString(), e);
            i2 = 0;
            i3 = 0;
        }
        TrackOutput.CryptoData cryptoData = new TrackOutput.CryptoData(cryptoInfo.mode, cryptoInfo.key, i2, i3);
        this.f26235c.set(i, cryptoInfo);
        this.f26236d.set(i, cryptoData);
        return cryptoData;
    }

    /* renamed from: l */
    public final Format m20262l(MediaParser.TrackData trackData) {
        MediaFormat mediaFormat;
        android.media.DrmInitData drmInitData;
        mediaFormat = trackData.mediaFormat;
        String string = mediaFormat.getString("mime");
        int integer = mediaFormat.getInteger("caption-service-number", -1);
        Format.Builder builder = new Format.Builder();
        String string2 = mediaFormat.getString("crypto-mode-fourcc");
        drmInitData = trackData.drmInitData;
        Format.Builder pcmEncoding = builder.setDrmInitData(m20256k(string2, drmInitData)).setContainerMimeType(this.f26244l).setPeakBitrate(mediaFormat.getInteger("bitrate", -1)).setChannelCount(mediaFormat.getInteger("channel-count", -1)).setColorInfo(m20251c(mediaFormat)).setSampleMimeType(string).setCodecs(mediaFormat.getString("codecs-string")).setFrameRate(mediaFormat.getFloat("frame-rate", -1.0f)).setWidth(mediaFormat.getInteger("width", -1)).setHeight(mediaFormat.getInteger("height", -1)).setInitializationData(m20253e(mediaFormat)).setLanguage(mediaFormat.getString("language")).setMaxInputSize(mediaFormat.getInteger("max-input-size", -1)).setPcmEncoding(mediaFormat.getInteger("exo-pcm-encoding", -1));
        int i = 0;
        Format.Builder accessibilityChannel = pcmEncoding.setRotationDegrees(mediaFormat.getInteger("rotation-degrees", 0)).setSampleRate(mediaFormat.getInteger("sample-rate", -1)).setSelectionFlags(m20255g(mediaFormat)).setEncoderDelay(mediaFormat.getInteger("encoder-delay", 0)).setEncoderPadding(mediaFormat.getInteger("encoder-padding", 0)).setPixelWidthHeightRatio(mediaFormat.getFloat("pixel-width-height-ratio-float", 1.0f)).setSubsampleOffsetUs(mediaFormat.getLong("subsample-offset-us-long", Long.MAX_VALUE)).setAccessibilityChannel(integer);
        while (true) {
            if (i >= this.f26247o.size()) {
                break;
            }
            Format format = this.f26247o.get(i);
            if (Util.areEqual(format.sampleMimeType, string) && format.accessibilityChannel == integer) {
                accessibilityChannel.setLanguage(format.language).setRoleFlags(format.roleFlags).setSelectionFlags(format.selectionFlags).setLabel(format.label).setMetadata(format.metadata);
                break;
            }
            i++;
        }
        return accessibilityChannel.build();
    }

    public void onSampleCompleted(int i, long j, int i2, int i3, int i4, @Nullable MediaCodec.CryptoInfo cryptoInfo) {
        long j2 = this.f26249q;
        if (j2 == C4649C.TIME_UNSET || j < j2) {
            TimestampAdjuster timestampAdjuster = this.f26246n;
            if (timestampAdjuster != null) {
                j = timestampAdjuster.adjustSampleTimestamp(j);
            }
            ((TrackOutput) Assertions.checkNotNull(this.f26233a.get(i))).sampleMetadata(j, i2, i3, i4, m20261j(i, cryptoInfo));
        }
    }

    public void onSampleDataFound(int i, MediaParser$InputReader mediaParser$InputReader) throws IOException {
        long length;
        m20258a(i);
        this.f26237e.f26253a = mediaParser$InputReader;
        TrackOutput trackOutput = this.f26233a.get(i);
        if (trackOutput == null) {
            trackOutput = this.f26241i.track(i, -1);
            this.f26233a.set(i, trackOutput);
        }
        C4899b c4899b = this.f26237e;
        length = mediaParser$InputReader.getLength();
        trackOutput.sampleData((DataReader) c4899b, (int) length, true);
    }

    public void onSeekMapFound(MediaParser.SeekMap seekMap) {
        long durationMicros;
        SeekMap c4900c;
        if (this.f26238f && this.f26242j == null) {
            this.f26242j = seekMap;
            return;
        }
        this.f26243k = seekMap;
        durationMicros = seekMap.getDurationMicros();
        ExtractorOutput extractorOutput = this.f26241i;
        if (this.f26252t) {
            if (durationMicros == ParserBase.f21225q) {
                durationMicros = C4649C.TIME_UNSET;
            }
            c4900c = new SeekMap.Unseekable(durationMicros);
        } else {
            c4900c = new C4900c(seekMap);
        }
        extractorOutput.seekMap(c4900c);
    }

    public void onTrackCountFound(int i) {
        this.f26250r = true;
        m20259h();
    }

    public void onTrackDataFound(int i, MediaParser.TrackData trackData) {
        MediaFormat mediaFormat;
        MediaFormat mediaFormat2;
        MediaFormat mediaFormat3;
        String string;
        mediaFormat = trackData.mediaFormat;
        if (m20260i(mediaFormat)) {
            return;
        }
        m20258a(i);
        TrackOutput trackOutput = this.f26233a.get(i);
        if (trackOutput == null) {
            mediaFormat2 = trackData.mediaFormat;
            String string2 = mediaFormat2.getString(f26229w);
            if (string2 != null) {
                string = string2;
            } else {
                mediaFormat3 = trackData.mediaFormat;
                string = mediaFormat3.getString("mime");
            }
            int m20257m = m20257m(string);
            if (m20257m == this.f26239g) {
                this.f26248p = i;
            }
            TrackOutput track = this.f26241i.track(i, m20257m);
            this.f26233a.set(i, track);
            if (string2 != null) {
                return;
            } else {
                trackOutput = track;
            }
        }
        Format m20262l = m20262l(trackData);
        Format format = this.f26240h;
        trackOutput.format((format == null || i != this.f26248p) ? m20262l : m20262l.withManifestFormatInfo(format));
        this.f26234b.set(i, m20262l);
        m20259h();
    }

    public void setExtractorOutput(ExtractorOutput extractorOutput) {
        this.f26241i = extractorOutput;
    }

    public void setMuxedCaptionFormats(List<Format> list) {
        this.f26247o = list;
    }

    public void setSampleTimestampUpperLimitFilterUs(long j) {
        this.f26249q = j;
    }

    public void setSelectedParserName(String str) {
        this.f26244l = m20254f(str);
    }

    public void setTimestampAdjuster(TimestampAdjuster timestampAdjuster) {
        this.f26246n = timestampAdjuster;
    }

    public OutputConsumerAdapterV30(@Nullable Format format, int i, boolean z) {
        this.f26238f = z;
        this.f26240h = format;
        this.f26239g = i;
        this.f26233a = new ArrayList<>();
        this.f26234b = new ArrayList<>();
        this.f26235c = new ArrayList<>();
        this.f26236d = new ArrayList<>();
        this.f26237e = new C4899b();
        this.f26241i = new DummyExtractorOutput();
        this.f26249q = C4649C.TIME_UNSET;
        this.f26247o = ImmutableList.m26161of();
    }
}
