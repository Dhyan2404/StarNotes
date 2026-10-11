package com.twelvemonkeys.util.convert;

import com.twelvemonkeys.lang.BeanUtil;
import com.twelvemonkeys.lang.StringUtil;
import com.twelvemonkeys.util.LRUHashMap;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.Format;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes10.dex */
public class NumberConverter implements PropertyConverter {

    /* renamed from: a */
    public static final DecimalFormatSymbols f94392a;

    /* renamed from: b */
    public static final NumberFormat f94393b;

    /* renamed from: c */
    public static final Map<String, Format> f94394c;

    static {
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
        f94392a = decimalFormatSymbols;
        f94393b = new DecimalFormat("#0.#", decimalFormatSymbols);
        f94394c = new LRUHashMap(50);
    }

    /* renamed from: a */
    public final NumberFormat m60773a(String str) {
        return (NumberFormat) getFormat(DecimalFormat.class, str, f94392a);
    }

    public final Format getFormat(Class cls, Object... objArr) {
        Format format;
        Map<String, Format> map = f94394c;
        synchronized (map) {
            String str = cls.getName() + ":" + Arrays.toString(objArr);
            format = map.get(str);
            if (format == null) {
                try {
                    format = (Format) BeanUtil.createInstance(cls, objArr);
                    map.put(str, format);
                } catch (Exception e) {
                    e.printStackTrace();
                    return null;
                }
            }
        }
        return format;
    }

    @Override // com.twelvemonkeys.util.convert.PropertyConverter
    public Object toObject(String str, Class cls, String str2) throws ConversionException {
        Number parse;
        if (StringUtil.isEmpty(str)) {
            return null;
        }
        try {
            if (cls.equals(BigInteger.class)) {
                return new BigInteger(str);
            }
            if (cls.equals(BigDecimal.class)) {
                return new BigDecimal(str);
            }
            NumberFormat m60773a = str2 == null ? f94393b : m60773a(str2);
            synchronized (m60773a) {
                parse = m60773a.parse(str);
            }
            if (cls != Integer.TYPE && cls != Integer.class) {
                if (cls != Long.TYPE && cls != Long.class) {
                    if (cls != Double.TYPE && cls != Double.class) {
                        if (cls != Float.TYPE && cls != Float.class) {
                            if (cls != Byte.TYPE && cls != Byte.class) {
                                if (cls != Short.TYPE && cls != Short.class) {
                                    return parse;
                                }
                                return Short.valueOf(parse.shortValue());
                            }
                            return Byte.valueOf(parse.byteValue());
                        }
                        return Float.valueOf(parse.floatValue());
                    }
                    return Double.valueOf(parse.doubleValue());
                }
                return Long.valueOf(parse.longValue());
            }
            return Integer.valueOf(parse.intValue());
        } catch (RuntimeException e) {
            throw new ConversionException(e);
        } catch (ParseException e2) {
            throw new ConversionException(e2);
        }
    }

    @Override // com.twelvemonkeys.util.convert.PropertyConverter
    public String toString(Object obj, String str) throws ConversionException {
        String format;
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof Number)) {
            throw new TypeMismathException(obj.getClass());
        }
        try {
            if (StringUtil.isEmpty(str)) {
                return f94393b.format(obj);
            }
            NumberFormat m60773a = m60773a(str);
            synchronized (m60773a) {
                format = m60773a.format(obj);
            }
            return format;
        } catch (RuntimeException e) {
            throw new ConversionException(e);
        }
    }
}
