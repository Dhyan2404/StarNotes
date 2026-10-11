package com.twelvemonkeys.util.convert;

import com.twelvemonkeys.lang.BeanUtil;
import com.twelvemonkeys.lang.StringUtil;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes10.dex */
public final class DefaultConverter implements PropertyConverter {
    /* renamed from: a */
    public final String m60769a(Object[] objArr, String str) {
        return str == null ? StringUtil.toCSVString(objArr) : StringUtil.toCSVString(objArr, str);
    }

    /* renamed from: b */
    public final Object m60770b(String str, Class cls, String str2) {
        String[] stringArray = StringUtil.toStringArray(str, str2 != null ? str2 : StringUtil.DELIMITER_STRING);
        Class<?> componentType = cls.getComponentType();
        if (componentType == String.class) {
            return stringArray;
        }
        Object newInstance = Array.newInstance(componentType, stringArray.length);
        for (int i = 0; i < stringArray.length; i++) {
            try {
                Array.set(newInstance, i, Converter.getInstance().toObject(stringArray[i], componentType));
            } catch (ConversionException e) {
                if (str2 != null) {
                    throw new ConversionException(String.format("%s for string \"%s\" with format \"%s\"", e.getMessage(), str, str2), e);
                }
                throw new ConversionException(String.format("%s for string \"%s\"", e.getMessage(), str), e);
            }
        }
        return newInstance;
    }

    /* renamed from: c */
    public final Object[] m60771c(Object obj) {
        Class<?> componentType = obj.getClass().getComponentType();
        if (!componentType.isPrimitive()) {
            return (Object[]) obj;
        }
        int i = 0;
        if (Integer.TYPE == componentType) {
            int length = Array.getLength(obj);
            Integer[] numArr = new Integer[length];
            while (i < length) {
                Array.set(numArr, i, Array.get(obj, i));
                i++;
            }
            return numArr;
        }
        if (Short.TYPE == componentType) {
            int length2 = Array.getLength(obj);
            Short[] shArr = new Short[length2];
            while (i < length2) {
                Array.set(shArr, i, Array.get(obj, i));
                i++;
            }
            return shArr;
        }
        if (Long.TYPE == componentType) {
            int length3 = Array.getLength(obj);
            Long[] lArr = new Long[length3];
            while (i < length3) {
                Array.set(lArr, i, Array.get(obj, i));
                i++;
            }
            return lArr;
        }
        if (Float.TYPE == componentType) {
            int length4 = Array.getLength(obj);
            Float[] fArr = new Float[length4];
            while (i < length4) {
                Array.set(fArr, i, Array.get(obj, i));
                i++;
            }
            return fArr;
        }
        if (Double.TYPE == componentType) {
            int length5 = Array.getLength(obj);
            Double[] dArr = new Double[length5];
            while (i < length5) {
                Array.set(dArr, i, Array.get(obj, i));
                i++;
            }
            return dArr;
        }
        if (Boolean.TYPE == componentType) {
            int length6 = Array.getLength(obj);
            Boolean[] boolArr = new Boolean[length6];
            while (i < length6) {
                Array.set(boolArr, i, Array.get(obj, i));
                i++;
            }
            return boolArr;
        }
        if (Byte.TYPE == componentType) {
            int length7 = Array.getLength(obj);
            Byte[] bArr = new Byte[length7];
            while (i < length7) {
                Array.set(bArr, i, Array.get(obj, i));
                i++;
            }
            return bArr;
        }
        if (Character.TYPE != componentType) {
            throw new IllegalArgumentException("Unknown type " + componentType);
        }
        int length8 = Array.getLength(obj);
        Character[] chArr = new Character[length8];
        while (i < length8) {
            Array.set(chArr, i, Array.get(obj, i));
            i++;
        }
        return chArr;
    }

    /* renamed from: d */
    public final Class<?> m60772d(Class<?> cls) {
        if (!cls.isPrimitive()) {
            return cls;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Character.TYPE) {
            return Character.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        throw new IllegalArgumentException("Unknown type: " + cls);
    }

    @Override // com.twelvemonkeys.util.convert.PropertyConverter
    public Object toObject(String str, Class cls, String str2) throws ConversionException {
        if (str == null) {
            return null;
        }
        if (cls == null) {
            throw new MissingTypeException();
        }
        if (cls.isArray()) {
            return m60770b(str, cls, str2);
        }
        Class<?> m60772d = m60772d(cls);
        try {
            Object createInstance = BeanUtil.createInstance(m60772d, str);
            if (createInstance == null && (createInstance = BeanUtil.invokeStaticMethod(m60772d, "valueOf", str)) == null) {
                throw new ConversionException(String.format("Could not convert String to %1$s: No constructor %1$s(String) or static %1$s.valueOf(String) method found!", m60772d.getName()));
            }
            return createInstance;
        } catch (ConversionException e) {
            throw e;
        } catch (RuntimeException e2) {
            throw new ConversionException(e2);
        } catch (InvocationTargetException e3) {
            throw new ConversionException(e3.getTargetException());
        }
    }

    @Override // com.twelvemonkeys.util.convert.PropertyConverter
    public String toString(Object obj, String str) throws ConversionException {
        if (obj == null) {
            return null;
        }
        try {
            return obj.getClass().isArray() ? m60769a(m60771c(obj), str) : obj.toString();
        } catch (RuntimeException e) {
            throw new ConversionException(e);
        }
    }
}
