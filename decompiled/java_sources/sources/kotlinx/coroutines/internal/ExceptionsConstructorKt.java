package kotlinx.coroutines.internal;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.sunia.HTREnginev2.s5o;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CopyableThrowable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a#\u0010\u0003\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a2\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0007j\u0002`\b\"\b\b\u0000\u0010\u0001*\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0002\u001a.\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0007j\u0002`\b2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00000\u0007H\u0002\u001a\u0018\u0010\u000e\u001a\u00020\f*\u0006\u0012\u0002\b\u00030\u00052\u0006\u0010\r\u001a\u00020\fH\u0002\u001a\u001b\u0010\u0010\u001a\u00020\f*\u0006\u0012\u0002\b\u00030\u00052\b\b\u0002\u0010\u000f\u001a\u00020\fH\u0082\u0010\"\u0014\u0010\u0012\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0011\"\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0014*(\b\u0002\u0010\u0016\"\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u00072\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0007¨\u0006\u0017"}, m61528d2 = {"", "E", "exception", "tryCopyException", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Ljava/lang/Class;", "clz", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/Ctor;", "a", BreakpointSQLiteHelper.f39283i, "e", "", "defaultValue", "d", "accumulator", "b", "I", "throwableFields", "Lkotlinx/coroutines/internal/CtorCache;", "Lkotlinx/coroutines/internal/CtorCache;", "ctorCache", "Ctor", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n1#2:117\n11335#3:118\n11670#3,3:119\n12904#3,3:136\n1963#4,14:122\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n*L\n45#1:118\n45#1:119,3\n82#1:136,3\n63#1:122,14\n*E\n"})
/* loaded from: classes11.dex */
public final class ExceptionsConstructorKt {

    /* renamed from: a */
    public static final int f98579a = m62198d(Throwable.class, -1);

    /* renamed from: b */
    @NotNull
    public static final CtorCache f98580b;

    static {
        CtorCache ctorCache;
        try {
            ctorCache = FastServiceLoaderKt.getANDROID_DETECTED() ? s5o.f83833a : ClassValueCtorCache.f98568a;
        } catch (Throwable unused) {
            ctorCache = s5o.f83833a;
        }
        f98580b = ctorCache;
    }

