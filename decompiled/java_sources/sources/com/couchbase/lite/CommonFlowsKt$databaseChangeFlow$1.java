package com.couchbase.lite;

import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, m61528d2 = {"Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/couchbase/lite/DatabaseChange;", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 8, 0})
@DebugMetadata(m61542c = "com.couchbase.lite.CommonFlowsKt$databaseChangeFlow$1", m61543f = "CommonFlows.kt", m61544i = {}, m61545l = {136}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
/* loaded from: classes4.dex */
public final class CommonFlowsKt$databaseChangeFlow$1 extends SuspendLambda implements Function2<ProducerScope<? super DatabaseChange>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Executor $executor;
    final /* synthetic */ Database $this_databaseChangeFlow;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonFlowsKt$databaseChangeFlow$1(Database database, Executor executor, Continuation<? super CommonFlowsKt$databaseChangeFlow$1> continuation) {
        super(2, continuation);
        this.$this_databaseChangeFlow = database;
        this.$executor = executor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        CommonFlowsKt$databaseChangeFlow$1 commonFlowsKt$databaseChangeFlow$1 = new CommonFlowsKt$databaseChangeFlow$1(this.$this_databaseChangeFlow, this.$executor, continuation);
        commonFlowsKt$databaseChangeFlow$1.L$0 = obj;
        return commonFlowsKt$databaseChangeFlow$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            Database database = this.$this_databaseChangeFlow;
            Executor executor = this.$executor;
            if (executor == null) {
                CoroutineContext.Element element = producerScope.getCoroutineContext().get(ContinuationInterceptor.INSTANCE);
                CoroutineDispatcher coroutineDispatcher = element instanceof CoroutineDispatcher ? (CoroutineDispatcher) element : null;
                executor = coroutineDispatcher != null ? ExecutorsKt.asExecutor(coroutineDispatcher) : null;
            }
            final ListenerToken addChangeListener = database.addChangeListener(executor, new DatabaseChangeListener() { // from class: com.couchbase.lite.l
                @Override // com.couchbase.lite.ChangeListener
                public final void changed(DatabaseChange databaseChange) {
                    ProducerScope.this.mo74147trySendJP2dKIU(databaseChange);
                }
            });
            Intrinsics.checkNotNullExpressionValue(addChangeListener, "this@databaseChangeFlow.…        trySend(it)\n    }");
            final Database database2 = this.$this_databaseChangeFlow;
            Function0<Unit> function0 = new Function0<Unit>() { // from class: com.couchbase.lite.CommonFlowsKt$databaseChangeFlow$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    Database.this.removeChangeListener(addChangeListener);
                }
            };
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, function0, this) == coroutine_suspended) {
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
    public final Object invoke(@NotNull ProducerScope<? super DatabaseChange> producerScope, @Nullable Continuation<? super Unit> continuation) {
        return ((CommonFlowsKt$databaseChangeFlow$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
