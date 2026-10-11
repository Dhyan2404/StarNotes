package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.google.android.exoplayer2.extractor.BinarySearchSeeker;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class s9l extends BinarySearchSeeker {

    /* renamed from: c */
    public static final long f83928c = 100000;

    /* renamed from: d */
    public static final int f83929d = 1000;

    /* renamed from: e */
    public static final int f83930e = 20000;

    /* renamed from: com.sunia.HTREnginev2.s9l$b */
    /* loaded from: classes5.dex */
    public static final class C14392b implements BinarySearchSeeker.TimestampSeeker {

        /* renamed from: a */
        public final TimestampAdjuster f83931a;

        /* renamed from: b */
        public final ParsableByteArray f83932b;

        /* renamed from: b */
        public static void m57143b(ParsableByteArray parsableByteArray) {
            int m57142b;
            int limit = parsableByteArray.limit();
            if (parsableByteArray.bytesLeft() < 10) {
                parsableByteArray.setPosition(limit);
                return;
            }
            parsableByteArray.skipBytes(9);
            int readUnsignedByte = parsableByteArray.readUnsignedByte() & 7;
            if (parsableByteArray.bytesLeft() < readUnsignedByte) {
                parsableByteArray.setPosition(limit);
                return;
            }
            parsableByteArray.skipBytes(readUnsignedByte);
            if (parsableByteArray.bytesLeft() < 4) {
                parsableByteArray.setPosition(limit);
                return;
            }
            if (s9l.m57142b(parsableByteArray.getData(), parsableByteArray.getPosition()) == 443) {
                parsableByteArray.skipBytes(4);
                int readUnsignedShort = parsableByteArray.readUnsignedShort();
                if (parsableByteArray.bytesLeft() < readUnsignedShort) {
                    parsableByteArray.setPosition(limit);
                    return;
                }
                parsableByteArray.skipBytes(readUnsignedShort);
            }
            while (parsableByteArray.bytesLeft() >= 4 && (m57142b = s9l.m57142b(parsableByteArray.getData(), parsableByteArray.getPosition())) != 442 && m57142b != 441 && (m57142b >>> 8) == 1) {
                parsableByteArray.skipBytes(4);
                if (parsableByteArray.bytesLeft() < 2) {
                    parsableByteArray.setPosition(limit);
                    return;
                }
                parsableByteArray.setPosition(Math.min(parsableByteArray.limit(), parsableByteArray.getPosition() + parsableByteArray.readUnsignedShort()));
            }
        }

        /* renamed from: a */
        public final BinarySearchSeeker.TimestampSearchResult m57144a(ParsableByteArray parsableByteArray, long j, long j2) {
            int i = -1;
            int i2 = -1;
            long j3 = -9223372036854775807L;
            while (parsableByteArray.bytesLeft() >= 4) {
                if (s9l.m57142b(parsableByteArray.getData(), parsableByteArray.getPosition()) != 442) {
                    parsableByteArray.skipBytes(1);
                } else {
                    parsableByteArray.skipBytes(4);
                    long m57323l = t9l.m57323l(parsableByteArray);
                    if (m57323l != C4649C.TIME_UNSET) {
                        long adjustTsTimestamp = this.f83931a.adjustTsTimestamp(m57323l);
                        if (adjustTsTimestamp > j) {
                            return j3 == C4649C.TIME_UNSET ? BinarySearchSeeker.TimestampSearchResult.overestimatedResult(adjustTsTimestamp, j2) : BinarySearchSeeker.TimestampSearchResult.targetFoundResult(j2 + i2);
                        }
                        if (100000 + adjustTsTimestamp > j) {
                            return BinarySearchSeeker.TimestampSearchResult.targetFoundResult(j2 + parsableByteArray.getPosition());
                        }
                        i2 = parsableByteArray.getPosition();
                        j3 = adjustTsTimestamp;
                    }
                    m57143b(parsableByteArray);
                    i = parsableByteArray.getPosition();
                }
            }
            return j3 != C4649C.TIME_UNSET ? BinarySearchSeeker.TimestampSearchResult.underestimatedResult(j3, j2 + i) : BinarySearchSeeker.TimestampSearchResult.NO_TIMESTAMP_IN_RANGE_RESULT;
        }

        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker
        public void onSeekFinished() {
            this.f83932b.reset(Util.EMPTY_BYTE_ARRAY);
        }

        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker
        public BinarySearchSeeker.TimestampSearchResult searchForTimestamp(ExtractorInput extractorInput, long j) throws IOException {
            long position = extractorInput.getPosition();
            int min = (int) Math.min(SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US, extractorInput.getLength() - position);
            this.f83932b.reset(min);
            extractorInput.peekFully(this.f83932b.getData(), 0, min);
            return m57144a(this.f83932b, j, position);
        }

        public C14392b(TimestampAdjuster timestampAdjuster) {
            this.f83931a = timestampAdjuster;
            this.f83932b = new ParsableByteArray();
        }
    }

    public s9l(TimestampAdjuster timestampAdjuster, long j, long j2) {
        super(new BinarySearchSeeker.DefaultSeekTimestampConverter(), new C14392b(timestampAdjuster), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    /* renamed from: b */
    public static int m57142b(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
