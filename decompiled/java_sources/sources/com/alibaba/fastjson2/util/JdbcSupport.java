package com.alibaba.fastjson2.util;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.codec.DateTimeCodec;
import com.alibaba.fastjson2.reader.ObjectReaderImplDate;
import com.alibaba.fastjson2.writer.ObjectWriter;
import java.lang.reflect.Type;
import java.sql.Clob;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZonedDateTime;
import java.time.chrono.ChronoZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

/* loaded from: classes3.dex */
public class JdbcSupport {

    /* loaded from: classes3.dex */
    public static final class ClobWriter implements ObjectWriter {
        @Override // com.alibaba.fastjson2.writer.ObjectWriter
        public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
            try {
                jSONWriter.writeString(((Clob) obj).getCharacterStream());
            } catch (SQLException e) {
                throw new JSONException("get getCharacterStream error", e);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class DateReader extends ObjectReaderImplDate {
        public DateReader(String str, Locale locale) {
            super(str, locale);
        }

        @Override // com.alibaba.fastjson2.reader.ObjectReaderImplDate, com.alibaba.fastjson2.reader.ObjectReader
        public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
            return readObject(jSONReader, type, obj, j);
        }

        @Override // com.alibaba.fastjson2.reader.ObjectReaderImplDate, com.alibaba.fastjson2.reader.ObjectReader
        public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
            if (jSONReader.isInt()) {
                long readInt64Value = jSONReader.readInt64Value();
                if (this.formatUnixTime) {
                    readInt64Value *= 1000;
                }
                return new Date(readInt64Value);
            }
            if (jSONReader.readIfNull()) {
                return null;
            }
            if (this.formatUnixTime && jSONReader.isString()) {
                return new Date(Long.parseLong(jSONReader.readString()) * 1000);
            }
            if (this.format != null && !this.formatISO8601 && !this.formatMillis) {
                String readString = jSONReader.readString();
                if (readString.isEmpty()) {
                    return null;
                }
                DateTimeFormatter dateFormatter = getDateFormatter();
                return new Date((!this.formatHasHour ? LocalDateTime.of(LocalDate.parse(readString, dateFormatter), LocalTime.MIN).atZone(jSONReader.getContext().getZoneId()).toInstant() : LocalDateTime.parse(readString, dateFormatter).atZone(jSONReader.getContext().getZoneId()).toInstant()).toEpochMilli());
            }
            LocalDateTime readLocalDateTime = jSONReader.readLocalDateTime();
            if (readLocalDateTime != null) {
                return Date.valueOf(readLocalDateTime.toLocalDate());
            }
            if (jSONReader.wasNull()) {
                return null;
            }
            long readMillisFromString = jSONReader.readMillisFromString();
            if (readMillisFromString == 0 && jSONReader.wasNull()) {
                return null;
            }
            return new Date(readMillisFromString);
        }
    }

    /* loaded from: classes3.dex */
    public static final class TimeReader extends ObjectReaderImplDate {
        public TimeReader(String str, Locale locale) {
            super(str, locale);
        }

        @Override // com.alibaba.fastjson2.reader.ObjectReaderImplDate, com.alibaba.fastjson2.reader.ObjectReader
        public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
            return readObject(jSONReader, type, obj, j);
        }

