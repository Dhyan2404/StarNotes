package com.blankj.utilcode.util;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class GsonUtils {

    /* renamed from: a */
    public static final String f13763a = "defaultGson";

    /* renamed from: b */
    public static final String f13764b = "delegateGson";

    /* renamed from: c */
    public static final String f13765c = "logUtilsGson";

    /* renamed from: d */
    public static final Map<String, Gson> f13766d = new ConcurrentHashMap();

    public GsonUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static Gson m8100a() {
        return new GsonBuilder().serializeNulls().disableHtmlEscaping().create();
    }

    /* renamed from: b */
    public static Gson m8101b() {
        Map<String, Gson> map = f13766d;
        Gson gson = map.get(f13765c);
        if (gson != null) {
            return gson;
        }
        Gson create = new GsonBuilder().setPrettyPrinting().serializeNulls().create();
        map.put(f13765c, create);
        return create;
    }

    public static <T> T fromJson(String str, @NonNull Class<T> cls) {
        return (T) fromJson(getGson(), str, (Class) cls);
    }

    public static Type getArrayType(@NonNull Type type) {
        return TypeToken.getArray(type).getType();
    }

    public static Gson getGson(String str) {
        return f13766d.get(str);
    }

    public static Type getListType(@NonNull Type type) {
        return TypeToken.getParameterized(List.class, type).getType();
    }

    public static Type getMapType(@NonNull Type type, @NonNull Type type2) {
        return TypeToken.getParameterized(Map.class, type, type2).getType();
    }

    public static Type getSetType(@NonNull Type type) {
        return TypeToken.getParameterized(Set.class, type).getType();
    }

    public static Type getType(@NonNull Type type, @NonNull Type... typeArr) {
        return TypeToken.getParameterized(type, typeArr).getType();
    }

    public static void setGson(String str, Gson gson) {
        if (TextUtils.isEmpty(str) || gson == null) {
            return;
        }
        f13766d.put(str, gson);
    }

    public static void setGsonDelegate(Gson gson) {
        if (gson == null) {
            return;
        }
        f13766d.put(f13764b, gson);
    }

    public static String toJson(Object obj) {
        return toJson(getGson(), obj);
    }

    public static <T> T fromJson(String str, @NonNull Type type) {
        return (T) fromJson(getGson(), str, type);
    }

    public static Gson getGson() {
        Map<String, Gson> map = f13766d;
        Gson gson = map.get(f13764b);
        if (gson != null) {
            return gson;
        }
        Gson gson2 = map.get(f13763a);
        if (gson2 != null) {
            return gson2;
        }
        Gson m8100a = m8100a();
        map.put(f13763a, m8100a);
        return m8100a;
    }

    public static String toJson(Object obj, @NonNull Type type) {
        return toJson(getGson(), obj, type);
    }

    public static <T> T fromJson(@NonNull Reader reader, @NonNull Class<T> cls) {
        return (T) fromJson(getGson(), reader, (Class) cls);
    }

    public static String toJson(@NonNull Gson gson, Object obj) {
        return gson.toJson(obj);
    }

    public static <T> T fromJson(@NonNull Reader reader, @NonNull Type type) {
        return (T) fromJson(getGson(), reader, type);
    }

    public static String toJson(@NonNull Gson gson, Object obj, @NonNull Type type) {
        return gson.toJson(obj, type);
    }

    public static <T> T fromJson(@NonNull Gson gson, String str, @NonNull Class<T> cls) {
        return (T) gson.fromJson(str, (Class) cls);
    }

    public static <T> T fromJson(@NonNull Gson gson, String str, @NonNull Type type) {
        return (T) gson.fromJson(str, type);
    }

    public static <T> T fromJson(@NonNull Gson gson, Reader reader, @NonNull Class<T> cls) {
        return (T) gson.fromJson(reader, (Class) cls);
    }

    public static <T> T fromJson(@NonNull Gson gson, Reader reader, @NonNull Type type) {
        return (T) gson.fromJson(reader, type);
    }
}
