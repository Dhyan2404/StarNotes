package com.onyx.android.sdk.universal.editor.feature.p040ui;

import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0006H\u0016J\b\u0010\n\u001a\u00020\u0006H\u0016J\b\u0010\u000b\u001a\u00020\u0006H\u0016J\b\u0010\f\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u0006H\u0016J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\b\u0010\u0010\u001a\u00020\u0006H\u0016J\b\u0010\u0011\u001a\u00020\u0006H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/feature/ui/DraftUIFeature;", "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;", "()V", "getTemplateType", "", "limitShapeRectInCurrentPage", "", "supportAddToOutline", "supportClearPage", "supportCreatePageLink", "supportDrawPageLayer", "supportEditPage", "supportExportPageAsImage", "supportMultiPage", "supportPageBackground", "supportPageBorder", "supportRectExcerptLimitRect", "supportRenderPageContentBitmap", "supportShapesLocationBar", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DraftUIFeature implements UIFeature {
    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public int getTemplateType() {
        return 1;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean limitShapeRectInCurrentPage() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportAddToOutline() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportClearPage() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportCreatePageLink() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportDrawPageLayer() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportEditPage() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportExportPageAsImage() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportMultiPage() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportPageBackground() {
        return true;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportPageBorder() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportRectExcerptLimitRect() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportRenderPageContentBitmap() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportShapesLocationBar() {
        return true;
    }
}
