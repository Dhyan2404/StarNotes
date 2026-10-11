package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.display.node.CompatRenderNode;
import com.onyx.android.sdk.universal.editor.display.node.IRenderNode;
import com.onyx.android.sdk.universal.editor.display.node.NativeRenderNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, m61528d2 = {"createRenderNode", "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "id", "", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DisplayDataKt {
    @NotNull
    public static final IRenderNode createRenderNode(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return (AppConfig.INSTANCE.getUseNativeRenderNode() && BuildKt.isApiLevelAbove(29)) ? new NativeRenderNode(id) : new CompatRenderNode(id);
    }
}
