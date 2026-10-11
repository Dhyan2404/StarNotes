package com.permissionx.guolindev.request;

import android.os.Build;
import android.os.Environment;
import com.permissionx.guolindev.callback.ExplainReasonCallback;
import com.permissionx.guolindev.callback.ExplainReasonCallbackWithBeforeParam;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016¨\u0006\f"}, m61528d2 = {"Lcom/permissionx/guolindev/request/RequestManageExternalStoragePermission;", "Lcom/permissionx/guolindev/request/BaseTask;", "permissionBuilder", "Lcom/permissionx/guolindev/request/PermissionBuilder;", "(Lcom/permissionx/guolindev/request/PermissionBuilder;)V", AbstractLogger.REQUEST, "", "requestAgain", "permissions", "", "", "Companion", "permissionx_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class RequestManageExternalStoragePermission extends BaseTask {

    @NotNull
    public static final String MANAGE_EXTERNAL_STORAGE = "android.permission.MANAGE_EXTERNAL_STORAGE";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestManageExternalStoragePermission(@NotNull PermissionBuilder permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.checkNotNullParameter(permissionBuilder, "permissionBuilder");
    }

    @Override // com.permissionx.guolindev.request.ChainTask
    public void request() {
        boolean isExternalStorageManager;
        List<String> mutableListOf;
        if (!this.pb.shouldRequestManageExternalStoragePermission() || Build.VERSION.SDK_INT < 30) {
            finish();
            return;
        }
        isExternalStorageManager = Environment.isExternalStorageManager();
        if (isExternalStorageManager) {
            finish();
            return;
        }
        PermissionBuilder permissionBuilder = this.pb;
        if (permissionBuilder.explainReasonCallback == null && permissionBuilder.explainReasonCallbackWithBeforeParam == null) {
            finish();
            return;
        }
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(MANAGE_EXTERNAL_STORAGE);
        PermissionBuilder permissionBuilder2 = this.pb;
        ExplainReasonCallbackWithBeforeParam explainReasonCallbackWithBeforeParam = permissionBuilder2.explainReasonCallbackWithBeforeParam;
        if (explainReasonCallbackWithBeforeParam != null) {
            Intrinsics.checkNotNull(explainReasonCallbackWithBeforeParam);
            explainReasonCallbackWithBeforeParam.onExplainReason(getExplainReasonScope(), mutableListOf, true);
        } else {
            ExplainReasonCallback explainReasonCallback = permissionBuilder2.explainReasonCallback;
            Intrinsics.checkNotNull(explainReasonCallback);
            explainReasonCallback.onExplainReason(getExplainReasonScope(), mutableListOf);
        }
    }

    @Override // com.permissionx.guolindev.request.ChainTask
    public void requestAgain(@NotNull List<String> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        this.pb.requestManageExternalStoragePermissionNow(this);
    }
}
