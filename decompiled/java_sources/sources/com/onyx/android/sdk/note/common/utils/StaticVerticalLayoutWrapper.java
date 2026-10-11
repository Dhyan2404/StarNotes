package com.onyx.android.sdk.note.common.utils;

import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\f\n\u0002\b\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0002JF\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0014J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0016J\u0010\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\nH\u0016J\u0006\u0010\u001a\u001a\u00020\u000eJ\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0016J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\nH\u0016J\b\u0010\u001d\u001a\u00020\u000eH\u0016J\u0010\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020 H\u0016¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper;", "Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;", "()V", "createStaticLayout", "Landroid/text/StaticLayout;", "source", "", "paint", "Landroid/text/TextPaint;", "widthInt", "", "align", "Landroid/text/Layout$Alignment;", "spacingmult", "", "spacingadd", "includepad", "", "getHeight", "getLineBounds", "line", "bounds", "Landroid/graphics/RectF;", "getLineEnd", "getLineForOffset", TypedValues.CycleType.S_WAVE_OFFSET, "getLineHeight", "getLineStart", "getPrimaryHorizontal", "getWidth", "needRotate", "ch", "", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class StaticVerticalLayoutWrapper extends StaticLayoutWrapper {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JD\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper;", "source", "", "paint", "Landroid/text/TextPaint;", "width", "", "align", "Landroid/text/Layout$Alignment;", "spacingmult", "spacingadd", "includepad", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final StaticVerticalLayoutWrapper create(@Nullable CharSequence source, @Nullable TextPaint paint, float width, @Nullable Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad) {
            StaticVerticalLayoutWrapper staticVerticalLayoutWrapper = new StaticVerticalLayoutWrapper();
            staticVerticalLayoutWrapper.setSource(source);
            staticVerticalLayoutWrapper.setPaint(paint);
            staticVerticalLayoutWrapper.setWidth(width);
            staticVerticalLayoutWrapper.setAlign(align);
            staticVerticalLayoutWrapper.setSpacingmult(spacingmult);
            staticVerticalLayoutWrapper.setSpacingadd(spacingadd);
            staticVerticalLayoutWrapper.setIncludepad(includepad);
            return staticVerticalLayoutWrapper;
        }

        public Companion() {
        }
    }

    @Override // com.onyx.android.sdk.note.common.utils.StaticLayoutWrapper
    @NotNull
    public StaticLayout createStaticLayout(@Nullable CharSequence source, @Nullable TextPaint paint, int widthInt, @Nullable Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad) {
        return new StaticVerticalLayout(source, paint, widthInt, align, spacingmult, spacingadd, includepad);
    }

    @Override // com.onyx.android.sdk.note.common.utils.StaticLayoutWrapper
    public float getHeight() {
        return getLayout().getWidth() / getFactor();
    }

    @Override // com.onyx.android.sdk.note.common.utils.StaticLayoutWrapper
    public float getLineBounds(int line, @NotNull RectF bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        bounds.left = getLayout().getLineTop(line);
        bounds.top = 0.0f;
        bounds.right = getLayout().getLineTop(line + 1);
        bounds.bottom = getLayout().getWidth();
        RectUtils rectUtils = RectUtils.INSTANCE;
        Float f = NumberUtils.FLOAT_ONE;
        rectUtils.scale(bounds, f.floatValue() / getFactor(), f.floatValue() / getFactor());
        return getLayout().getLineBaseline(line) / getFactor();
    }

    @Override // com.onyx.android.sdk.note.common.utils.StaticLayoutWrapper
    public int getLineEnd(int line) {
        return super.getLineEnd(line);
    }

    @Override // com.onyx.android.sdk.note.common.utils.StaticLayoutWrapper
    public int getLineForOffset(int offset) {
        return super.getLineForOffset(offset);
    }

    public final float getLineHeight() {
        StaticLayout layout = getLayout();
        Intrinsics.checkNotNull(layout, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.utils.StaticVerticalLayout");
        return ((StaticVerticalLayout) layout).getLineHeight(0) / getFactor();
    }

    @Override // com.onyx.android.sdk.note.common.utils.StaticLayoutWrapper
    public int getLineStart(int line) {
        return super.getLineStart(line);
    }

    @Override // com.onyx.android.sdk.note.common.utils.StaticLayoutWrapper
    public float getPrimaryHorizontal(int offset) {
        StaticLayout layout = getLayout();
        Intrinsics.checkNotNull(layout, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.utils.StaticVerticalLayout");
        return ((StaticVerticalLayout) layout).getCursorPosition(offset) / getFactor();
    }

    @Override // com.onyx.android.sdk.note.common.utils.StaticLayoutWrapper
    public float getWidth() {
        return getLayout().getHeight() / getFactor();
    }

    @Override // com.onyx.android.sdk.note.common.utils.StaticLayoutWrapper
    public boolean needRotate(char ch) {
        StaticLayout layout = getLayout();
        Intrinsics.checkNotNull(layout, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.utils.StaticVerticalLayout");
        return ((StaticVerticalLayout) layout).needRotate(ch);
    }
}
