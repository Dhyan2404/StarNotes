package com.onyx.android.sdk.device;

import com.oplus.ocs.ipemanager.sdk.PencilManager;
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
@DebugMetadata(m61542c = "com.onyx.android.sdk.device.OppoDevice$enableVibrate$1", m61543f = "OppoDevice.kt", m61544i = {}, m61545l = {}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
/* loaded from: classes7.dex */
public final class OppoDevice$enableVibrate$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isEnable;
    int label;
    final /* synthetic */ OppoDevice this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OppoDevice$enableVibrate$1(boolean z, OppoDevice oppoDevice, Continuation<? super OppoDevice$enableVibrate$1> continuation) {
        super(2, continuation);
        this.$isEnable = z;
        this.this$0 = oppoDevice;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new OppoDevice$enableVibrate$1(this.$isEnable, this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        PencilManager pencilManager;
        PencilManager pencilManager2;
        PencilManager pencilManager3;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        if (this.$isEnable) {
            pencilManager2 = this.this$0.pencilManager;
            boolean z = false;
            if (pencilManager2 != null && pencilManager2.getVibrationSwitchState()) {
                z = true;
            }
            if (z) {
                pencilManager3 = this.this$0.pencilManager;
                if (pencilManager3 != null) {
                    pencilManager3.startFeedBackVibration();
                }
                return Unit.INSTANCE;
            }
        }
        pencilManager = this.this$0.pencilManager;
        if (pencilManager != null) {
            pencilManager.stopFeedBackVibration();
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((OppoDevice$enableVibrate$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
