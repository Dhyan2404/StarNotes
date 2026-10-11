package com.onyx.android.sdk.device;

import com.oplus.ocs.ipemanager.sdk.PencilManager;
import com.oplus.ocs.ipemanager.sdk.Vibration;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, m61528d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 9, 0})
@DebugMetadata(m61542c = "com.onyx.android.sdk.device.OppoDevice$startVibrate$1", m61543f = "OppoDevice.kt", m61544i = {}, m61545l = {}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
/* loaded from: classes7.dex */
public final class OppoDevice$startVibrate$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ OppoDevice this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OppoDevice$startVibrate$1(OppoDevice oppoDevice, Continuation<? super OppoDevice$startVibrate$1> continuation) {
        super(2, continuation);
        this.this$0 = oppoDevice;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new OppoDevice$startVibrate$1(this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        PencilManager pencilManager;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        pencilManager = this.this$0.pencilManager;
        if (pencilManager != null) {
            pencilManager.startVibration(Vibration.FUNCTION_VIBRATION);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((OppoDevice$startVibrate$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
