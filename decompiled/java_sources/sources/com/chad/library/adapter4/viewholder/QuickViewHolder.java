package com.chad.library.adapter4.viewholder;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010*\u001a\u00020\u0002¢\u0006\u0004\b+\u0010,B\u001b\b\u0016\u0012\b\b\u0001\u0010-\u001a\u00020\u0004\u0012\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b+\u00100J!\u0010\u0006\u001a\u00028\u0000\"\b\b\u0000\u0010\u0003*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\b\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0003*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\u0007J\u001d\u0010\t\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0003*\u00020\u0002*\u00020\u0004¢\u0006\u0004\b\t\u0010\u0007J\u001a\u0010\f\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u001a\u0010\f\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\r\u001a\u00020\u0004J\u001a\u0010\u000f\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u000e\u001a\u00020\u0004J\u001a\u0010\u0011\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0010\u001a\u00020\u0004J\u001a\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0012\u001a\u00020\u0004J\u001a\u0010\u0016\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u001a\u0010\u0019\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u001a\u0010\u001a\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u000e\u001a\u00020\u0004J\u001a\u0010\u001c\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u001b\u001a\u00020\u0004J\u0018\u0010\u001f\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dJ\u0018\u0010!\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001dJ\u0018\u0010#\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001dJ\u0010\u0010\"\u001a\u00020\u001d2\b\b\u0001\u0010\u0005\u001a\u00020\u0004J\u0018\u0010%\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u001dJ\u0010\u0010$\u001a\u00020\u001d2\b\b\u0001\u0010\u0005\u001a\u00020\u0004R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(¨\u00061"}, m61528d2 = {"Lcom/chad/library/adapter4/viewholder/QuickViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "T", "", "viewId", "getView", "(I)Landroid/view/View;", "getViewOrNull", "findView", "", "value", "setText", "strId", "color", "setTextColor", "colorRes", "setTextColorRes", "imageResId", "setImageResource", "Landroid/graphics/drawable/Drawable;", ResourceManager.f46830c, "setImageDrawable", "Landroid/graphics/Bitmap;", "bitmap", "setImageBitmap", "setBackgroundColor", "backgroundRes", "setBackgroundResource", "", "isVisible", "setVisible", "isGone", "setGone", "isEnabled", "setEnabled", "isSelected", "setSelected", "Landroid/util/SparseArray;", "H", "Landroid/util/SparseArray;", "views", "view", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", HWREngineConstant.Constant.RES_ID, "Landroid/view/ViewGroup;", "parent", "(ILandroid/view/ViewGroup;)V", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nQuickViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickViewHolder.kt\ncom/chad/library/adapter4/viewholder/QuickViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n1#2:110\n*E\n"})
/* loaded from: classes4.dex */
public class QuickViewHolder extends RecyclerView.ViewHolder {

    /* renamed from: H, reason: from kotlin metadata */
    @NotNull
    public final SparseArray<View> views;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickViewHolder(@NotNull View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        this.views = new SparseArray<>();
    }

    @Nullable
    public final <T extends View> T findView(int i) {
        return (T) this.itemView.findViewById(i);
    }

    @NotNull
    public final <T extends View> T getView(@IdRes int viewId) {
        T t = (T) getViewOrNull(viewId);
        if (t != null) {
            return t;
        }
        throw new IllegalStateException(("No view found with id " + viewId).toString());
    }

    @Nullable
    public final <T extends View> T getViewOrNull(@IdRes int viewId) {
        T t = (T) this.views.get(viewId);
        if (t != null) {
            return t;
        }
        T t2 = (T) this.itemView.findViewById(viewId);
        if (t2 == null) {
            return null;
        }
        this.views.put(viewId, t2);
        return t2;
    }

    public final boolean isEnabled(@IdRes int viewId) {
        return getView(viewId).isEnabled();
    }

    public final boolean isSelected(@IdRes int viewId) {
        return getView(viewId).isSelected();
    }

    @NotNull
    public final QuickViewHolder setBackgroundColor(@IdRes int viewId, @ColorInt int color) {
        getView(viewId).setBackgroundColor(color);
        return this;
    }

    @NotNull
    public final QuickViewHolder setBackgroundResource(@IdRes int viewId, @DrawableRes int backgroundRes) {
        getView(viewId).setBackgroundResource(backgroundRes);
        return this;
    }

    @NotNull
    public final QuickViewHolder setEnabled(@IdRes int viewId, boolean isEnabled) {
        getView(viewId).isSelected();
        getView(viewId).setEnabled(isEnabled);
        return this;
    }

    @NotNull
    public final QuickViewHolder setGone(@IdRes int viewId, boolean isGone) {
        getView(viewId).setVisibility(isGone ? 8 : 0);
        return this;
    }

    @NotNull
    public final QuickViewHolder setImageBitmap(@IdRes int viewId, @Nullable Bitmap bitmap) {
        ((ImageView) getView(viewId)).setImageBitmap(bitmap);
        return this;
    }

    @NotNull
    public final QuickViewHolder setImageDrawable(@IdRes int viewId, @Nullable Drawable drawable) {
        ((ImageView) getView(viewId)).setImageDrawable(drawable);
        return this;
    }

    @NotNull
    public final QuickViewHolder setImageResource(@IdRes int viewId, @DrawableRes int imageResId) {
        ((ImageView) getView(viewId)).setImageResource(imageResId);
        return this;
    }

    @NotNull
    public final QuickViewHolder setSelected(@IdRes int viewId, boolean isSelected) {
        getView(viewId).setSelected(isSelected);
        return this;
    }

    @NotNull
    public final QuickViewHolder setText(@IdRes int viewId, @Nullable CharSequence value) {
        ((TextView) getView(viewId)).setText(value);
        return this;
    }

    @NotNull
    public final QuickViewHolder setTextColor(@IdRes int viewId, @ColorInt int color) {
        ((TextView) getView(viewId)).setTextColor(color);
        return this;
    }

    @NotNull
    public final QuickViewHolder setTextColorRes(@IdRes int viewId, @ColorRes int colorRes) {
        ((TextView) getView(viewId)).setTextColor(ContextCompat.getColor(this.itemView.getContext(), colorRes));
        return this;
    }

    @NotNull
    public final QuickViewHolder setVisible(@IdRes int viewId, boolean isVisible) {
        getView(viewId).setVisibility(isVisible ? 0 : 4);
        return this;
    }

    @NotNull
    public final QuickViewHolder setText(@IdRes int viewId, @StringRes int strId) {
        ((TextView) getView(viewId)).setText(strId);
        return this;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public QuickViewHolder(@androidx.annotation.LayoutRes int r3, @org.jetbrains.annotations.NotNull android.view.ViewGroup r4) {
        /*
            r2 = this;
            java.lang.String r0 = "parent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            android.content.Context r0 = r4.getContext()
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            r1 = 0
            android.view.View r3 = r0.inflate(r3, r4, r1)
            java.lang.String r4 = "from(parent.context).inflate(resId, parent, false)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            r2.<init>(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chad.library.adapter4.viewholder.QuickViewHolder.<init>(int, android.view.ViewGroup):void");
    }
}
