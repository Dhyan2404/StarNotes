package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

/* loaded from: classes3.dex */
public final class ObjectReaderImplEnum2X4 implements ObjectReader {

    /* renamed from: c */
    public static final long f12669c = Fnv.hashCode64("0");

    /* renamed from: d */
    public static final long f12670d = Fnv.hashCode64("1");

    /* renamed from: a */
    public final Class f12671a;

    /* renamed from: b */
    public final long f12672b;
    protected final Enum enum0;
    protected final Enum enum1;
    protected long enumNameHashCode00;
    protected long enumNameHashCode01;
    protected long enumNameHashCode10;
    protected long enumNameHashCode11;

    public ObjectReaderImplEnum2X4(Class cls, Enum[] enumArr, Enum[] enumArr2, long[] jArr) {
        this.f12671a = cls;
        this.f12672b = Fnv.hashCode64(TypeUtils.getTypeName(cls));
        this.enum0 = enumArr2[0];
        this.enum1 = enumArr2[1];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < jArr.length; i3++) {
            long j = jArr[i3];
            Enum r3 = enumArr[i3];
            if (r3 == this.enum0) {
                int i4 = i + 1;
                if (i == 0) {
                    this.enumNameHashCode00 = j;
                } else {
                    this.enumNameHashCode01 = j;
                }
                i = i4;
            } else if (r3 == this.enum1) {
                int i5 = i2 + 1;
                if (i2 == 0) {
                    this.enumNameHashCode10 = j;
                } else {
                    this.enumNameHashCode11 = j;
                }
                i2 = i5;
            }
        }
    }

    public Enum getEnum(String str) {
        if (str == null) {
            return null;
        }
        return getEnumByHashCode(Fnv.hashCode64(str));
    }

    public Enum getEnumByHashCode(long j) {
        if (this.enumNameHashCode00 == j || this.enumNameHashCode01 == j) {
            return this.enum0;
        }
        if (this.enumNameHashCode10 == j || this.enumNameHashCode11 == j) {
            return this.enum1;
        }
        return null;
    }

    public Enum getEnumByOrdinal(int i) {
        if (i == 0) {
            return this.enum0;
        }
        if (i != 1) {
            return null;
        }
        return this.enum1;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class getObjectClass() {
        return this.f12671a;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        int offset = jSONReader.getOffset();
        int type2 = jSONReader.getType();
        if (type2 == -110) {
            jSONReader.next();
            if (jSONReader.readTypeHashCode() != this.f12672b) {
                throw new JSONException(jSONReader.info("not support enumType : " + jSONReader.getString()));
            }
        }
        Enum r1 = null;
        if (type2 >= -16 && type2 <= 72) {
            if (type2 <= 47) {
                jSONReader.next();
            } else {
                type2 = jSONReader.readInt32Value();
            }
            if (type2 == 0) {
                r1 = this.enum0;
            } else if (type2 == 1) {
                r1 = this.enum1;
            }
        } else {
            long readValueHashCode = jSONReader.readValueHashCode();
            if (this.enumNameHashCode00 == readValueHashCode || this.enumNameHashCode01 == readValueHashCode || f12669c == readValueHashCode) {
                r1 = this.enum0;
            } else if (this.enumNameHashCode10 == readValueHashCode || this.enumNameHashCode11 == readValueHashCode || f12670d == readValueHashCode) {
                r1 = this.enum1;
            } else {
                long nameHashCodeLCase = jSONReader.getNameHashCodeLCase();
                if (this.enumNameHashCode00 == nameHashCodeLCase || this.enumNameHashCode01 == nameHashCodeLCase) {
                    r1 = this.enum0;
                } else if (this.enumNameHashCode10 == nameHashCodeLCase || this.enumNameHashCode11 == nameHashCodeLCase) {
                    r1 = this.enum1;
                }
            }
        }
        if (r1 != null || jSONReader.getOffset() != offset || !(type instanceof ParameterizedType) || !List.class.isAssignableFrom((Class) ((ParameterizedType) type).getRawType())) {
            return r1;
        }
        throw new JSONException(ObjectReaderImplEnum2X4.class.getSimpleName() + " parses error, JSONReader not forward when field type belongs to collection to avoid OOM");
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Enum r4;
        int offset = jSONReader.getOffset();
        Enum r9 = null;
        if (jSONReader.isInt()) {
            int readInt32Value = jSONReader.readInt32Value();
            if (readInt32Value == 0) {
                r4 = this.enum0;
            } else if (readInt32Value == 1) {
                r4 = this.enum1;
            }
            r9 = r4;
        } else if (!jSONReader.nextIfNullOrEmptyString()) {
            long readValueHashCode = jSONReader.readValueHashCode();
            if (this.enumNameHashCode00 == readValueHashCode || this.enumNameHashCode01 == readValueHashCode || f12669c == readValueHashCode) {
                r9 = this.enum0;
            } else if (this.enumNameHashCode10 == readValueHashCode || this.enumNameHashCode11 == readValueHashCode || f12670d == readValueHashCode) {
                r9 = this.enum1;
            } else {
                long nameHashCodeLCase = jSONReader.getNameHashCodeLCase();
                if (this.enumNameHashCode00 == nameHashCodeLCase || this.enumNameHashCode01 == nameHashCodeLCase) {
                    r9 = this.enum0;
                } else if (this.enumNameHashCode10 == nameHashCodeLCase || this.enumNameHashCode11 == nameHashCodeLCase) {
                    r9 = this.enum1;
                }
            }
        }
        if (r9 != null || jSONReader.getOffset() != offset || !(type instanceof ParameterizedType) || !List.class.isAssignableFrom((Class) ((ParameterizedType) type).getRawType())) {
            return r9;
        }
        throw new JSONException(ObjectReaderImplEnum2X4.class.getSimpleName() + " parses error, JSONReader not forward when field type belongs to collection to avoid OOM");
    }
}
