package kotlinx.coroutines.flow;

import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.FlowCoroutineKt;
import org.jetbrains.annotations.NotNull;

@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,415:1\n1#2:416\n*E\n"})
/* loaded from: classes11.dex */
public final /* synthetic */ class FlowKt__DelayKt {
    /* JADX WARN: Multi-variable type inference failed */
    @FlowPreview
    @NotNull
    /* renamed from: a */
    public static final <T> Flow<T> m61987a(@NotNull Flow<? extends T> flow, final long j) {
        if (j >= 0) {
            return j == 0 ? flow : m61991e(flow, new Function1<T, Long>() { // from class: kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Long invoke(T t) {
                    return Long.valueOf(j);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Long invoke(Object obj) {
                    return invoke((FlowKt__DelayKt$debounce$2<T>) obj);
                }
            });
        }
        throw new IllegalArgumentException("Debounce timeout should not be negative".toString());
    }

    @FlowPreview
    @OverloadResolutionByLambdaReturnType
    @NotNull
    /* renamed from: b */
    public static final <T> Flow<T> m61988b(@NotNull Flow<? extends T> flow, @NotNull Function1<? super T, Long> function1) {
        return m61991e(flow, function1);
    }

    @FlowPreview
    @NotNull
    /* renamed from: c */
    public static final <T> Flow<T> m61989c(@NotNull Flow<? extends T> flow, long j) {
        return FlowKt.debounce(flow, DelayKt.m74139toDelayMillisLRDsOJo(j));
    }

    @FlowPreview
    @JvmName(name = "debounceDuration")
    @NotNull
    @OverloadResolutionByLambdaReturnType
    /* renamed from: d */
    public static final <T> Flow<T> m61990d(@NotNull Flow<? extends T> flow, @NotNull final Function1<? super T, Duration> function1) {
        return m61991e(flow, new Function1<T, Long>() { // from class: kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Long invoke(Object obj) {
                return invoke((FlowKt__DelayKt$debounce$3<T>) obj);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Long invoke(T t) {
                return Long.valueOf(DelayKt.m74139toDelayMillisLRDsOJo(function1.invoke(t).getRawValue()));
            }
        });
    }

    /* renamed from: e */
    public static final <T> Flow<T> m61991e(Flow<? extends T> flow, Function1<? super T, Long> function1) {
        return FlowCoroutineKt.scopedFlow(new FlowKt__DelayKt$debounceInternal$1(function1, flow, null));
    }

    @NotNull
    /* renamed from: f */
    public static final ReceiveChannel<Unit> m61992f(@NotNull CoroutineScope coroutineScope, long j, long j2) {
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("Expected non-negative delay, but has " + j + " ms").toString());
        }
        if (j2 >= 0) {
            return ProduceKt.produce$default(coroutineScope, null, 0, new FlowKt__DelayKt$fixedPeriodTicker$3(j2, j, null), 1, null);
        }
        throw new IllegalArgumentException(("Expected non-negative initial delay, but has " + j2 + " ms").toString());
    }

    /* renamed from: g */
    public static /* synthetic */ ReceiveChannel m61993g(CoroutineScope coroutineScope, long j, long j2, int i, Object obj) {
        if ((i & 2) != 0) {
            j2 = j;
        }
        return FlowKt.fixedPeriodTicker(coroutineScope, j, j2);
    }

    @FlowPreview
    @NotNull
    /* renamed from: h */
    public static final <T> Flow<T> m61994h(@NotNull Flow<? extends T> flow, long j) {
        if (j > 0) {
            return FlowCoroutineKt.scopedFlow(new FlowKt__DelayKt$sample$2(j, flow, null));
        }
        throw new IllegalArgumentException("Sample period should be positive".toString());
    }

    @FlowPreview
    @NotNull
    /* renamed from: i */
    public static final <T> Flow<T> m61995i(@NotNull Flow<? extends T> flow, long j) {
        return FlowKt.sample(flow, DelayKt.m74139toDelayMillisLRDsOJo(j));
    }

    @FlowPreview
    @NotNull
    /* renamed from: j */
    public static final <T> Flow<T> m61996j(@NotNull Flow<? extends T> flow, long j) {
        return m61997k(flow, j);
    }

    /* renamed from: k */
    public static final <T> Flow<T> m61997k(Flow<? extends T> flow, long j) {
        return FlowCoroutineKt.scopedFlow(new FlowKt__DelayKt$timeoutInternal$1(j, flow, null));
    }
}
