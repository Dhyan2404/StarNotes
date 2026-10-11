package com.google.android.exoplayer2.source.hls;

import android.annotation.SuppressLint;
import android.media.MediaFormat;
import android.media.MediaParser;
import android.media.MediaParser$OutputConsumer;
import android.media.MediaParser$SeekableInputReader;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor;
import com.google.android.exoplayer2.source.hls.MediaParserHlsMediaChunkExtractor;
import com.google.android.exoplayer2.source.mediaparser.InputReaderAdapterV30;
import com.google.android.exoplayer2.source.mediaparser.MediaParserUtil;
import com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.FileTypes;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@RequiresApi(30)
/* loaded from: classes5.dex */
public final class MediaParserHlsMediaChunkExtractor implements HlsMediaChunkExtractor {
    public static final HlsExtractorFactory FACTORY = new HlsExtractorFactory() { // from class: com.sunia.HTREnginev2.hlj
        @Override // com.google.android.exoplayer2.source.hls.HlsExtractorFactory
        public final HlsMediaChunkExtractor createExtractor(Uri uri, Format format, List list, TimestampAdjuster timestampAdjuster, Map map, ExtractorInput extractorInput, PlayerId playerId) {
            HlsMediaChunkExtractor m20150c;
            m20150c = MediaParserHlsMediaChunkExtractor.m20150c(uri, format, list, timestampAdjuster, map, extractorInput, playerId);
            return m20150c;
        }
    };

    /* renamed from: a */
    public final OutputConsumerAdapterV30 f26033a;

    /* renamed from: b */
    public final InputReaderAdapterV30 f26034b = new InputReaderAdapterV30();

    /* renamed from: c */
    public final MediaParser f26035c;

    /* renamed from: d */
    public final Format f26036d;

    /* renamed from: e */
    public final boolean f26037e;

    /* renamed from: f */
    public final ImmutableList<MediaFormat> f26038f;

    /* renamed from: g */
    public final PlayerId f26039g;

    /* renamed from: h */
    public int f26040h;

    /* renamed from: com.google.android.exoplayer2.source.hls.MediaParserHlsMediaChunkExtractor$b */
    /* loaded from: classes5.dex */
    public static final class C4889b implements MediaParser$SeekableInputReader {

        /* renamed from: a */
        public final ExtractorInput f26041a;

        /* renamed from: b */
        public int f26042b;

        public long getLength() {
            return this.f26041a.getLength();
        }

        public long getPosition() {
            return this.f26041a.getPeekPosition();
        }

        public int read(byte[] bArr, int i, int i2) throws IOException {
            int peek = this.f26041a.peek(bArr, i, i2);
            this.f26042b += peek;
            return peek;
        }

        public void seekToPosition(long j) {
            throw new UnsupportedOperationException();
        }

        public C4889b(ExtractorInput extractorInput) {
            this.f26041a = extractorInput;
        }
    }

    public MediaParserHlsMediaChunkExtractor(MediaParser mediaParser, OutputConsumerAdapterV30 outputConsumerAdapterV30, Format format, boolean z, ImmutableList<MediaFormat> immutableList, int i, PlayerId playerId) {
        this.f26035c = mediaParser;
        this.f26033a = outputConsumerAdapterV30;
        this.f26037e = z;
        this.f26038f = immutableList;
        this.f26036d = format;
        this.f26039g = playerId;
        this.f26040h = i;
    }