        @Override // com.alibaba.fastjson2.reader.ObjectReaderImplDate, com.alibaba.fastjson2.reader.ObjectReader
        public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
            long j2;
            ChronoZonedDateTime<LocalDate> readZonedDateTime;
            if (jSONReader.isInt()) {
                long readInt64Value = jSONReader.readInt64Value();
                if (this.formatUnixTime) {
                    readInt64Value *= 1000;
                }
                return new Time(readInt64Value);
            }
            if (jSONReader.readIfNull()) {
                return null;
            }
            if (this.formatISO8601 || this.formatMillis) {
                return new Time(jSONReader.readMillisFromString());
            }
            if (this.formatUnixTime) {
                return new Time(jSONReader.readInt64().longValue() * 1000);
            }
            if (this.format != null) {
                DateTimeFormatter dateFormatter = getDateFormatter(jSONReader.getLocale());
                if (dateFormatter != null) {
                    String readString = jSONReader.readString();
                    if (readString.isEmpty()) {
                        return null;
                    }
                    readZonedDateTime = (!this.formatHasHour ? LocalDateTime.of(LocalDate.parse(readString, dateFormatter), LocalTime.MIN) : !this.formatHasDay ? LocalDateTime.of(LocalDate.of(1970, 1, 1), LocalTime.parse(readString, dateFormatter)) : LocalDateTime.parse(readString, dateFormatter)).atZone(jSONReader.getContext().getZoneId());
                } else {
                    readZonedDateTime = jSONReader.readZonedDateTime();
                }
                j2 = readZonedDateTime.toInstant().toEpochMilli();
            } else {
                String readString2 = jSONReader.readString();
                if ("0000-00-00".equals(readString2) || "0000-00-00 00:00:00".equals(readString2)) {
                    j2 = 0;
                } else {
                    if (readString2.length() != 9 || readString2.charAt(8) != 'Z') {
                        if (readString2.isEmpty() || "null".equals(readString2)) {
                            return null;
                        }
                        return Time.valueOf(readString2);
                    }
                    j2 = LocalDateTime.of(DateUtils.LOCAL_DATE_19700101, DateUtils.parseLocalTime(readString2.charAt(0), readString2.charAt(1), readString2.charAt(2), readString2.charAt(3), readString2.charAt(4), readString2.charAt(5), readString2.charAt(6), readString2.charAt(7))).atZone(DateUtils.DEFAULT_ZONE_ID).toInstant().toEpochMilli();
                }
            }
            return new Time(j2);
        }
    }

    /* loaded from: classes3.dex */
    public static final class TimeWriter extends DateTimeCodec implements ObjectWriter {
        public static final TimeWriter INSTANCE = new TimeWriter(null);

        public TimeWriter(String str) {
            super(str);
        }

        /* renamed from: of */
        public static TimeWriter m7593of(String str) {
            return str == null ? INSTANCE : new TimeWriter(str);
        }

        @Override // com.alibaba.fastjson2.writer.ObjectWriter
        public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
            String dateFormat;
            if (obj == null) {
                jSONWriter.writeNull();
                return;
            }
            JSONWriter.Context context = jSONWriter.context;
            if (this.formatUnixTime || context.isDateFormatUnixTime()) {
                jSONWriter.writeInt64(((java.util.Date) obj).getTime() / 1000);
                return;
            }
            if (this.formatMillis || context.isDateFormatMillis()) {
                jSONWriter.writeInt64(((java.util.Date) obj).getTime());
                return;
            }
            if (this.formatISO8601 || context.isDateFormatISO8601()) {
                ZonedDateTime ofInstant = ZonedDateTime.ofInstant(Instant.ofEpochMilli(((java.util.Date) obj).getTime()), context.getZoneId());
                jSONWriter.writeDateTimeISO8601(ofInstant.getYear(), ofInstant.getMonthValue(), ofInstant.getDayOfMonth(), ofInstant.getHour(), ofInstant.getMinute(), ofInstant.getSecond(), 0, ofInstant.getOffset().getTotalSeconds(), true);
                return;
            }
            String str = this.format;
            DateTimeFormatter dateFormatter = (str == null || str.contains("dd")) ? null : getDateFormatter();
            if (dateFormatter == null && (dateFormat = context.getDateFormat()) != null && !dateFormat.contains("dd")) {
                dateFormatter = context.getDateFormatter();
            }
            if (dateFormatter == null) {
                jSONWriter.writeString(obj.toString());
            } else {
                jSONWriter.writeString(dateFormatter.format(ZonedDateTime.ofInstant(Instant.ofEpochMilli(((java.util.Date) obj).getTime()), context.getZoneId())));
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class TimestampReader extends ObjectReaderImplDate {
        public TimestampReader(String str, Locale locale) {
            super(str, locale);
        }

        /* renamed from: b */
        public Object m7594b(long j, int i) {
            Timestamp timestamp = new Timestamp(j);
            if (i != 0) {
                timestamp.setNanos(i);
            }
            return timestamp;
        }

        @Override // com.alibaba.fastjson2.reader.ObjectReaderImplDate, com.alibaba.fastjson2.reader.ObjectReader
        public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
            if (!jSONReader.isInt()) {
                if (jSONReader.readIfNull()) {
                    return null;
                }
                return readObject(jSONReader, type, obj, j);
            }
            long readInt64Value = jSONReader.readInt64Value();
            if (this.formatUnixTime) {
                readInt64Value *= 1000;
            }
            return m7594b(readInt64Value, 0);
        }

        @Override // com.alibaba.fastjson2.reader.ObjectReaderImplDate, com.alibaba.fastjson2.reader.ObjectReader
        public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
            if (jSONReader.isInt()) {
                long readInt64Value = jSONReader.readInt64Value();
                if (this.formatUnixTime) {
                    readInt64Value *= 1000;
                }
                return m7594b(readInt64Value, 0);
            }
            if (jSONReader.nextIfNullOrEmptyString()) {
                return null;
            }
            if (this.format != null && !this.formatISO8601 && !this.formatMillis) {
                String readString = jSONReader.readString();
                if (readString.isEmpty()) {
                    return null;
                }
                DateTimeFormatter dateFormatter = getDateFormatter();
                Instant instant = !this.formatHasHour ? LocalDateTime.of(LocalDate.parse(readString, dateFormatter), LocalTime.MIN).atZone(jSONReader.getContext().getZoneId()).toInstant() : LocalDateTime.parse(readString, dateFormatter).atZone(jSONReader.getContext().getZoneId()).toInstant();
                return m7594b(instant.toEpochMilli(), instant.getNano());
            }
            LocalDateTime readLocalDateTime = jSONReader.readLocalDateTime();
            if (readLocalDateTime != null) {
                return Timestamp.valueOf(readLocalDateTime);
            }
            if (jSONReader.wasNull()) {
                return null;
            }
            long readMillisFromString = jSONReader.readMillisFromString();
            if (readMillisFromString == 0 && jSONReader.wasNull()) {
                return null;
            }
            return new Timestamp(readMillisFromString);
        }
    }

    /* loaded from: classes3.dex */
    public static final class TimestampWriter extends DateTimeCodec implements ObjectWriter {
        public TimestampWriter(String str) {
            super(str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v7, types: [java.time.LocalDateTime] */
        @Override // com.alibaba.fastjson2.writer.ObjectWriter
        public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
            if (obj == null) {
                jSONWriter.writeNull();
                return;
            }
            JSONWriter.Context context = jSONWriter.context;
            Timestamp timestamp = (Timestamp) obj;
            if (this.formatUnixTime || context.isDateFormatUnixTime()) {
                jSONWriter.writeInt64(timestamp.getTime() / 1000);
                return;
            }
            ZonedDateTime ofInstant = ZonedDateTime.ofInstant(timestamp.toInstant(), context.getZoneId());
            int totalSeconds = ofInstant.getOffset().getTotalSeconds();
            if ((this.formatISO8601 || context.isDateFormatISO8601()) && ofInstant.getNano() % 1000000 == 0) {
                jSONWriter.writeDateTimeISO8601(ofInstant.getYear(), ofInstant.getMonthValue(), ofInstant.getDayOfMonth(), ofInstant.getHour(), ofInstant.getMinute(), ofInstant.getSecond(), ofInstant.getNano() / 1000000, totalSeconds, true);
                return;
            }
            DateTimeFormatter dateFormatter = getDateFormatter();
            if (dateFormatter == null) {
                dateFormatter = context.getDateFormatter();
            }
            if (dateFormatter != null) {
                jSONWriter.writeString(dateFormatter.format(ofInstant));
                return;
            }
            if (this.formatMillis || context.isDateFormatMillis()) {
                jSONWriter.writeInt64(timestamp.getTime());
                return;
            }
            int nanos = timestamp.getNanos();
            if (nanos == 0) {
                jSONWriter.writeInt64(timestamp.getTime());
                return;
            }
            int year = ofInstant.getYear();
            int monthValue = ofInstant.getMonthValue();
            int dayOfMonth = ofInstant.getDayOfMonth();
            int hour = ofInstant.getHour();
            int minute = ofInstant.getMinute();
            int second = ofInstant.getSecond();
            if (nanos % 1000000 == 0) {
                jSONWriter.writeDateTimeISO8601(year, monthValue, dayOfMonth, hour, minute, second, nanos / 1000000, totalSeconds, false);
            } else {
                jSONWriter.writeLocalDateTime(ofInstant.toLocalDateTime());
            }
        }

        @Override // com.alibaba.fastjson2.writer.ObjectWriter
        public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
            if (obj == null) {
                jSONWriter.writeNull();
                return;
            }
            if (this.format != null) {
                write(jSONWriter, obj, obj2, type, j);
                return;
            }
            Timestamp timestamp = (Timestamp) obj;
            long time = timestamp.getTime();
            int nanos = timestamp.getNanos();
            if (nanos == 0) {
                jSONWriter.writeMillis(time);
            } else {
                jSONWriter.writeInstant(time, nanos);
            }
        }
    }
}
