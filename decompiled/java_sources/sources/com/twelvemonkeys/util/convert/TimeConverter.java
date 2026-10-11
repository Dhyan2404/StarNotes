package com.twelvemonkeys.util.convert;

import com.twelvemonkeys.lang.StringUtil;
import com.twelvemonkeys.util.Time;
import com.twelvemonkeys.util.TimeFormat;

/* loaded from: classes10.dex */
public class TimeConverter extends NumberConverter {
    /* renamed from: b */
    public final TimeFormat m60774b(String str) {
        return (TimeFormat) getFormat(TimeFormat.class, str);
    }

    @Override // com.twelvemonkeys.util.convert.NumberConverter, com.twelvemonkeys.util.convert.PropertyConverter
    public Object toObject(String str, Class cls, String str2) throws ConversionException {
        if (StringUtil.isEmpty(str)) {
            return null;
        }
        try {
            return (str2 == null ? TimeFormat.getInstance() : m60774b(str2)).parse(str);
        } catch (RuntimeException e) {
            throw new ConversionException(e);
        }
    }

    @Override // com.twelvemonkeys.util.convert.NumberConverter, com.twelvemonkeys.util.convert.PropertyConverter
    public String toString(Object obj, String str) throws ConversionException {
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof Time)) {
            throw new TypeMismathException(obj.getClass());
        }
        try {
            return StringUtil.isEmpty(str) ? obj.toString() : m60774b(str).format((Time) obj);
        } catch (RuntimeException e) {
            throw new ConversionException(e);
        }
    }
}
