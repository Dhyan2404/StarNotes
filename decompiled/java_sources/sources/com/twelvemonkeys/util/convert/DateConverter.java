package com.twelvemonkeys.util.convert;

import com.twelvemonkeys.lang.BeanUtil;
import com.twelvemonkeys.lang.StringUtil;
import java.lang.reflect.InvocationTargetException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes10.dex */
public class DateConverter extends NumberConverter {
    /* renamed from: b */
    public final DateFormat m60768b(String str) {
        return (DateFormat) getFormat(SimpleDateFormat.class, str, Locale.US);
    }

    @Override // com.twelvemonkeys.util.convert.NumberConverter, com.twelvemonkeys.util.convert.PropertyConverter
    public Object toObject(String str, Class cls, String str2) throws ConversionException {
        if (StringUtil.isEmpty(str)) {
            return null;
        }
        try {
            Date date = StringUtil.toDate(str, str2 == null ? DateFormat.getDateTimeInstance() : m60768b(str2));
            if (cls == Date.class) {
                return date;
            }
            try {
                return (Date) BeanUtil.createInstance(cls, new Long(date.getTime()));
            } catch (ClassCastException unused) {
                throw new TypeMismathException(cls);
            } catch (InvocationTargetException e) {
                throw new ConversionException(e);
            }
        } catch (RuntimeException e2) {
            throw new ConversionException(e2);
        }
    }

    @Override // com.twelvemonkeys.util.convert.NumberConverter, com.twelvemonkeys.util.convert.PropertyConverter
    public String toString(Object obj, String str) throws ConversionException {
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof Date)) {
            throw new TypeMismathException(obj.getClass());
        }
        try {
            return StringUtil.isEmpty(str) ? DateFormat.getDateTimeInstance().format(obj) : m60768b(str).format(obj);
        } catch (RuntimeException e) {
            throw new ConversionException(e);
        }
    }
}
