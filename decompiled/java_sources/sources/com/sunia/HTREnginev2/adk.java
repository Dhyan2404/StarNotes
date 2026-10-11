package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.codec.DateTimeCodec;
import com.alibaba.fastjson2.writer.ObjectWriter;
import java.lang.reflect.Type;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class adk extends DateTimeCodec implements ObjectWriter {

    /* renamed from: b */
    public static final adk f64588b = new adk(null, null);

    public adk(String str, Locale locale) {
        super(str, locale);
    }

    /* renamed from: a */
    public static adk m53000a(String str, Locale locale) {
        return str == null ? f64588b : new adk(str, locale);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        JSONWriter.Context context = jSONWriter.context;
        LocalDate localDate = (LocalDate) obj;
        if (this.formatUnixTime || (this.format == null && context.isDateFormatUnixTime())) {
            jSONWriter.writeInt64(LocalDateTime.of(localDate, LocalTime.MIN).atZone(context.getZoneId()).toInstant().toEpochMilli() / 1000);
            return;
        }
        if (this.formatMillis || (this.format == null && context.isDateFormatMillis())) {
            jSONWriter.writeInt64(LocalDateTime.of(localDate, LocalTime.MIN).atZone(context.getZoneId()).toInstant().toEpochMilli());
            return;
        }
        if (this.yyyyMMdd8) {
            jSONWriter.writeDateYYYMMDD8(localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
            return;
        }
        if (this.yyyyMMdd10) {
            jSONWriter.writeDateYYYMMDD10(localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
            return;
        }
        if (this.yyyyMMddhhmmss19) {
            jSONWriter.writeDateTime19(localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth(), 0, 0, 0);
            return;
        }
        DateTimeFormatter dateFormatter = getDateFormatter();
        if (dateFormatter == null) {
            dateFormatter = context.getDateFormatter();
        }
        if (dateFormatter == null) {
            jSONWriter.writeDateYYYMMDD10(localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
        } else {
            jSONWriter.writeString((this.formatHasHour || context.isDateFormatHasHour()) ? dateFormatter.format(LocalDateTime.of(localDate, LocalTime.MIN)) : dateFormatter.format(localDate));
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        jSONWriter.writeLocalDate((LocalDate) obj);
    }
}
