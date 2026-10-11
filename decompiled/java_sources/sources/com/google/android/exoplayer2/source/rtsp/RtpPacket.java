package com.google.android.exoplayer2.source.rtsp;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.math.IntMath;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public final class RtpPacket {
    public static final int CSRC_SIZE = 4;
    public static final int MAX_SEQUENCE_NUMBER = 65535;
    public static final int MAX_SIZE = 65507;
    public static final int MIN_HEADER_SIZE = 12;
    public static final int MIN_SEQUENCE_NUMBER = 0;
    public static final int RTP_VERSION = 2;

    /* renamed from: a */
    public static final byte[] f26287a = new byte[0];
    public final byte[] csrc;
    public final byte csrcCount;
    public final boolean extension;
    public final boolean marker;
    public final boolean padding;
    public final byte[] payloadData;
    public final byte payloadType;
    public final int sequenceNumber;
    public final int ssrc;
    public final long timestamp;
    public final byte version;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public boolean f26288a;

        /* renamed from: b */
        public boolean f26289b;

        /* renamed from: c */
        public byte f26290c;

        /* renamed from: d */
        public int f26291d;

        /* renamed from: e */
        public long f26292e;

        /* renamed from: f */
        public int f26293f;

        /* renamed from: g */
        public byte[] f26294g = RtpPacket.f26287a;

        /* renamed from: h */
        public byte[] f26295h = RtpPacket.f26287a;

        public RtpPacket build() {
            return new RtpPacket(this);
        }

        public Builder setCsrc(byte[] bArr) {
            Assertions.checkNotNull(bArr);
            this.f26294g = bArr;
            return this;
        }

        public Builder setMarker(boolean z) {
            this.f26289b = z;
            return this;
        }

        public Builder setPadding(boolean z) {
            this.f26288a = z;
            return this;
        }

        public Builder setPayloadData(byte[] bArr) {
            Assertions.checkNotNull(bArr);
            this.f26295h = bArr;
            return this;
        }

        public Builder setPayloadType(byte b) {
            this.f26290c = b;
            return this;
        }

        public Builder setSequenceNumber(int i) {
            Assertions.checkArgument(i >= 0 && i <= 65535);
            this.f26291d = i & 65535;
            return this;
        }

        public Builder setSsrc(int i) {
            this.f26293f = i;
            return this;
        }

        public Builder setTimestamp(long j) {
            this.f26292e = j;
            return this;
        }
    }

    public static int getNextSequenceNumber(int i) {
        return IntMath.mod(i + 1, 65536);
    }

    public static int getPreviousSequenceNumber(int i) {
        return IntMath.mod(i - 1, 65536);
    }

    @Nullable
    public static RtpPacket parse(ParsableByteArray parsableByteArray) {
        byte[] bArr;
        if (parsableByteArray.bytesLeft() < 12) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        byte b = (byte) (readUnsignedByte >> 6);
        boolean z = ((readUnsignedByte >> 5) & 1) == 1;
        byte b2 = (byte) (readUnsignedByte & 15);
        if (b != 2) {
            return null;
        }
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        boolean z2 = ((readUnsignedByte2 >> 7) & 1) == 1;
        byte b3 = (byte) (readUnsignedByte2 & 127);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        int readInt = parsableByteArray.readInt();
        if (b2 > 0) {
            bArr = new byte[b2 * 4];
            for (int i = 0; i < b2; i++) {
                parsableByteArray.readBytes(bArr, i * 4, 4);
            }
        } else {
            bArr = f26287a;
        }
        byte[] bArr2 = new byte[parsableByteArray.bytesLeft()];
        parsableByteArray.readBytes(bArr2, 0, parsableByteArray.bytesLeft());
        return new Builder().setPadding(z).setMarker(z2).setPayloadType(b3).setSequenceNumber(readUnsignedShort).setTimestamp(readUnsignedInt).setSsrc(readInt).setCsrc(bArr).setPayloadData(bArr2).build();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RtpPacket.class != obj.getClass()) {
            return false;
        }
        RtpPacket rtpPacket = (RtpPacket) obj;
        return this.payloadType == rtpPacket.payloadType && this.sequenceNumber == rtpPacket.sequenceNumber && this.marker == rtpPacket.marker && this.timestamp == rtpPacket.timestamp && this.ssrc == rtpPacket.ssrc;
    }

    public int hashCode() {
        int i = (((((527 + this.payloadType) * 31) + this.sequenceNumber) * 31) + (this.marker ? 1 : 0)) * 31;
        long j = this.timestamp;
        return ((i + ((int) (j ^ (j >>> 32)))) * 31) + this.ssrc;
    }

    public String toString() {
        return Util.formatInvariant("RtpPacket(payloadType=%d, seq=%d, timestamp=%d, ssrc=%x, marker=%b)", Byte.valueOf(this.payloadType), Integer.valueOf(this.sequenceNumber), Long.valueOf(this.timestamp), Integer.valueOf(this.ssrc), Boolean.valueOf(this.marker));
    }

    public int writeToBuffer(byte[] bArr, int i, int i2) {
        int length = (this.csrcCount * 4) + 12 + this.payloadData.length;
        if (i2 < length || bArr.length - i < length) {
            return -1;
        }
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, i2);
        byte b = (byte) (((this.padding ? 1 : 0) << 5) | 128 | ((this.extension ? 1 : 0) << 4) | (this.csrcCount & 15));
        wrap.put(b).put((byte) (((this.marker ? 1 : 0) << 7) | (this.payloadType & Byte.MAX_VALUE))).putShort((short) this.sequenceNumber).putInt((int) this.timestamp).putInt(this.ssrc).put(this.csrc).put(this.payloadData);
        return length;
    }

    public RtpPacket(Builder builder) {
        this.version = (byte) 2;
        this.padding = builder.f26288a;
        this.extension = false;
        this.marker = builder.f26289b;
        this.payloadType = builder.f26290c;
        this.sequenceNumber = builder.f26291d;
        this.timestamp = builder.f26292e;
        this.ssrc = builder.f26293f;
        byte[] bArr = builder.f26294g;
        this.csrc = bArr;
        this.csrcCount = (byte) (bArr.length / 4);
        this.payloadData = builder.f26295h;
    }

    @Nullable
    public static RtpPacket parse(byte[] bArr, int i) {
        return parse(new ParsableByteArray(bArr, i));
    }
}
