package com.onyx.android.sdk.universal.editor.feature.work;

import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J4\u0010\u0006\u001a&\u0012\f\u0012\n \t*\u0004\u0018\u00010\b0\b \t*\u0012\u0012\f\u0012\n \t*\u0004\u0018\u00010\b0\b\u0018\u00010\u00070\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0016J\b\u0010\u000f\u001a\u00020\u000bH\u0016¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;", "", "createBoxManager", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "workBundle", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "scaleRange", "Lorg/apache/commons/lang3/Range;", "", "kotlin.jvm.PlatformType", "supportAutoScaleToViewport", "", "supportCoverPage", "supportMultiPage", "supportPageBackground", "useFirstPageAsCoverPage", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface WorkFeature {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static Range<Float> scaleRange(@NotNull WorkFeature workFeature, @NotNull WorkBundle workBundle) {
            Intrinsics.checkNotNullParameter(workBundle, "workBundle");
            return ScaleConfig.INSTANCE.getPageScaleRange();
        }

        public static boolean supportAutoScaleToViewport(@NotNull WorkFeature workFeature) {
            return true;
        }

        public static boolean supportCoverPage(@NotNull WorkFeature workFeature) {
            return true;
        }

        public static boolean supportMultiPage(@NotNull WorkFeature workFeature) {
            return true;
        }

        public static boolean supportPageBackground(@NotNull WorkFeature workFeature) {
            return false;
        }

        public static boolean useFirstPageAsCoverPage(@NotNull WorkFeature workFeature) {
            return false;
        }
    }

    @NotNull
    BoxManager createBoxManager(@NotNull WorkBundle workBundle);

    Range<Float> scaleRange(@NotNull WorkBundle workBundle);

    boolean supportAutoScaleToViewport();

    boolean supportCoverPage();

    boolean supportMultiPage();

    boolean supportPageBackground();

    boolean useFirstPageAsCoverPage();
}
