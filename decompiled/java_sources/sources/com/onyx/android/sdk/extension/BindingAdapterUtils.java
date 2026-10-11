package com.onyx.android.sdk.extension;

import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import androidx.databinding.BindingAdapter;
import androidx.databinding.ObservableInt;
import com.google.android.material.button.MaterialButton;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.sunia.commonv2.global.HWREngineConstant;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0007J\u001a\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u001a\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0007J\u001a\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00172\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0018\u0010 \u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/extension/BindingAdapterUtils;", "", "()V", "setImageResource", "", "imageView", "Landroid/widget/ImageView;", HWREngineConstant.Constant.RES_ID, "", "setMaterialBtnIcon", "button", "Lcom/google/android/material/button/MaterialButton;", "filedInt", "Landroidx/databinding/ObservableInt;", "setOnSeekBarChangeListener", "seekBar", "Landroid/widget/SeekBar;", "onSeekBarChangeListener", "Landroid/widget/SeekBar$OnSeekBarChangeListener;", "setTextResource", "textView", "Landroid/widget/TextView;", "setTintImageIcon", "Lcom/onyx/android/sdk/theme/widgets/TintImageView;", "setTintTextViewLeftIcon", "tintTextView", "Lcom/onyx/android/sdk/theme/widgets/TintTextView;", "setViewVisibleOrGone", "view", "Landroid/view/View;", "show", "", "setViewVisibleOrInvisible", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BindingAdapterUtils {

    @NotNull
    public static final BindingAdapterUtils INSTANCE = new BindingAdapterUtils();

    @BindingAdapter({"imageResource"})
    @JvmStatic
    public static final void setImageResource(@NotNull ImageView imageView, @DrawableRes int resId) {
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        imageView.setImageResource(resId);
    }

    @BindingAdapter({"setMaterialBtnIcon"})
    @JvmStatic
    public static final void setMaterialBtnIcon(@NotNull MaterialButton button, @Nullable ObservableInt filedInt) {
        Intrinsics.checkNotNullParameter(button, "button");
        if (filedInt == null) {
            return;
        }
        button.setIconResource(filedInt.get());
    }

    @BindingAdapter({"onSeekBarChangeListener"})
    @JvmStatic
    public static final void setOnSeekBarChangeListener(@NotNull SeekBar seekBar, @Nullable SeekBar.OnSeekBarChangeListener onSeekBarChangeListener) {
        Intrinsics.checkNotNullParameter(seekBar, "seekBar");
        seekBar.setOnSeekBarChangeListener(onSeekBarChangeListener);
    }

    @BindingAdapter({"textResource"})
    @JvmStatic
    public static final void setTextResource(@NotNull TextView textView, @StringRes int resId) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        textView.setText(resId);
    }

    @BindingAdapter({"setTintImageIcon"})
    @JvmStatic
    public static final void setTintImageIcon(@NotNull TintImageView imageView, @Nullable ObservableInt filedInt) {
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        if (filedInt == null) {
            return;
        }
        imageView.setImageResource(filedInt.get());
    }

    @BindingAdapter({"setTintTextViewLeftIcon"})
    @JvmStatic
    public static final void setTintTextViewLeftIcon(@NotNull TintTextView tintTextView, @Nullable ObservableInt filedInt) {
        Intrinsics.checkNotNullParameter(tintTextView, "tintTextView");
        if (filedInt == null) {
            return;
        }
        tintTextView.setCompoundDrawablesWithIntrinsicBounds(filedInt.get(), 0, 0, 0);
    }

    @BindingAdapter({"visibleOrGone"})
    @JvmStatic
    public static final void setViewVisibleOrGone(@NotNull View view, boolean show) {
        Intrinsics.checkNotNullParameter(view, "view");
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(view, show);
    }

    @BindingAdapter({"visibleOrInvisible"})
    @JvmStatic
    public static final void setViewVisibleOrInvisible(@NotNull View view, boolean show) {
        Intrinsics.checkNotNullParameter(view, "view");
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(view, show);
    }
}
