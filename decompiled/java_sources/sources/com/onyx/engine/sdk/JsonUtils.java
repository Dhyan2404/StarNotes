package com.onyx.engine.sdk;

import android.util.Log;
import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.filter.ValueFilter;
import com.onyx.engine.sdk.JsonUtils;
import java.lang.reflect.Type;
import java.util.function.Supplier;

/* loaded from: classes8.dex */
public class JsonUtils {
    public static <R> R fromJson(String str, Type type) {
        try {
            return (R) JSON.parseObject(str, type, getEnumValueFilter(), JSONReader.Feature.InitStringFieldAsEmpty);
        } catch (Throwable th) {
            Log.e(JsonUtils.class.getSimpleName(), "Parse json failed", th);
            return null;
        }
    }

    public static ValueFilter getEnumValueFilter() {
        return new ValueFilter() { // from class: com.sunia.HTREnginev2.wri
            @Override // com.alibaba.fastjson2.filter.ValueFilter
            public final Object apply(Object obj, String str, Object obj2) {
                Object lambda$getEnumValueFilter$0;
                lambda$getEnumValueFilter$0 = JsonUtils.lambda$getEnumValueFilter$0(obj, str, obj2);
                return lambda$getEnumValueFilter$0;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$getEnumValueFilter$0(Object obj, String str, Object obj2) {
        return obj2 instanceof Enum ? Integer.valueOf(((Enum) obj2).ordinal()) : obj2;
    }

    public static <T> String toJson(T t) {
        try {
            return JSON.toJSONString(t, getEnumValueFilter(), JSONWriter.Feature.WriteMapNullValue, JSONWriter.Feature.WriteNullListAsEmpty, JSONWriter.Feature.WriteNullStringAsEmpty);
        } catch (Throwable th) {
            Log.e(JsonUtils.class.getSimpleName(), "To json failed", th);
            return "";
        }
    }

    public static <T> String toPrettyJson(T t) {
        try {
            return JSON.toJSONString(t, getEnumValueFilter(), JSONWriter.Feature.WriteMapNullValue, JSONWriter.Feature.WriteNullListAsEmpty, JSONWriter.Feature.WriteNullStringAsEmpty, JSONWriter.Feature.PrettyFormat);
        } catch (Throwable th) {
            Log.e(JsonUtils.class.getSimpleName(), "To json failed", th);
            return "";
        }
    }

    public static <R> R fromJson(String str, Type type, Supplier<R> supplier) {
        R r = (R) fromJson(str, type);
        return r == null ? supplier.get() : r;
    }
}
