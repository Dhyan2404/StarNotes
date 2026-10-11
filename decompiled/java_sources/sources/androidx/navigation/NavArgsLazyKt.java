package androidx.navigation;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\"&\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u00008\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\".\u0010\u0010\u001a\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\u000b0\b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, m61528d2 = {"", "Ljava/lang/Class;", "Landroid/os/Bundle;", "a", "[Ljava/lang/Class;", "getMethodSignature", "()[Ljava/lang/Class;", "methodSignature", "Landroidx/collection/ArrayMap;", "Lkotlin/reflect/KClass;", "Landroidx/navigation/NavArgs;", "Ljava/lang/reflect/Method;", "b", "Landroidx/collection/ArrayMap;", "getMethodMap", "()Landroidx/collection/ArrayMap;", "methodMap", "navigation-common_release"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class NavArgsLazyKt {

    /* renamed from: a */
    @NotNull
    public static final Class<Bundle>[] f8334a = {Bundle.class};

    /* renamed from: b */
    @NotNull
    public static final ArrayMap<KClass<? extends NavArgs>, Method> f8335b = new ArrayMap<>();

    @NotNull
    public static final ArrayMap<KClass<? extends NavArgs>, Method> getMethodMap() {
        return f8335b;
    }

    @NotNull
    public static final Class<Bundle>[] getMethodSignature() {
        return f8334a;
    }
}
