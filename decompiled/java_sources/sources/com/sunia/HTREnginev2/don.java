package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.extractor.BinarySearchSeeker;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.p007ts.TsUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class don extends BinarySearchSeeker {

    /* renamed from: c */
    public static final long f68077c = 100000;

    /* renamed from: d */
    public static final int f68078d = 940;

    /* renamed from: com.sunia.HTREnginev2.don$a */
    /* loaded from: classes5.dex */
    public static final class C13627a implements BinarySearchSeeker.TimestampSeeker {

        /* renamed from: a */
        public final TimestampAdjuster f68079a;

        /* renamed from: b */
        public final ParsableByteArray f68080b = new ParsableByteArray();

        /* renamed from: c */
        public final int f68081c;

        /* renamed from: d */
        public final int f68082d;

        public C13627a(int i, TimestampAdjuster timestampAdjuster, int i2) {
            this.f68081c = i;
            this.f68079a = timestampAdjuster;
            this.f68082d = i2;
        }

        /* renamed from: a */
        public final BinarySearchSeeker.TimestampSearchResult m53685a(ParsableByteArray parsableByteArray, long j, long j2) {
            int findSyncBytePosition;
            int findSyncBytePosition2;
            int limit = parsableByteArray.limit();
            long j3 = -1;
            long j4 = -1;
            long j5 = -9223372036854775807L;
            while (parsableByteArray.bytesLeft() >= 188 && (findSyncBytePosition2 = (findSyncBytePosition = TsUtil.findSyncBytePosition(parsableByteArray.getData(), parsableByteArray.getPosition(), limit)) + 188) <= limit) {
                long readPcrFromPacket = TsUtil.readPcrFromPacket(parsableByteArray, findSyncBytePosition, this.f68081c);
                if (readPcrFromPacket != C4649C.TIME_UNSET) {
                    long adjustTsTimestamp = this.f68079a.adjustTsTimestamp(readPcrFromPacket);
                    if (adjustTsTimestamp > j) {
                        return j5 == C4649C.TIME_UNSET ? BinarySearchSeeker.TimestampSearchResult.overestimatedResult(adjustTsTimestamp, j2) : BinarySearchSeeker.TimestampSearchResult.targetFoundResult(j2 + j4);
                    }
                    if (100000 + adjustTsTimestamp > j) {
                        return BinarySearchSeeker.TimestampSearchResult.targetFoundResult(findSyncBytePosition + j2);
                    }
                    j4 = findSyncBytePosition;
                    j5 = adjustTsTimestamp;
                }
                parsableByteArray.setPosition(findSyncBytePosition2);
                j3 = findSyncBytePosition2;
            }
            return j5 != C4649C.TIME_UNSET ? BinarySearchSeeker.TimestampSearchResult.underestimatedResult(j5, j2 + j3) : BinarySearchSeeker.TimestampSearchResult.NO_TIMESTAMP_IN_RANGE_RESULT;
        }

        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker
        public void onSeekFinished() {
            this.f68080b.reset(Util.EMPTY_BYTE_ARRAY);
        }

        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker
        public BinarySearchSeeker.TimestampSearchResult searchForTimestamp(ExtractorInput extractorInput, long j) throws IOException {
            long position = extractorInput.getPosition();
            int min = (int) Math.min(this.f68082d, extractorInput.getLength() - position);
            this.f68080b.reset(min);
            extractorInput.peekFully(this.f68080b.getData(), 0, min);
            return m53685a(this.f68080b, j, position);
        }
    }

    public don(TimestampAdjuster timestampAdjuster, long j, long j2, int i, int i2) {
        super(new BinarySearchSeeker.DefaultSeekTimestampConverter(), new C13627a(i, timestampAdjuster, i2), j, 0L, j + 1, 0L, j2, 188L, f68078d);
    }
}
