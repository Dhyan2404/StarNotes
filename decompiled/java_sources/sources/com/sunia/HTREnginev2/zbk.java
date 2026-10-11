package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.codec.DateTimeCodec;
import com.alibaba.fastjson2.writer.ObjectWriter;
import java.lang.reflect.Type;
import java.time.Instant;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class zbk extends DateTimeCodec implements ObjectWriter {

    /* renamed from: b */
    public static final zbk f91590b = new zbk(null, null);

    public zbk(String str, Locale locale) {
        super(str, locale);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        JSONWriter.Context context = jSONWriter.context;
        long timeInMillis = ((Calendar) obj).getTimeInMillis();
        if (this.formatUnixTime || (this.format == null && context.isDateFormatUnixTime())) {
            jSONWriter.writeInt64(timeInMillis / 1000);
            return;
        }
        if (this.format == null && context.isDateFormatMillis()) {
            jSONWriter.writeInt64(timeInMillis);
            return;
        }
        ZonedDateTime ofInstant = ZonedDateTime.ofInstant(Instant.ofEpochMilli(timeInMillis), context.getZoneId());
        int totalSeconds = ofInstant.getOffset().getTotalSeconds();
        int year = ofInstant.getYear();
        if (year >= 0 && year <= 9999) {
            if (this.format == null && context.isDateFormatISO8601()) {
                jSONWriter.writeDateTimeISO8601(year, ofInstant.getMonthValue(), ofInstant.getDayOfMonth(), ofInstant.getHour(), ofInstant.getMinute(), ofInstant.getSecond(), ofInstant.getNano() / 1000000, totalSeconds, true);
                return;
            }
            String str = this.format;
            if (str == null) {
                str = context.getDateFormat();
            }
            if (str == null) {
                int monthValue = ofInstant.getMonthValue();
                int dayOfMonth = ofInstant.getDayOfMonth();
                int hour = ofInstant.getHour();
                int minute = ofInstant.getMinute();
                int second = ofInstant.getSecond();
                int nano = ofInstant.getNano();
                if (nano == 0) {
                    jSONWriter.writeDateTime19(year, monthValue, dayOfMonth, hour, minute, second);
                    return;
                } else {
                    jSONWriter.writeDateTimeISO8601(year, monthValue, dayOfMonth, hour, minute, second, nano / 1000000, totalSeconds, false);
                    return;
                }
            }
        }
        DateTimeFormatter dateFormatter = this.format != null ? getDateFormatter() : context.getDateFormatter();
        if (dateFormatter == null) {
            jSONWriter.writeZonedDateTime(ofInstant);
        } else {
            jSONWriter.writeString(dateFormatter.format(ofInstant));
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
        } else {
            jSONWriter.writeMillis(((Calendar) obj).getTimeInMillis());
        }
    }
}
