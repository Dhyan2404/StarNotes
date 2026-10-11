package com.onyx.android.sdk.universal.editor.data;

import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, m61528d2 = {"getWarningLogAfterForceRender", "", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "args", "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ForceRenderNoteDirtyArgsKt {
    @NotNull
    public static final String getWarningLogAfterForceRender(@NotNull EditorBundle editorBundle, @NotNull ForceRenderNoteDirtyArgs args, @NotNull ForceRenderNoteDirtyResult result) {
        RectF copy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(result, "result");
        RectF pageDisplayRectF = args.getPageDisplayRectF();
        if (pageDisplayRectF == null || (copy = RectFKt.copy(pageDisplayRectF)) == null || RectKt.isNullOrEmpty(copy)) {
            return "";
        }
        if ((args.getEnableVerifyId() && result.getResultList().isEmpty()) || !args.getIsEnabledEnsureDisplay() || !args.hasRenderInfo() || !args.getIsEnabledPrintFailLog()) {
            return "";
        }
        boolean z = ScaleConfig.INSTANCE.isEnabledHighQuality(args.getVirtualPageBoxInfo(), EditorBundleKt.viewportRect(editorBundle)) && !result.isHighQualityUpdateSuccess() && EditorBundleKt.renderManager(editorBundle).isPageHighQualityOutOfDate(args.getVirtualPageBoxInfo().getId());
        if (!result.getResultList().isEmpty() && !result.hasFailList() && !z) {
            return "";
        }
        return "dirtyPageDisplayRect = " + copy + ", render fail:\n, " + args.toDebugString() + "\n, " + EditorBundleKt.renderManager(editorBundle).getDisplayDebugString() + "\n, " + EditorBundleKt.virtualDocViewInfo(editorBundle).toDebugString() + "\n, expectUpdateHighQualityButFail = " + z + "\n, result.size = " + result.getResultList().size() + ", detail: " + result.getDebugString();
    }
}
