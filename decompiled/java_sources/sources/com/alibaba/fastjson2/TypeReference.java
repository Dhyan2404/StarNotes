package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.MultiType;
import com.alibaba.fastjson2.util.ParameterizedTypeImpl;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class TypeReference<T> {
    protected final Class<? super T> rawType;
    protected final Type type;

    /* renamed from: com.alibaba.fastjson2.TypeReference$a */
    /* loaded from: classes3.dex */
    public class C1730a extends TypeReference<Object> {
        public C1730a(Type type, boolean z) {
            super(type, z, null);
        }
    }

    public /* synthetic */ TypeReference(Type type, boolean z, C1730a c1730a) {
        this(type, z);
    }

    /* renamed from: a */
    public static Type m7328a(Class<?> cls, ParameterizedType parameterizedType, Type[] typeArr, int i) {
        char c;
        Type rawType = parameterizedType.getRawType();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i2 = 0; i2 < actualTypeArguments.length; i2++) {
            if ((actualTypeArguments[i2] instanceof TypeVariable) && i < typeArr.length) {
                actualTypeArguments[i2] = typeArr[i];
                i++;
            }
            Type type = actualTypeArguments[i2];
            if (type instanceof GenericArrayType) {
                int i3 = 0;
                while (type instanceof GenericArrayType) {
                    i3++;
                    type = ((GenericArrayType) type).getGenericComponentType();
                }
                if (type instanceof Class) {
                    Class cls2 = (Class) type;
                    if (cls2.isPrimitive()) {
                        if (cls2 == Integer.TYPE) {
                            c = 'I';
                        } else if (cls2 == Long.TYPE) {
                            c = 'J';
                        } else if (cls2 == Float.TYPE) {
                            c = 'F';
                        } else if (cls2 == Double.TYPE) {
                            c = 'D';
                        } else if (cls2 == Boolean.TYPE) {
                            c = 'Z';
                        } else if (cls2 == Character.TYPE) {
                            c = 'C';
                        } else if (cls2 == Byte.TYPE) {
                            c = 'B';
                        } else if (cls2 == Short.TYPE) {
                            c = 'S';
                        }
                        char[] cArr = new char[i3 + 1];
                        for (int i4 = 0; i4 < i3; i4++) {
                            cArr[i4] = '[';
                        }
                        cArr[i3] = c;
                        actualTypeArguments[i2] = TypeUtils.loadClass(new String(cArr));
                    }
                }
            }
            Type type2 = actualTypeArguments[i2];
            if (type2 instanceof ParameterizedType) {
                actualTypeArguments[i2] = m7328a(cls, (ParameterizedType) type2, typeArr, i);
            }
        }
        return new ParameterizedTypeImpl(actualTypeArguments, cls, rawType);
    }

    public static Type arrayType(Class<?> cls) {
        return new BeanUtils.GenericArrayTypeImpl(cls);
    }

    public static Type collectionType(Class<? extends Collection> cls, Class<?> cls2) {
        return new ParameterizedTypeImpl(cls, cls2);
    }

    public static TypeReference<?> get(Type type) {
        return new C1730a(type, true);
    }

    public static Type mapType(Class<? extends Map> cls, Class<?> cls2, Class<?> cls3) {
        return new ParameterizedTypeImpl(cls, cls2, cls3);
    }

    /* renamed from: of */
    public static Type m7329of(Type... typeArr) {
        return new MultiType(typeArr);
    }

    public static Type parametricType(Class<?> cls, Class<?>... clsArr) {
        return new ParameterizedTypeImpl(cls, clsArr);
    }

    public final Class<? super T> getRawType() {
        return this.rawType;
    }

    public final Type getType() {
        return this.type;
    }

    public List<T> parseArray(String str, JSONReader.Feature... featureArr) {
        return JSON.parseArray(str, this.type, featureArr);
    }

    public T parseObject(String str) {
        return (T) JSON.parseObject(str, this.type);
    }

    /* renamed from: to */
    public T m7330to(JSONArray jSONArray) {
        return (T) jSONArray.m7270to(this.type);
    }

    @Deprecated
    public T toJavaObject(JSONArray jSONArray) {
        return (T) jSONArray.m7270to(this.type);
    }

    public TypeReference() {
        Type type = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        this.type = type;
        this.rawType = (Class<? super T>) BeanUtils.getRawType(type);
    }

    public static Type parametricType(Class<?> cls, Type... typeArr) {
        return new ParameterizedTypeImpl(cls, typeArr);
    }

    public List<T> parseArray(byte[] bArr, JSONReader.Feature... featureArr) {
        return JSON.parseArray(bArr, this.type, featureArr);
    }

    public T parseObject(byte[] bArr) {
        return (T) JSON.parseObject(bArr, this.type);
    }

    /* renamed from: to */
    public T m7331to(JSONObject jSONObject, JSONReader.Feature... featureArr) {
        return (T) jSONObject.m7279to(this.type, featureArr);
    }

    @Deprecated
    public T toJavaObject(JSONObject jSONObject, JSONReader.Feature... featureArr) {
        return (T) jSONObject.m7279to(this.type, featureArr);
    }

    public TypeReference(Type type, boolean z) {
        type.getClass();
        this.type = BeanUtils.canonicalize(type);
        this.rawType = (Class<? super T>) BeanUtils.getRawType(type);
    }

    public TypeReference(Type... typeArr) {
        if (typeArr != null && typeArr.length != 0) {
            if (typeArr.length == 1 && typeArr[0] == null) {
                typeArr = new Type[]{Object.class};
            }
            Class<?> cls = getClass();
            Type m7328a = m7328a(cls, (ParameterizedType) ((ParameterizedType) cls.getGenericSuperclass()).getActualTypeArguments()[0], typeArr, 0);
            this.type = m7328a;
            this.rawType = (Class<? super T>) BeanUtils.getRawType(m7328a);
            return;
        }
        throw null;
    }
}
