package com.google.android.exoplayer2.extractor.p007ts;

import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class SectionReader implements TsPayloadReader {

    /* renamed from: g */
    public static final int f24630g = 3;

    /* renamed from: h */
    public static final int f24631h = 32;

    /* renamed from: i */
    public static final int f24632i = 4098;

    /* renamed from: a */
    public final SectionPayloadReader f24633a;

    /* renamed from: b */
    public final ParsableByteArray f24634b = new ParsableByteArray(32);

    /* renamed from: c */
    public int f24635c;

    /* renamed from: d */
    public int f24636d;

    /* renamed from: e */
    public boolean f24637e;

    /* renamed from: f */
    public boolean f24638f;

    public SectionReader(SectionPayloadReader sectionPayloadReader) {
        this.f24633a = sectionPayloadReader;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader
    public void consume(ParsableByteArray parsableByteArray, int i) {
        boolean z = (i & 1) != 0;
        int position = z ? parsableByteArray.getPosition() + parsableByteArray.readUnsignedByte() : -1;
        if (this.f24638f) {
            if (!z) {
                return;
            }
            this.f24638f = false;
            parsableByteArray.setPosition(position);
            this.f24636d = 0;
        }
        while (parsableByteArray.bytesLeft() > 0) {
            int i2 = this.f24636d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    parsableByteArray.setPosition(parsableByteArray.getPosition() - 1);
                    if (readUnsignedByte == 255) {
                        this.f24638f = true;
                        return;
                    }
                }
                int min = Math.min(parsableByteArray.bytesLeft(), 3 - this.f24636d);
                parsableByteArray.readBytes(this.f24634b.getData(), this.f24636d, min);
                int i3 = this.f24636d + min;
                this.f24636d = i3;
                if (i3 == 3) {
                    this.f24634b.setPosition(0);
                    this.f24634b.setLimit(3);
                    this.f24634b.skipBytes(1);
                    int readUnsignedByte2 = this.f24634b.readUnsignedByte();
                    int readUnsignedByte3 = this.f24634b.readUnsignedByte();
                    this.f24637e = (readUnsignedByte2 & 128) != 0;
                    this.f24635c = (((readUnsignedByte2 & 15) << 8) | readUnsignedByte3) + 3;
                    int capacity = this.f24634b.capacity();
                    int i4 = this.f24635c;
                    if (capacity < i4) {
                        this.f24634b.ensureCapacity(Math.min(4098, Math.max(i4, this.f24634b.capacity() * 2)));
                    }
                }
            } else {
                int min2 = Math.min(parsableByteArray.bytesLeft(), this.f24635c - this.f24636d);
                parsableByteArray.readBytes(this.f24634b.getData(), this.f24636d, min2);
                int i5 = this.f24636d + min2;
                this.f24636d = i5;
                int i6 = this.f24635c;
                if (i5 != i6) {
                    continue;
                } else {
                    if (!this.f24637e) {
                        this.f24634b.setLimit(i6);
                    } else {
                        if (Util.crc32(this.f24634b.getData(), 0, this.f24635c, -1) != 0) {
                            this.f24638f = true;
                            return;
                        }
                        this.f24634b.setLimit(this.f24635c - 4);
                    }
                    this.f24634b.setPosition(0);
                    this.f24633a.consume(this.f24634b);
                    this.f24636d = 0;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader
    public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.f24633a.init(timestampAdjuster, extractorOutput, trackIdGenerator);
        this.f24638f = true;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader
    public void seek() {
        this.f24638f = true;
    }
}
