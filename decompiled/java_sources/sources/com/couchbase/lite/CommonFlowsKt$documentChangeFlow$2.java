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

@Metadata(m61527d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, m61528d2 = {"Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/couchbase/lite/DocumentChange;", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 8, 0})
@DebugMetadata(m61542c = "com.couchbase.lite.CommonFlowsKt$documentChangeFlow$2", m61543f = "CommonFlows.kt", m61544i = {}, m61545l = {160}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
/* loaded from: classes4.dex */
public final class CommonFlowsKt$documentChangeFlow$2 extends SuspendLambda implements Function2<ProducerScope<? super DocumentChange>, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $documentId;
    final /* synthetic */ Executor $executor;
    final /* synthetic */ Database $this_documentChangeFlow;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonFlowsKt$documentChangeFlow$2(Database database, String str, Executor executor, Continuation<? super CommonFlowsKt$documentChangeFlow$2> continuation) {
        super(2, continuation);
        this.$this_documentChangeFlow = database;
        this.$documentId = str;
        this.$executor = executor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        CommonFlowsKt$documentChangeFlow$2 commonFlowsKt$documentChangeFlow$2 = new CommonFlowsKt$documentChangeFlow$2(this.$this_documentChangeFlow, this.$documentId, this.$executor, continuation);
        commonFlowsKt$documentChangeFlow$2.L$0 = obj;
        return commonFlowsKt$documentChangeFlow$2;
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
            Database database = this.$this_documentChangeFlow;
            String str = this.$documentId;
            Executor executor = this.$executor;
            if (executor == null) {
                CoroutineContext.Element element = producerScope.getCoroutineContext().get(ContinuationInterceptor.INSTANCE);
                CoroutineDispatcher coroutineDispatcher = element instanceof CoroutineDispatcher ? (CoroutineDispatcher) element : null;
                executor = coroutineDispatcher != null ? ExecutorsKt.asExecutor(coroutineDispatcher) : null;
            }
            final ListenerToken addDocumentChangeListener = database.addDocumentChangeListener(str, executor, new DocumentChangeListener() { // from class: com.couchbase.lite.n
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.couchbase.lite.DocumentChangeListener, com.couchbase.lite.ChangeListener
                public final void changed(DocumentChange documentChange) {
                    ProducerScope.this.mo74147trySendJP2dKIU(documentChange);
                }
            });
            Intrinsics.checkNotNullExpressionValue(addDocumentChangeListener, "this@documentChangeFlow.…        trySend(it)\n    }");
            final Database database2 = this.$this_documentChangeFlow;
            Function0<Unit> function0 = new Function0<Unit>() { // from class: com.couchbase.lite.CommonFlowsKt$documentChangeFlow$2.1
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
                    Database.this.removeChangeListener(addDocumentChangeListener);
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
    public final Object invoke(@NotNull ProducerScope<? super DocumentChange> producerScope, @Nullable Continuation<? super Unit> continuation) {
        return ((CommonFlowsKt$documentChangeFlow$2) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
