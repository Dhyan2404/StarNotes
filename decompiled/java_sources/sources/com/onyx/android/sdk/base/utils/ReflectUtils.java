package com.onyx.android.sdk.base.utils;

import android.util.Log;
import androidx.core.graphics.drawable.IconCompat;
import androidx.transition.Transition;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.math3.dfp.Dfp;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b/\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bQ\u0010RJ\u0018\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002JW\u0010\r\u001a\u00020\f2\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u001e\u0010\u000b\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00040\n\"\b\u0012\u0002\b\u0003\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\r\u0010\u000eJ.\u0010\u0010\u001a\u00020\f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00062\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J.\u0010\u0011\u001a\u00020\f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00062\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J8\u0010\u0013\u001a\u00020\f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\u00062\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J8\u0010\u0014\u001a\u00020\f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\u00062\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J0\u0010\u0015\u001a\u00020\f2\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002JE\u0010\u0019\u001a\u00020\f2\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\f\u0010\u0017\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\u0016\u0010\u0018\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\n\"\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJK\u0010\u001d\u001a\u00020\f2\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010\u00012\u0016\u0010\u0018\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\n\"\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ8\u0010 \u001a\u00020\f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00062\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J:\u0010!\u001a\u00020\f2\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00062\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J*\u0010\"\u001a\u00020\u000f2\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J8\u0010%\u001a\u00020\f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00062\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010#\u001a\u0004\u0018\u00010\u00022\b\u0010$\u001a\u0004\u0018\u00010\u0002H\u0002J*\u0010&\u001a\u00020\u000f2\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010#\u001a\u0004\u0018\u00010\u00022\b\u0010$\u001a\u0004\u0018\u00010\u0002H\u0002J2\u0010(\u001a\u00020\f2\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u00012\b\u0010$\u001a\u0004\u0018\u00010\u00022\u0006\u0010'\u001a\u00020\u000fH\u0002JU\u0010)\u001a\u00020\f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u001e\u0010\u000b\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00040\n\"\b\u0012\u0002\b\u0003\u0018\u00010\u0004H\u0002¢\u0006\u0004\b)\u0010\u000eJO\u0010*\u001a\u00020\f2\u0010\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00160\u00062\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\u001e\u0010\u000b\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00040\n\"\b\u0012\u0002\b\u0003\u0018\u00010\u0004H\u0002¢\u0006\u0004\b*\u0010+J4\u0010,\u001a\u00020\f2\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u00012\b\u0010$\u001a\u0004\u0018\u00010\u00022\b\u0010'\u001a\u0004\u0018\u00010\u0001H\u0002JG\u0010-\u001a\u0004\u0018\u00010\u00072\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u001e\u0010\u000b\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00040\n\"\b\u0012\u0002\b\u0003\u0018\u00010\u0004¢\u0006\u0004\b-\u0010.J\u001e\u0010/\u001a\u00020\u000f2\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u001e\u00100\u001a\u00020\u000f2\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J*\u00101\u001a\u0004\u0018\u00010\u00012\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J*\u00102\u001a\u0004\u0018\u00010\u00012\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J \u00103\u001a\u0004\u0018\u00010\u00012\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J5\u00104\u001a\u0004\u0018\u00010\u00012\f\u0010\u0017\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\u0016\u0010\u0018\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\n\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b4\u00105J;\u00106\u001a\u0004\u0018\u00010\u00012\b\u0010\u001b\u001a\u0004\u0018\u00010\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010\u00012\u0016\u0010\u0018\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\n\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b6\u00107JG\u00108\u001a\u0004\u0018\u00010\u00072\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u001e\u0010\u000b\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00040\n\"\b\u0012\u0002\b\u0003\u0018\u00010\u0004¢\u0006\u0004\b8\u0010.J$\u0010:\u001a\u00020\u000f2\b\u00109\u001a\u0004\u0018\u00010\u00022\b\u0010\u001f\u001a\u0004\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J*\u0010;\u001a\u0004\u0018\u00010\u00022\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J$\u0010<\u001a\u00020\u000f2\b\u00109\u001a\u0004\u0018\u00010\u00022\b\u0010#\u001a\u0004\u0018\u00010\u00022\b\u0010$\u001a\u0004\u0018\u00010\u0002J,\u0010=\u001a\u00020\f2\b\u00109\u001a\u0004\u0018\u00010\u00022\b\u0010\u001f\u001a\u0004\u0018\u00010\u00012\b\u0010$\u001a\u0004\u0018\u00010\u00022\u0006\u0010'\u001a\u00020\u000fJA\u0010>\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\u001e\u0010\u000b\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00040\n\"\b\u0012\u0002\b\u0003\u0018\u00010\u0004¢\u0006\u0004\b>\u0010?J\u001a\u0010@\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001f\u001a\u00020\u00012\b\u0010$\u001a\u0004\u0018\u00010\u0002J\u0017\u0010A\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\bA\u0010BJ\u0017\u0010A\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bA\u0010CJ.\u0010D\u001a\u00020\f2\b\u00109\u001a\u0004\u0018\u00010\u00022\b\u0010\u001f\u001a\u0004\u0018\u00010\u00012\b\u0010$\u001a\u0004\u0018\u00010\u00022\b\u0010'\u001a\u0004\u0018\u00010\u0001J\u001a\u0010G\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020F2\u0006\u0010E\u001a\u00020\u0001J\u001e\u00101\u001a\u0004\u0018\u00010I2\n\u0010H\u001a\u0006\u0012\u0002\b\u00030\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u001a\u0010K\u001a\u0004\u0018\u00010\u00012\b\u0010\u001f\u001a\u0004\u0018\u00010\u00012\u0006\u0010J\u001a\u00020IJ\u0018\u0010L\u001a\u00020\u000f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u00012\u0006\u0010J\u001a\u00020IJ\"\u0010N\u001a\u00020M2\u0006\u0010J\u001a\u00020I2\b\u0010\u001f\u001a\u0004\u0018\u00010\u00012\b\u0010'\u001a\u0004\u0018\u00010\u0001R\u0014\u0010P\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010O¨\u0006S"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/ReflectUtils;", "", "", "name", "Ljava/lang/Class;", "a", "Ljava/util/concurrent/atomic/AtomicReference;", "Ljava/lang/reflect/Method;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "cls", "", "parameterTypes", "", "j", "(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z", "", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, Transition.f10626J0, "i", C6998g.f39679a, C4921e.f26537n, "Ljava/lang/reflect/Constructor;", "constructor", "args", "b", "(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Z", "method", EventHandlerManager.RECEIVER, "p", "(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z", IconCompat.f5434l, "d", "e", "c", "innerClsName", "fieldName", "m", "l", "targetValue", "r", C6999h.f39688c, C6997f.f39671c, "(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;[Ljava/lang/Class;)Z", "q", "getMethodSafely", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "getStaticIntFieldSafely", "getStaticIntDeclaredFieldSafely", "getFieldSafely", "getDeclaredFieldSafely", "getStaticFieldSafely", Dfp.f108018r, "(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;", "invokeMethodSafely", "(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;", "getDeclaredMethodSafely", "clsName", "getDeclareIntFieldSafely", "getDeclareStringFieldSafely", "getStaticInnerClassDeclareIntFieldSafely", "setDeclareIntFieldSafely", "getDeclaredConstructorSafely", "(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;", "getObjectFiled", "getSafely", "(Ljava/lang/Integer;)I", "(Ljava/lang/Boolean;)Z", "setDeclareFieldSafely", "bean", "", "getBeanKeyValueMap", "clazz", "Ljava/lang/reflect/Field;", "field", "getObjectSafely", "getIntSafely", "", "setObjectSafely", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "TAG", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ReflectUtils {

    @NotNull
    public static final ReflectUtils INSTANCE = new ReflectUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String TAG = "ReflectUtil";

    /* renamed from: a */
    public final Class<?> m32128a(String name) {
        try {
            return Class.forName(name);
        } catch (Exception e) {
            Log.e("ReflectUtil", "", e);
            return null;
        }
    }

    /* renamed from: b */
    public final boolean m32129b(AtomicReference<Object> result, Constructor<?> constructor, Object... args) {
        if (constructor == null) {
            return false;
        }
        try {
            result.set(constructor.newInstance(Arrays.copyOf(args, args.length)));
            return true;
        } catch (Throwable th) {
            Log.w("ReflectUtil", "", th);
            return false;
        }
    }

    /* renamed from: c */
    public final int m32130c(Class<?> cls, Object obj, String name) {
        AtomicReference<Integer> atomicReference = new AtomicReference<>();
        if (!m32131d(atomicReference, cls, obj, name)) {
            return 0;
        }
        Integer num = atomicReference.get();
        Intrinsics.checkNotNull(num);
        return num.intValue();
    }

    /* renamed from: d */
    public final boolean m32131d(AtomicReference<Integer> result, Class<?> cls, Object obj, String name) {
        if (cls == null) {
            return false;
        }
        try {
            Field declaredField = cls.getDeclaredField(name);
            if (declaredField == null) {
                return false;
            }
            declaredField.setAccessible(true);
            result.set(Integer.valueOf(declaredField.getInt(obj)));
            return true;
        } catch (IllegalAccessException e) {
            Log.w("ReflectUtil", e);
            return false;
        } catch (IllegalArgumentException e2) {
            Log.w("ReflectUtil", e2);
            return false;
        } catch (NoSuchFieldException e3) {
            Log.w("ReflectUtil", e3);
            return false;
        } catch (SecurityException e4) {
            Log.w("ReflectUtil", e4);
            return false;
        }
    }

    /* renamed from: e */
    public final boolean m32132e(AtomicReference<String> result, Class<?> cls, Object obj, String name) {
        if (cls == null) {
            return false;
        }
        try {
            Field declaredField = cls.getDeclaredField(name);
            if (declaredField == null) {
                return false;
            }
            declaredField.setAccessible(true);
            Object obj2 = declaredField.get(obj);
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
            result.set((String) obj2);
            return true;
        } catch (IllegalAccessException e) {
            Log.w("ReflectUtil", e);
            return false;
        } catch (IllegalArgumentException e2) {
            Log.w("ReflectUtil", e2);
            return false;
        } catch (NoSuchFieldException e3) {
            Log.w("ReflectUtil", e3);
            return false;
        } catch (SecurityException e4) {
            Log.w("ReflectUtil", e4);
            return false;
        }
    }

    /* renamed from: f */
    public final boolean m32133f(AtomicReference<Constructor<?>> result, Class<?> cls, Class<?>... parameterTypes) {
        if (cls == null) {
            return false;
        }
        try {
            result.set(cls.getDeclaredConstructor((Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length)));
            return true;
        } catch (NoSuchMethodException e) {
            Log.w("ReflectUtil", e);
            return false;
        } catch (SecurityException e2) {
            Log.w("ReflectUtil", e2);
            return false;
        }
    }

    /* renamed from: g */
    public final boolean m32134g(AtomicReference<Object> result, Class<?> cls, Object instance, String name) {
        if (cls == null) {
            return false;
        }
        try {
            Field declaredField = cls.getDeclaredField(name);
            declaredField.setAccessible(true);
            result.set(declaredField.get(instance));
            return true;
        } catch (IllegalAccessException e) {
            Log.w("ReflectUtil", e);
            return false;
        } catch (IllegalArgumentException e2) {
            Log.w("ReflectUtil", e2);
            return false;
        } catch (NoSuchFieldException e3) {
            Log.w("ReflectUtil", e3);
            return false;
        } catch (SecurityException e4) {
            Log.w("ReflectUtil", e4);
            return false;
        }
    }

    @NotNull
    public final Map<String, String> getBeanKeyValueMap(@NotNull Object bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        HashMap hashMap = new HashMap();
        try {
            Field[] declaredFields = bean.getClass().getDeclaredFields();
            Intrinsics.checkNotNull(declaredFields);
            for (Field field : declaredFields) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    field.setAccessible(true);
                    Object obj = field.get(bean);
                    if (obj != null) {
                        String name = field.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                        hashMap.put(name, obj.toString());
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }

    public final int getDeclareIntFieldSafely(@Nullable String clsName, @Nullable Object obj, @Nullable String name) {
        return m32130c(m32128a(clsName), obj, name);
    }

    @Nullable
    public final String getDeclareStringFieldSafely(@Nullable Class<?> cls, @Nullable Object obj, @Nullable String name) {
        AtomicReference<String> atomicReference = new AtomicReference<>();
        if (m32132e(atomicReference, cls, obj, name)) {
            return atomicReference.get();
        }
        return null;
    }

    @Nullable
    public final Constructor<?> getDeclaredConstructorSafely(@Nullable Class<?> cls, @NotNull Class<?>... parameterTypes) {
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        AtomicReference<Constructor<?>> atomicReference = new AtomicReference<>();
        if (m32133f(atomicReference, cls, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length))) {
            return atomicReference.get();
        }
        return null;
    }

    @Nullable
    public final Object getDeclaredFieldSafely(@Nullable Class<?> cls, @Nullable Object instance, @Nullable String name) {
        AtomicReference<Object> atomicReference = new AtomicReference<>();
        if (m32134g(atomicReference, cls, instance, name)) {
            return atomicReference.get();
        }
        return null;
    }

    @Nullable
    public final Method getDeclaredMethodSafely(@Nullable Class<?> cls, @Nullable String name, @NotNull Class<?>... parameterTypes) {
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        AtomicReference<Method> atomicReference = new AtomicReference<>();
        if (m32135h(atomicReference, cls, name, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length))) {
            return atomicReference.get();
        }
        return null;
    }

    @Nullable
    public final Object getFieldSafely(@Nullable Class<?> cls, @Nullable Object instance, @Nullable String name) {
        AtomicReference<Object> atomicReference = new AtomicReference<>();
        if (m32136i(atomicReference, cls, instance, name)) {
            return atomicReference.get();
        }
        return null;
    }

    public final int getIntSafely(@Nullable Object obj, @NotNull Field field) {
        Intrinsics.checkNotNullParameter(field, "field");
        field.setAccessible(true);
        try {
            return field.getInt(obj);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Nullable
    public final Method getMethodSafely(@Nullable Class<?> cls, @Nullable String name, @NotNull Class<?>... parameterTypes) {
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        AtomicReference<Method> atomicReference = new AtomicReference<>();
        if (m32137j(atomicReference, cls, name, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length))) {
            return atomicReference.get();
        }
        return null;
    }

    @Nullable
    public final Object getObjectFiled(@NotNull Object obj, @Nullable String fieldName) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        try {
            Field declaredField = obj.getClass().getDeclaredField(fieldName);
            Intrinsics.checkNotNull(declaredField);
            declaredField.setAccessible(true);
            try {
                return declaredField.get(obj);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            }
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Nullable
    public final Object getObjectSafely(@Nullable Object obj, @NotNull Field field) {
        Intrinsics.checkNotNullParameter(field, "field");
        field.setAccessible(true);
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    public final int getSafely(@Nullable Integer result) {
        if (result != null) {
            return result.intValue();
        }
        return 0;
    }

    @Nullable
    public final Object getStaticFieldSafely(@Nullable Class<?> cls, @Nullable String name) {
        AtomicReference<Object> atomicReference = new AtomicReference<>();
        if (m32138k(atomicReference, cls, name)) {
            return atomicReference.get();
        }
        return null;
    }

    public final int getStaticInnerClassDeclareIntFieldSafely(@Nullable String clsName, @Nullable String innerClsName, @Nullable String fieldName) {
        return m32139l(m32128a(clsName), innerClsName, fieldName);
    }

    public final int getStaticIntDeclaredFieldSafely(@Nullable Class<?> cls, @Nullable String name) {
        AtomicReference<Integer> atomicReference = new AtomicReference<>();
        if (!m32141n(atomicReference, cls, name)) {
            return 0;
        }
        Integer num = atomicReference.get();
        Intrinsics.checkNotNull(num);
        return num.intValue();
    }

    public final int getStaticIntFieldSafely(@Nullable Class<?> cls, @Nullable String name) {
        AtomicReference<Integer> atomicReference = new AtomicReference<>();
        if (!m32142o(atomicReference, cls, name)) {
            return 0;
        }
        Integer num = atomicReference.get();
        Intrinsics.checkNotNull(num);
        return num.intValue();
    }

    /* renamed from: h */
    public final boolean m32135h(AtomicReference<Method> result, Class<?> cls, String name, Class<?>... parameterTypes) {
        if (cls == null) {
            return false;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod(name, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
            declaredMethod.setAccessible(true);
            result.set(declaredMethod);
            return true;
        } catch (NoSuchMethodException | SecurityException unused) {
            return false;
        }
    }

    /* renamed from: i */
    public final boolean m32136i(AtomicReference<Object> result, Class<?> cls, Object instance, String name) {
        if (cls == null) {
            return false;
        }
        try {
            Field field = cls.getField(name);
            field.setAccessible(true);
            result.set(field.get(instance));
            return true;
        } catch (IllegalAccessException e) {
            Log.w("ReflectUtil", e);
            return false;
        } catch (IllegalArgumentException e2) {
            Log.w("ReflectUtil", e2);
            return false;
        } catch (NoSuchFieldException e3) {
            Log.w("ReflectUtil", e3);
            return false;
        } catch (SecurityException e4) {
            Log.w("ReflectUtil", e4);
            return false;
        }
    }

    @Nullable
    public final Object invokeMethodSafely(@Nullable Method method, @Nullable Object receiver, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        AtomicReference<Object> atomicReference = new AtomicReference<>();
        if (m32143p(atomicReference, method, receiver, Arrays.copyOf(args, args.length))) {
            return atomicReference.get() != null ? atomicReference.get() : new Object();
        }
        return null;
    }

    /* renamed from: j */
    public final boolean m32137j(AtomicReference<Method> result, Class<?> cls, String name, Class<?>... parameterTypes) {
        if (cls == null) {
            return false;
        }
        try {
            result.set(cls.getMethod(name, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length)));
            return true;
        } catch (NoSuchMethodException e) {
            Log.w("ReflectUtil", e.toString());
            return false;
        } catch (SecurityException e2) {
            Log.w("ReflectUtil", e2);
            return false;
        }
    }

    /* renamed from: k */
    public final boolean m32138k(AtomicReference<Object> result, Class<?> cls, String name) {
        if (cls == null) {
            return false;
        }
        try {
            result.set(cls.getField(name).get(null));
            return true;
        } catch (IllegalAccessException e) {
            Log.w("ReflectUtil", e);
            return false;
        } catch (IllegalArgumentException e2) {
            Log.w("ReflectUtil", e2);
            return false;
        } catch (NoSuchFieldException e3) {
            Log.w("ReflectUtil", e3);
            return false;
        } catch (SecurityException e4) {
            Log.w("ReflectUtil", e4);
            return false;
        }
    }

    /* renamed from: l */
    public final int m32139l(Class<?> cls, String innerClsName, String fieldName) {
        AtomicReference<Integer> atomicReference = new AtomicReference<>();
        if (!m32140m(atomicReference, cls, innerClsName, fieldName)) {
            return 0;
        }
        Integer num = atomicReference.get();
        Intrinsics.checkNotNull(num);
        return num.intValue();
    }

    /* renamed from: m */
    public final boolean m32140m(AtomicReference<Integer> result, Class<?> cls, String innerClsName, String fieldName) {
        boolean contains$default;
        boolean contains$default2;
        if (cls == null) {
            return false;
        }
        try {
            Class<?>[] declaredClasses = cls.getDeclaredClasses();
            Intrinsics.checkNotNull(declaredClasses);
            for (Class<?> cls2 : declaredClasses) {
                String modifier = Modifier.toString(cls2.getModifiers());
                Intrinsics.checkNotNull(modifier);
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) modifier, (CharSequence) "static", false, 2, (Object) null);
                if (contains$default) {
                    String simpleName = cls2.getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
                    Intrinsics.checkNotNull(innerClsName);
                    contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) simpleName, (CharSequence) innerClsName, false, 2, (Object) null);
                    if (contains$default2) {
                        Object newInstance = cls2.newInstance();
                        Field declaredField = cls2.getDeclaredField(fieldName);
                        declaredField.setAccessible(true);
                        result.set(Integer.valueOf(declaredField.getInt(newInstance)));
                    }
                }
            }
            return true;
        } catch (IllegalAccessException e) {
            Log.w("ReflectUtil", e);
            return false;
        } catch (IllegalArgumentException e2) {
            Log.w("ReflectUtil", e2);
            return false;
        } catch (InstantiationException e3) {
            e3.printStackTrace();
            return false;
        } catch (NoSuchFieldException e4) {
            Log.w("ReflectUtil", e4);
            return false;
        } catch (SecurityException e5) {
            Log.w("ReflectUtil", e5);
            return false;
        }
    }

    /* renamed from: n */
    public final boolean m32141n(AtomicReference<Integer> result, Class<?> cls, String name) {
        if (cls == null) {
            return false;
        }
        try {
            Field declaredField = cls.getDeclaredField(name);
            declaredField.setAccessible(true);
            result.set(Integer.valueOf(declaredField.getInt(null)));
            return true;
        } catch (IllegalAccessException e) {
            Log.w("ReflectUtil", e);
            return false;
        } catch (IllegalArgumentException e2) {
            Log.w("ReflectUtil", e2);
            return false;
        } catch (NoSuchFieldException e3) {
            Log.w("ReflectUtil", e3);
            return false;
        } catch (SecurityException e4) {
            Log.w("ReflectUtil", e4);
            return false;
        }
    }

    @Nullable
    public final Object newInstance(@Nullable Constructor<?> constructor, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        AtomicReference<Object> atomicReference = new AtomicReference<>();
        if (m32129b(atomicReference, constructor, Arrays.copyOf(args, args.length))) {
            return atomicReference.get();
        }
        return null;
    }

    /* renamed from: o */
    public final boolean m32142o(AtomicReference<Integer> result, Class<?> cls, String name) {
        if (cls == null) {
            return false;
        }
        try {
            result.set(Integer.valueOf(cls.getField(name).getInt(null)));
            return true;
        } catch (IllegalAccessException e) {
            Log.w("ReflectUtil", e);
            return false;
        } catch (IllegalArgumentException e2) {
            Log.w("ReflectUtil", e2);
            return false;
        } catch (NoSuchFieldException e3) {
            Log.w("ReflectUtil", e3);
            return false;
        } catch (SecurityException e4) {
            Log.w("ReflectUtil", e4);
            return false;
        }
    }

    /* renamed from: p */
    public final boolean m32143p(AtomicReference<Object> result, Method method, Object receiver, Object... args) {
        if (method == null) {
            return false;
        }
        try {
            result.set(method.invoke(receiver, Arrays.copyOf(args, args.length)));
            return true;
        } catch (Throwable th) {
            Log.w("ReflectUtil", "", th);
            return false;
        }
    }

    /* renamed from: q */
    public final boolean m32144q(Class<?> cls, Object obj, String fieldName, Object targetValue) {
        try {
            Intrinsics.checkNotNull(cls);
            Field declaredField = cls.getDeclaredField(fieldName);
            Intrinsics.checkNotNullExpressionValue(declaredField, "getDeclaredField(...)");
            declaredField.setAccessible(true);
            declaredField.set(obj, targetValue);
            return true;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return false;
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* renamed from: r */
    public final boolean m32145r(Class<?> cls, Object obj, String fieldName, int targetValue) {
        try {
            Intrinsics.checkNotNull(cls);
            Field declaredField = cls.getDeclaredField(fieldName);
            Intrinsics.checkNotNullExpressionValue(declaredField, "getDeclaredField(...)");
            declaredField.setAccessible(true);
            declaredField.setInt(obj, targetValue);
            return true;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return false;
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final boolean setDeclareFieldSafely(@Nullable String clsName, @Nullable Object obj, @Nullable String fieldName, @Nullable Object targetValue) {
        return m32144q(m32128a(clsName), obj, fieldName, targetValue);
    }

    public final boolean setDeclareIntFieldSafely(@Nullable String clsName, @Nullable Object obj, @Nullable String fieldName, int targetValue) {
        return m32145r(m32128a(clsName), obj, fieldName, targetValue);
    }

    public final void setObjectSafely(@NotNull Field field, @Nullable Object obj, @Nullable Object targetValue) {
        Intrinsics.checkNotNullParameter(field, "field");
        field.setAccessible(true);
        try {
            field.set(obj, targetValue);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    public final boolean getSafely(@Nullable Boolean result) {
        if (result != null) {
            return result.booleanValue();
        }
        return false;
    }

    @Nullable
    public final Field getFieldSafely(@NotNull Class<?> clazz, @Nullable String name) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        try {
            return clazz.getField(name);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
            return null;
        }
    }
}
