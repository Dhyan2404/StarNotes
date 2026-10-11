package org.mortbay.util;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes13.dex */
public class DateCache {
    public static String DEFAULT_FORMAT = "EEE MMM dd HH:mm:ss zzz yyyy";

    /* renamed from: o */
    public static long f115294o = 3600;

    /* renamed from: a */
    public String f115295a;

    /* renamed from: b */
    public String f115296b;

    /* renamed from: c */
    public SimpleDateFormat f115297c;

    /* renamed from: d */
    public String f115298d;

    /* renamed from: e */
    public SimpleDateFormat f115299e;

    /* renamed from: f */
    public String f115300f;

    /* renamed from: g */
    public String f115301g;

    /* renamed from: h */
    public String f115302h;

    /* renamed from: i */
    public long f115303i;

    /* renamed from: j */
    public long f115304j;

    /* renamed from: k */
    public int f115305k;

    /* renamed from: l */
    public String f115306l;

    /* renamed from: m */
    public Locale f115307m;

    /* renamed from: n */
    public DateFormatSymbols f115308n;

    public DateCache() {
        this(DEFAULT_FORMAT);
        getFormat().setTimeZone(TimeZone.getDefault());
    }

    /* renamed from: a */
    public final void m71653a() {
        if (this.f115296b.indexOf("ss.SSS") >= 0) {
            throw new IllegalStateException("ms not supported");
        }
        int indexOf = this.f115296b.indexOf("ss");
        String substring = this.f115296b.substring(0, indexOf);
        String substring2 = this.f115296b.substring(indexOf + 2);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(substring);
        stringBuffer.append("'ss'");
        stringBuffer.append(substring2);
        this.f115298d = stringBuffer.toString();
    }

    /* renamed from: b */
    public final void m71654b(TimeZone timeZone) {
        int indexOf = this.f115295a.indexOf("ZZZ");
        if (indexOf >= 0) {
            String substring = this.f115295a.substring(0, indexOf);
            String substring2 = this.f115295a.substring(indexOf + 3);
            int rawOffset = timeZone.getRawOffset();
            StringBuffer stringBuffer = new StringBuffer(this.f115295a.length() + 10);
            stringBuffer.append(substring);
            stringBuffer.append(CloudStorageConstants.SINGLE_QUOTES);
            if (rawOffset >= 0) {
                stringBuffer.append(PhoneNumberUtil.f36455s);
            } else {
                rawOffset = -rawOffset;
                stringBuffer.append('-');
            }
            int i = rawOffset / 60000;
            int i2 = i / 60;
            int i3 = i % 60;
            if (i2 < 10) {
                stringBuffer.append('0');
            }
            stringBuffer.append(i2);
            if (i3 < 10) {
                stringBuffer.append('0');
            }
            stringBuffer.append(i3);
            stringBuffer.append(Chars.QUOTE);
            stringBuffer.append(substring2);
            this.f115296b = stringBuffer.toString();
        } else {
            this.f115296b = this.f115295a;
        }
        m71653a();
    }

    public synchronized String format(Date date) {
        return format(date.getTime());
    }

    public SimpleDateFormat getFormat() {
        return this.f115299e;
    }

    public String getFormatString() {
        return this.f115295a;
    }

    public TimeZone getTimeZone() {
        return this.f115297c.getTimeZone();
    }

    public int lastMs() {
        return this.f115305k;
    }

    public String now() {
        long currentTimeMillis = System.currentTimeMillis();
        this.f115305k = (int) (currentTimeMillis % 1000);
        return format(currentTimeMillis);
    }

    public void setTimeZone(TimeZone timeZone) {
        m71654b(timeZone);
        if (this.f115307m != null) {
            this.f115297c = new SimpleDateFormat(this.f115296b, this.f115307m);
            this.f115299e = new SimpleDateFormat(this.f115298d, this.f115307m);
        } else if (this.f115308n != null) {
            this.f115297c = new SimpleDateFormat(this.f115296b, this.f115308n);
            this.f115299e = new SimpleDateFormat(this.f115298d, this.f115308n);
        } else {
            this.f115297c = new SimpleDateFormat(this.f115296b);
            this.f115299e = new SimpleDateFormat(this.f115298d);
        }
        this.f115297c.setTimeZone(timeZone);
        this.f115299e.setTimeZone(timeZone);
        this.f115304j = -1L;
        this.f115303i = -1L;
    }

    public void setTimeZoneID(String str) {
        setTimeZone(TimeZone.getTimeZone(str));
    }

    public synchronized String format(long j) {
        String stringBuffer;
        long j2 = j / 1000;
        long j3 = this.f115304j;
        if (j2 >= j3 && (j3 <= 0 || j2 <= f115294o + j3)) {
            if (j3 == j2) {
                return this.f115306l;
            }
            Date date = new Date(j);
            long j4 = j2 / 60;
            if (this.f115303i != j4) {
                this.f115303i = j4;
                String format = this.f115299e.format(date);
                this.f115300f = format;
                int indexOf = format.indexOf("ss");
                this.f115301g = this.f115300f.substring(0, indexOf);
                this.f115302h = this.f115300f.substring(indexOf + 2);
            }
            this.f115304j = j2;
            StringBuffer stringBuffer2 = new StringBuffer(this.f115300f.length());
            synchronized (stringBuffer2) {
                stringBuffer2.append(this.f115301g);
                int i = (int) (j2 % 60);
                if (i < 10) {
                    stringBuffer2.append('0');
                }
                stringBuffer2.append(i);
                stringBuffer2.append(this.f115302h);
                stringBuffer = stringBuffer2.toString();
                this.f115306l = stringBuffer;
            }
            return stringBuffer;
        }
        return this.f115297c.format(new Date(j));
    }

    public DateCache(String str) {
        this.f115303i = -1L;
        this.f115304j = -1L;
        this.f115305k = -1;
        this.f115306l = null;
        this.f115307m = null;
        this.f115308n = null;
        this.f115295a = str;
        setTimeZone(TimeZone.getDefault());
    }

    public DateCache(String str, Locale locale) {
        this.f115303i = -1L;
        this.f115304j = -1L;
        this.f115305k = -1;
        this.f115306l = null;
        this.f115308n = null;
        this.f115295a = str;
        this.f115307m = locale;
        setTimeZone(TimeZone.getDefault());
    }

    public DateCache(String str, DateFormatSymbols dateFormatSymbols) {
        this.f115303i = -1L;
        this.f115304j = -1L;
        this.f115305k = -1;
        this.f115306l = null;
        this.f115307m = null;
        this.f115295a = str;
        this.f115308n = dateFormatSymbols;
        setTimeZone(TimeZone.getDefault());
    }

    public void format(long j, StringBuffer stringBuffer) {
        stringBuffer.append(format(j));
    }
}
