package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.FlacFrameReader;
import com.google.android.exoplayer2.extractor.FlacMetadataReader;
import com.google.android.exoplayer2.extractor.FlacSeekTableSeekMap;
import com.google.android.exoplayer2.extractor.FlacStreamMetadata;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.e0n;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* loaded from: classes5.dex */
public final class kng extends e0n {

    /* renamed from: t */
    public static final byte f75626t = -1;

    /* renamed from: u */
    public static final int f75627u = 4;

    /* renamed from: r */
    @Nullable
    public FlacStreamMetadata f75628r;

    /* renamed from: s */
    @Nullable
    public C14002a f75629s;

    /* renamed from: com.sunia.HTREnginev2.kng$a */
    /* loaded from: classes5.dex */
    public static final class C14002a implements bfk {

        /* renamed from: a */
        public FlacStreamMetadata f75630a;

        /* renamed from: b */
        public FlacStreamMetadata.SeekTable f75631b;

        /* renamed from: c */
        public long f75632c = -1;

        /* renamed from: d */
        public long f75633d = -1;

        public C14002a(FlacStreamMetadata flacStreamMetadata, FlacStreamMetadata.SeekTable seekTable) {
            this.f75630a = flacStreamMetadata;
            this.f75631b = seekTable;
        }

        @Override // com.sunia.HTREnginev2.bfk
        /* renamed from: a */
        public SeekMap mo52917a() {
            Assertions.checkState(this.f75632c != -1);
            return new FlacSeekTableSeekMap(this.f75630a, this.f75632c);
        }

        @Override // com.sunia.HTREnginev2.bfk
        /* renamed from: b */
        public void mo52918b(long j) {
            long[] jArr = this.f75631b.pointSampleNumbers;
            this.f75633d = jArr[Util.binarySearchFloor(jArr, j, true, true)];
        }

        /* renamed from: c */
        public void m55249c(long j) {
            this.f75632c = j;
        }

        @Override // com.sunia.HTREnginev2.bfk
        public long read(ExtractorInput extractorInput) {
            long j = this.f75633d;
            if (j < 0) {
                return -1L;
            }
            long j2 = -(j + 2);
            this.f75633d = -1L;
            return j2;
        }
    }

    /* renamed from: o */
    public static boolean m55246o(byte[] bArr) {
        return bArr[0] == -1;
    }

    /* renamed from: p */
    public static boolean m55247p(ParsableByteArray parsableByteArray) {
        return parsableByteArray.bytesLeft() >= 5 && parsableByteArray.readUnsignedByte() == 127 && parsableByteArray.readUnsignedInt() == 1179402563;
    }

    @Override // com.sunia.HTREnginev2.e0n
    /* renamed from: f */
    public long mo53891f(ParsableByteArray parsableByteArray) {
        if (m55246o(parsableByteArray.getData())) {
            return m55248n(parsableByteArray);
        }
        return -1L;
    }

    @Override // com.sunia.HTREnginev2.e0n
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /* renamed from: i */
    public boolean mo53894i(ParsableByteArray parsableByteArray, long j, e0n.C13650b c13650b) {
        byte[] data = parsableByteArray.getData();
        FlacStreamMetadata flacStreamMetadata = this.f75628r;
        if (flacStreamMetadata == null) {
            FlacStreamMetadata flacStreamMetadata2 = new FlacStreamMetadata(data, 17);
            this.f75628r = flacStreamMetadata2;
            c13650b.f68456a = flacStreamMetadata2.getFormat(Arrays.copyOfRange(data, 9, parsableByteArray.limit()), null);
            return true;
        }
        if ((data[0] & Byte.MAX_VALUE) == 3) {
            FlacStreamMetadata.SeekTable readSeekTableMetadataBlock = FlacMetadataReader.readSeekTableMetadataBlock(parsableByteArray);
            FlacStreamMetadata copyWithSeekTable = flacStreamMetadata.copyWithSeekTable(readSeekTableMetadataBlock);
            this.f75628r = copyWithSeekTable;
            this.f75629s = new C14002a(copyWithSeekTable, readSeekTableMetadataBlock);
            return true;
        }
        if (!m55246o(data)) {
            return true;
        }
        C14002a c14002a = this.f75629s;
        if (c14002a != null) {
            c14002a.m55249c(j);
            c13650b.f68457b = this.f75629s;
        }
        Assertions.checkNotNull(c13650b.f68456a);
        return false;
    }

    @Override // com.sunia.HTREnginev2.e0n
    /* renamed from: l */
    public void mo53897l(boolean z) {
        super.mo53897l(z);
        if (z) {
            this.f75628r = null;
            this.f75629s = null;
        }
    }

    /* renamed from: n */
    public final int m55248n(ParsableByteArray parsableByteArray) {
        int i = (parsableByteArray.getData()[2] & 255) >> 4;
        if (i == 6 || i == 7) {
            parsableByteArray.skipBytes(4);
            parsableByteArray.readUtf8EncodedLong();
        }
        int readFrameBlockSizeSamplesFromKey = FlacFrameReader.readFrameBlockSizeSamplesFromKey(parsableByteArray, i);
        parsableByteArray.setPosition(0);
        return readFrameBlockSizeSamplesFromKey;
    }
}
