package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.codec.DateTimeCodec;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.writer.ObjectWriter;
import java.lang.reflect.Type;
import java.time.DateTimeException;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class lck extends DateTimeCodec implements ObjectWriter {

    /* renamed from: b */
    public static final lck f76348b = new lck(null, null);

    public lck(String str, Locale locale) {
        super(str, locale);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        long j2;
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        JSONWriter.Context context = jSONWriter.context;
        String str = this.format;
        if (str == null) {
            str = context.getDateFormat();
        }
        Instant instant = (Instant) obj;
        if (str == null) {
            jSONWriter.writeInstant(instant);
            return;
        }
        boolean z = this.yyyyMMddhhmmss19 || (context.isFormatyyyyMMddhhmmss19() && this.format == null);
        if (!this.yyyyMMddhhmmss14 && !z && !this.yyyyMMdd8 && !this.yyyyMMdd10) {
            ZonedDateTime ofInstant = ZonedDateTime.ofInstant(instant, context.getZoneId());
            if (this.formatUnixTime || (this.format == null && context.isDateFormatUnixTime())) {
                jSONWriter.writeInt64(ofInstant.toInstant().toEpochMilli() / 1000);
                return;
            }
            if (this.formatMillis || (this.format == null && context.isDateFormatMillis())) {
                jSONWriter.writeInt64(ofInstant.toInstant().toEpochMilli());
                return;
            }
            int year = ofInstant.getYear();
            if (year >= 0 && year <= 9999 && (this.formatISO8601 || (this.format == null && context.isDateFormatISO8601()))) {
                jSONWriter.writeDateTimeISO8601(year, ofInstant.getMonthValue(), ofInstant.getDayOfMonth(), ofInstant.getHour(), ofInstant.getMinute(), ofInstant.getSecond(), ofInstant.getNano() / 1000000, ofInstant.getOffset().getTotalSeconds(), true);
                return;
            }
            DateTimeFormatter dateFormatter = getDateFormatter();
            if (dateFormatter == null) {
                dateFormatter = context.getDateFormatter();
            }
            if (dateFormatter == null) {
                jSONWriter.writeZonedDateTime(ofInstant);
                return;
            } else {
                jSONWriter.writeString(dateFormatter.format(ofInstant));
                return;
            }
        }
        ZoneId zoneId = context.getZoneId();
        long epochSecond = instant.getEpochSecond() + ((zoneId == DateUtils.SHANGHAI_ZONE_ID || zoneId.getRules() == DateUtils.SHANGHAI_ZONE_RULES) ? DateUtils.getShanghaiZoneOffsetTotalSeconds(r6) : zoneId.getRules().getOffset(instant).getTotalSeconds());
        long floorDiv = Math.floorDiv(epochSecond, 86400L);
        int floorMod = (int) Math.floorMod(epochSecond, 86400L);
        long j3 = (floorDiv + 719528) - 60;
        if (j3 < 0) {
            long j4 = ((j3 + 1) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((((j5 * 365) + (j5 / 4)) - (j5 / 100)) + (j5 / 400));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((((365 * j5) + (j5 / 4)) - (j5 / 100)) + (j5 / 400));
        }
        int i = (int) j6;
        int i2 = ((i * 5) + 2) / 153;
        int i3 = ((i2 + 2) % 12) + 1;
        int i4 = (i - (((i2 * 306) + 5) / 10)) + 1;
        long j7 = j5 + j2 + (i2 / 10);
        if (j7 < -999999999 || j7 > 999999999) {
            throw new DateTimeException("Invalid year " + j7);
        }
        int i5 = (int) j7;
        long j8 = floorMod;
        if (j8 < 0 || j8 > 86399) {
            throw new DateTimeException("Invalid secondOfDay " + j8);
        }
        int i6 = (int) (j8 / 3600);
        long j9 = j8 - (i6 * 3600);
        int i7 = (int) (j9 / 60);
        int i8 = (int) (j9 - (i7 * 60));
        if (z) {
            jSONWriter.writeDateTime19(i5, i3, i4, i6, i7, i8);
            return;
        }
        if (this.yyyyMMddhhmmss14) {
            jSONWriter.writeDateTime14(i5, i3, i4, i6, i7, i8);
        } else if (this.yyyyMMdd10) {
            jSONWriter.writeDateYYYMMDD10(i5, i3, i4);
        } else {
            jSONWriter.writeDateYYYMMDD8(i5, i3, i4);
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        jSONWriter.writeInstant((Instant) obj);
    }
}
