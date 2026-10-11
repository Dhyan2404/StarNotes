package com.permissionx.guolindev.callback;

import androidx.annotation.NonNull;
import com.permissionx.guolindev.request.ExplainScope;
import java.util.List;

/* loaded from: classes9.dex */
public interface ExplainReasonCallbackWithBeforeParam {
    void onExplainReason(@NonNull ExplainScope explainScope, @NonNull List<String> list, boolean z);
}
