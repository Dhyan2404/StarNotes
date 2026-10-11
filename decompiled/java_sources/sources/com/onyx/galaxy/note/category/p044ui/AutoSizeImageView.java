package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 B\u001b\b\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b\u001f\u0010#B#\b\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\b\u0010\"\u001a\u0004\u0018\u00010!\u0012\u0006\u0010$\u001a\u00020\u0005¢\u0006\u0004\b\u001f\u0010%J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0014J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0002R\"\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001c\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0016\u001a\u0004\b\u001b\u0010\u0018¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;", "Landroidx/appcompat/widget/AppCompatImageView;", "", "getWidthRadio", "getHeightRadio", "", "widthMeasureSpec", "heightMeasureSpec", "", "onMeasure", "widthSize", "heightSize", "", "a", C6999h.f39688c, "I", "getOrientation", "()I", "setOrientation", "(I)V", "orientation", "i", "Lkotlin/Lazy;", "getWidthRatio", "()F", "widthRatio", "j", "getHeightRatio", "heightRatio", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AutoSizeImageView extends AppCompatImageView {

    /* renamed from: h, reason: from kotlin metadata */
    public int orientation;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy widthRatio;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy heightRatio;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AutoSizeImageView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final float getHeightRadio() {
        return this.orientation == 1 ? getHeightRatio() : getWidthRatio();
    }

    private final float getHeightRatio() {
        return ((Number) this.heightRatio.getValue()).floatValue();
    }

    private final float getWidthRadio() {
        return this.orientation == 1 ? getWidthRatio() : getHeightRatio();
    }

    private final float getWidthRatio() {
        return ((Number) this.widthRatio.getValue()).floatValue();
    }

    /* renamed from: a */
    public final boolean m43033a(int widthSize, int heightSize) {
        return (((float) widthSize) / getWidthRadio()) * getHeightRadio() < ((float) heightSize);
    }

    public final int getOrientation() {
        return this.orientation;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = (View.MeasureSpec.getSize(widthMeasureSpec) - getPaddingLeft()) - getPaddingRight();
        int size2 = (View.MeasureSpec.getSize(heightMeasureSpec) - getPaddingTop()) - getPaddingBottom();
        if (m43033a(size, size2)) {
            heightMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) ((size / getWidthRadio()) * getHeightRadio()), 1073741824);
        } else {
            widthMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) ((size2 / getHeightRadio()) * getWidthRadio()), 1073741824);
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public final void setOrientation(int i) {
        this.orientation = i;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AutoSizeImageView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoSizeImageView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        this.orientation = 1;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.ui.AutoSizeImageView$widthRatio$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getFloat(C10651R.dimen.auto_size_image_width_ratio));
            }
        });
        this.widthRatio = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.ui.AutoSizeImageView$heightRatio$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getFloat(C10651R.dimen.auto_size_image_height_ratio));
            }
        });
        this.heightRatio = lazy2;
    }
}
