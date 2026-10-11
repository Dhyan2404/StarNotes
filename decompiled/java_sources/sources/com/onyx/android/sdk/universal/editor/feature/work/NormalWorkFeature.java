package com.onyx.android.sdk.universal.editor.feature.work;

import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.boxmanager.HBoxContinuousManager;
import com.onyx.android.sdk.geometry.boxmanager.HBoxManager;
import com.onyx.android.sdk.geometry.boxmanager.HDualBoxManager;
import com.onyx.android.sdk.geometry.boxmanager.VBoxContinuousManager;
import com.onyx.android.sdk.geometry.boxmanager.VBoxManager;
import com.onyx.android.sdk.geometry.boxmanager.VDualBoxContinuousManager;
import com.onyx.android.sdk.geometry.boxmanager.VDualBoxManager;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.feature.work.WorkFeature;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;", "Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;", "()V", "createBoxManager", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "workBundle", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "scaleRange", "Lorg/apache/commons/lang3/Range;", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public class NormalWorkFeature implements WorkFeature {
    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    @NotNull
    public BoxManager createBoxManager(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        int displayPageColumnCount = DocOptionsActionsKt.getDisplayPageColumnCount(workBundle);
        int layoutType = DocOptionsActionsKt.getLayoutType(workBundle);
        boolean z = displayPageColumnCount == 1;
        boolean z2 = displayPageColumnCount == 2;
        boolean z3 = layoutType == 0;
        boolean z4 = layoutType == 1;
        boolean isEnabledContinuousPage = DocOptionsActionsKt.isEnabledContinuousPage(workBundle);
        return (z && z3 && isEnabledContinuousPage) ? new HBoxContinuousManager() : (z && z3 && !isEnabledContinuousPage) ? new HBoxManager() : (z && z4 && isEnabledContinuousPage) ? new VBoxContinuousManager() : (z && z4 && !isEnabledContinuousPage) ? new VBoxManager() : (z2 && z3 && isEnabledContinuousPage) ? new HBoxContinuousManager() : (z2 && z3 && !isEnabledContinuousPage) ? new HDualBoxManager() : (z2 && z4 && !isEnabledContinuousPage) ? new VDualBoxManager() : (z2 && z4 && isEnabledContinuousPage) ? new VDualBoxContinuousManager() : new VBoxContinuousManager();
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    @NotNull
    public Range<Float> scaleRange(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        if (workBundle.getCustomScaleRange() != null) {
            Range<Float> customScaleRange = workBundle.getCustomScaleRange();
            Intrinsics.checkNotNull(customScaleRange);
            return customScaleRange;
        }
        if (DocOptionsActionsKt.isEnabledContinuousPage(workBundle)) {
            Range<Float> continuousPageScaleRange = ScaleConfig.INSTANCE.getContinuousPageScaleRange();
            Intrinsics.checkNotNullExpressionValue(continuousPageScaleRange, "<get-continuousPageScaleRange>(...)");
            return continuousPageScaleRange;
        }
        Range<Float> pageScaleRange = ScaleConfig.INSTANCE.getPageScaleRange();
        Intrinsics.checkNotNullExpressionValue(pageScaleRange, "<get-pageScaleRange>(...)");
        return pageScaleRange;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    public boolean supportAutoScaleToViewport() {
        return WorkFeature.DefaultImpls.supportAutoScaleToViewport(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    public boolean supportCoverPage() {
        return WorkFeature.DefaultImpls.supportCoverPage(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    public boolean supportMultiPage() {
        return WorkFeature.DefaultImpls.supportMultiPage(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    public boolean supportPageBackground() {
        return WorkFeature.DefaultImpls.supportPageBackground(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    public boolean useFirstPageAsCoverPage() {
        return WorkFeature.DefaultImpls.useFirstPageAsCoverPage(this);
    }
}