    /* renamed from: a */
    public static final <E extends Throwable> Function1<Throwable, Throwable> m62195a(Class<E> cls) {
        Object obj;
        Function1<Throwable, Throwable> function1;
        Pair m61535to;
        ExceptionsConstructorKt$createConstructor$nullResult$1 exceptionsConstructorKt$createConstructor$nullResult$1 = new Function1() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$nullResult$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final Void invoke(@NotNull Throwable th) {
                return null;
            }
        };
        if (f98579a != m62198d(cls, 0)) {
            return exceptionsConstructorKt$createConstructor$nullResult$1;
        }
        Constructor<?>[] constructors = cls.getConstructors();
        ArrayList arrayList = new ArrayList(constructors.length);
        int length = constructors.length;
        int i = 0;
        while (true) {
            obj = null;
            if (i >= length) {
                break;
            }
            final Constructor<?> constructor = constructors[i];
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            int length2 = parameterTypes.length;
            if (length2 == 0) {
                m61535to = TuplesKt.m61535to(m62199e(new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$1$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Throwable invoke(@NotNull Throwable th) {
                        Object newInstance = constructor.newInstance(new Object[0]);
                        Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                        Throwable th2 = (Throwable) newInstance;
                        th2.initCause(th);
                        return th2;
                    }
                }), 0);
            } else if (length2 != 1) {
                m61535to = length2 != 2 ? TuplesKt.m61535to(null, -1) : (Intrinsics.areEqual(parameterTypes[0], String.class) && Intrinsics.areEqual(parameterTypes[1], Throwable.class)) ? TuplesKt.m61535to(m62199e(new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Throwable invoke(@NotNull Throwable th) {
                        Object newInstance = constructor.newInstance(th.getMessage(), th);
                        Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                        return (Throwable) newInstance;
                    }
                }), 3) : TuplesKt.m61535to(null, -1);
            } else {
                Class<?> cls2 = parameterTypes[0];
                m61535to = Intrinsics.areEqual(cls2, String.class) ? TuplesKt.m61535to(m62199e(new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$1$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Throwable invoke(@NotNull Throwable th) {
                        Object newInstance = constructor.newInstance(th.getMessage());
                        Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                        Throwable th2 = (Throwable) newInstance;
                        th2.initCause(th);
                        return th2;
                    }
                }), 2) : Intrinsics.areEqual(cls2, Throwable.class) ? TuplesKt.m61535to(m62199e(new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$1$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Throwable invoke(@NotNull Throwable th) {
                        Object newInstance = constructor.newInstance(th);
                        Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                        return (Throwable) newInstance;
                    }
                }), 1) : TuplesKt.m61535to(null, -1);
            }
            arrayList.add(m61535to);
            i++;
        }
        Iterator it2 = arrayList.iterator();
        if (it2.hasNext()) {
            obj = it2.next();
            if (it2.hasNext()) {
                int intValue = ((Number) ((Pair) obj).getSecond()).intValue();
                do {
                    Object next = it2.next();
                    int intValue2 = ((Number) ((Pair) next).getSecond()).intValue();
                    if (intValue < intValue2) {
                        obj = next;
                        intValue = intValue2;
                    }
                } while (it2.hasNext());
            }
        }
        Pair pair = (Pair) obj;
        return (pair == null || (function1 = (Function1) pair.getFirst()) == null) ? exceptionsConstructorKt$createConstructor$nullResult$1 : function1;
    }

    public static final /* synthetic */ Function1 access$createConstructor(Class cls) {
        return m62195a(cls);
    }

    /* renamed from: b */
    public static final int m62196b(Class<?> cls, int i) {
        do {
            int length = cls.getDeclaredFields().length;
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                if (!Modifier.isStatic(r0[i3].getModifiers())) {
                    i2++;
                }
            }
            i += i2;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i;
    }

    /* renamed from: c */
    public static /* synthetic */ int m62197c(Class cls, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return m62196b(cls, i);
    }

    /* renamed from: d */
    public static final int m62198d(Class<?> cls, int i) {
        Object m72621constructorimpl;
        JvmClassMappingKt.getKotlinClass(cls);
        try {
            Result.Companion companion = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(Integer.valueOf(m62197c(cls, 0, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(ResultKt.createFailure(th));
        }
        Integer valueOf = Integer.valueOf(i);
        if (Result.m72627isFailureimpl(m72621constructorimpl)) {
            m72621constructorimpl = valueOf;
        }
        return ((Number) m72621constructorimpl).intValue();
    }

    /* renamed from: e */
    public static final Function1<Throwable, Throwable> m62199e(final Function1<? super Throwable, ? extends Throwable> function1) {
        return new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$safeCtor$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final Throwable invoke(@NotNull Throwable th) {
                Object m72621constructorimpl;
                Function1<Throwable, Throwable> function12 = function1;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Throwable invoke = function12.invoke(th);
                    if (!Intrinsics.areEqual(th.getMessage(), invoke.getMessage()) && !Intrinsics.areEqual(invoke.getMessage(), th.toString())) {
                        invoke = null;
                    }
                    m72621constructorimpl = Result.m72621constructorimpl(invoke);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    m72621constructorimpl = Result.m72621constructorimpl(ResultKt.createFailure(th2));
                }
                return (Throwable) (Result.m72627isFailureimpl(m72621constructorimpl) ? null : m72621constructorimpl);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <E extends Throwable> E tryCopyException(@NotNull E e) {
        Object m72621constructorimpl;
        if (!(e instanceof CopyableThrowable)) {
            return (E) f98580b.get(e.getClass()).invoke(e);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(((CopyableThrowable) e).createCopy());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m72627isFailureimpl(m72621constructorimpl)) {
            m72621constructorimpl = null;
        }
        return (E) m72621constructorimpl;
    }
}
