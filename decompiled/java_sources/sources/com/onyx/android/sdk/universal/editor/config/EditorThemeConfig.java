package com.onyx.android.sdk.universal.editor.config;

import android.graphics.Color;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;", "", "", "a", "I", "getSplitScreenReceiverHintColor", "()I", "setSplitScreenReceiverHintColor", "(I)V", "splitScreenReceiverHintColor", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EditorThemeConfig {

    @NotNull
    public static final EditorThemeConfig INSTANCE = new EditorThemeConfig();

    /* renamed from: a, reason: from kotlin metadata */
    public static int splitScreenReceiverHintColor = Color.argb(20, 255, 0, 0);

    public final int getSplitScreenReceiverHintColor() {
        return splitScreenReceiverHintColor;
    }

    public final void setSplitScreenReceiverHintColor(int i) {
        splitScreenReceiverHintColor = i;
    }
}
