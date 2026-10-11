package kotlinx.coroutines.flow;

import com.sunia.HTREnginev2.jdl;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, m61528d2 = {"T", "Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 8, 0})
@DebugMetadata(m61542c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1", m61543f = "Share.kt", m61544i = {}, m61545l = {340}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
/* loaded from: classes11.dex */
public final class FlowKt__ShareKt$launchSharingDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CompletableDeferred<StateFlow<T>> $result;
    final /* synthetic */ Flow<T> $upstream;
    private /* synthetic */ Object L$0;
    int label;

    @SourceDebugExtension({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1$a */
    /* loaded from: classes11.dex */
    public static final class C18209a<T> implements FlowCollector {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<MutableStateFlow<T>> f98442e;

        /* renamed from: f */
        public final /* synthetic */ CoroutineScope f98443f;

        /* renamed from: g */
        public final /* synthetic */ CompletableDeferred<StateFlow<T>> f98444g;

        public C18209a(Ref.ObjectRef<MutableStateFlow<T>> objectRef, CoroutineScope coroutineScope, CompletableDeferred<StateFlow<T>> completableDeferred) {
            this.f98442e = objectRef;
            this.f98443f = coroutineScope;
            this.f98444g = completableDeferred;
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [T, kotlinx.coroutines.flow.MutableStateFlow, kotlinx.coroutines.flow.StateFlow] */
        @Override // kotlinx.coroutines.flow.FlowCollector
        @Nullable
        public final Object emit(T t, @NotNull Continuation<? super Unit> continuation) {
            Unit unit;
            MutableStateFlow<T> mutableStateFlow = this.f98442e.element;
            if (mutableStateFlow != null) {
                mutableStateFlow.setValue(t);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                CoroutineScope coroutineScope = this.f98443f;
                Ref.ObjectRef<MutableStateFlow<T>> objectRef = this.f98442e;
                CompletableDeferred<StateFlow<T>> completableDeferred = this.f98444g;
                ?? r3 = (T) StateFlowKt.MutableStateFlow(t);
                completableDeferred.complete(new jdl(r3, JobKt.getJob(coroutineScope.getCoroutineContext())));
                objectRef.element = r3;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ShareKt$launchSharingDeferred$1(Flow<? extends T> flow, CompletableDeferred<StateFlow<T>> completableDeferred, Continuation<? super FlowKt__ShareKt$launchSharingDeferred$1> continuation) {
        super(2, continuation);
        this.$upstream = flow;
        this.$result = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__ShareKt$launchSharingDeferred$1 flowKt__ShareKt$launchSharingDeferred$1 = new FlowKt__ShareKt$launchSharingDeferred$1(this.$upstream, this.$result, continuation);
        flowKt__ShareKt$launchSharingDeferred$1.L$0 = obj;
        return flowKt__ShareKt$launchSharingDeferred$1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [kotlin.Unit, java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Flow<T> flow = this.$upstream;
                C18209a c18209a = new C18209a(objectRef, coroutineScope, this.$result);
                this.label = 1;
                if (flow.collect(c18209a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            this = Unit.INSTANCE;
            return this;
        } catch (Throwable th) {
            this.$result.completeExceptionally(th);
            throw th;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__ShareKt$launchSharingDeferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
