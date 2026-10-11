package androidx.window.layout;

import android.app.Activity;
import android.graphics.Rect;
import androidx.annotation.RequiresApi;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.layout.WindowLayoutComponent;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.function.Consumer;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b \u0010!J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0003J\u0016\u0010\f\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\nH\u0002J\u0018\u0010\u0010\u001a\u00020\u0004*\u00020\r2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0002J\u0018\u0010\u0012\u001a\u00020\u0004*\u00020\r2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u0011H\u0002J \u0010\u0014\u001a\u0012\u0012\u0002\b\u0003 \u0013*\b\u0012\u0002\b\u0003\u0018\u00010\u00110\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u0015\u001a\u0012\u0012\u0002\b\u0003 \u0013*\b\u0012\u0002\b\u0003\u0018\u00010\u00110\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u0016\u001a\u0012\u0012\u0002\b\u0003 \u0013*\b\u0012\u0002\b\u0003\u0018\u00010\u00110\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u0017\u001a\u0012\u0012\u0002\b\u0003 \u0013*\b\u0012\u0002\b\u0003\u0018\u00010\u00110\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u001d\u0010\u001c\u001a\u0004\u0018\u00010\u00188FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u00020\u0004*\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Landroidx/window/layout/SafeWindowLayoutComponentProvider;", "", "Ljava/lang/ClassLoader;", "classLoader", "", "a", "i", C6998g.f39679a, "e", C6999h.f39688c, "Lkotlin/Function0;", BreakpointSQLiteHelper.f39283i, "j", "Ljava/lang/reflect/Method;", "Lkotlin/reflect/KClass;", "clazz", "c", "Ljava/lang/Class;", "b", "kotlin.jvm.PlatformType", "l", C4921e.f26537n, "d", "m", "Landroidx/window/extensions/layout/WindowLayoutComponent;", "Lkotlin/Lazy;", "getWindowLayoutComponent", "()Landroidx/window/extensions/layout/WindowLayoutComponent;", "windowLayoutComponent", C6997f.f39671c, "(Ljava/lang/reflect/Method;)Z", "isPublic", Constants.CONSTRUCTOR_NAME, "()V", "window_release"}, m61529k = 1, m61530mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class SafeWindowLayoutComponentProvider {

    @NotNull
    public static final SafeWindowLayoutComponentProvider INSTANCE = new SafeWindowLayoutComponentProvider();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy windowLayoutComponent;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<WindowLayoutComponent>() { // from class: androidx.window.layout.SafeWindowLayoutComponentProvider$windowLayoutComponent$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final WindowLayoutComponent invoke() {
                boolean m6925a;
                ClassLoader classLoader = SafeWindowLayoutComponentProvider.class.getClassLoader();
                if (classLoader != null) {
                    m6925a = SafeWindowLayoutComponentProvider.INSTANCE.m6925a(classLoader);
                    if (m6925a) {
                        try {
                            return WindowExtensionsProvider.getWindowExtensions().getWindowLayoutComponent();
                        } catch (UnsupportedOperationException unused) {
                            return null;
                        }
                    }
                }
                return null;
            }
        });
        windowLayoutComponent = lazy;
    }

    /* renamed from: a */
    public final boolean m6925a(ClassLoader classLoader) {
        return m6933i(classLoader) && m6931g(classLoader) && m6932h(classLoader) && m6929e(classLoader);
    }

    /* renamed from: b */
    public final boolean m6926b(Method method, Class<?> cls) {
        return method.getReturnType().equals(cls);
    }

    /* renamed from: c */
    public final boolean m6927c(Method method, KClass<?> kClass) {
        return m6926b(method, JvmClassMappingKt.getJavaClass((KClass) kClass));
    }

    /* renamed from: d */
    public final Class<?> m6928d(ClassLoader classLoader) {
        return classLoader.loadClass("androidx.window.extensions.layout.FoldingFeature");
    }

    /* renamed from: e */
    public final boolean m6929e(final ClassLoader classLoader) {
        return m6934j(new Function0<Boolean>() { // from class: androidx.window.layout.SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                Class m6928d;
                boolean m6927c;
                boolean m6930f;
                boolean m6927c2;
                boolean m6930f2;
                boolean m6927c3;
                boolean m6930f3;
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
                m6928d = safeWindowLayoutComponentProvider.m6928d(classLoader);
                boolean z = false;
                Method getBoundsMethod = m6928d.getMethod("getBounds", new Class[0]);
                Method getTypeMethod = m6928d.getMethod("getType", new Class[0]);
                Method getStateMethod = m6928d.getMethod("getState", new Class[0]);
                Intrinsics.checkNotNullExpressionValue(getBoundsMethod, "getBoundsMethod");
                m6927c = safeWindowLayoutComponentProvider.m6927c(getBoundsMethod, Reflection.getOrCreateKotlinClass(Rect.class));
                if (m6927c) {
                    m6930f = safeWindowLayoutComponentProvider.m6930f(getBoundsMethod);
                    if (m6930f) {
                        Intrinsics.checkNotNullExpressionValue(getTypeMethod, "getTypeMethod");
                        Class cls = Integer.TYPE;
                        m6927c2 = safeWindowLayoutComponentProvider.m6927c(getTypeMethod, Reflection.getOrCreateKotlinClass(cls));
                        if (m6927c2) {
                            m6930f2 = safeWindowLayoutComponentProvider.m6930f(getTypeMethod);
                            if (m6930f2) {
                                Intrinsics.checkNotNullExpressionValue(getStateMethod, "getStateMethod");
                                m6927c3 = safeWindowLayoutComponentProvider.m6927c(getStateMethod, Reflection.getOrCreateKotlinClass(cls));
                                if (m6927c3) {
                                    m6930f3 = safeWindowLayoutComponentProvider.m6930f(getStateMethod);
                                    if (m6930f3) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
                return Boolean.valueOf(z);
            }
        });
    }

    /* renamed from: f */
    public final boolean m6930f(Method method) {
        return Modifier.isPublic(method.getModifiers());
    }

    /* renamed from: g */
    public final boolean m6931g(final ClassLoader classLoader) {
        return m6934j(new Function0<Boolean>() { // from class: androidx.window.layout.SafeWindowLayoutComponentProvider$isWindowExtensionsValid$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                Class m6935k;
                Class windowLayoutComponentClass;
                boolean m6930f;
                boolean m6926b;
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
                m6935k = safeWindowLayoutComponentProvider.m6935k(classLoader);
                boolean z = false;
                Method getWindowLayoutComponentMethod = m6935k.getMethod("getWindowLayoutComponent", new Class[0]);
                windowLayoutComponentClass = safeWindowLayoutComponentProvider.m6937m(classLoader);
                Intrinsics.checkNotNullExpressionValue(getWindowLayoutComponentMethod, "getWindowLayoutComponentMethod");
                m6930f = safeWindowLayoutComponentProvider.m6930f(getWindowLayoutComponentMethod);
                if (m6930f) {
                    Intrinsics.checkNotNullExpressionValue(windowLayoutComponentClass, "windowLayoutComponentClass");
                    m6926b = safeWindowLayoutComponentProvider.m6926b(getWindowLayoutComponentMethod, windowLayoutComponentClass);
                    if (m6926b) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        });
    }

    @Nullable
    public final WindowLayoutComponent getWindowLayoutComponent() {
        return (WindowLayoutComponent) windowLayoutComponent.getValue();
    }

    @RequiresApi(24)
    /* renamed from: h */
    public final boolean m6932h(final ClassLoader classLoader) {
        return m6934j(new Function0<Boolean>() { // from class: androidx.window.layout.SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                Class m6937m;
                boolean m6930f;
                boolean m6930f2;
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
                m6937m = safeWindowLayoutComponentProvider.m6937m(classLoader);
                boolean z = false;
                Method addListenerMethod = m6937m.getMethod("addWindowLayoutInfoListener", Activity.class, Consumer.class);
                Method removeListenerMethod = m6937m.getMethod("removeWindowLayoutInfoListener", Consumer.class);
                Intrinsics.checkNotNullExpressionValue(addListenerMethod, "addListenerMethod");
                m6930f = safeWindowLayoutComponentProvider.m6930f(addListenerMethod);
                if (m6930f) {
                    Intrinsics.checkNotNullExpressionValue(removeListenerMethod, "removeListenerMethod");
                    m6930f2 = safeWindowLayoutComponentProvider.m6930f(removeListenerMethod);
                    if (m6930f2) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        });
    }

    /* renamed from: i */
    public final boolean m6933i(final ClassLoader classLoader) {
        return m6934j(new Function0<Boolean>() { // from class: androidx.window.layout.SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                Class m6936l;
                Class windowExtensionsClass;
                boolean m6926b;
                boolean m6930f;
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
                m6936l = safeWindowLayoutComponentProvider.m6936l(classLoader);
                boolean z = false;
                Method getWindowExtensionsMethod = m6936l.getDeclaredMethod("getWindowExtensions", new Class[0]);
                windowExtensionsClass = safeWindowLayoutComponentProvider.m6935k(classLoader);
                Intrinsics.checkNotNullExpressionValue(getWindowExtensionsMethod, "getWindowExtensionsMethod");
                Intrinsics.checkNotNullExpressionValue(windowExtensionsClass, "windowExtensionsClass");
                m6926b = safeWindowLayoutComponentProvider.m6926b(getWindowExtensionsMethod, windowExtensionsClass);
                if (m6926b) {
                    m6930f = safeWindowLayoutComponentProvider.m6930f(getWindowExtensionsMethod);
                    if (m6930f) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        });
    }

    /* renamed from: j */
    public final boolean m6934j(Function0<Boolean> block) {
        try {
            return block.invoke().booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return false;
        }
    }

    /* renamed from: k */
    public final Class<?> m6935k(ClassLoader classLoader) {
        return classLoader.loadClass("androidx.window.extensions.WindowExtensions");
    }

    /* renamed from: l */
    public final Class<?> m6936l(ClassLoader classLoader) {
        return classLoader.loadClass("androidx.window.extensions.WindowExtensionsProvider");
    }

    /* renamed from: m */
    public final Class<?> m6937m(ClassLoader classLoader) {
        return classLoader.loadClass("androidx.window.extensions.layout.WindowLayoutComponent");
    }
}
