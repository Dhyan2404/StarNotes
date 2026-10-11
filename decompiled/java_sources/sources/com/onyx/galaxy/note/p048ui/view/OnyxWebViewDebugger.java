package com.onyx.galaxy.note.p048ui.view;

import android.webkit.JavascriptInterface;
import androidx.core.graphics.drawable.IconCompat;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ToastUtils;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/OnyxWebViewDebugger;", "", "()V", "alert", "", IconCompat.f5434l, "", "error", "log", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class OnyxWebViewDebugger {

    @NotNull
    public static final OnyxWebViewDebugger INSTANCE = new OnyxWebViewDebugger();

    @JavascriptInterface
    public final void alert(@Nullable String obj) {
        ToastUtils toastUtils = ToastUtils.INSTANCE;
        if (obj == null) {
            obj = "";
        }
        ToastUtils.show$default(toastUtils, (CharSequence) obj, false, 2, (Object) null);
    }

    @JavascriptInterface
    public final void error(@Nullable String obj) {
        Debug.INSTANCE.m32044e(OnyxWebViewDebugger.class, obj, new Object[0]);
    }

    @JavascriptInterface
    public final void log(@Nullable String obj) {
        Debug.INSTANCE.m32035d(OnyxWebViewDebugger.class, obj, new Object[0]);
    }
}
