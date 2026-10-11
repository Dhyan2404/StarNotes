package com.onyx.android.sdk.universal.editor.helper;

import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J(\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u0004R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/DefaultEditorDataProxy;", "Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "getAdaptiveStrokeWidth", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "currentMinScale", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class DefaultEditorDataProxy implements EditorDataProxy {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    public DefaultEditorDataProxy(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public static /* synthetic */ float getAdaptiveStrokeWidth$default(DefaultEditorDataProxy defaultEditorDataProxy, EditorBundle editorBundle, BoxInfo boxInfo, float f, float f2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAdaptiveStrokeWidth");
        }
        if ((i & 8) != 0) {
            f2 = EditorBundleKt.currentMinScale(editorBundle);
        }
        return defaultEditorDataProxy.getAdaptiveStrokeWidth(editorBundle, boxInfo, f, f2);
    }

    @Override // com.onyx.android.sdk.universal.editor.helper.EditorDataProxy
    public float getAdaptiveStrokeWidth(@NotNull BoxInfo boxInfo, float strokeWidth) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        return getAdaptiveStrokeWidth$default(this, this.editorBundle, boxInfo, strokeWidth, 0.0f, 8, null);
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    public final float getAdaptiveStrokeWidth(@NotNull EditorBundle editorBundle, @NotNull BoxInfo boxInfo, float strokeWidth, float currentMinScale) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        return DocOptionsActionsKt.isEnabledAdaptiveStrokeWidth(editorBundle.getWorkBundle()) ? strokeWidth : strokeWidth / (MatrixKt.getAverageScale(BoxInfoUtils.INSTANCE.noteRenderMatrix(boxInfo)) / currentMinScale);
    }
}
