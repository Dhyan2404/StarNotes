package com.google.android.exoplayer2.source.chunk;

import android.annotation.SuppressLint;
import android.media.MediaParser;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.chunk.ChunkExtractor;
import com.google.android.exoplayer2.source.chunk.MediaParserChunkExtractor;
import com.google.android.exoplayer2.source.mediaparser.InputReaderAdapterV30;
import com.google.android.exoplayer2.source.mediaparser.MediaParserUtil;
import com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.blj;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RequiresApi(30)
/* loaded from: classes5.dex */
public final class MediaParserChunkExtractor implements ChunkExtractor {
    public static final ChunkExtractor.Factory FACTORY = new ChunkExtractor.Factory() { // from class: com.sunia.HTREnginev2.wkj
        @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor.Factory
        public final ChunkExtractor createProgressiveMediaExtractor(int i, Format format, boolean z, List list, TrackOutput trackOutput, PlayerId playerId) {
            ChunkExtractor m19909f;
            m19909f = MediaParserChunkExtractor.m19909f(i, format, z, list, trackOutput, playerId);
            return m19909f;
        }
    };

    /* renamed from: m */
    public static final String f25645m = "MediaPrsrChunkExtractor";

    /* renamed from: e */
    public final OutputConsumerAdapterV30 f25646e;

    /* renamed from: f */
    public final InputReaderAdapterV30 f25647f;

    /* renamed from: g */
    public final MediaParser f25648g;

    /* renamed from: h */
    public final C4863b f25649h;

    /* renamed from: i */
    public final DummyTrackOutput f25650i;

    /* renamed from: j */
    public long f25651j;

    /* renamed from: k */
    @Nullable
    public ChunkExtractor.TrackOutputProvider f25652k;

    /* renamed from: l */
    @Nullable
    public Format[] f25653l;

    /* renamed from: com.google.android.exoplayer2.source.chunk.MediaParserChunkExtractor$b */
    /* loaded from: classes5.dex */
    public class C4863b implements ExtractorOutput {
        public C4863b() {
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public void endTracks() {
            MediaParserChunkExtractor mediaParserChunkExtractor = MediaParserChunkExtractor.this;
            mediaParserChunkExtractor.f25653l = mediaParserChunkExtractor.f25646e.getSampleFormats();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public void seekMap(SeekMap seekMap) {
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public TrackOutput track(int i, int i2) {
            ChunkExtractor.TrackOutputProvider trackOutputProvider = MediaParserChunkExtractor.this.f25652k;
            MediaParserChunkExtractor mediaParserChunkExtractor = MediaParserChunkExtractor.this;
            return trackOutputProvider != null ? mediaParserChunkExtractor.f25652k.track(i, i2) : mediaParserChunkExtractor.f25650i;
        }
    }

    @SuppressLint({"WrongConstant"})
    public MediaParserChunkExtractor(int i, Format format, List<Format> list, PlayerId playerId) {
        MediaParser createByName;
        OutputConsumerAdapterV30 outputConsumerAdapterV30 = new OutputConsumerAdapterV30(format, i, true);
        this.f25646e = outputConsumerAdapterV30;
        this.f25647f = new InputReaderAdapterV30();
        String str = MimeTypes.isMatroska((String) Assertions.checkNotNull(format.containerMimeType)) ? "android.media.mediaparser.MatroskaParser" : "android.media.mediaparser.FragmentedMp4Parser";
        outputConsumerAdapterV30.setSelectedParserName(str);
        createByName = MediaParser.createByName(str, outputConsumerAdapterV30);
        this.f25648g = createByName;
        Boolean bool = Boolean.TRUE;
        createByName.setParameter("android.media.mediaparser.matroska.disableCuesSeeking", bool);
        createByName.setParameter(MediaParserUtil.PARAMETER_IN_BAND_CRYPTO_INFO, bool);
        createByName.setParameter(MediaParserUtil.PARAMETER_INCLUDE_SUPPLEMENTAL_DATA, bool);
        createByName.setParameter(MediaParserUtil.PARAMETER_EAGERLY_EXPOSE_TRACK_TYPE, bool);
        createByName.setParameter(MediaParserUtil.PARAMETER_EXPOSE_DUMMY_SEEK_MAP, bool);
        createByName.setParameter(MediaParserUtil.PARAMETER_EXPOSE_CHUNK_INDEX_AS_MEDIA_FORMAT, bool);
        createByName.setParameter(MediaParserUtil.PARAMETER_OVERRIDE_IN_BAND_CAPTION_DECLARATIONS, bool);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(MediaParserUtil.toCaptionsMediaFormat(list.get(i2)));
        }
        this.f25648g.setParameter(MediaParserUtil.PARAMETER_EXPOSE_CAPTION_FORMATS, arrayList);
        if (Util.SDK_INT >= 31) {
            MediaParserUtil.setLogSessionIdOnMediaParser(this.f25648g, playerId);
        }
        this.f25646e.setMuxedCaptionFormats(list);
        this.f25649h = new C4863b();
        this.f25650i = new DummyTrackOutput();
        this.f25651j = C4649C.TIME_UNSET;
    }

    /* renamed from: f */
    public static /* synthetic */ ChunkExtractor m19909f(int i, Format format, boolean z, List list, TrackOutput trackOutput, PlayerId playerId) {
        if (!MimeTypes.isText(format.containerMimeType)) {
            return new MediaParserChunkExtractor(i, format, list, playerId);
        }
        Log.m21493w(f25645m, "Ignoring an unsupported text track.");
        return null;
    }

    /* renamed from: g */
    public final void m19910g() {
        Pair seekPoints;
        MediaParser.SeekMap dummySeekMap = this.f25646e.getDummySeekMap();
        long j = this.f25651j;
        if (j == C4649C.TIME_UNSET || dummySeekMap == null) {
            return;
        }
        MediaParser mediaParser = this.f25648g;
        seekPoints = dummySeekMap.getSeekPoints(j);
        mediaParser.seek(blj.m53281a(seekPoints.first));
        this.f25651j = C4649C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    @Nullable
    public ChunkIndex getChunkIndex() {
        return this.f25646e.getChunkIndex();
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    @Nullable
    public Format[] getSampleFormats() {
        return this.f25653l;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public void init(@Nullable ChunkExtractor.TrackOutputProvider trackOutputProvider, long j, long j2) {
        this.f25652k = trackOutputProvider;
        this.f25646e.setSampleTimestampUpperLimitFilterUs(j2);
        this.f25646e.setExtractorOutput(this.f25649h);
        this.f25651j = j;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public boolean read(ExtractorInput extractorInput) throws IOException {
        boolean advance;
        m19910g();
        this.f25647f.setDataReader(extractorInput, extractorInput.getLength());
        advance = this.f25648g.advance(this.f25647f);
        return advance;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public void release() {
        this.f25648g.release();
    }
}
