package androidx.work.impl.constraints;

import androidx.work.impl.model.WorkSpec;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, m61528d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 8, 0})
@DebugMetadata(m61542c = "androidx.work.impl.constraints.WorkConstraintsTrackerKt$listen$1", m61543f = "WorkConstraintsTracker.kt", m61544i = {}, m61545l = {54}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
/* loaded from: classes3.dex */
public final class WorkConstraintsTrackerKt$listen$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ OnConstraintsStateChangedListener $listener;
    final /* synthetic */ WorkSpec $spec;
    final /* synthetic */ WorkConstraintsTracker $this_listen;
    int label;

    /* renamed from: androidx.work.impl.constraints.WorkConstraintsTrackerKt$listen$1$a */
    /* loaded from: classes3.dex */
    public static final class C1610a<T> implements FlowCollector {

        /* renamed from: e */
        public final /* synthetic */ OnConstraintsStateChangedListener f11690e;

        /* renamed from: f */
        public final /* synthetic */ WorkSpec f11691f;

        public C1610a(OnConstraintsStateChangedListener onConstraintsStateChangedListener, WorkSpec workSpec) {
            this.f11690e = onConstraintsStateChangedListener;
            this.f11691f = workSpec;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        @Nullable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(@NotNull ConstraintsState constraintsState, @NotNull Continuation<? super Unit> continuation) {
            this.f11690e.onConstraintsStateChanged(this.f11691f, constraintsState);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkConstraintsTrackerKt$listen$1(WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, OnConstraintsStateChangedListener onConstraintsStateChangedListener, Continuation<? super WorkConstraintsTrackerKt$listen$1> continuation) {
        super(2, continuation);
        this.$this_listen = workConstraintsTracker;
        this.$spec = workSpec;
        this.$listener = onConstraintsStateChangedListener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new WorkConstraintsTrackerKt$listen$1(this.$this_listen, this.$spec, this.$listener, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Flow<ConstraintsState> track = this.$this_listen.track(this.$spec);
            C1610a c1610a = new C1610a(this.$listener, this.$spec);
            this.label = 1;
            if (track.collect(c1610a, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((WorkConstraintsTrackerKt$listen$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
