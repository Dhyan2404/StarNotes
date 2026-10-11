package com.couchbase.lite.internal;

import androidx.work.Data;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.Replicator;
import com.couchbase.lite.ReplicatorChange;
import com.couchbase.lite.ReplicatorStatus;
import com.couchbase.lite.internal.logging.Log;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, m61528d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 8, 0})
@DebugMetadata(m61542c = "com.couchbase.lite.internal.ReplicatorWorker$doWork$2", m61543f = "ReplicatorWorker.kt", m61544i = {}, m61545l = {154}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
/* loaded from: classes4.dex */
public final class ReplicatorWorker$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Flow<ReplicatorChange> $flow;
    final /* synthetic */ Ref.BooleanRef $ok;
    final /* synthetic */ Ref.ObjectRef<Replicator> $repl;
    final /* synthetic */ Ref.ObjectRef<String> $tag;
    int label;
    final /* synthetic */ ReplicatorWorker this$0;

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, m61528d2 = {"Lcom/couchbase/lite/ReplicatorChange;", "change", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 8, 0})
    @DebugMetadata(m61542c = "com.couchbase.lite.internal.ReplicatorWorker$doWork$2$1", m61543f = "ReplicatorWorker.kt", m61544i = {}, m61545l = {}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
    /* renamed from: com.couchbase.lite.internal.ReplicatorWorker$doWork$2$1 */
    /* loaded from: classes4.dex */
    public static final class C21781 extends SuspendLambda implements Function2<ReplicatorChange, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.BooleanRef $ok;
        final /* synthetic */ Ref.ObjectRef<String> $tag;
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ ReplicatorWorker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21781(Ref.ObjectRef<String> objectRef, Ref.BooleanRef booleanRef, ReplicatorWorker replicatorWorker, Continuation<? super C21781> continuation) {
            super(2, continuation);
            this.$tag = objectRef;
            this.$ok = booleanRef;
            this.this$0 = replicatorWorker;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            C21781 c21781 = new C21781(this.$tag, this.$ok, this.this$0, continuation);
            c21781.L$0 = obj;
            return c21781;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull ReplicatorChange replicatorChange, @Nullable Continuation<? super Unit> continuation) {
            return ((C21781) create(replicatorChange, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Data buildData;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ReplicatorStatus status = ((ReplicatorChange) this.L$0).getStatus();
            Intrinsics.checkNotNullExpressionValue(status, "change.status");
            Log.m9904i(LogDomain.REPLICATOR, "Background replicator " + this.$tag.element + " changed state: " + status);
            Ref.BooleanRef booleanRef = this.$ok;
            booleanRef.element = booleanRef.element && status.getError() == null;
            ReplicatorWorker replicatorWorker = this.this$0;
            buildData = replicatorWorker.buildData(this.$tag.element, status);
            replicatorWorker.setProgressAsync(buildData);
            return Unit.INSTANCE;
        }
    }

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, m61528d2 = {"Lcom/couchbase/lite/ReplicatorChange;", "change", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 8, 0})
    @DebugMetadata(m61542c = "com.couchbase.lite.internal.ReplicatorWorker$doWork$2$2", m61543f = "ReplicatorWorker.kt", m61544i = {}, m61545l = {}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
    /* renamed from: com.couchbase.lite.internal.ReplicatorWorker$doWork$2$2 */
    /* loaded from: classes4.dex */
    public static final class C21792 extends SuspendLambda implements Function2<ReplicatorChange, Continuation<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        public C21792(Continuation<? super C21792> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            C21792 c21792 = new C21792(continuation);
            c21792.L$0 = obj;
            return c21792;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull ReplicatorChange replicatorChange, @Nullable Continuation<? super Boolean> continuation) {
            return ((C21792) create(replicatorChange, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(!ReplicatorWorker.INSTANCE.getStopStates().contains(((ReplicatorChange) this.L$0).getStatus().getActivityLevel()));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReplicatorWorker$doWork$2(Ref.ObjectRef<Replicator> objectRef, Ref.ObjectRef<String> objectRef2, Flow<ReplicatorChange> flow, Ref.BooleanRef booleanRef, ReplicatorWorker replicatorWorker, Continuation<? super ReplicatorWorker$doWork$2> continuation) {
        super(2, continuation);
        this.$repl = objectRef;
        this.$tag = objectRef2;
        this.$flow = flow;
        this.$ok = booleanRef;
        this.this$0 = replicatorWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ReplicatorWorker$doWork$2(this.$repl, this.$tag, this.$flow, this.$ok, this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.$repl.element.start();
            Log.m9904i(LogDomain.REPLICATOR, "Background replicator " + this.$tag.element + " started");
            Flow takeWhile = FlowKt.takeWhile(FlowKt.onEach(this.$flow, new C21781(this.$tag, this.$ok, this.this$0, null)), new C21792(null));
            FlowCollector flowCollector = new FlowCollector() { // from class: com.couchbase.lite.internal.ReplicatorWorker$doWork$2.3
                @Nullable
                public final Object emit(@NotNull ReplicatorChange replicatorChange, @NotNull Continuation<? super Unit> continuation) {
                    return Unit.INSTANCE;
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((ReplicatorChange) obj2, (Continuation<? super Unit>) continuation);
                }
            };
            this.label = 1;
            if (takeWhile.collect(flowCollector, this) == coroutine_suspended) {
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
        return ((ReplicatorWorker$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
