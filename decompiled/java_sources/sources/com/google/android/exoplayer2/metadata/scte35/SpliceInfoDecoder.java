package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataInputBuffer;
import com.google.android.exoplayer2.metadata.SimpleMetadataDecoder;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public final class SpliceInfoDecoder extends SimpleMetadataDecoder {

    /* renamed from: d */
    public static final int f24906d = 0;

    /* renamed from: e */
    public static final int f24907e = 4;

    /* renamed from: f */
    public static final int f24908f = 5;

    /* renamed from: g */
    public static final int f24909g = 6;

    /* renamed from: h */
    public static final int f24910h = 255;

    /* renamed from: a */
    public final ParsableByteArray f24911a = new ParsableByteArray();

    /* renamed from: b */
    public final ParsableBitArray f24912b = new ParsableBitArray();

    /* renamed from: c */
    public TimestampAdjuster f24913c;

    @Override // com.google.android.exoplayer2.metadata.SimpleMetadataDecoder
    public Metadata decode(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        TimestampAdjuster timestampAdjuster = this.f24913c;
        if (timestampAdjuster == null || metadataInputBuffer.subsampleOffsetUs != timestampAdjuster.getTimestampOffsetUs()) {
            TimestampAdjuster timestampAdjuster2 = new TimestampAdjuster(metadataInputBuffer.timeUs);
            this.f24913c = timestampAdjuster2;
            timestampAdjuster2.adjustSampleTimestamp(metadataInputBuffer.timeUs - metadataInputBuffer.subsampleOffsetUs);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f24911a.reset(array, limit);
        this.f24912b.reset(array, limit);
        this.f24912b.skipBits(39);
        long readBits = (this.f24912b.readBits(1) << 32) | this.f24912b.readBits(32);
        this.f24912b.skipBits(20);
        int readBits2 = this.f24912b.readBits(12);
        int readBits3 = this.f24912b.readBits(8);
        this.f24911a.skipBytes(14);
        Metadata.Entry parseFromSection = readBits3 != 0 ? readBits3 != 255 ? readBits3 != 4 ? readBits3 != 5 ? readBits3 != 6 ? null : TimeSignalCommand.parseFromSection(this.f24911a, readBits, this.f24913c) : SpliceInsertCommand.parseFromSection(this.f24911a, readBits, this.f24913c) : SpliceScheduleCommand.parseFromSection(this.f24911a) : PrivateCommand.parseFromSection(this.f24911a, readBits2, readBits) : new SpliceNullCommand();
        return parseFromSection == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(parseFromSection);
    }
}
