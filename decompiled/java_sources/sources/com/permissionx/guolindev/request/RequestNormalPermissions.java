package com.permissionx.guolindev.request;

import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.ExplainReasonCallback;
import com.permissionx.guolindev.callback.ExplainReasonCallbackWithBeforeParam;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/permissionx/guolindev/request/RequestNormalPermissions;", "Lcom/permissionx/guolindev/request/BaseTask;", "permissionBuilder", "Lcom/permissionx/guolindev/request/PermissionBuilder;", "(Lcom/permissionx/guolindev/request/PermissionBuilder;)V", AbstractLogger.REQUEST, "", "requestAgain", "permissions", "", "", "permissionx_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class RequestNormalPermissions extends BaseTask {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestNormalPermissions(@NotNull PermissionBuilder permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.checkNotNullParameter(permissionBuilder, "permissionBuilder");
    }

    @Override // com.permissionx.guolindev.request.ChainTask
    public void request() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.pb.normalPermissions) {
            if (PermissionX.isGranted(this.pb.getActivity(), str)) {
                this.pb.grantedPermissions.add(str);
            } else {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            finish();
            return;
        }
        PermissionBuilder permissionBuilder = this.pb;
        if (!permissionBuilder.explainReasonBeforeRequest || (permissionBuilder.explainReasonCallback == null && permissionBuilder.explainReasonCallbackWithBeforeParam == null)) {
            permissionBuilder.requestNow(permissionBuilder.normalPermissions, this);
            return;
        }
        permissionBuilder.explainReasonBeforeRequest = false;
        permissionBuilder.deniedPermissions.addAll(arrayList);
        PermissionBuilder permissionBuilder2 = this.pb;
        ExplainReasonCallbackWithBeforeParam explainReasonCallbackWithBeforeParam = permissionBuilder2.explainReasonCallbackWithBeforeParam;
        if (explainReasonCallbackWithBeforeParam != null) {
            Intrinsics.checkNotNull(explainReasonCallbackWithBeforeParam);
            explainReasonCallbackWithBeforeParam.onExplainReason(getExplainReasonScope(), arrayList, true);
        } else {
            ExplainReasonCallback explainReasonCallback = permissionBuilder2.explainReasonCallback;
            Intrinsics.checkNotNull(explainReasonCallback);
            explainReasonCallback.onExplainReason(getExplainReasonScope(), arrayList);
        }
    }

    @Override // com.permissionx.guolindev.request.ChainTask
    public void requestAgain(@NotNull List<String> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        HashSet hashSet = new HashSet(this.pb.grantedPermissions);
        hashSet.addAll(permissions);
        if (!hashSet.isEmpty()) {
            this.pb.requestNow(hashSet, this);
        } else {
            finish();
        }
    }
}
