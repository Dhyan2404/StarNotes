package org.apache.poi.hmef.attribute;

import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hpsf.Filetime;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public final class TNEFDateAttribute extends TNEFAttribute {
    private static final Logger LOG = LogManager.getLogger((Class<?>) TNEFDateAttribute.class);
    private final Date data;

    public TNEFDateAttribute(int i, int i2, InputStream inputStream) throws IOException {
        super(i, i2, inputStream);
        byte[] data = getData();
        if (data.length == 8) {
            this.data = Filetime.filetimeToDate(LittleEndian.getLong(getData(), 0));
            return;
        }
        if (data.length != 14) {
            throw new IllegalArgumentException("Invalid date, found " + data.length + " bytes");
        }
        Calendar localeCalendar = LocaleUtil.getLocaleCalendar(LocaleUtil.TIMEZONE_UTC);
        localeCalendar.set(1, LittleEndian.getUShort(data, 0));
        localeCalendar.set(2, LittleEndian.getUShort(data, 2) - 1);
        localeCalendar.set(5, LittleEndian.getUShort(data, 4));
        localeCalendar.set(11, LittleEndian.getUShort(data, 6));
        localeCalendar.set(12, LittleEndian.getUShort(data, 8));
        localeCalendar.set(13, LittleEndian.getUShort(data, 10));
        localeCalendar.clear(14);
        this.data = localeCalendar.getTime();
    }

    public static Date getAsDate(TNEFAttribute tNEFAttribute) {
        if (tNEFAttribute == null) {
            return null;
        }
        if (tNEFAttribute instanceof TNEFDateAttribute) {
            return ((TNEFDateAttribute) tNEFAttribute).getDate();
        }
        LOG.atWarn().log("Warning, non date property found: {}", tNEFAttribute);
        return null;
    }

    public Date getDate() {
        return this.data;
    }

    @Override // org.apache.poi.hmef.attribute.TNEFAttribute
    public String toString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", DateFormatSymbols.getInstance(Locale.ROOT));
        simpleDateFormat.setTimeZone(LocaleUtil.TIMEZONE_UTC);
        return "Attribute " + getProperty() + ", type=" + getType() + ", date=" + simpleDateFormat.format(this.data);
    }
}
