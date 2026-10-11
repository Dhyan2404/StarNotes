package com.sunia.HTREnginev2;

import com.twelvemonkeys.util.convert.ConversionException;
import com.twelvemonkeys.util.convert.Converter;
import com.twelvemonkeys.util.convert.MissingTypeException;
import com.twelvemonkeys.util.convert.NoAvailableConverterException;
import com.twelvemonkeys.util.convert.PropertyConverter;

/* loaded from: classes10.dex */
public class dce extends Converter {
    /* renamed from: a */
    public final PropertyConverter m53631a(Class cls) {
        do {
            PropertyConverter propertyConverter = Converter.getInstance().converters.get(cls);
            if (propertyConverter != null) {
                return propertyConverter;
            }
            cls = cls.getSuperclass();
        } while (cls != null);
        return null;
    }

    @Override // com.twelvemonkeys.util.convert.Converter, com.twelvemonkeys.util.convert.PropertyConverter
    public Object toObject(String str, Class cls, String str2) throws ConversionException {
        if (str == null) {
            return null;
        }
        if (cls == null) {
            throw new MissingTypeException();
        }
        PropertyConverter m53631a = m53631a(cls);
        if (m53631a != null) {
            return m53631a.toObject(str, cls, str2);
        }
        throw new NoAvailableConverterException("Cannot convert to object, no converter available for type \"" + cls.getName() + "\"");
    }

    @Override // com.twelvemonkeys.util.convert.Converter, com.twelvemonkeys.util.convert.PropertyConverter
    public String toString(Object obj, String str) throws ConversionException {
        if (obj == null) {
            return null;
        }
        PropertyConverter m53631a = m53631a(obj.getClass());
        if (m53631a != null) {
            return m53631a.toString(obj, str);
        }
        throw new NoAvailableConverterException("Cannot object to string, no converter available for type \"" + obj.getClass().getName() + "\"");
    }
}