    @SuppressLint({"WrongConstant"})
    /* renamed from: b */
    public static MediaParser m20149b(MediaParser$OutputConsumer mediaParser$OutputConsumer, Format format, boolean z, ImmutableList<MediaFormat> immutableList, PlayerId playerId, String... strArr) {
        MediaParser createByName = strArr.length == 1 ? MediaParser.createByName(strArr[0], mediaParser$OutputConsumer) : MediaParser.create(mediaParser$OutputConsumer, strArr);
        createByName.setParameter(MediaParserUtil.PARAMETER_EXPOSE_CAPTION_FORMATS, immutableList);
        createByName.setParameter(MediaParserUtil.PARAMETER_OVERRIDE_IN_BAND_CAPTION_DECLARATIONS, Boolean.valueOf(z));
        Boolean bool = Boolean.TRUE;
        createByName.setParameter(MediaParserUtil.PARAMETER_IN_BAND_CRYPTO_INFO, bool);
        createByName.setParameter(MediaParserUtil.PARAMETER_EAGERLY_EXPOSE_TRACK_TYPE, bool);
        createByName.setParameter(MediaParserUtil.PARAMETER_IGNORE_TIMESTAMP_OFFSET, bool);
        createByName.setParameter("android.media.mediaparser.ts.ignoreSpliceInfoStream", bool);
        createByName.setParameter("android.media.mediaparser.ts.mode", "hls");
        String str = format.codecs;
        if (!TextUtils.isEmpty(str)) {
            if (!MimeTypes.AUDIO_AAC.equals(MimeTypes.getAudioMediaMimeType(str))) {
                createByName.setParameter("android.media.mediaparser.ts.ignoreAacStream", bool);
            }
            if (!MimeTypes.VIDEO_H264.equals(MimeTypes.getVideoMediaMimeType(str))) {
                createByName.setParameter("android.media.mediaparser.ts.ignoreAvcStream", bool);
            }
        }
        if (Util.SDK_INT >= 31) {
            MediaParserUtil.setLogSessionIdOnMediaParser(createByName, playerId);
        }
        return createByName;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static /* synthetic */ HlsMediaChunkExtractor m20150c(Uri uri, Format format, List list, TimestampAdjuster timestampAdjuster, Map map, ExtractorInput extractorInput, PlayerId playerId) throws IOException {
        String parserName;
        if (FileTypes.inferFileTypeFromMimeType(format.sampleMimeType) == 13) {
            return new BundledHlsMediaChunkExtractor(new WebvttExtractor(format.language, timestampAdjuster), format, timestampAdjuster);
        }
        boolean z = list != null;
        ImmutableList.Builder builder = ImmutableList.builder();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                builder.add((ImmutableList.Builder) MediaParserUtil.toCaptionsMediaFormat((Format) list.get(i)));
            }
        } else {
            builder.add((ImmutableList.Builder) MediaParserUtil.toCaptionsMediaFormat(new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_CEA608).build()));
        }
        ImmutableList build = builder.build();
        OutputConsumerAdapterV30 outputConsumerAdapterV30 = new OutputConsumerAdapterV30();
        if (list == null) {
            list = ImmutableList.m26161of();
        }
        outputConsumerAdapterV30.setMuxedCaptionFormats(list);
        outputConsumerAdapterV30.setTimestampAdjuster(timestampAdjuster);
        MediaParser m20149b = m20149b(outputConsumerAdapterV30, format, z, build, playerId, "android.media.mediaparser.FragmentedMp4Parser", "android.media.mediaparser.Ac3Parser", "android.media.mediaparser.Ac4Parser", "android.media.mediaparser.AdtsParser", "android.media.mediaparser.Mp3Parser", "android.media.mediaparser.TsParser");
        C4889b c4889b = new C4889b(extractorInput);
        m20149b.advance(c4889b);
        parserName = m20149b.getParserName();
        outputConsumerAdapterV30.setSelectedParserName(parserName);
        return new MediaParserHlsMediaChunkExtractor(m20149b, outputConsumerAdapterV30, format, z, build, c4889b.f26042b, playerId);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public void init(ExtractorOutput extractorOutput) {
        this.f26033a.setExtractorOutput(extractorOutput);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public boolean isPackedAudioExtractor() {
        String parserName;
        parserName = this.f26035c.getParserName();
        return "android.media.mediaparser.Ac3Parser".equals(parserName) || "android.media.mediaparser.Ac4Parser".equals(parserName) || "android.media.mediaparser.AdtsParser".equals(parserName) || "android.media.mediaparser.Mp3Parser".equals(parserName);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public boolean isReusable() {
        String parserName;
        parserName = this.f26035c.getParserName();
        return "android.media.mediaparser.FragmentedMp4Parser".equals(parserName) || "android.media.mediaparser.TsParser".equals(parserName);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public void onTruncatedSegmentParsed() {
        MediaParser.SeekPoint seekPoint;
        MediaParser mediaParser = this.f26035c;
        seekPoint = MediaParser.SeekPoint.START;
        mediaParser.seek(seekPoint);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public boolean read(ExtractorInput extractorInput) throws IOException {
        boolean advance;
        extractorInput.skipFully(this.f26040h);
        this.f26040h = 0;
        this.f26034b.setDataReader(extractorInput, extractorInput.getLength());
        advance = this.f26035c.advance(this.f26034b);
        return advance;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public HlsMediaChunkExtractor recreate() {
        String parserName;
        Assertions.checkState(!isReusable());
        OutputConsumerAdapterV30 outputConsumerAdapterV30 = this.f26033a;
        Format format = this.f26036d;
        boolean z = this.f26037e;
        ImmutableList<MediaFormat> immutableList = this.f26038f;
        PlayerId playerId = this.f26039g;
        parserName = this.f26035c.getParserName();
        return new MediaParserHlsMediaChunkExtractor(m20149b(outputConsumerAdapterV30, format, z, immutableList, playerId, parserName), this.f26033a, this.f26036d, this.f26037e, this.f26038f, 0, this.f26039g);
    }
}
