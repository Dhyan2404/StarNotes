package com.onyx.android.sdk.universal.editor.feature.work;

import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.boxmanager.DraftBoxManager;
import com.onyx.android.sdk.geometry.data.BoxCellInfo;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.feature.work.WorkFeature;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0016¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/feature/work/DraftWorkFeature;", "Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;", "()V", "createBoxManager", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "workBundle", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "scaleRange", "Lorg/apache/commons/lang3/Range;", "", "supportAutoScaleToViewport", "", "supportCoverPage", "supportMultiPage", "supportPageBackground", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DraftWorkFeature implements WorkFeature {
    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    @NotNull
    public BoxManager createBoxManager(@NotNull final WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        return new DraftBoxManager(new Function1<BoxCellInfo, BoxInfo>() { // from class: com.onyx.android.sdk.universal.editor.feature.work.DraftWorkFeature$createBoxManager$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final BoxInfo invoke(@NotNull BoxCellInfo boxCellInfo) {
                Intrinsics.checkNotNullParameter(boxCellInfo, "boxCellInfo");
                return WorkBundle.this.getVirtualPolicy().addPage(boxCellInfo).getBox().copy();
            }
        });
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    @NotNull
    public Range<Float> scaleRange(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        return (Range) AnyKt.getOrElse(workBundle.getCustomScaleRange(), new Function0<Range<Float>>() { // from class: com.onyx.android.sdk.universal.editor.feature.work.DraftWorkFeature$scaleRange$1
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Range<Float> invoke() {
                Range<Float> draftNoteScaleRange = ScaleConfig.INSTANCE.getDraftNoteScaleRange();
                Intrinsics.checkNotNullExpressionValue(draftNoteScaleRange, "<get-draftNoteScaleRange>(...)");
                return draftNoteScaleRange;
            }
        });
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    public boolean supportAutoScaleToViewport() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    public boolean supportCoverPage() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    public boolean supportMultiPage() {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    public boolean supportPageBackground() {
        return true;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.work.WorkFeature
    public boolean useFirstPageAsCoverPage() {
        return WorkFeature.DefaultImpls.useFirstPageAsCoverPage(this);
    }
}
