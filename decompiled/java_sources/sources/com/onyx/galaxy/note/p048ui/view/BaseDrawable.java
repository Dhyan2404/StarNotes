package com.onyx.galaxy.note.p048ui.view;

import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0012\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nR\u001a\u0010\u0012\u001a\u00020\r8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/BaseDrawable;", "Landroid/graphics/drawable/Drawable;", "", "getOpacity", "alpha", "", "setAlpha", "Landroid/graphics/ColorFilter;", "colorFilter", "setColorFilter", "Landroid/graphics/RectF;", "rectF", "setBound", "Landroid/graphics/Paint;", "a", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "paint", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDrawable.kt\ncom/onyx/galaxy/note/ui/view/BaseDrawable\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,25:1\n344#2,3:26\n*S KotlinDebug\n*F\n+ 1 BaseDrawable.kt\ncom/onyx/galaxy/note/ui/view/BaseDrawable\n*L\n23#1:26,3\n*E\n"})
/* loaded from: classes9.dex */
public abstract class BaseDrawable extends Drawable {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Paint paint = new Paint();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @NotNull
    public final Paint getPaint() {
        return this.paint;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
    }

    @NotNull
    public final BaseDrawable setBound(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        setBounds(rect);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
    }
}
