package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.codec.DateTimeCodec;
import com.alibaba.fastjson2.writer.ObjectWriter;
import java.lang.reflect.Type;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class pdk extends DateTimeCodec implements ObjectWriter {

    /* renamed from: c */
    public static final pdk f80694c = new pdk(null, null);

    /* renamed from: b */
    public final Function f80695b;

    public pdk(String str, Locale locale) {
        this(str, locale, null);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        Function function = this.f80695b;
        ZonedDateTime zonedDateTime = function != null ? (ZonedDateTime) function.apply(obj) : (ZonedDateTime) obj;
        JSONWriter.Context context = jSONWriter.context;
        if (this.formatUnixTime || (this.format == null && context.isDateFormatUnixTime())) {
            jSONWriter.writeInt64(zonedDateTime.toInstant().toEpochMilli() / 1000);
            return;
        }
        if (this.formatMillis || (this.format == null && context.isDateFormatMillis())) {
            jSONWriter.writeInt64(zonedDateTime.toInstant().toEpochMilli());
            return;
        }
        int year = zonedDateTime.getYear();
        if (year >= 0 && year <= 9999) {
            if (this.formatISO8601 || context.isDateFormatISO8601()) {
                jSONWriter.writeDateTimeISO8601(year, zonedDateTime.getMonthValue(), zonedDateTime.getDayOfMonth(), zonedDateTime.getHour(), zonedDateTime.getMinute(), zonedDateTime.getSecond(), zonedDateTime.getNano() / 1000000, zonedDateTime.getOffset().getTotalSeconds(), true);
                return;
            } else if (this.yyyyMMddhhmmss19) {
                jSONWriter.writeDateTime19(year, zonedDateTime.getMonthValue(), zonedDateTime.getDayOfMonth(), zonedDateTime.getHour(), zonedDateTime.getMinute(), zonedDateTime.getSecond());
                return;
            } else if (this.yyyyMMddhhmmss14) {
                jSONWriter.writeDateTime14(year, zonedDateTime.getMonthValue(), zonedDateTime.getDayOfMonth(), zonedDateTime.getHour(), zonedDateTime.getMinute(), zonedDateTime.getSecond());
                return;
            }
        }
        DateTimeFormatter dateFormatter = getDateFormatter();
        if (dateFormatter == null) {
            dateFormatter = context.getDateFormatter();
        }
        if (dateFormatter == null) {
            jSONWriter.writeZonedDateTime(zonedDateTime);
        } else {
            jSONWriter.writeString(dateFormatter.format(zonedDateTime));
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        jSONWriter.writeZonedDateTime((ZonedDateTime) obj);
    }

    public pdk(String str, Locale locale, Function function) {
        super(str, locale);
        this.f80695b = function;
    }
}
