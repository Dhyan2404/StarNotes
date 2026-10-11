package com.onyx.android.sdk.universal.editor.feature.touch;

import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeature;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/feature/touch/ReadingTouchModeFeature;", "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;", "()V", "supportEdit", "", "supportScrollWithPen", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReadingTouchModeFeature implements TouchModeFeature {
    @Override // com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeature
    public boolean supportEdit() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeature
    public boolean supportFingerEdit() {
        return TouchModeFeature.DefaultImpls.supportFingerEdit(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeature
    public boolean supportScrollWithPen() {
        return true;
    }
}
