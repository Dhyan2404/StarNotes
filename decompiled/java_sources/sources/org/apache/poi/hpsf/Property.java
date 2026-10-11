package org.apache.poi.hpsf;

import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hpsf.wellknown.PropertyIDMap;
import org.apache.poi.util.CodePageUtil;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianByteArrayInputStream;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public class Property {
    public static final int DEFAULT_CODEPAGE = 1252;
    private static final Logger LOG = LogManager.getLogger((Class<?>) Property.class);

    /* renamed from: id */
    private long f111375id;
    private long type;
    private Object value;

    public Property() {
    }

    private String decodeValueFromID() {
        try {
            int id = (int) getID();
            if (id == Integer.MIN_VALUE) {
                return LocaleUtil.getLocaleFromLCID(((Number) this.value).intValue());
            }
            if (id != 1) {
                return null;
            }
            return CodePageUtil.codepageToEncoding(((Number) this.value).intValue());
        } catch (Exception unused) {
            LOG.atWarn().log("Can't decode id {}", Unbox.box(getID()));
            return null;
        }
    }

    private String getVariantName() {
        return getID() == 0 ? "dictionary" : Variant.getVariantName(getType());
    }

    private boolean typesAreEqual(long j, long j2) {
        return j == j2 || (j == 30 && j2 == 31) || (j2 == 30 && j == 31);
    }

    private static int unpaddedLength(byte[] bArr) {
        int length = bArr.length - ((bArr.length + 3) % 4);
        for (int length2 = bArr.length; length2 > length; length2--) {
            if (bArr[length2 - 1] != 0) {
                return length2;
            }
        }
        return length;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Property)) {
            return false;
        }
        Property property = (Property) obj;
        Object value = property.getValue();
        long id = property.getID();
        long j = this.f111375id;
        if (j == id && (j == 0 || typesAreEqual(this.type, property.getType()))) {
            Object obj2 = this.value;
            if (obj2 == null && value == null) {
                return true;
            }
            if (obj2 != null && value != null) {
                Class<?> cls = obj2.getClass();
                Class<?> cls2 = value.getClass();
                if (!cls.isAssignableFrom(cls2) && !cls2.isAssignableFrom(cls)) {
                    return false;
                }
                Object obj3 = this.value;
                if (!(obj3 instanceof byte[])) {
                    return obj3.equals(value);
                }
                byte[] bArr = (byte[]) obj3;
                byte[] bArr2 = (byte[]) value;
                int unpaddedLength = unpaddedLength(bArr);
                if (unpaddedLength != unpaddedLength(bArr2)) {
                    return false;
                }
                for (int i = 0; i < unpaddedLength; i++) {
                    if (bArr[i] != bArr2[i]) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public long getID() {
        return this.f111375id;
    }

    public int getSize(int i) throws WritingNotSupportedException {
        int variantLength = Variant.getVariantLength(this.type);
        if (variantLength < 0) {
            long j = this.type;
            if (j != 0) {
                if (variantLength == -2) {
                    throw new WritingNotSupportedException(this.type, null);
                }
                if (j != 30 && j != 31) {
                    throw new WritingNotSupportedException(this.type, this.value);
                }
                try {
                    int write = write(new UnsynchronizedByteArrayOutputStream(), i) - 8;
                    return write + ((4 - (write & 3)) & 3);
                } catch (IOException unused) {
                    throw new WritingNotSupportedException(this.type, this.value);
                }
            }
        }
        return variantLength;
    }

    public long getType() {
        return this.type;
    }

    public Object getValue() {
        return this.value;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.f111375id), Long.valueOf(this.type), this.value);
    }

    public void setID(long j) {
        this.f111375id = j;
    }

    public void setType(long j) {
        this.type = j;
    }

    public void setValue(Object obj) {
        this.value = obj;
    }

    public String toString() {
        return toString(1252, null);
    }

    public int write(OutputStream outputStream, int i) throws IOException, WritingNotSupportedException {
        long type = getType();
        if (type == 30 && i != 1200) {
            if (!Charset.forName(CodePageUtil.codepageToEncoding(i > 0 ? i : 1252)).newEncoder().canEncode((String) this.value)) {
                type = 31;
            }
        }
        LittleEndian.putUInt(type, outputStream);
        return 4 + VariantSupport.write(outputStream, type, getValue(), i);
    }

    public Property(Property property) {
        this(property.f111375id, property.type, property.value);
    }

    public String toString(int i, PropertyIDMap propertyIDMap) {
        StringBuilder sb = new StringBuilder();
        sb.append("Property[");
        sb.append("id: ");
        sb.append(this.f111375id);
        String str = propertyIDMap == null ? null : propertyIDMap.get((Object) Long.valueOf(this.f111375id));
        if (str == null) {
            str = PropertyIDMap.getFallbackProperties().get((Object) Long.valueOf(this.f111375id));
        }
        if (str != null) {
            sb.append(" (");
            sb.append(str);
            sb.append(MotionUtils.f31762d);
        }
        sb.append(", type: ");
        sb.append(getType());
        sb.append(" (");
        sb.append(getVariantName());
        sb.append(") ");
        Object value = getValue();
        sb.append(", value: ");
        if (value instanceof String) {
            sb.append((String) value);
            sb.append("\n");
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                write(unsynchronizedByteArrayOutputStream, i);
            } catch (Exception e) {
                LOG.atWarn().withThrowable(e).log("can't serialize string");
            }
            if (unsynchronizedByteArrayOutputStream.size() > 8) {
                sb.append(HexDump.dump(unsynchronizedByteArrayOutputStream.toByteArray(), -8L, 8));
            }
        } else if (value instanceof byte[]) {
            sb.append("\n");
            byte[] bArr = (byte[]) value;
            if (bArr.length > 0) {
                sb.append(HexDump.dump(bArr, 0L, 0));
            }
        } else if (value instanceof java.util.Date) {
            java.util.Date date = (java.util.Date) value;
            long dateToFileTime = Filetime.dateToFileTime(date);
            if (Filetime.isUndefined(date)) {
                sb.append("<undefined>");
            } else if ((dateToFileTime >>> 32) == 0) {
                long j = dateToFileTime * 100;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long hours = timeUnit.toHours(j);
                long nanos = j - TimeUnit.HOURS.toNanos(hours);
                long minutes = timeUnit.toMinutes(nanos);
                long nanos2 = nanos - TimeUnit.MINUTES.toNanos(minutes);
                long seconds = timeUnit.toSeconds(nanos2);
                sb.append(String.format(Locale.ROOT, MatroskaExtractor.f23781d3, Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(seconds), Long.valueOf(timeUnit.toMillis(nanos2 - TimeUnit.SECONDS.toNanos(seconds)))));
            } else {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ROOT);
                simpleDateFormat.setTimeZone(LocaleUtil.TIMEZONE_UTC);
                sb.append(simpleDateFormat.format(date));
            }
        } else {
            long j2 = this.type;
            if (j2 != 0 && j2 != 1 && value != null) {
                sb.append(value);
                String decodeValueFromID = decodeValueFromID();
                if (decodeValueFromID != null) {
                    sb.append(" (");
                    sb.append(decodeValueFromID);
                    sb.append(MotionUtils.f31762d);
                }
            } else {
                sb.append("null");
            }
        }
        sb.append(']');
        return sb.toString();
    }

    public Property(long j, long j2, Object obj) {
        this.f111375id = j;
        this.type = j2;
        this.value = obj;
    }

    public Property(long j, byte[] bArr, long j2, int i, int i2) throws UnsupportedEncodingException {
        this.f111375id = j;
        if (j != 0) {
            int i3 = (int) j2;
            this.type = LittleEndian.getUInt(bArr, i3);
            try {
                this.value = VariantSupport.read(bArr, i3 + 4, i, (int) r10, i2);
                return;
            } catch (UnsupportedVariantTypeException e) {
                VariantSupport.writeUnsupportedTypeMessage(e);
                this.value = e.getValue();
                return;
            }
        }
        throw new UnsupportedEncodingException("Dictionary not allowed here");
    }

    public Property(long j, LittleEndianByteArrayInputStream littleEndianByteArrayInputStream, int i, int i2) throws UnsupportedEncodingException {
        this.f111375id = j;
        if (j != 0) {
            this.type = littleEndianByteArrayInputStream.readUInt();
            try {
                this.value = VariantSupport.read(littleEndianByteArrayInputStream, i, (int) r3, i2);
                return;
            } catch (UnsupportedVariantTypeException e) {
                VariantSupport.writeUnsupportedTypeMessage(e);
                this.value = e.getValue();
                return;
            }
        }
        throw new UnsupportedEncodingException("Dictionary not allowed here");
    }
}
