package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.writer.FieldWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.time.DateTimeException;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

/* loaded from: classes3.dex */
public abstract class beg<T> extends FieldWriter<T> {

    /* renamed from: r */
    public DateTimeFormatter f65677r;

    /* renamed from: s */
    public final boolean f65678s;

    /* renamed from: t */
    public final boolean f65679t;

    /* renamed from: u */
    public final boolean f65680u;

    /* renamed from: v */
    public final boolean f65681v;

    /* renamed from: w */
    public final boolean f65682w;

    /* renamed from: x */
    public final boolean f65683x;

    /* renamed from: y */
    public ObjectWriter f65684y;

    public beg(String str, int i, long j, String str2, String str3, Type type, Class cls, Field field, Method method) {
        super(str, i, j, str2, str3, type, cls, field, method);
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6 = false;
        if (str2 != null) {
            z2 = true;
            char c = 65535;
            switch (str2.hashCode()) {
                case -1074095546:
                    if (str2.equals("millis")) {
                        c = 0;
                        break;
                    }
                    break;
                case -288020395:
                    if (str2.equals("unixtime")) {
                        c = 1;
                        break;
                    }
                    break;
                case -276306848:
                    if (str2.equals("yyyyMMdd")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1333195168:
                    if (str2.equals(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS)) {
                        c = 3;
                        break;
                    }
                    break;
                case 1349114208:
                    if (str2.equals("yyyyMMddHHmmss")) {
                        c = 4;
                        break;
                    }
                    break;
                case 2095190916:
                    if (str2.equals("iso8601")) {
                        c = 5;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    z = false;
                    z3 = false;
                    z5 = false;
                    z4 = false;
                    z6 = true;
                    z2 = z4;
                    break;
                case 1:
                    z3 = false;
                    z5 = false;
                    z4 = false;
                    z = true;
                    z2 = z4;
                    break;
                case 2:
                    z = false;
                    z5 = false;
                    z4 = false;
                    z3 = true;
                    z2 = z4;
                    break;
                case 3:
                    z = false;
                    z3 = false;
                    z5 = false;
                    z4 = true;
                    z2 = false;
                    break;
                case 4:
                    z = false;
                    z3 = false;
                    z4 = false;
                    z5 = true;
                    z2 = z4;
                    break;
                case 5:
                    z = false;
                    z3 = false;
                    z5 = z3;
                    z4 = z5;
                    break;
            }
            this.f65678s = z6;
            this.f65679t = z2;
            this.f65683x = z;
            this.f65680u = z3;
            this.f65681v = z5;
            this.f65682w = z4;
        }
        z = false;
        z2 = false;
        z3 = false;
        z5 = z3;
        z4 = z5;
        this.f65678s = z6;
        this.f65679t = z2;
        this.f65683x = z;
        this.f65680u = z3;
        this.f65681v = z5;
        this.f65682w = z4;
    }

    /* renamed from: c */
    public DateTimeFormatter m53245c() {
        String str;
        if (this.f65677r == null && (str = this.format) != null && !this.f65678s && !this.f65679t && !this.f65683x) {
            this.f65677r = DateTimeFormatter.ofPattern(str);
        }
        return this.f65677r;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public ObjectWriter getObjectWriter(JSONWriter jSONWriter, Class cls) {
        if (cls != this.fieldClass) {
            return jSONWriter.getObjectWriter(cls);
        }
        ObjectWriterProvider objectWriterProvider = jSONWriter.context.provider;
        if (this.f65684y == null) {
            if ((objectWriterProvider.f12886f & 16) == 0) {
                if (this.format == null) {
                    fck fckVar = fck.f69875b;
                    this.f65684y = fckVar;
                    return fckVar;
                }
                fck fckVar2 = new fck(this.format, null);
                this.f65684y = fckVar2;
                return fckVar2;
            }
            this.f65684y = objectWriterProvider.getObjectWriter(cls, cls, false);
        }
        return this.f65684y;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean isDateFormatISO8601() {
        return this.f65679t;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean isDateFormatMillis() {
        return this.f65678s;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeDate(JSONWriter jSONWriter, long j) {
        long j2;
        int year;
        int year2;
        if (jSONWriter.jsonb) {
            writeFieldName(jSONWriter);
            jSONWriter.writeMillis(j);
            return;
        }
        JSONWriter.Context context = jSONWriter.context;
        if (this.f65683x || (this.format == null && context.isDateFormatUnixTime())) {
            writeFieldName(jSONWriter);
            jSONWriter.writeInt64(j / 1000);
            return;
        }
        if (this.f65678s || (this.format == null && context.isDateFormatMillis())) {
            writeFieldName(jSONWriter);
            jSONWriter.writeInt64(j);
            return;
        }
        ZoneId zoneId = context.getZoneId();
        String str = this.format;
        if (str == null) {
            str = context.getDateFormat();
        }
        boolean z = this.f65682w || (context.isFormatyyyyMMddhhmmss19() && this.format == null);
        if (str == null || this.f65681v || z) {
            long floorDiv = Math.floorDiv(j, 1000L) + ((zoneId == DateUtils.SHANGHAI_ZONE_ID || zoneId.getRules() == DateUtils.SHANGHAI_ZONE_RULES) ? DateUtils.getShanghaiZoneOffsetTotalSeconds(r12) : zoneId.getRules().getOffset(Instant.ofEpochMilli(j)).getTotalSeconds());
            long floorDiv2 = Math.floorDiv(floorDiv, 86400L);
            int floorMod = (int) Math.floorMod(floorDiv, 86400L);
            long j3 = (floorDiv2 + 719528) - 60;
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
            int i4 = 1 + (i - (((i2 * 306) + 5) / 10));
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
                if (this.f65681v) {
                    writeFieldName(jSONWriter);
                    jSONWriter.writeDateTime14(i5, i3, i4, i6, i7, i8);
                    return;
                }
                if (z) {
                    writeFieldName(jSONWriter);
                    jSONWriter.writeDateTime19(i5, i3, i4, i6, i7, i8);
                    return;
                }
                int floorMod2 = (int) Math.floorMod(j, 1000L);
                if (floorMod2 == 0) {
                    writeFieldName(jSONWriter);
                    jSONWriter.writeDateTime19(i5, i3, i4, i6, i7, i8);
                    return;
                } else {
                    int totalSeconds = context.getZoneId().getRules().getOffset(Instant.ofEpochMilli(j)).getTotalSeconds();
                    writeFieldName(jSONWriter);
                    jSONWriter.writeDateTimeISO8601(i5, i3, i4, i6, i7, i8, floorMod2, totalSeconds, false);
                    return;
                }
            }
        }
        writeFieldName(jSONWriter);
        ZonedDateTime ofInstant = ZonedDateTime.ofInstant(Instant.ofEpochMilli(j), zoneId);
        if ((this.f65679t || (context.isDateFormatISO8601() && this.format == null)) && (year = ofInstant.getYear()) >= 0 && year <= 9999) {
            jSONWriter.writeDateTimeISO8601(year, ofInstant.getMonthValue(), ofInstant.getDayOfMonth(), ofInstant.getHour(), ofInstant.getMinute(), ofInstant.getSecond(), ofInstant.getNano() / 1000000, ofInstant.getOffset().getTotalSeconds(), true);
            return;
        }
        if (this.f65680u && (year2 = ofInstant.getYear()) >= 0 && year2 <= 9999) {
            jSONWriter.writeDateYYYMMDD8(year2, ofInstant.getMonthValue(), ofInstant.getDayOfMonth());
            return;
        }
        DateTimeFormatter m53245c = m53245c();
        if (m53245c == null) {
            m53245c = context.getDateFormatter();
        }
        if (m53245c != null) {
            jSONWriter.writeString(m53245c.format(ofInstant));
        } else {
            jSONWriter.writeZonedDateTime(ofInstant);
        }
    }
}
