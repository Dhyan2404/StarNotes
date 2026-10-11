package com.onyx.android.sdk.universal.editor.feature.p040ui;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\bf\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u0005H\u0016J\b\u0010\u000b\u001a\u00020\u0005H\u0016J\b\u0010\f\u001a\u00020\u0005H\u0016J\b\u0010\r\u001a\u00020\u0005H\u0016J\b\u0010\u000e\u001a\u00020\u0005H\u0016J\b\u0010\u000f\u001a\u00020\u0005H\u0016J\b\u0010\u0010\u001a\u00020\u0005H\u0016J\b\u0010\u0011\u001a\u00020\u0005H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;", "", "getTemplateType", "", "limitShapeRectInCurrentPage", "", "supportAddToOutline", "supportClearPage", "supportCreatePageLink", "supportDrawPageLayer", "supportEditPage", "supportExportPageAsImage", "supportMultiPage", "supportPageBackground", "supportPageBorder", "supportRectExcerptLimitRect", "supportRenderPageContentBitmap", "supportShapesLocationBar", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface UIFeature {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = Companion.f52102a;
    public static final int TEMPLATE_TYPE_BOUNDLESS = 1;
    public static final int TEMPLATE_TYPE_NORMAL = 0;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$Companion;", "", "()V", "TEMPLATE_TYPE_BOUNDLESS", "", "TEMPLATE_TYPE_NORMAL", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public static final int TEMPLATE_TYPE_BOUNDLESS = 1;
        public static final int TEMPLATE_TYPE_NORMAL = 0;

        /* renamed from: a */
        public static final /* synthetic */ Companion f52102a = new Companion();
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static int getTemplateType(@NotNull UIFeature uIFeature) {
            return 0;
        }

        public static boolean limitShapeRectInCurrentPage(@NotNull UIFeature uIFeature) {
            return true;
        }

        public static boolean supportAddToOutline(@NotNull UIFeature uIFeature) {
            return true;
        }

        public static boolean supportClearPage(@NotNull UIFeature uIFeature) {
            return true;
        }

        public static boolean supportCreatePageLink(@NotNull UIFeature uIFeature) {
            return true;
        }

        public static boolean supportDrawPageLayer(@NotNull UIFeature uIFeature) {
            return true;
        }

        public static boolean supportEditPage(@NotNull UIFeature uIFeature) {
            return true;
        }

        public static boolean supportExportPageAsImage(@NotNull UIFeature uIFeature) {
            return true;
        }

        public static boolean supportMultiPage(@NotNull UIFeature uIFeature) {
            return true;
        }

        public static boolean supportPageBackground(@NotNull UIFeature uIFeature) {
            return false;
        }

        public static boolean supportPageBorder(@NotNull UIFeature uIFeature) {
            return true;
        }

        public static boolean supportRectExcerptLimitRect(@NotNull UIFeature uIFeature) {
            return true;
        }

        public static boolean supportRenderPageContentBitmap(@NotNull UIFeature uIFeature) {
            return true;
        }

        public static boolean supportShapesLocationBar(@NotNull UIFeature uIFeature) {
            return false;
        }
    }

    int getTemplateType();

    boolean limitShapeRectInCurrentPage();

    boolean supportAddToOutline();

    boolean supportClearPage();

    boolean supportCreatePageLink();

    boolean supportDrawPageLayer();

    boolean supportEditPage();

    boolean supportExportPageAsImage();

    boolean supportMultiPage();

    boolean supportPageBackground();

    boolean supportPageBorder();

    boolean supportRectExcerptLimitRect();

    boolean supportRenderPageContentBitmap();

    boolean supportShapesLocationBar();
}
