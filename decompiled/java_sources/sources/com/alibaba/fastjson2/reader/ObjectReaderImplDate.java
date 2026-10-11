package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.codec.DateTimeCodec;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoField;
import java.time.temporal.TemporalAccessor;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ObjectReaderImplDate extends DateTimeCodec implements ObjectReader {
    public static final ObjectReaderImplDate INSTANCE = new ObjectReaderImplDate(null, null);

    public ObjectReaderImplDate(String str, Locale locale) {
        super(str, locale);
    }

    /* renamed from: of */
    public static ObjectReaderImplDate m7444of(String str, Locale locale) {
        return str == null ? INSTANCE : new ObjectReaderImplDate(str, locale);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v9, types: [java.time.ZonedDateTime] */
    /* renamed from: a */
    public final Object m7445a(JSONReader jSONReader) {
        long readInt64Value;
        long readMillisFromString;
        LocalDateTime parse;
        ZonedDateTime zonedDateTime;
        long j;
        int i;
        if (this.useSimpleFormatter) {
            String readString = jSONReader.readString();
            try {
                return new SimpleDateFormat(this.format).parse(readString);
            } catch (ParseException e) {
                throw new JSONException(jSONReader.info("parse error : " + readString), e);
            }
        }
        if (jSONReader.nextIfNullOrEmptyString()) {
            return null;
        }
        if ((this.formatUnixTime || this.formatMillis) && jSONReader.isString()) {
            readInt64Value = jSONReader.readInt64Value();
            if (this.formatUnixTime) {
                readInt64Value *= 1000;
            }
        } else if (this.format != null) {
            if (this.yyyyMMddhhmmss19) {
                long readMillisFromString2 = jSONReader.isSupportSmartMatch() ? jSONReader.readMillisFromString() : jSONReader.readMillis19();
                if (readMillisFromString2 != 0 || !jSONReader.wasNull()) {
                    return new Date(readMillisFromString2);
                }
                zonedDateTime = jSONReader.readZonedDateTime();
            } else {
                DateTimeFormatter dateFormatter = getDateFormatter(jSONReader.getLocale());
                if (dateFormatter != null) {
                    String readString2 = jSONReader.readString();
                    if (readString2.isEmpty() || "null".equals(readString2)) {
                        return null;
                    }
                    if (this.formatHasHour) {
                        if (readString2.length() == 19 && (this.yyyyMMddhhmm16 || jSONReader.isEnabled(JSONReader.Feature.SupportSmartMatch) || "yyyy-MM-dd hh:mm:ss".equals(this.format))) {
                            parse = DateUtils.parseLocalDateTime(readString2, 0, this.yyyyMMddhhmm16 ? 16 : 19);
                        } else {
                            parse = LocalDateTime.parse(readString2, dateFormatter);
                        }
                    } else if (!this.formatHasDay) {
                        TemporalAccessor parse2 = dateFormatter.parse(readString2);
                        parse = LocalDateTime.of(LocalDate.of(parse2.get(ChronoField.YEAR), parse2.get(ChronoField.MONTH_OF_YEAR), 1), LocalTime.MIN);
                    } else if (readString2.length() == 19 && jSONReader.isEnabled(JSONReader.Feature.SupportSmartMatch)) {
                        parse = DateUtils.parseLocalDateTime(readString2, 0, readString2.length());
                    } else {
                        if (this.format.indexOf(45) != -1 && readString2.indexOf(45) == -1 && TypeUtils.isInteger(readString2)) {
                            return new Date(Long.parseLong(readString2));
                        }
                        parse = LocalDateTime.of(LocalDate.parse(readString2, dateFormatter), LocalTime.MIN);
                    }
                    zonedDateTime = parse.atZone(jSONReader.getContext().getZoneId());
                } else {
                    zonedDateTime = jSONReader.readZonedDateTime();
                }
            }
            if (zonedDateTime == null) {
                return null;
            }
            long epochSecond = zonedDateTime.toEpochSecond();
            int nano = zonedDateTime.toLocalTime().getNano();
            if (epochSecond >= 0 || nano <= 0) {
                j = epochSecond * 1000;
                i = nano / 1000000;
            } else {
                j = (epochSecond + 1) * 1000;
                i = (nano / 1000000) - 1000;
            }
            readInt64Value = j + i;
        } else {
            if (jSONReader.isTypeRedirect() && jSONReader.nextIfMatchIdent('\"', 'v', 'a', 'l', '\"')) {
                jSONReader.nextIfMatch(':');
                readMillisFromString = jSONReader.readInt64Value();
                jSONReader.nextIfObjectEnd();
                jSONReader.setTypeRedirect(false);
            } else {
                readMillisFromString = jSONReader.readMillisFromString();
            }
            if (readMillisFromString == 0 && jSONReader.wasNull()) {
                return null;
            }
            readInt64Value = this.formatUnixTime ? readMillisFromString * 1000 : readMillisFromString;
        }
        return new Date(readInt64Value);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class getObjectClass() {
        return Date.class;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (!jSONReader.isInt()) {
            if (jSONReader.readIfNull()) {
                return null;
            }
            return m7445a(jSONReader);
        }
        long readInt64Value = jSONReader.readInt64Value();
        if (this.formatUnixTime) {
            readInt64Value *= 1000;
        }
        return new Date(readInt64Value);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (!jSONReader.isInt()) {
            if (jSONReader.readIfNull()) {
                return null;
            }
            return m7445a(jSONReader);
        }
        long readInt64Value = jSONReader.readInt64Value();
        if (this.formatUnixTime) {
            readInt64Value *= 1000;
        }
        return new Date(readInt64Value);
    }
}
