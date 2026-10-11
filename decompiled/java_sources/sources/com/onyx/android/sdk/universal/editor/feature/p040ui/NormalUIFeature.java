package com.onyx.android.sdk.universal.editor.feature.p040ui;

import com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/feature/ui/NormalUIFeature;", "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;", "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NormalUIFeature implements UIFeature {
    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public int getTemplateType() {
        return UIFeature.DefaultImpls.getTemplateType(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean limitShapeRectInCurrentPage() {
        return UIFeature.DefaultImpls.limitShapeRectInCurrentPage(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportAddToOutline() {
        return UIFeature.DefaultImpls.supportAddToOutline(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportClearPage() {
        return UIFeature.DefaultImpls.supportClearPage(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportCreatePageLink() {
        return UIFeature.DefaultImpls.supportCreatePageLink(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportDrawPageLayer() {
        return UIFeature.DefaultImpls.supportDrawPageLayer(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportEditPage() {
        return UIFeature.DefaultImpls.supportEditPage(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportExportPageAsImage() {
        return UIFeature.DefaultImpls.supportExportPageAsImage(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportMultiPage() {
        return UIFeature.DefaultImpls.supportMultiPage(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportPageBackground() {
        return UIFeature.DefaultImpls.supportPageBackground(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportPageBorder() {
        return UIFeature.DefaultImpls.supportPageBorder(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportRectExcerptLimitRect() {
        return UIFeature.DefaultImpls.supportRectExcerptLimitRect(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportRenderPageContentBitmap() {
        return UIFeature.DefaultImpls.supportRenderPageContentBitmap(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportShapesLocationBar() {
        return UIFeature.DefaultImpls.supportShapesLocationBar(this);
    }
}
