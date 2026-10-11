package kotlinx.coroutines.selects;

import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;

@SourceDebugExtension({"SMAP\nOnTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,66:1\n17#2:67\n*S KotlinDebug\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n56#1:67\n*E\n"})
/* loaded from: classes11.dex */
public final class OnTimeout {

    /* renamed from: a */
    public final long f98665a;

    public OnTimeout(long j) {
        this.f98665a = j;
    }

    /* renamed from: c */
    public static /* synthetic */ void m62300c() {
    }

    @NotNull
    /* renamed from: b */
    public final SelectClause0 m62301b() {
        OnTimeout$selectClause$1 onTimeout$selectClause$1 = OnTimeout$selectClause$1.INSTANCE;
        Intrinsics.checkNotNull(onTimeout$selectClause$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        return new SelectClause0Impl(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(onTimeout$selectClause$1, 3), null, 4, null);
    }

    /* renamed from: d */
    public final void m62302d(final SelectInstance<?> selectInstance, Object obj) {
        if (this.f98665a <= 0) {
            selectInstance.selectInRegistrationPhase(Unit.INSTANCE);
            return;
        }
        Runnable runnable = new Runnable() { // from class: kotlinx.coroutines.selects.OnTimeout$register$$inlined$Runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                SelectInstance.this.trySelect(this, Unit.INSTANCE);
            }
        };
        Intrinsics.checkNotNull(selectInstance, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
        CoroutineContext context = selectInstance.getContext();
        selectInstance.disposeOnCompletion(DelayKt.getDelay(context).invokeOnTimeout(this.f98665a, runnable, context));
    }
}
