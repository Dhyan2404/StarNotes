package com.onyx.android.sdk.universal.editor.helper;

import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;", "", "getAdaptiveStrokeWidth", "", "boxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface EditorDataProxy {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static float getAdaptiveStrokeWidth(@NotNull EditorDataProxy editorDataProxy, @NotNull BoxInfo boxInfo, float f) {
            Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
            return f;
        }
    }

    float getAdaptiveStrokeWidth(@NotNull BoxInfo boxInfo, float strokeWidth);
}
