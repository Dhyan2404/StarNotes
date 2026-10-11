package com.permissionx.guolindev.request;

import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.ExplainReasonCallback;
import com.permissionx.guolindev.callback.ExplainReasonCallbackWithBeforeParam;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016¨\u0006\f"}, m61528d2 = {"Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;", "Lcom/permissionx/guolindev/request/BaseTask;", "permissionBuilder", "Lcom/permissionx/guolindev/request/PermissionBuilder;", "(Lcom/permissionx/guolindev/request/PermissionBuilder;)V", AbstractLogger.REQUEST, "", "requestAgain", "permissions", "", "", "Companion", "permissionx_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class RequestBackgroundLocationPermission extends BaseTask {

    @NotNull
    public static final String ACCESS_BACKGROUND_LOCATION = "android.permission.ACCESS_BACKGROUND_LOCATION";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestBackgroundLocationPermission(@NotNull PermissionBuilder permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.checkNotNullParameter(permissionBuilder, "permissionBuilder");
    }

    @Override // com.permissionx.guolindev.request.ChainTask
    public void request() {
        List<String> mutableListOf;
        List<String> emptyList;
        if (this.pb.shouldRequestBackgroundLocationPermission()) {
            if (PermissionX.isGranted(this.pb.getActivity(), ACCESS_BACKGROUND_LOCATION)) {
                finish();
                return;
            }
            boolean isGranted = PermissionX.isGranted(this.pb.getActivity(), "android.permission.ACCESS_FINE_LOCATION");
            boolean isGranted2 = PermissionX.isGranted(this.pb.getActivity(), "android.permission.ACCESS_COARSE_LOCATION");
            if (isGranted || isGranted2) {
                PermissionBuilder permissionBuilder = this.pb;
                if (permissionBuilder.explainReasonCallback == null && permissionBuilder.explainReasonCallbackWithBeforeParam == null) {
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    requestAgain(emptyList);
                    return;
                }
                mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(ACCESS_BACKGROUND_LOCATION);
                PermissionBuilder permissionBuilder2 = this.pb;
                ExplainReasonCallbackWithBeforeParam explainReasonCallbackWithBeforeParam = permissionBuilder2.explainReasonCallbackWithBeforeParam;
                if (explainReasonCallbackWithBeforeParam != null) {
                    Intrinsics.checkNotNull(explainReasonCallbackWithBeforeParam);
                    explainReasonCallbackWithBeforeParam.onExplainReason(getExplainReasonScope(), mutableListOf, true);
                    return;
                } else {
                    ExplainReasonCallback explainReasonCallback = permissionBuilder2.explainReasonCallback;
                    Intrinsics.checkNotNull(explainReasonCallback);
                    explainReasonCallback.onExplainReason(getExplainReasonScope(), mutableListOf);
                    return;
                }
            }
        }
        finish();
    }

    @Override // com.permissionx.guolindev.request.ChainTask
    public void requestAgain(@NotNull List<String> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        this.pb.requestAccessBackgroundLocationPermissionNow(this);
    }
}
