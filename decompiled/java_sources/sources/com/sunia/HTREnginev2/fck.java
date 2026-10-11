package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.codec.DateTimeCodec;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.writer.ObjectWriter;
import java.lang.reflect.Type;
import java.nio.charset.StandardCharsets;
import java.time.DateTimeException;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class fck extends DateTimeCodec implements ObjectWriter {

    /* renamed from: b */
    public static final fck f69875b = new fck(null, null);

    /* renamed from: c */
    public static final char[] f69876c = "new Date(".toCharArray();

    /* renamed from: d */
    public static final byte[] f69877d = "new Date(".getBytes(StandardCharsets.UTF_8);

    /* renamed from: e */
    public static final char[] f69878e = "{\"@type\":\"java.sql.Date\",\"val\":".toCharArray();

    /* renamed from: f */
    public static final byte[] f69879f = "{\"@type\":\"java.sql.Date\",\"val\":".getBytes(StandardCharsets.UTF_8);

    public fck(String str, Locale locale) {
        super(str, locale);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        String str;
        JSONWriter jSONWriter2;
        ZoneId zoneId;
        JSONWriter.Context context;
        long j2;
        byte[] bArr;
        char[] cArr;
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        JSONWriter.Context context2 = jSONWriter.context;
        Date date = (Date) obj;
        long time = date.getTime();
        if (jSONWriter.isWriteTypeInfo(obj, type)) {
            char c = '}';
            if (jSONWriter.utf16) {
                if ("java.sql.Date".equals(date.getClass().getName())) {
                    cArr = f69878e;
                } else {
                    cArr = f69876c;
                    c = ')';
                }
                jSONWriter.writeRaw(cArr, 0, cArr.length);
            } else {
                if ("java.sql.Date".equals(date.getClass().getName())) {
                    bArr = f69879f;
                } else {
                    bArr = f69877d;
                    c = ')';
                }
                jSONWriter.writeRaw(bArr);
            }
            jSONWriter.writeInt64(time);
            jSONWriter.writeRaw(c);
            return;
        }
        if (this.formatMillis || (this.format == null && context2.isDateFormatMillis())) {
            jSONWriter.writeInt64(time);
            return;
        }
        if (this.formatUnixTime || (this.format == null && context2.isDateFormatUnixTime())) {
            jSONWriter.writeInt64(time / 1000);
            return;
        }
        ZoneId zoneId2 = context2.getZoneId();
        ZoneId zoneId3 = DateUtils.SHANGHAI_ZONE_ID;
        int shanghaiZoneOffsetTotalSeconds = (zoneId2 == zoneId3 || zoneId2.getRules() == DateUtils.SHANGHAI_ZONE_RULES) ? DateUtils.getShanghaiZoneOffsetTotalSeconds(Math.floorDiv(time, 1000L)) : (zoneId2 == ZoneOffset.UTC || "UTC".equals(zoneId2.getId())) ? 0 : ZonedDateTime.ofInstant(Instant.ofEpochMilli(time), zoneId2).getOffset().getTotalSeconds();
        boolean z = this.formatISO8601 || context2.isDateFormatISO8601();
        if (z) {
            str = null;
        } else {
            str = this.format;
            if (str == null) {
                str = context2.getDateFormat();
            }
        }
        if (str == null) {
            long shanghaiZoneOffsetTotalSeconds2 = ((zoneId2 == zoneId3 || zoneId2.getRules() == DateUtils.SHANGHAI_ZONE_RULES) ? DateUtils.getShanghaiZoneOffsetTotalSeconds(r15) : zoneId2.getRules().getOffset(Instant.ofEpochMilli(time)).getTotalSeconds()) + Math.floorDiv(time, 1000L);
            long floorDiv = Math.floorDiv(shanghaiZoneOffsetTotalSeconds2, 86400L);
            int floorMod = (int) Math.floorMod(shanghaiZoneOffsetTotalSeconds2, 86400L);
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
            zoneId = zoneId2;
            int i4 = (i - (((i2 * 306) + 5) / 10)) + 1;
            context = context2;
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
            if (i5 >= 0 && i5 <= 9999) {
                int floorMod2 = (int) Math.floorMod(time, 1000L);
                if (floorMod2 != 0 || z) {
                    jSONWriter.writeDateTimeISO8601(i5, i3, i4, i6, i7, i8, floorMod2, shanghaiZoneOffsetTotalSeconds, z);
                    return;
                }
                if (i6 == 0 && i7 == 0 && i8 == 0 && "java.sql.Date".equals(date.getClass().getName())) {
                    jSONWriter.writeDateYYYMMDD10(i5, i3, i4);
                    return;
                } else {
                    jSONWriter.writeDateTime19(i5, i3, i4, i6, i7, i8);
                    return;
                }
            }
            jSONWriter2 = jSONWriter;
        } else {
            jSONWriter2 = jSONWriter;
            zoneId = zoneId2;
            context = context2;
        }
        jSONWriter2.writeString((this.format != null ? getDateFormatter() : context.getDateFormatter()).format(ZonedDateTime.ofInstant(Instant.ofEpochMilli(time), zoneId)));
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
        } else {
            jSONWriter.writeMillis(((Date) obj).getTime());
        }
    }
}
