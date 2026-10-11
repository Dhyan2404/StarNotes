package com.onyx.android.sdk.universal.editor.display;

import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.onyx.android.sdk.universal.theme.UniversalThemeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u001b\u0010\u000e\u001a\u00020\t8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;", "", "", "selectionType", "", "updateSelectionTrackPaintColor", "SELECTION_TYPE_LASSO", "I", "SELECTION_TYPE_ERASE", "Landroid/graphics/Paint;", "a", "Lkotlin/Lazy;", "getSelectionTrackPaint", "()Landroid/graphics/Paint;", "selectionTrackPaint", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SelectionTrackRender {

    @NotNull
    public static final SelectionTrackRender INSTANCE = new SelectionTrackRender();
    public static final int SELECTION_TYPE_ERASE = 1;
    public static final int SELECTION_TYPE_LASSO = 0;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy selectionTrackPaint;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.onyx.android.sdk.universal.editor.display.SelectionTrackRender$selectionTrackPaint$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Paint invoke() {
                Paint paint = new Paint();
                paint.setColor(UniversalThemeUtils.INSTANCE.getThemePrimaryColor());
                paint.setStyle(Paint.Style.STROKE);
                paint.setAntiAlias(true);
                paint.setStrokeWidth(4.0f);
                paint.setPathEffect(new DashPathEffect(new float[]{10.0f, 10.0f}, 0.0f));
                return paint;
            }
        });
        selectionTrackPaint = lazy;
    }

    @NotNull
    public final Paint getSelectionTrackPaint() {
        return (Paint) selectionTrackPaint.getValue();
    }

    public final void updateSelectionTrackPaintColor(int selectionType) {
        getSelectionTrackPaint().setColor(selectionType != 0 ? selectionType != 1 ? UniversalThemeUtils.INSTANCE.getThemePrimaryColor() : UniversalThemeUtils.INSTANCE.getThemeBackgroundColor() : UniversalThemeUtils.INSTANCE.getThemePrimaryColor());
    }
}
