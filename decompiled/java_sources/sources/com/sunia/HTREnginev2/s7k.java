package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.codec.DateTimeCodec;
import com.alibaba.fastjson2.reader.ObjectReader;
import java.lang.reflect.Type;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class s7k extends DateTimeCodec implements ObjectReader {

    /* renamed from: b */
    public static final s7k f83881b = new s7k(null, null);

    public s7k(String str, Locale locale) {
        super(str, locale);
    }

    /* renamed from: a */
    public static s7k m57135a(String str, Locale locale) {
        return str == null ? f83881b : new s7k(str, locale);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class getObjectClass() {
        return Calendar.class;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.isInt()) {
            long readInt64Value = jSONReader.readInt64Value();
            if (this.formatUnixTime) {
                readInt64Value *= 1000;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(readInt64Value);
            return calendar;
        }
        if (jSONReader.readIfNull()) {
            return null;
        }
        long readMillisFromString = jSONReader.readMillisFromString();
        if (this.formatUnixTime) {
            readMillisFromString *= 1000;
        }
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(readMillisFromString);
        return calendar2;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        DateTimeFormatter dateFormatter;
        if (!jSONReader.isString()) {
            if (jSONReader.readIfNull()) {
                return null;
            }
            long readInt64Value = jSONReader.readInt64Value();
            if (this.formatUnixTime || jSONReader.getContext().isFormatUnixTime()) {
                readInt64Value *= 1000;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(readInt64Value);
            return calendar;
        }
        if (this.format != null && (dateFormatter = getDateFormatter()) != null) {
            String readString = jSONReader.readString();
            if (readString.isEmpty()) {
                return null;
            }
            long epochMilli = ZonedDateTime.of(LocalDateTime.parse(readString, dateFormatter), jSONReader.getContext().getZoneId()).toInstant().toEpochMilli();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(epochMilli);
            return calendar2;
        }
        long readMillisFromString = jSONReader.readMillisFromString();
        if (readMillisFromString == 0 && jSONReader.wasNull()) {
            return null;
        }
        if (this.formatUnixTime) {
            readMillisFromString *= 1000;
        }
        Calendar calendar3 = Calendar.getInstance();
        calendar3.setTimeInMillis(readMillisFromString);
        return calendar3;
    }
}
