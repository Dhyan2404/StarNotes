package com.alibaba.fastjson2.function.impl;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.IOUtils;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class StringToAny implements Function {

    /* renamed from: e */
    public final Object f12400e;

    /* renamed from: f */
    public final Class f12401f;

    public StringToAny(Class cls, Object obj) {
        this.f12401f = cls;
        this.f12400e = obj;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        String str = (String) obj;
        if (str == null || "null".equals(str) || "".equals(str)) {
            return this.f12400e;
        }
        Class cls = this.f12401f;
        if (cls == Byte.TYPE || cls == Byte.class) {
            return Byte.valueOf(Byte.parseByte(str));
        }
        if (cls == Short.TYPE || cls == Short.class) {
            return Short.valueOf(Short.parseShort(str));
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return Integer.valueOf(Integer.parseInt(str));
        }
        if (cls == Long.TYPE || cls == Long.class) {
            return (IOUtils.isNumber(str) || str.length() != 19) ? Long.valueOf(Long.parseLong(str)) : Long.valueOf(DateUtils.parseMillis(str, DateUtils.DEFAULT_ZONE_ID));
        }
        if (cls == Float.TYPE || cls == Float.class) {
            return Float.valueOf(Float.parseFloat(str));
        }
        if (cls == Double.TYPE || cls == Double.class) {
            return Double.valueOf(Double.parseDouble(str));
        }
        if (cls == Character.TYPE || cls == Character.class) {
            return Character.valueOf(str.charAt(0));
        }
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            return Boolean.valueOf("true".equals(str));
        }
        if (cls == BigDecimal.class) {
            return new BigDecimal(str);
        }
        if (cls == BigInteger.class) {
            return new BigInteger(str);
        }
        if ((cls == Collections.class || cls == List.class || cls == JSONArray.class) && "[]".equals(str)) {
            return new JSONArray();
        }
        throw new JSONException("can not convert to " + this.f12401f + ", value : " + str);
    }
}
