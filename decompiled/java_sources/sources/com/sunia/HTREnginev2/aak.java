package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.codec.DateTimeCodec;
import com.alibaba.fastjson2.reader.ObjectReader;
import java.lang.reflect.Type;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class aak extends DateTimeCodec implements ObjectReader {

    /* renamed from: c */
    public static final aak f64502c = new aak(null, null);

    /* renamed from: b */
    public Function f64503b;

    public aak(Function function) {
        super(null, null);
        this.f64503b = function;
    }

    /* renamed from: a */
    public static aak m52986a(String str, Locale locale) {
        return str == null ? f64502c : new aak(str, locale);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class getObjectClass() {
        return ZonedDateTime.class;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return jSONReader.readZonedDateTime();
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        ZonedDateTime readZonedDateTime;
        JSONReader.Context context = jSONReader.getContext();
        if (jSONReader.isInt()) {
            long readInt64Value = jSONReader.readInt64Value();
            if (this.formatUnixTime) {
                readInt64Value *= 1000;
            }
            readZonedDateTime = ZonedDateTime.ofInstant(Instant.ofEpochMilli(readInt64Value), context.getZoneId());
        } else if (jSONReader.readIfNull()) {
            readZonedDateTime = null;
        } else if (this.format == null || this.yyyyMMddhhmmss19 || this.formatISO8601) {
            readZonedDateTime = jSONReader.readZonedDateTime();
        } else {
            String readString = jSONReader.readString();
            if (this.formatMillis || this.formatUnixTime) {
                long parseLong = Long.parseLong(readString);
                if (this.formatUnixTime) {
                    parseLong *= 1000;
                }
                readZonedDateTime = ZonedDateTime.ofInstant(Instant.ofEpochMilli(parseLong), context.getZoneId());
            } else {
                DateTimeFormatter dateFormatter = getDateFormatter(jSONReader.getLocale());
                readZonedDateTime = !this.formatHasHour ? ZonedDateTime.of(LocalDate.parse(readString, dateFormatter), LocalTime.MIN, context.getZoneId()) : !this.formatHasDay ? ZonedDateTime.of(LocalDate.of(1970, 1, 1), LocalTime.parse(readString, dateFormatter), context.getZoneId()) : ZonedDateTime.of(LocalDateTime.parse(readString, dateFormatter), context.getZoneId());
            }
        }
        Function function = this.f64503b;
        return (function == null || readZonedDateTime == null) ? readZonedDateTime : function.apply(readZonedDateTime);
    }

    public aak(String str, Locale locale) {
        super(str, locale);
    }
}
