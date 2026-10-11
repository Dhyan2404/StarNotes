package org.apache.poi.hmef.attribute;

import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hpsf.Filetime;
import org.apache.poi.hsmf.datatypes.MAPIProperty;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public final class MAPIDateAttribute extends MAPIAttribute {
    private static final Logger LOG = LogManager.getLogger((Class<?>) MAPIDateAttribute.class);
    private final Date data;

    public MAPIDateAttribute(MAPIProperty mAPIProperty, int i, byte[] bArr) {
        super(mAPIProperty, i, bArr);
        this.data = Filetime.filetimeToDate(LittleEndian.getLong(bArr, 0));
    }

    public static Date getAsDate(MAPIAttribute mAPIAttribute) {
        if (mAPIAttribute == null) {
            return null;
        }
        if (mAPIAttribute instanceof MAPIDateAttribute) {
            return ((MAPIDateAttribute) mAPIAttribute).getDate();
        }
        LOG.atWarn().log("Warning, non date property found: {}", mAPIAttribute);
        return null;
    }

    public Date getDate() {
        return this.data;
    }

    @Override // org.apache.poi.hmef.attribute.MAPIAttribute
    public String toString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", DateFormatSymbols.getInstance(Locale.ROOT));
        simpleDateFormat.setTimeZone(LocaleUtil.TIMEZONE_UTC);
        return getProperty() + " " + simpleDateFormat.format(this.data);
    }
}
