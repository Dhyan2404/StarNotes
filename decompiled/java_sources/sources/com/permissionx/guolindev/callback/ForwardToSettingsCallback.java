package com.permissionx.guolindev.callback;

import androidx.annotation.NonNull;
import com.permissionx.guolindev.request.ForwardScope;
import java.util.List;

/* loaded from: classes9.dex */
public interface ForwardToSettingsCallback {
    void onForwardToSettings(@NonNull ForwardScope forwardScope, @NonNull List<String> list);
}
