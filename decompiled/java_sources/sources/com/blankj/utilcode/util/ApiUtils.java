package com.blankj.utilcode.util;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class ApiUtils {

    /* renamed from: c */
    public static final String f13618c = "ApiUtils";

    /* renamed from: a */
    public Map<Class, BaseApi> f13619a;

    /* renamed from: b */
    public Map<Class, Class> f13620b;

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3.dex */
    public @interface Api {
        boolean isMock() default false;
    }

    /* loaded from: classes3.dex */
    public static class BaseApi {
    }

    /* renamed from: com.blankj.utilcode.util.ApiUtils$b */
    /* loaded from: classes3.dex */
    public static class C1797b {

        /* renamed from: a */
        public static final ApiUtils f13621a = new ApiUtils();
    }

    /* renamed from: b */
    public static ApiUtils m7953b() {
        return C1797b.f13621a;
    }

    @Nullable
    public static <T extends BaseApi> T getApi(@NonNull Class<T> cls) {
        return (T) m7953b().m7954a(cls);
    }

    public static void register(@Nullable Class<? extends BaseApi> cls) {
        if (cls == null) {
            return;
        }
        m7953b().m7956d(cls);
    }

    @NonNull
    public static String toString_() {
        return m7953b().toString();
    }

    /* renamed from: a */
    public final <Result> Result m7954a(Class cls) {
        Result result = (Result) ((BaseApi) this.f13619a.get(cls));
        if (result != null) {
            return result;
        }
        synchronized (cls) {
            Result result2 = (Result) ((BaseApi) this.f13619a.get(cls));
            if (result2 != null) {
                return result2;
            }
            Class cls2 = this.f13620b.get(cls);
            if (cls2 == null) {
                Log.e(f13618c, "The <" + cls + "> doesn't implement.");
                return null;
            }
            try {
                Result result3 = (Result) ((BaseApi) cls2.newInstance());
                this.f13619a.put(cls, result3);
                return result3;
            } catch (Exception unused) {
                Log.e(f13618c, "The <" + cls2 + "> has no parameterless constructor.");
                return null;
            }
        }
    }

    /* renamed from: c */
    public final void m7955c() {
    }

    /* renamed from: d */
    public final void m7956d(Class cls) {
        this.f13620b.put(cls.getSuperclass(), cls);
    }

    public String toString() {
        return "ApiUtils: " + this.f13620b;
    }

    public ApiUtils() {
        this.f13619a = new ConcurrentHashMap();
        this.f13620b = new HashMap();
        m7955c();
    }
}
