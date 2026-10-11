package com.onyx.android.sdk.device;

import com.oplus.ocs.base.common.ConnectionResult;
import com.oplus.ocs.base.common.api.OnConnectionFailedListener;
import com.oplus.ocs.base.common.api.OnConnectionSucceedListener;
import com.oplus.ocs.ipemanager.sdk.PencilManager;
import com.oplus.ocs.ipemanager.sdk.PencilManagerUnitClient;
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
@DebugMetadata(m61542c = "com.onyx.android.sdk.device.OppoDevice$initStylusVibrate$3", m61543f = "OppoDevice.kt", m61544i = {}, m61545l = {}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
/* loaded from: classes7.dex */
public final class OppoDevice$initStylusVibrate$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ OppoDevice this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OppoDevice$initStylusVibrate$3(OppoDevice oppoDevice, Continuation<? super OppoDevice$initStylusVibrate$3> continuation) {
        super(2, continuation);
        this.this$0 = oppoDevice;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$0(OppoDevice oppoDevice) {
        PencilManager pencilManager;
        oppoDevice.pencilManager = PencilManager.getInstance();
        pencilManager = oppoDevice.pencilManager;
        if (pencilManager != null) {
            pencilManager.setVibrationType(Vibration.BALLPEN);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new OppoDevice$initStylusVibrate$3(this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        PencilManagerUnitClient pencilManagerUnitClient;
        PencilManagerUnitClient pencilManagerUnitClient2;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        pencilManagerUnitClient = this.this$0.pencilManagerUnitClient;
        if (pencilManagerUnitClient != null) {
            final OppoDevice oppoDevice = this.this$0;
            pencilManagerUnitClient.addOnConnectionSucceedListener(new OnConnectionSucceedListener() { // from class: com.onyx.android.sdk.device.a
                @Override // com.oplus.ocs.base.common.api.OnConnectionSucceedListener
                public final void onConnectionSucceed() {
                    OppoDevice$initStylusVibrate$3.invokeSuspend$lambda$0(OppoDevice.this);
                }
            });
        }
        pencilManagerUnitClient2 = this.this$0.pencilManagerUnitClient;
        if (pencilManagerUnitClient2 != null) {
            final OppoDevice oppoDevice2 = this.this$0;
            pencilManagerUnitClient2.addOnConnectionFailedListener(new OnConnectionFailedListener() { // from class: com.onyx.android.sdk.device.b
                @Override // com.oplus.ocs.base.common.api.OnConnectionFailedListener
                public final void onConnectionFailed(ConnectionResult connectionResult) {
                    OppoDevice.access$setPencilManager$p(OppoDevice.this, null);
                }
            });
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((OppoDevice$initStylusVibrate$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
