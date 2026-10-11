package org.apache.poi.hsmf.datatypes;

import java.math.BigInteger;
import java.util.Calendar;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public class PropertyValue {
    private Types.MAPIType actualType;
    protected byte[] data;
    private long flags;
    private MAPIProperty property;

    /* loaded from: classes12.dex */
    public static class BooleanPropertyValue extends PropertyValue {
        public BooleanPropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr) {
            super(mAPIProperty, j, bArr, Types.BOOLEAN);
        }

        public void setValue(boolean z) {
            if (this.data.length != 2) {
                this.data = new byte[2];
            }
            if (z) {
                LittleEndian.putShort(this.data, 0, (short) 1);
            }
        }

        @Override // org.apache.poi.hsmf.datatypes.PropertyValue
        public Boolean getValue() {
            return Boolean.valueOf(LittleEndian.getShort(this.data) > 0);
        }
    }

    /* loaded from: classes12.dex */
    public static class CurrencyPropertyValue extends PropertyValue {
        private static final BigInteger SHIFT = BigInteger.valueOf(10000);

        public CurrencyPropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr) {
            super(mAPIProperty, j, bArr, Types.CURRENCY);
        }

        public void setValue(BigInteger bigInteger) {
            if (this.data.length != 8) {
                this.data = new byte[8];
            }
            LittleEndian.putLong(this.data, 0, bigInteger.multiply(SHIFT).longValue());
        }

        @Override // org.apache.poi.hsmf.datatypes.PropertyValue
        public BigInteger getValue() {
            return BigInteger.valueOf(LittleEndian.getLong(this.data)).divide(SHIFT);
        }
    }

    /* loaded from: classes12.dex */
    public static class DoublePropertyValue extends PropertyValue {
        public DoublePropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr) {
            super(mAPIProperty, j, bArr, Types.DOUBLE);
        }

        public void setValue(double d) {
            if (this.data.length != 8) {
                this.data = new byte[8];
            }
            LittleEndian.putDouble(this.data, 0, d);
        }

        @Override // org.apache.poi.hsmf.datatypes.PropertyValue
        public Double getValue() {
            return Double.valueOf(LittleEndian.getDouble(this.data));
        }
    }

    /* loaded from: classes12.dex */
    public static class FloatPropertyValue extends PropertyValue {
        public FloatPropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr) {
            super(mAPIProperty, j, bArr, Types.FLOAT);
        }

        public void setValue(float f) {
            if (this.data.length != 4) {
                this.data = new byte[4];
            }
            LittleEndian.putFloat(this.data, 0, f);
        }

        @Override // org.apache.poi.hsmf.datatypes.PropertyValue
        public Float getValue() {
            return Float.valueOf(LittleEndian.getFloat(this.data));
        }
    }

    /* loaded from: classes12.dex */
    public static class LongLongPropertyValue extends PropertyValue {
        public LongLongPropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr) {
            super(mAPIProperty, j, bArr, Types.LONG_LONG);
        }

        public void setValue(long j) {
            if (this.data.length != 8) {
                this.data = new byte[8];
            }
            LittleEndian.putLong(this.data, 0, j);
        }

        @Override // org.apache.poi.hsmf.datatypes.PropertyValue
        public Long getValue() {
            return Long.valueOf(LittleEndian.getLong(this.data));
        }
    }

    /* loaded from: classes12.dex */
    public static class LongPropertyValue extends PropertyValue {
        public LongPropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr) {
            super(mAPIProperty, j, bArr, Types.LONG);
        }

        public void setValue(int i) {
            if (this.data.length != 4) {
                this.data = new byte[4];
            }
            LittleEndian.putInt(this.data, 0, i);
        }

        @Override // org.apache.poi.hsmf.datatypes.PropertyValue
        public Integer getValue() {
            return Integer.valueOf(LittleEndian.getInt(this.data));
        }
    }

    /* loaded from: classes12.dex */
    public static class NullPropertyValue extends PropertyValue {
        public NullPropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr) {
            super(mAPIProperty, j, bArr, Types.NULL);
        }

        @Override // org.apache.poi.hsmf.datatypes.PropertyValue
        public Void getValue() {
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public static class ShortPropertyValue extends PropertyValue {
        public ShortPropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr) {
            super(mAPIProperty, j, bArr, Types.SHORT);
        }

        public void setValue(short s) {
            if (this.data.length != 2) {
                this.data = new byte[2];
            }
            LittleEndian.putShort(this.data, 0, s);
        }

        @Override // org.apache.poi.hsmf.datatypes.PropertyValue
        public Short getValue() {
            return Short.valueOf(LittleEndian.getShort(this.data));
        }
    }

    /* loaded from: classes12.dex */
    public static class TimePropertyValue extends PropertyValue {
        private static final long OFFSET = 11644473600000L;

        public TimePropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr) {
            super(mAPIProperty, j, bArr, Types.TIME);
        }

        public void setValue(Calendar calendar) {
            if (this.data.length != 8) {
                this.data = new byte[8];
            }
            LittleEndian.putLong(this.data, 0, (calendar.getTimeInMillis() + OFFSET) * 10 * 1000);
        }

        @Override // org.apache.poi.hsmf.datatypes.PropertyValue
        public Calendar getValue() {
            long j = ((LittleEndian.getLong(this.data) / 10) / 1000) - OFFSET;
            Calendar localeCalendar = LocaleUtil.getLocaleCalendar();
            localeCalendar.setTimeInMillis(j);
            return localeCalendar;
        }
    }

    public PropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr) {
        this(mAPIProperty, j, bArr, mAPIProperty.usualType);
    }

    public Types.MAPIType getActualType() {
        return this.actualType;
    }

    public long getFlags() {
        return this.flags;
    }

    public MAPIProperty getProperty() {
        return this.property;
    }

    public byte[] getRawValue() {
        return this.data;
    }

    public Object getValue() {
        return this.data;
    }

    public void setRawValue(byte[] bArr) {
        this.data = bArr;
    }

    public String toString() {
        Object value = getValue();
        return value == null ? "(No value available)" : value instanceof byte[] ? ByteChunk.toDebugFriendlyString((byte[]) value) : value.toString();
    }

    public PropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr, Types.MAPIType mAPIType) {
        this.property = mAPIProperty;
        this.flags = j;
        this.data = bArr;
        this.actualType = mAPIType;
    }
}
