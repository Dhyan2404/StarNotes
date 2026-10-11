package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.codec.DateTimeCodec;
import com.alibaba.fastjson2.reader.ObjectReader;
import java.lang.reflect.Type;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

/* loaded from: classes3.dex */
public class f9k extends DateTimeCodec implements ObjectReader {

    /* renamed from: b */
    public static final f9k f69785b = new f9k(null, null);

    public f9k(String str, Locale locale) {
        super(str, locale);
    }

    /* renamed from: a */
    public static f9k m54075a(String str, Locale locale) {
        return str == null ? f69785b : new f9k(str, locale);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class getObjectClass() {
        return LocalDate.class;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return jSONReader.readLocalDate();
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        JSONReader.Context context = jSONReader.getContext();
        if (jSONReader.readIfNull()) {
            return null;
        }
        if (this.format == null || this.yyyyMMddhhmmss19 || this.formatISO8601 || jSONReader.isNumber()) {
            return jSONReader.readLocalDate();
        }
        String readString = jSONReader.readString();
        if (readString.isEmpty() || "null".equals(readString)) {
            return null;
        }
        if (!this.formatMillis && !this.formatUnixTime) {
            DateTimeFormatter dateFormatter = getDateFormatter(context.getLocale());
            return !this.formatHasHour ? LocalDate.parse(readString, dateFormatter) : !this.formatHasDay ? LocalDate.of(1970, 1, 1) : LocalDateTime.parse(readString, dateFormatter).toLocalDate();
        }
        long parseLong = Long.parseLong(readString);
        if (this.formatUnixTime) {
            parseLong *= 1000;
        }
        return LocalDateTime.ofInstant(Instant.ofEpochMilli(parseLong), context.getZoneId()).toLocalDate();
    }
}
