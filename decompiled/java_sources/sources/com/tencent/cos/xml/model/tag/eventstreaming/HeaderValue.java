package com.tencent.cos.xml.model.tag.eventstreaming;

import com.tencent.cos.xml.p077s3.Base64;
import com.tencent.cos.xml.p077s3.Base64Codec;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Date;
import java.util.UUID;

/* loaded from: classes10.dex */
public abstract class HeaderValue {

    /* renamed from: com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue$1 */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C166321 {

        /* renamed from: $SwitchMap$com$tencent$cos$xml$model$tag$eventstreaming$HeaderType */
        static final /* synthetic */ int[] f93325x8672d452;

        static {
            int[] iArr = new int[HeaderType.values().length];
            f93325x8672d452 = iArr;
            try {
                iArr[HeaderType.TRUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f93325x8672d452[HeaderType.FALSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f93325x8672d452[HeaderType.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f93325x8672d452[HeaderType.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f93325x8672d452[HeaderType.INTEGER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f93325x8672d452[HeaderType.LONG.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f93325x8672d452[HeaderType.BYTE_ARRAY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f93325x8672d452[HeaderType.STRING.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f93325x8672d452[HeaderType.TIMESTAMP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f93325x8672d452[HeaderType.UUID.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* loaded from: classes10.dex */
    public static final class BooleanValue extends HeaderValue {
        private final boolean value;

        public /* synthetic */ BooleanValue(boolean z, C166321 c166321) {
            this(z);
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public void encodeValue(DataOutputStream dataOutputStream) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && BooleanValue.class == obj.getClass() && this.value == ((BooleanValue) obj).value;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public boolean getBoolean() {
            return this.value;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public HeaderType getType() {
            return this.value ? HeaderType.TRUE : HeaderType.FALSE;
        }

        public int hashCode() {
            return this.value ? 1 : 0;
        }

        public String toString() {
            return String.valueOf(this.value);
        }

        private BooleanValue(boolean z) {
            this.value = z;
        }
    }

    /* loaded from: classes10.dex */
    public static final class ByteArrayValue extends HeaderValue {
        private Base64Codec codec;
        private final byte[] value;

        public /* synthetic */ ByteArrayValue(byte[] bArr, C166321 c166321) {
            this(bArr);
        }

        private String toStringDirect(byte[] bArr) {
            char[] cArr = new char[bArr.length];
            int length = bArr.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                cArr[i2] = (char) bArr[i];
                i++;
                i2++;
            }
            return new String(cArr);
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public void encodeValue(DataOutputStream dataOutputStream) throws IOException {
            Utils.writeBytes(dataOutputStream, this.value);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ByteArrayValue.class != obj.getClass()) {
                return false;
            }
            return Arrays.equals(this.value, ((ByteArrayValue) obj).value);
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public byte[] getByteArray() {
            return this.value;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public HeaderType getType() {
            return HeaderType.BYTE_ARRAY;
        }

        public int hashCode() {
            return Arrays.hashCode(this.value);
        }

        public String toString() {
            return Base64.encodeAsString(this.value);
        }

        private ByteArrayValue(byte[] bArr) {
            this.value = (byte[]) ValidationUtils.assertNotNull(bArr, "value");
        }
    }

    /* loaded from: classes10.dex */
    public static final class ByteValue extends HeaderValue {
        private final byte value;

        public /* synthetic */ ByteValue(byte b, C166321 c166321) {
            this(b);
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public void encodeValue(DataOutputStream dataOutputStream) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && ByteValue.class == obj.getClass() && this.value == ((ByteValue) obj).value;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public byte getByte() {
            return this.value;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public HeaderType getType() {
            return HeaderType.BYTE;
        }

        public int hashCode() {
            return this.value;
        }

        public String toString() {
            return String.valueOf((int) this.value);
        }

        private ByteValue(byte b) {
            this.value = b;
        }
    }

    /* loaded from: classes10.dex */
    public static final class IntegerValue extends HeaderValue {
        private final int value;

        public /* synthetic */ IntegerValue(int i, C166321 c166321) {
            this(i);
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public void encodeValue(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeInt(this.value);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && IntegerValue.class == obj.getClass() && this.value == ((IntegerValue) obj).value;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public int getInteger() {
            return this.value;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public HeaderType getType() {
            return HeaderType.INTEGER;
        }

        public int hashCode() {
            return this.value;
        }

        public String toString() {
            return String.valueOf(this.value);
        }

        private IntegerValue(int i) {
            this.value = i;
        }
    }

    /* loaded from: classes10.dex */
    public static final class LongValue extends HeaderValue {
        private final long value;

        public /* synthetic */ LongValue(long j, C166321 c166321) {
            this(j);
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public void encodeValue(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeLong(this.value);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && LongValue.class == obj.getClass() && this.value == ((LongValue) obj).value;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public long getLong() {
            return this.value;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public HeaderType getType() {
            return HeaderType.LONG;
        }

        public int hashCode() {
            long j = this.value;
            return (int) (j ^ (j >>> 32));
        }

        public String toString() {
            return String.valueOf(this.value);
        }

        private LongValue(long j) {
            this.value = j;
        }
    }

    /* loaded from: classes10.dex */
    public static final class ShortValue extends HeaderValue {
        private final short value;

        public /* synthetic */ ShortValue(short s, C166321 c166321) {
            this(s);
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public void encodeValue(DataOutputStream dataOutputStream) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && ShortValue.class == obj.getClass() && this.value == ((ShortValue) obj).value;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public short getShort() {
            return this.value;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public HeaderType getType() {
            return HeaderType.SHORT;
        }

        public int hashCode() {
            return this.value;
        }

        public String toString() {
            return String.valueOf((int) this.value);
        }

        private ShortValue(short s) {
            this.value = s;
        }
    }

    /* loaded from: classes10.dex */
    public static final class StringValue extends HeaderValue {
        private final String value;

        public /* synthetic */ StringValue(String str, C166321 c166321) {
            this(str);
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public void encodeValue(DataOutputStream dataOutputStream) throws IOException {
            Utils.writeString(dataOutputStream, this.value);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || StringValue.class != obj.getClass()) {
                return false;
            }
            return this.value.equals(((StringValue) obj).value);
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public String getString() {
            return this.value;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public HeaderType getType() {
            return HeaderType.STRING;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return '\"' + this.value + '\"';
        }

        private StringValue(String str) {
            this.value = (String) ValidationUtils.assertNotNull(str, "value");
        }
    }

    /* loaded from: classes10.dex */
    public static final class TimestampValue extends HeaderValue {
        private final Date value;

        public /* synthetic */ TimestampValue(Date date, C166321 c166321) {
            this(date);
        }

        public static TimestampValue decode(ByteBuffer byteBuffer) {
            return new TimestampValue(new Date(byteBuffer.getLong()));
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public void encodeValue(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeLong(this.value.getTime());
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || TimestampValue.class != obj.getClass()) {
                return false;
            }
            return this.value.equals(((TimestampValue) obj).value);
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public long getTimestamp() {
            return this.value.getTime();
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public HeaderType getType() {
            return HeaderType.TIMESTAMP;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return this.value.toString();
        }

        private TimestampValue(Date date) {
            this.value = (Date) ValidationUtils.assertNotNull(date, "value");
        }
    }

    /* loaded from: classes10.dex */
    public static final class UuidValue extends HeaderValue {
        private final UUID value;

        public /* synthetic */ UuidValue(UUID uuid, C166321 c166321) {
            this(uuid);
        }

        public static UuidValue decode(ByteBuffer byteBuffer) {
            return new UuidValue(new UUID(byteBuffer.getLong(), byteBuffer.getLong()));
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public void encodeValue(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeLong(this.value.getMostSignificantBits());
            dataOutputStream.writeLong(this.value.getLeastSignificantBits());
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || UuidValue.class != obj.getClass()) {
                return false;
            }
            return this.value.equals(((UuidValue) obj).value);
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public HeaderType getType() {
            return HeaderType.UUID;
        }

        @Override // com.tencent.cos.xml.model.tag.eventstreaming.HeaderValue
        public UUID getUuid() {
            return this.value;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return this.value.toString();
        }

        private UuidValue(UUID uuid) {
            this.value = (UUID) ValidationUtils.assertNotNull(uuid, "value");
        }
    }

    public static HeaderValue decode(ByteBuffer byteBuffer) {
        C166321 c166321 = null;
        switch (C166321.f93325x8672d452[HeaderType.fromTypeId(byteBuffer.get()).ordinal()]) {
            case 1:
                return new BooleanValue(true, c166321);
            case 2:
                return new BooleanValue(false, c166321);
            case 3:
                return new ByteValue(byteBuffer.get(), c166321);
            case 4:
                return new ShortValue(byteBuffer.getShort(), c166321);
            case 5:
                return fromInteger(byteBuffer.getInt());
            case 6:
                return new LongValue(byteBuffer.getLong(), c166321);
            case 7:
                return fromByteArray(Utils.readBytes(byteBuffer));
            case 8:
                try {
                    return fromString(Utils.readString(byteBuffer));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                    throw new IllegalStateException();
                }
            case 9:
                return TimestampValue.decode(byteBuffer);
            case 10:
                return UuidValue.decode(byteBuffer);
            default:
                throw new IllegalStateException();
        }
    }

    public static HeaderValue fromBoolean(boolean z) {
        return new BooleanValue(z, null);
    }

    public static HeaderValue fromByte(byte b) {
        return new ByteValue(b, null);
    }

    public static HeaderValue fromByteArray(byte[] bArr) {
        return new ByteArrayValue(bArr, null);
    }

    public static HeaderValue fromByteBuffer(ByteBuffer byteBuffer) {
        ByteBuffer duplicate = byteBuffer.duplicate();
        byte[] bArr = new byte[duplicate.remaining()];
        duplicate.get(bArr);
        return fromByteArray(bArr);
    }

    public static HeaderValue fromDate(Date date) {
        return new TimestampValue(date, null);
    }

    public static HeaderValue fromInteger(int i) {
        return new IntegerValue(i, null);
    }

    public static HeaderValue fromLong(long j) {
        return new LongValue(j, null);
    }

    public static HeaderValue fromShort(short s) {
        return new ShortValue(s, null);
    }

    public static HeaderValue fromString(String str) {
        return new StringValue(str, null);
    }

    public static HeaderValue fromTimestamp(long j) {
        return new TimestampValue(new Date(j), null);
    }

    public static HeaderValue fromUuid(UUID uuid) {
        return new UuidValue(uuid, null);
    }

    public void encode(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(getType().headerTypeId);
        encodeValue(dataOutputStream);
    }

    public abstract void encodeValue(DataOutputStream dataOutputStream) throws IOException;

    public boolean getBoolean() {
        throw new IllegalStateException();
    }

    public byte getByte() {
        throw new IllegalStateException("Expected byte, but type was " + getType().name());
    }

    public byte[] getByteArray() {
        throw new IllegalStateException();
    }

    public final ByteBuffer getByteBuffer() {
        return ByteBuffer.wrap(getByteArray());
    }

    public Date getDate() {
        return new Date(getTimestamp());
    }

    public int getInteger() {
        throw new IllegalStateException("Expected integer, but type was " + getType().name());
    }

    public long getLong() {
        throw new IllegalStateException("Expected long, but type was " + getType().name());
    }

    public short getShort() {
        throw new IllegalStateException("Expected short, but type was " + getType().name());
    }

    public String getString() {
        throw new IllegalStateException();
    }

    public long getTimestamp() {
        throw new IllegalStateException("Expected timestamp, but type was " + getType().name());
    }

    public abstract HeaderType getType();

    public UUID getUuid() {
        throw new IllegalStateException("Expected UUID, but type was " + getType().name());
    }
}
