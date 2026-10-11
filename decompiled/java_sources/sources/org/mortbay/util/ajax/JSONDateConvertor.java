package org.mortbay.util.ajax;

import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;
import org.mortbay.log.Log;
import org.mortbay.util.DateCache;
import org.mortbay.util.ajax.JSON;

/* loaded from: classes13.dex */
public class JSONDateConvertor implements JSON.Convertor {

    /* renamed from: a */
    public boolean f115409a;

    /* renamed from: b */
    public DateCache f115410b;

    /* renamed from: c */
    public SimpleDateFormat f115411c;

    public JSONDateConvertor() {
        this(false);
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        Object parseObject;
        if (!this.f115409a) {
            throw new UnsupportedOperationException();
        }
        try {
            synchronized (this.f115411c) {
                parseObject = this.f115411c.parseObject((String) map.get("value"));
            }
            return parseObject;
        } catch (Exception e) {
            Log.warn(e);
            return null;
        }
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        String format = this.f115410b.format((Date) obj);
        if (!this.f115409a) {
            output.add(format);
        } else {
            output.addClass(obj.getClass());
            output.add("value", format);
        }
    }

    public JSONDateConvertor(boolean z) {
        this(DateCache.DEFAULT_FORMAT, TimeZone.getTimeZone(TimeZones.GMT_ID), z);
    }

    public JSONDateConvertor(String str, TimeZone timeZone, boolean z) {
        DateCache dateCache = new DateCache(str);
        this.f115410b = dateCache;
        dateCache.setTimeZone(timeZone);
        this.f115409a = z;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
        this.f115411c = simpleDateFormat;
        simpleDateFormat.setTimeZone(timeZone);
    }

    public JSONDateConvertor(String str, TimeZone timeZone, boolean z, Locale locale) {
        DateCache dateCache = new DateCache(str, locale);
        this.f115410b = dateCache;
        dateCache.setTimeZone(timeZone);
        this.f115409a = z;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, new DateFormatSymbols(locale));
        this.f115411c = simpleDateFormat;
        simpleDateFormat.setTimeZone(timeZone);
    }
}
