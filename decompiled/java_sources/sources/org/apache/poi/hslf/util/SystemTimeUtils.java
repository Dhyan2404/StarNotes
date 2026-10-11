package org.apache.poi.hslf.util;

import java.util.Calendar;
import java.util.Date;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public final class SystemTimeUtils {
    public static Date getDate(byte[] bArr) {
        return getDate(bArr, 0);
    }

    public static void storeDate(Date date, byte[] bArr) {
        storeDate(date, bArr, 0);
    }

    public static Date getDate(byte[] bArr, int i) {
        Calendar localeCalendar = LocaleUtil.getLocaleCalendar();
        localeCalendar.set(1, LittleEndian.getShort(bArr, i));
        localeCalendar.set(2, LittleEndian.getShort(bArr, i + 2) - 1);
        localeCalendar.set(5, LittleEndian.getShort(bArr, i + 6));
        localeCalendar.set(11, LittleEndian.getShort(bArr, i + 8));
        localeCalendar.set(12, LittleEndian.getShort(bArr, i + 10));
        localeCalendar.set(13, LittleEndian.getShort(bArr, i + 12));
        localeCalendar.set(14, LittleEndian.getShort(bArr, i + 14));
        return localeCalendar.getTime();
    }

    public static void storeDate(Date date, byte[] bArr, int i) {
        Calendar localeCalendar = LocaleUtil.getLocaleCalendar();
        localeCalendar.setTime(date);
        LittleEndian.putShort(bArr, i + 0, (short) localeCalendar.get(1));
        LittleEndian.putShort(bArr, i + 2, (short) (localeCalendar.get(2) + 1));
        LittleEndian.putShort(bArr, i + 4, (short) (localeCalendar.get(7) - 1));
        LittleEndian.putShort(bArr, i + 6, (short) localeCalendar.get(5));
        LittleEndian.putShort(bArr, i + 8, (short) localeCalendar.get(11));
        LittleEndian.putShort(bArr, i + 10, (short) localeCalendar.get(12));
        LittleEndian.putShort(bArr, i + 12, (short) localeCalendar.get(13));
        LittleEndian.putShort(bArr, i + 14, (short) localeCalendar.get(14));
    }
}
