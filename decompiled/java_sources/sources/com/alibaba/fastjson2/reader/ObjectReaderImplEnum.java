package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class ObjectReaderImplEnum implements ObjectReader {

    /* renamed from: a */
    public final Method f12663a;

    /* renamed from: b */
    public final Type f12664b;

    /* renamed from: c */
    public final Member f12665c;

    /* renamed from: d */
    public final Type f12666d;

    /* renamed from: e */
    public final Class f12667e;
    protected long[] enumNameHashCodes;
    protected final Enum[] enums;

    /* renamed from: f */
    public final long f12668f;
    protected long[] intValues;
    protected final Enum[] ordinalEnums;
    protected String[] stringValues;

    /* JADX WARN: Multi-variable type inference failed */
    public ObjectReaderImplEnum(Class cls, Method method, Member member, Enum[] enumArr, Enum[] enumArr2, long[] jArr) {
        this.f12667e = cls;
        this.f12663a = method;
        if (member instanceof AccessibleObject) {
            ((AccessibleObject) member).setAccessible(true);
        }
        this.f12665c = member;
        Class<?> cls2 = null;
        Class<?> type = member instanceof Field ? ((Field) member).getType() : member instanceof Method ? ((Method) member).getReturnType() : null;
        this.f12666d = type;
        if (type != null) {
            if (type == String.class) {
                this.stringValues = new String[enumArr.length];
            } else {
                this.intValues = new long[enumArr.length];
            }
            for (int i = 0; i < enumArr.length; i++) {
                Enum r11 = enumArr[i];
                try {
                    Object invoke = member instanceof Field ? ((Field) member).get(r11) : ((Method) member).invoke(r11, new Object[0]);
                    if (type == String.class) {
                        this.stringValues[i] = (String) invoke;
                    } else if (invoke instanceof Number) {
                        this.intValues[i] = ((Number) invoke).longValue();
                    }
                } catch (Exception unused) {
                }
            }
        }
        if (method != null) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == 1) {
                cls2 = parameterTypes[0];
            }
        }
        this.f12664b = cls2;
        this.f12668f = Fnv.hashCode64(TypeUtils.getTypeName(cls));
        this.enums = enumArr;
        this.ordinalEnums = enumArr2;
        this.enumNameHashCodes = jArr;
    }

    public Enum getEnum(String str) {
        if (str == null) {
            return null;
        }
        return getEnumByHashCode(Fnv.hashCode64(str));
    }

    public Enum getEnumByHashCode(long j) {
        int binarySearch;
        if (this.enums != null && (binarySearch = Arrays.binarySearch(this.enumNameHashCodes, j)) >= 0) {
            return this.enums[binarySearch];
        }
        return null;
    }

    public Enum getEnumByOrdinal(int i) {
        if (i >= 0) {
            Enum[] enumArr = this.ordinalEnums;
            if (i < enumArr.length) {
                return enumArr[i];
            }
        }
        throw new JSONException("No enum ordinal " + this.f12667e.getCanonicalName() + "." + i);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class getObjectClass() {
        return this.f12667e;
    }

    /* renamed from: of */
    public Enum m7446of(int i) {
        Enum r8;
        Member member = this.f12665c;
        if (member == null) {
            r8 = getEnumByOrdinal(i);
        } else {
            try {
                int i2 = 0;
                Enum r3 = null;
                if (member instanceof Field) {
                    Enum[] enumArr = this.enums;
                    int length = enumArr.length;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        }
                        Enum r4 = enumArr[i2];
                        if (((Field) this.f12665c).getInt(r4) == i) {
                            r3 = r4;
                            break;
                        }
                        i2++;
                    }
                } else {
                    Method method = (Method) member;
                    for (Enum r6 : this.enums) {
                        if (((Number) method.invoke(r6, new Object[0])).intValue() == i) {
                            r8 = r6;
                            break;
                        }
                    }
                }
                r8 = r3;
            } catch (Exception e) {
                throw new JSONException("parse enum error, class " + this.f12667e.getName() + ", value " + i, e);
            }
        }
        if (r8 != null) {
            return r8;
        }
        throw new JSONException("None enum ordinal or value " + i);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Enum enumByHashCode;
        int offset = jSONReader.getOffset();
        int type2 = jSONReader.getType();
        if (type2 == -110) {
            ObjectReader checkAutoType = jSONReader.checkAutoType(this.f12667e, 0L, j);
            if (checkAutoType != null) {
                if (checkAutoType != this) {
                    return checkAutoType.readJSONBObject(jSONReader, type, obj, j);
                }
            } else if (jSONReader.isEnabled(JSONReader.Feature.ErrorOnNotSupportAutoType)) {
                throw new JSONException(jSONReader.info("not support enumType : " + jSONReader.getString()));
            }
        }
        if (type2 >= -16 && type2 <= 72) {
            if (type2 <= 47) {
                jSONReader.next();
            } else {
                type2 = jSONReader.readInt32Value();
            }
            enumByHashCode = getEnumByOrdinal(type2);
        } else {
            if (jSONReader.nextIfNullOrEmptyString()) {
                return null;
            }
            Enum enumByHashCode2 = getEnumByHashCode(jSONReader.readValueHashCode());
            enumByHashCode = enumByHashCode2 == null ? getEnumByHashCode(jSONReader.getNameHashCodeLCase()) : enumByHashCode2;
        }
        if (enumByHashCode != null || jSONReader.getOffset() != offset || !(type instanceof ParameterizedType) || !List.class.isAssignableFrom((Class) ((ParameterizedType) type).getRawType())) {
            return enumByHashCode;
        }
        throw new JSONException(ObjectReaderImplEnum.class.getSimpleName() + " parses error, JSONReader not forward when field type belongs to collection to avoid OOM");
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        int offset = jSONReader.getOffset();
        Type type2 = this.f12664b;
        Enum r11 = null;
        if (type2 != null) {
            Object read = jSONReader.read(type2);
            try {
                return this.f12663a.invoke(null, read);
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new JSONException(jSONReader.info("create enum error, enumClass " + this.f12667e.getName() + ", paramValue " + read), e);
            }
        }
        int i = 0;
        if (jSONReader.isInt()) {
            int readInt32Value = jSONReader.readInt32Value();
            if (this.f12665c == null) {
                r11 = getEnumByOrdinal(readInt32Value);
            } else {
                if (this.intValues != null) {
                    while (true) {
                        long[] jArr = this.intValues;
                        if (i >= jArr.length) {
                            break;
                        }
                        if (jArr[i] == readInt32Value) {
                            r11 = this.enums[i];
                            break;
                        }
                        i++;
                    }
                }
                if (r11 == null && jSONReader.isEnabled(JSONReader.Feature.ErrorOnEnumNotMatch)) {
                    throw new JSONException(jSONReader.info("parse enum error, class " + this.f12667e.getName() + ", " + this.f12665c.getName() + " " + readInt32Value));
                }
            }
        } else if (!jSONReader.nextIfNullOrEmptyString()) {
            if (this.stringValues != null && jSONReader.isString()) {
                String readString = jSONReader.readString();
                while (true) {
                    String[] strArr = this.stringValues;
                    if (i >= strArr.length) {
                        break;
                    }
                    if (readString.equals(strArr[i])) {
                        r11 = this.enums[i];
                        break;
                    }
                    i++;
                }
                if (r11 == null && this.f12665c != null) {
                    try {
                        r11 = Enum.valueOf(this.f12667e, readString);
                    } catch (IllegalArgumentException unused) {
                    }
                }
            } else if (this.intValues == null || !jSONReader.isString()) {
                long readValueHashCode = jSONReader.readValueHashCode();
                if (readValueHashCode == Fnv.MAGIC_HASH_CODE) {
                    return null;
                }
                Enum enumByHashCode = getEnumByHashCode(readValueHashCode);
                if (enumByHashCode == null) {
                    enumByHashCode = getEnumByHashCode(jSONReader.getNameHashCodeLCase());
                }
                r11 = enumByHashCode;
            } else {
                int readInt32Value2 = jSONReader.readInt32Value();
                while (true) {
                    long[] jArr2 = this.intValues;
                    if (i >= jArr2.length) {
                        break;
                    }
                    if (jArr2[i] == readInt32Value2) {
                        r11 = this.enums[i];
                        break;
                    }
                    i++;
                }
            }
            if (r11 == null && jSONReader.isEnabled(JSONReader.Feature.ErrorOnEnumNotMatch)) {
                throw new JSONException(jSONReader.info("parse enum error, class " + this.f12667e.getName() + ", value " + jSONReader.getString()));
            }
        }
        if (r11 != null || jSONReader.getOffset() != offset || !(type instanceof ParameterizedType) || !List.class.isAssignableFrom((Class) ((ParameterizedType) type).getRawType())) {
            return r11;
        }
        throw new JSONException(ObjectReaderImplEnum.class.getSimpleName() + " parses error, JSONReader not forward when field type belongs to collection to avoid OOM");
    }
}
