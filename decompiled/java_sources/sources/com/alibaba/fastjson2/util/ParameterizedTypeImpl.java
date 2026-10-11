package com.alibaba.fastjson2.util;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.annotation.JSONCreator;
import com.alibaba.fastjson2.annotation.JSONType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

@JSONType(deserializeFeatures = {JSONReader.Feature.SupportAutoType}, typeName = "java.lang.reflect.ParameterizedType")
/* loaded from: classes3.dex */
public final class ParameterizedTypeImpl implements ParameterizedType {

    /* renamed from: e */
    public final Type[] f12800e;

    /* renamed from: f */
    public final Type f12801f;

    /* renamed from: g */
    public final Type f12802g;

    @JSONCreator(parameterNames = {"actualTypeArguments", "ownerType", "rawType"})
    public ParameterizedTypeImpl(Type[] typeArr, Type type, Type type2) {
        this.f12800e = typeArr;
        this.f12801f = type;
        this.f12802g = type2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ParameterizedTypeImpl.class != obj.getClass()) {
            return false;
        }
        ParameterizedTypeImpl parameterizedTypeImpl = (ParameterizedTypeImpl) obj;
        if (!Arrays.equals(this.f12800e, parameterizedTypeImpl.f12800e)) {
            return false;
        }
        Type type = this.f12801f;
        if (type == null ? parameterizedTypeImpl.f12801f != null : !type.equals(parameterizedTypeImpl.f12801f)) {
            return false;
        }
        Type type2 = this.f12802g;
        return type2 != null ? type2.equals(parameterizedTypeImpl.f12802g) : parameterizedTypeImpl.f12802g == null;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type[] getActualTypeArguments() {
        return this.f12800e;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getOwnerType() {
        return this.f12801f;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getRawType() {
        return this.f12802g;
    }

    public int hashCode() {
        Type[] typeArr = this.f12800e;
        int hashCode = (typeArr != null ? Arrays.hashCode(typeArr) : 0) * 31;
        Type type = this.f12801f;
        int hashCode2 = (hashCode + (type != null ? type.hashCode() : 0)) * 31;
        Type type2 = this.f12802g;
        return hashCode2 + (type2 != null ? type2.hashCode() : 0);
    }

    public ParameterizedTypeImpl(Type type, Type... typeArr) {
        this.f12802g = type;
        this.f12800e = typeArr;
        this.f12801f = null;
    }
}
