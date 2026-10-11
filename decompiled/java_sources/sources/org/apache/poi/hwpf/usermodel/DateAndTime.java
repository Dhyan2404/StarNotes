package org.apache.poi.hwpf.usermodel;

import java.awt.image.BufferedImage;
import java.util.Calendar;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public final class DateAndTime implements Duplicatable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int SIZE = 4;
    private short _info;
    private short _info2;
    private static final BitField _minutes = BitFieldFactory.getInstance(63);
    private static final BitField _hours = BitFieldFactory.getInstance(1984);
    private static final BitField _dom = BitFieldFactory.getInstance(BufferedImage.DCM_565_RED_MASK);
    private static final BitField _months = BitFieldFactory.getInstance(15);
    private static final BitField _years = BitFieldFactory.getInstance(8176);

    public DateAndTime() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DateAndTime)) {
            return false;
        }
        DateAndTime dateAndTime = (DateAndTime) obj;
        return this._info == dateAndTime._info && this._info2 == dateAndTime._info2;
    }

    public Calendar getDate() {
        return LocaleUtil.getLocaleCalendar(_years.getValue(this._info2) + 1900, _months.getValue(this._info2) - 1, _dom.getValue(this._info), _hours.getValue(this._info), _minutes.getValue(this._info), 0);
    }

    public int hashCode() {
        return 42;
    }

    public boolean isEmpty() {
        return this._info == 0 && this._info2 == 0;
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i, this._info);
        LittleEndian.putShort(bArr, i + 2, this._info2);
    }

    public String toString() {
        if (isEmpty()) {
            return "[DTTM] EMPTY";
        }
        return "[DTTM] " + getDate();
    }

    public DateAndTime(DateAndTime dateAndTime) {
        this._info = dateAndTime._info;
        this._info2 = dateAndTime._info2;
    }

    @Override // org.apache.poi.common.Duplicatable
    public DateAndTime copy() {
        return new DateAndTime(this);
    }

    public DateAndTime(byte[] bArr, int i) {
        this._info = LittleEndian.getShort(bArr, i);
        this._info2 = LittleEndian.getShort(bArr, i + 2);
    }
}
