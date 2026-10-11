package kotlinx.coroutines.internal;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@IgnoreJRERequirement
/* loaded from: classes11.dex */
public final class ClassValueCtorCache extends CtorCache {

    /* renamed from: a */
    @NotNull
    public static final ClassValueCtorCache f98568a = new ClassValueCtorCache();

    /* renamed from: b */
    @NotNull
    public static final ClassValueCtorCache$cache$1 f98569b = new ClassValue<Function1<? super Throwable, ? extends Throwable>>() { // from class: kotlinx.coroutines.internal.ClassValueCtorCache$cache$1
        @Override // java.lang.ClassValue
        public /* bridge */ /* synthetic */ Function1<? super Throwable, ? extends Throwable> computeValue(Class cls) {
            return computeValue2((Class<?>) cls);
        }

        @Override // java.lang.ClassValue
        @NotNull
        /* renamed from: computeValue, reason: avoid collision after fix types in other method */
        public Function1<? super Throwable, ? extends Throwable> computeValue2(@Nullable Class<?> type) {
            Intrinsics.checkNotNull(type, "null cannot be cast to non-null type java.lang.Class<out kotlin.Throwable>");
            return ExceptionsConstructorKt.access$createConstructor(type);
        }
    };

    @Override // kotlinx.coroutines.internal.CtorCache
    @NotNull
    public Function1<Throwable, Throwable> get(@NotNull Class<? extends Throwable> cls) {
        Object obj;
        obj = f98569b.get(cls);
        return (Function1) obj;
    }
}
