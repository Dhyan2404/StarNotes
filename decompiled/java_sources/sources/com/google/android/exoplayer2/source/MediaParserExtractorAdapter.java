package com.google.android.exoplayer2.source;

import android.annotation.SuppressLint;
import android.media.MediaParser;
import android.net.Uri;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.source.MediaParserExtractorAdapter;
import com.google.android.exoplayer2.source.ProgressiveMediaExtractor;
import com.google.android.exoplayer2.source.mediaparser.InputReaderAdapterV30;
import com.google.android.exoplayer2.source.mediaparser.MediaParserUtil;
import com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.blj;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@RequiresApi(30)
/* loaded from: classes5.dex */
public final class MediaParserExtractorAdapter implements ProgressiveMediaExtractor {
    public static final ProgressiveMediaExtractor.Factory FACTORY = new ProgressiveMediaExtractor.Factory() { // from class: com.sunia.HTREnginev2.flj
        @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory
        public final ProgressiveMediaExtractor createProgressiveMediaExtractor(PlayerId playerId) {
            return new MediaParserExtractorAdapter(playerId);
        }
    };

    /* renamed from: a */
    public final OutputConsumerAdapterV30 f25279a;

    /* renamed from: b */
    public final InputReaderAdapterV30 f25280b;

    /* renamed from: c */
    public final MediaParser f25281c;

    /* renamed from: d */
    public String f25282d;

    @SuppressLint({"WrongConstant"})
    public MediaParserExtractorAdapter(PlayerId playerId) {
        MediaParser create;
        OutputConsumerAdapterV30 outputConsumerAdapterV30 = new OutputConsumerAdapterV30();
        this.f25279a = outputConsumerAdapterV30;
        this.f25280b = new InputReaderAdapterV30();
        create = MediaParser.create(outputConsumerAdapterV30, new String[0]);
        this.f25281c = create;
        Boolean bool = Boolean.TRUE;
        create.setParameter(MediaParserUtil.PARAMETER_EAGERLY_EXPOSE_TRACK_TYPE, bool);
        create.setParameter(MediaParserUtil.PARAMETER_IN_BAND_CRYPTO_INFO, bool);
        create.setParameter(MediaParserUtil.PARAMETER_INCLUDE_SUPPLEMENTAL_DATA, bool);
        this.f25282d = "android.media.mediaparser.UNKNOWN";
        if (Util.SDK_INT >= 31) {
            MediaParserUtil.setLogSessionIdOnMediaParser(create, playerId);
        }
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void disableSeekingOnMp3Streams() {
        if ("android.media.mediaparser.Mp3Parser".equals(this.f25282d)) {
            this.f25279a.disableSeeking();
        }
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public long getCurrentInputPosition() {
        return this.f25280b.getPosition();
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void init(DataReader dataReader, Uri uri, Map<String, List<String>> map, long j, long j2, ExtractorOutput extractorOutput) throws IOException {
        String parserName;
        String parserName2;
        String parserName3;
        this.f25279a.setExtractorOutput(extractorOutput);
        this.f25280b.setDataReader(dataReader, j2);
        this.f25280b.setCurrentPosition(j);
        parserName = this.f25281c.getParserName();
        if ("android.media.mediaparser.UNKNOWN".equals(parserName)) {
            this.f25281c.advance(this.f25280b);
            parserName3 = this.f25281c.getParserName();
            this.f25282d = parserName3;
            this.f25279a.setSelectedParserName(parserName3);
            return;
        }
        if (parserName.equals(this.f25282d)) {
            return;
        }
        parserName2 = this.f25281c.getParserName();
        this.f25282d = parserName2;
        this.f25279a.setSelectedParserName(parserName2);
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public int read(PositionHolder positionHolder) throws IOException {
        boolean advance;
        advance = this.f25281c.advance(this.f25280b);
        long andResetSeekPosition = this.f25280b.getAndResetSeekPosition();
        positionHolder.position = andResetSeekPosition;
        if (advance) {
            return andResetSeekPosition != -1 ? 1 : 0;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void release() {
        this.f25281c.release();
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void seek(long j, long j2) {
        long j3;
        this.f25280b.setCurrentPosition(j);
        Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> seekPoints = this.f25279a.getSeekPoints(j2);
        MediaParser mediaParser = this.f25281c;
        j3 = blj.m53281a(seekPoints.second).position;
        mediaParser.seek(j3 == j ? blj.m53281a(seekPoints.second) : blj.m53281a(seekPoints.first));
    }
}
