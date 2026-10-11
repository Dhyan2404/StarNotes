package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.codec.DateTimeCodec;
import com.alibaba.fastjson2.reader.ObjectReader;
import java.lang.reflect.Type;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

/* loaded from: classes3.dex */
public class g9k extends DateTimeCodec implements ObjectReader {

    /* renamed from: b */
    public static final g9k f70823b = new g9k(null, null);

    public g9k(String str, Locale locale) {
        super(str, locale);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class getObjectClass() {
        return LocalDateTime.class;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return jSONReader.readLocalDateTime();
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        JSONReader.Context context = jSONReader.getContext();
        if (jSONReader.isInt()) {
            DateTimeFormatter dateFormatter = getDateFormatter();
            if (dateFormatter != null) {
                return LocalDateTime.parse(jSONReader.readString(), dateFormatter);
            }
            long readInt64Value = jSONReader.readInt64Value();
            if (this.formatUnixTime) {
                readInt64Value *= 1000;
            }
            return LocalDateTime.ofInstant(Instant.ofEpochMilli(readInt64Value), context.getZoneId());
        }
        if (jSONReader.readIfNull()) {
            return null;
        }
        if (this.format == null || this.yyyyMMddhhmmss19 || this.formatISO8601) {
            return jSONReader.readLocalDateTime();
        }
        String readString = jSONReader.readString();
        if (readString.isEmpty()) {
            return null;
        }
        if (!this.formatMillis && !this.formatUnixTime) {
            DateTimeFormatter dateFormatter2 = getDateFormatter(context.getLocale());
            return !this.formatHasHour ? LocalDateTime.of(LocalDate.parse(readString, dateFormatter2), LocalTime.MIN) : !this.formatHasDay ? LocalDateTime.of(LocalDate.of(1970, 1, 1), LocalTime.parse(readString, dateFormatter2)) : LocalDateTime.parse(readString, dateFormatter2);
        }
        long parseLong = Long.parseLong(readString);
        if (this.formatUnixTime) {
            parseLong *= 1000;
        }
        return LocalDateTime.ofInstant(Instant.ofEpochMilli(parseLong), context.getZoneId());
    }
}
