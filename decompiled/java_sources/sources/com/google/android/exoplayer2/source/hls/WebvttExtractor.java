package com.google.android.exoplayer2.source.hls;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.text.webvtt.WebvttParserUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class WebvttExtractor implements Extractor {

    /* renamed from: g */
    public static final Pattern f26044g = Pattern.compile("LOCAL:([^,]+)");

    /* renamed from: h */
    public static final Pattern f26045h = Pattern.compile("MPEGTS:(-?\\d+)");

    /* renamed from: i */
    public static final int f26046i = 6;

    /* renamed from: j */
    public static final int f26047j = 9;

    /* renamed from: a */
    @Nullable
    public final String f26048a;

    /* renamed from: b */
    public final TimestampAdjuster f26049b;

    /* renamed from: d */
    public ExtractorOutput f26051d;

    /* renamed from: f */
    public int f26053f;

    /* renamed from: c */
    public final ParsableByteArray f26050c = new ParsableByteArray();

    /* renamed from: e */
    public byte[] f26052e = new byte[1024];

    public WebvttExtractor(@Nullable String str, TimestampAdjuster timestampAdjuster) {
        this.f26048a = str;
        this.f26049b = timestampAdjuster;
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: a */
    public final TrackOutput m20152a(long j) {
        TrackOutput track = this.f26051d.track(0, 3);
        track.format(new Format.Builder().setSampleMimeType(MimeTypes.TEXT_VTT).setLanguage(this.f26048a).setSubsampleOffsetUs(j).build());
        this.f26051d.endTracks();
        return track;
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: b */
    public final void m20153b() throws ParserException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(this.f26052e);
        WebvttParserUtil.validateWebvttHeaderLine(parsableByteArray);
        long j = 0;
        long j2 = 0;
        for (String readLine = parsableByteArray.readLine(); !TextUtils.isEmpty(readLine); readLine = parsableByteArray.readLine()) {
            if (readLine.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = f26044g.matcher(readLine);
                if (!matcher.find()) {
                    throw ParserException.createForMalformedContainer(readLine.length() != 0 ? "X-TIMESTAMP-MAP doesn't contain local timestamp: ".concat(readLine) : new String("X-TIMESTAMP-MAP doesn't contain local timestamp: "), null);
                }
                Matcher matcher2 = f26045h.matcher(readLine);
                if (!matcher2.find()) {
                    throw ParserException.createForMalformedContainer(readLine.length() != 0 ? "X-TIMESTAMP-MAP doesn't contain media timestamp: ".concat(readLine) : new String("X-TIMESTAMP-MAP doesn't contain media timestamp: "), null);
                }
                j2 = WebvttParserUtil.parseTimestampUs((String) Assertions.checkNotNull(matcher.group(1)));
                j = TimestampAdjuster.ptsToUs(Long.parseLong((String) Assertions.checkNotNull(matcher2.group(1))));
            }
        }
        Matcher findNextCueHeader = WebvttParserUtil.findNextCueHeader(parsableByteArray);
        if (findNextCueHeader == null) {
            m20152a(0L);
            return;
        }
        long parseTimestampUs = WebvttParserUtil.parseTimestampUs((String) Assertions.checkNotNull(findNextCueHeader.group(1)));
        long adjustTsTimestamp = this.f26049b.adjustTsTimestamp(TimestampAdjuster.usToWrappedPts((j + parseTimestampUs) - j2));
        TrackOutput m20152a = m20152a(adjustTsTimestamp - parseTimestampUs);
        this.f26050c.reset(this.f26052e, this.f26053f);
        m20152a.sampleData(this.f26050c, this.f26053f);
        m20152a.sampleMetadata(adjustTsTimestamp, 1, this.f26053f, 0, null);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f26051d = extractorOutput;
        extractorOutput.seekMap(new SeekMap.Unseekable(C4649C.TIME_UNSET));
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.checkNotNull(this.f26051d);
        int length = (int) extractorInput.getLength();
        int i = this.f26053f;
        byte[] bArr = this.f26052e;
        if (i == bArr.length) {
            this.f26052e = Arrays.copyOf(bArr, ((length != -1 ? length : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f26052e;
        int i2 = this.f26053f;
        int read = extractorInput.read(bArr2, i2, bArr2.length - i2);
        if (read != -1) {
            int i3 = this.f26053f + read;
            this.f26053f = i3;
            if (length == -1 || i3 != length) {
                return 0;
            }
        }
        m20153b();
        return -1;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        extractorInput.peekFully(this.f26052e, 0, 6, false);
        this.f26050c.reset(this.f26052e, 6);
        if (WebvttParserUtil.isWebvttHeaderLine(this.f26050c)) {
            return true;
        }
        extractorInput.peekFully(this.f26052e, 6, 3, false);
        this.f26050c.reset(this.f26052e, 9);
        return WebvttParserUtil.isWebvttHeaderLine(this.f26050c);
    }
}
