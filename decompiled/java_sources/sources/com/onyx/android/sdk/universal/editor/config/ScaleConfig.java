package com.onyx.android.sdk.universal.editor.config;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.universal.C8045R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b)\u0010*J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J \u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u0002J\u001c\u0010\u000b\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u0002J\u0012\u0010\r\u001a\u00020\f*\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007R\u0017\u0010\u0012\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R?\u0010\u0019\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00020\u0002 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00130\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R?\u0010\u001c\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00020\u0002 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00130\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0016\u001a\u0004\b\u001b\u0010\u0018R?\u0010\u001f\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00020\u0002 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00130\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0016\u001a\u0004\b\u001e\u0010\u0018R\u001b\u0010$\u001a\u00020 8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u0016\u001a\u0004\b\"\u0010#R\u001a\u0010'\u001a\u00020\f8\u0006X\u0086D¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;", "", "", "roundScale", "displayRoundScale", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "Landroid/graphics/RectF;", "viewportRectF", "maxScreenScale", "contentPageMaxScale", "virtualPageMaxScale", "", "isEnabledHighQuality", "a", "F", "getPRECISION_VALUE", "()F", "PRECISION_VALUE", "Lorg/apache/commons/lang3/Range;", "kotlin.jvm.PlatformType", "b", "Lkotlin/Lazy;", "getContinuousPageScaleRange", "()Lorg/apache/commons/lang3/Range;", "continuousPageScaleRange", "c", "getPageScaleRange", "pageScaleRange", "d", "getDraftNoteScaleRange", "draftNoteScaleRange", "Lcom/onyx/android/sdk/base/data/Size;", "e", "getDefaultScalePreviewMaxSize", "()Lcom/onyx/android/sdk/base/data/Size;", "defaultScalePreviewMaxSize", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isEnabledDisplayThumbanilWhenScaling", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScaleConfig {

    @NotNull
    public static final ScaleConfig INSTANCE = new ScaleConfig();

    /* renamed from: a, reason: from kotlin metadata */
    public static final float PRECISION_VALUE = ResManager.INSTANCE.getFloatValue(C8045R.dimen.scale_precision_value);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Lazy continuousPageScaleRange;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final Lazy pageScaleRange;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final Lazy draftNoteScaleRange;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final Lazy defaultScalePreviewMaxSize;

    /* renamed from: f, reason: from kotlin metadata */
    public static final boolean isEnabledDisplayThumbanilWhenScaling = false;

    static {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Range<Float>>() { // from class: com.onyx.android.sdk.universal.editor.config.ScaleConfig$continuousPageScaleRange$2
            @Override // kotlin.jvm.functions.Function0
            public final Range<Float> invoke() {
                ResManager resManager = ResManager.INSTANCE;
                return Range.between(Float.valueOf(resManager.getFloatValue(C8045R.dimen.continuous_note_scale_min_value)), Float.valueOf(resManager.getFloatValue(C8045R.dimen.continuous_note_scale_max_value)));
            }
        });
        continuousPageScaleRange = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Range<Float>>() { // from class: com.onyx.android.sdk.universal.editor.config.ScaleConfig$pageScaleRange$2
            @Override // kotlin.jvm.functions.Function0
            public final Range<Float> invoke() {
                ResManager resManager = ResManager.INSTANCE;
                return Range.between(Float.valueOf(resManager.getFloatValue(C8045R.dimen.note_scale_min_value)), Float.valueOf(resManager.getFloatValue(C8045R.dimen.note_scale_max_value)));
            }
        });
        pageScaleRange = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Range<Float>>() { // from class: com.onyx.android.sdk.universal.editor.config.ScaleConfig$draftNoteScaleRange$2
            @Override // kotlin.jvm.functions.Function0
            public final Range<Float> invoke() {
                ResManager resManager = ResManager.INSTANCE;
                return Range.between(Float.valueOf(resManager.getFloatValue(C8045R.dimen.draft_note_scale_min_value)), Float.valueOf(resManager.getFloatValue(C8045R.dimen.draft_note_scale_max_value)));
            }
        });
        draftNoteScaleRange = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<Size>() { // from class: com.onyx.android.sdk.universal.editor.config.ScaleConfig$defaultScalePreviewMaxSize$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Size invoke() {
                ResManager resManager = ResManager.INSTANCE;
                return new Size(resManager.getInteger(C8045R.integer.scale_preview_max_width), resManager.getInteger(C8045R.integer.scale_preview_max_height));
            }
        });
        defaultScalePreviewMaxSize = lazy4;
    }

    public static /* synthetic */ float contentPageMaxScale$default(ScaleConfig scaleConfig, BoxInfo boxInfo, RectF rectF, float f, int i, Object obj) {
        if ((i & 4) != 0) {
            f = AppConfig.INSTANCE.getRENDER_MAX_SCREEN_SCALE();
        }
        return scaleConfig.contentPageMaxScale(boxInfo, rectF, f);
    }

    public static /* synthetic */ float virtualPageMaxScale$default(ScaleConfig scaleConfig, BoxInfo boxInfo, RectF rectF, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = AppConfig.INSTANCE.getRENDER_MAX_SCREEN_SCALE();
        }
        return scaleConfig.virtualPageMaxScale(boxInfo, rectF, f);
    }

    public final float contentPageMaxScale(@NotNull BoxInfo boxInfo, @NotNull RectF viewportRectF, float maxScreenScale) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        Intrinsics.checkNotNullParameter(viewportRectF, "viewportRectF");
        RectF copy = RectFKt.copy(boxInfo.getOriginRectF());
        RectF copy2 = RectFKt.copy(viewportRectF);
        RectFKt.scaleRect(copy2, maxScreenScale);
        return RectFKt.scaleToPage(copy, copy2);
    }

    public final float displayRoundScale(float roundScale) {
        int roundToInt;
        float f = PRECISION_VALUE;
        roundToInt = MathKt__MathJVMKt.roundToInt(roundScale * f);
        return roundToInt / f;
    }

    public final Range<Float> getContinuousPageScaleRange() {
        return (Range) continuousPageScaleRange.getValue();
    }

    @NotNull
    public final Size getDefaultScalePreviewMaxSize() {
        return (Size) defaultScalePreviewMaxSize.getValue();
    }

    public final Range<Float> getDraftNoteScaleRange() {
        return (Range) draftNoteScaleRange.getValue();
    }

    public final float getPRECISION_VALUE() {
        return PRECISION_VALUE;
    }

    public final Range<Float> getPageScaleRange() {
        return (Range) pageScaleRange.getValue();
    }

    public final boolean isEnabledDisplayThumbanilWhenScaling() {
        return isEnabledDisplayThumbanilWhenScaling;
    }

    public final boolean isEnabledHighQuality(@NotNull BoxInfo boxInfo, @NotNull RectF viewportRectF) {
        Intrinsics.checkNotNullParameter(boxInfo, "<this>");
        Intrinsics.checkNotNullParameter(viewportRectF, "viewportRectF");
        return boxInfo.getActualScale() > virtualPageMaxScale$default(this, boxInfo, viewportRectF, 0.0f, 2, null);
    }

    public final float virtualPageMaxScale(@NotNull BoxInfo boxInfo, @NotNull RectF viewportRectF, float f) {
        Intrinsics.checkNotNullParameter(boxInfo, "<this>");
        Intrinsics.checkNotNullParameter(viewportRectF, "viewportRectF");
        RectF copy = RectFKt.copy(boxInfo.getOriginRectFWithMargin());
        RectF copy2 = RectFKt.copy(viewportRectF);
        RectFKt.scaleRect(copy2, f);
        return RectFKt.scaleToPage(copy, copy2);
    }
}
