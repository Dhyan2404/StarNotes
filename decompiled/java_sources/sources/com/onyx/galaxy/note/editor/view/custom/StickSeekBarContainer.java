package com.onyx.galaxy.note.editor.view.custom;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ViewStickProgressContainerBinding;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u00109\u001a\u000208¢\u0006\u0004\b:\u0010;B\u001b\b\u0016\u0012\u0006\u00109\u001a\u000208\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b:\u0010<B#\b\u0016\u0012\u0006\u00109\u001a\u000208\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0006\u0010>\u001a\u00020=¢\u0006\u0004\b:\u0010?J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0014\u0010\f\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\nJS\u0010\u0015\u001a\u00020\u00042K\u0010\u0014\u001aG\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00040\rJ@\u0010\u0018\u001a\u00020\u000428\u0010\u0014\u001a4\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0016J\u000e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0002J\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0002J\u0012\u0010\u001e\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002J\b\u0010\u001f\u001a\u00020\u0004H\u0002J\b\u0010 \u001a\u00020\u0004H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0006H\u0002R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R]\u0010\u0014\u001aI\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+RH\u0010.\u001a4\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u0010\u0019\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u0010\u0017\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00100R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00100R\u0016\u00104\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00100R\u0016\u00107\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106¨\u0006@"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;", "Landroid/widget/FrameLayout;", "", "title", "", "setTitle", "", "value", "setProgressValue", "getProgressValue", "Lorg/apache/commons/lang3/Range;", SessionDescription.f26441q, "setRange", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "progress", "progressValue", "", "isFromUser", "callback", "setProgressChangeCallback", "Lkotlin/Function2;", "suffix", "setFormatProgressValueStrCallback", RequestParameters.PREFIX, "setProgressValuePrefix", "setProgressValueSuffix", "Landroid/util/AttributeSet;", "attrs", "b", "d", "c", "a", "Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;", "e", "Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;)V", "binding", C6997f.f39671c, "Lkotlin/jvm/functions/Function3;", C6998g.f39679a, "Lkotlin/jvm/functions/Function2;", "formatProgressValueStrFunc", C6999h.f39688c, Constants.STRING_SIG, "i", "j", C4921e.f26537n, "formatter", "l", Constants.HASIDCALL_INDEX_SIG, "isDisplayFloatValue", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class StickSeekBarContainer extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public ViewStickProgressContainerBinding binding;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Function3<? super Float, ? super Float, ? super Boolean, Unit> callback;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Function2<? super Float, ? super String, String> formatProgressValueStrFunc;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String prefix;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String suffix;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String title;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public String formatter;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isDisplayFloatValue;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StickSeekBarContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: a */
    public final String m47801a(float progressValue) {
        String valueOf;
        Function2<? super Float, ? super String, String> function2 = this.formatProgressValueStrFunc;
        if (function2 != null) {
            return function2.invoke(Float.valueOf(this.binding.seekBar.getProgress()), this.suffix);
        }
        if (this.isDisplayFloatValue) {
            DecimalFormat decimalFormat = new DecimalFormat(this.formatter);
            decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
            valueOf = decimalFormat.format(Float.valueOf(progressValue));
        } else {
            valueOf = String.valueOf((int) progressValue);
        }
        return this.prefix + valueOf + this.suffix;
    }

    /* renamed from: b */
    public final void m47802b(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.StickSeekBarContainer);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        String string = obtainStyledAttributes.getString(C10651R.styleable.StickSeekBarContainer_progressValuePrefix);
        if (string == null) {
            string = "";
        }
        this.prefix = string;
        String string2 = obtainStyledAttributes.getString(C10651R.styleable.StickSeekBarContainer_progressValueSuffix);
        if (string2 == null) {
            string2 = "";
        }
        this.suffix = string2;
        String string3 = obtainStyledAttributes.getString(C10651R.styleable.StickSeekBarContainer_seekBarTitle);
        if (string3 == null) {
            string3 = "";
        }
        this.title = string3;
        String string4 = obtainStyledAttributes.getString(C10651R.styleable.StickSeekBarContainer_formatter);
        this.formatter = (string4 == null && (string4 = ResManager.INSTANCE.getString(C10651R.string.progress_decimal_format)) == null) ? "" : string4;
        float dimension = obtainStyledAttributes.getDimension(C10651R.styleable.StickSeekBarContainer_textSize, 0.0f);
        if (dimension > 0.0f) {
            this.binding.tvProgressTitle.setTextSize(0, dimension);
            this.binding.tvProgressValue.setTextSize(0, dimension);
        }
        this.binding.seekBar.setStick(obtainStyledAttributes.getBoolean(C10651R.styleable.StickSeekBarContainer_isStick, false));
        this.binding.seekBar.setSegmentCount(obtainStyledAttributes.getInt(C10651R.styleable.StickSeekBarContainer_segmentCount, -1));
        this.isDisplayFloatValue = obtainStyledAttributes.getBoolean(C10651R.styleable.StickSeekBarContainer_isDisplayFloatValue, true);
        int resourceId = obtainStyledAttributes.getResourceId(C10651R.styleable.StickSeekBarContainer_progressTint, C7996R.color.theme_primary_color_01);
        this.binding.seekBar.setBackgroundColorRes(obtainStyledAttributes.getResourceId(C10651R.styleable.StickSeekBarContainer_backgroundTint, C7996R.color.theme_background_stick_progress_bar_color));
        this.binding.seekBar.setProgressColorRes(resourceId);
        if (obtainStyledAttributes.hasValue(C10651R.styleable.StickSeekBarContainer_minValue)) {
            this.binding.seekBar.setMinValue(obtainStyledAttributes.getFloat(C10651R.styleable.StickSeekBarContainer_minValue, 0.0f));
        }
        if (obtainStyledAttributes.hasValue(C10651R.styleable.StickSeekBarContainer_maxValue)) {
            this.binding.seekBar.setMaxValue(obtainStyledAttributes.getFloat(C10651R.styleable.StickSeekBarContainer_maxValue, 0.0f));
        }
        if (obtainStyledAttributes.hasValue(C10651R.styleable.StickSeekBarContainer_defaultValue)) {
            this.binding.seekBar.setProgressValue(obtainStyledAttributes.getFloat(C10651R.styleable.StickSeekBarContainer_defaultValue, 0.0f));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    public final void m47803c() {
        ViewStickProgressContainerBinding viewStickProgressContainerBinding = this.binding;
        viewStickProgressContainerBinding.tvProgressValue.setText(m47801a(viewStickProgressContainerBinding.seekBar.getProgressValue()));
    }

    /* renamed from: d */
    public final void m47804d() {
        this.binding.tvProgressTitle.setText(this.title);
        m47803c();
        this.binding.seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer$initView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                String m47801a;
                Function3 function3;
                TintTextView tintTextView = StickSeekBarContainer.this.getBinding().tvProgressValue;
                m47801a = StickSeekBarContainer.this.m47801a(f2);
                tintTextView.setText(m47801a);
                function3 = StickSeekBarContainer.this.callback;
                if (function3 != null) {
                    function3.invoke(Float.valueOf(f), Float.valueOf(f2), Boolean.valueOf(z));
                }
            }
        });
    }

    @NotNull
    public final ViewStickProgressContainerBinding getBinding() {
        return this.binding;
    }

    public final float getProgressValue() {
        return this.binding.seekBar.getProgressValue();
    }

    public final void setBinding(@NotNull ViewStickProgressContainerBinding viewStickProgressContainerBinding) {
        Intrinsics.checkNotNullParameter(viewStickProgressContainerBinding, "<set-?>");
        this.binding = viewStickProgressContainerBinding;
    }

    public final void setFormatProgressValueStrCallback(@Nullable Function2<? super Float, ? super String, String> callback) {
        this.formatProgressValueStrFunc = callback;
        m47803c();
    }

    public final void setProgressChangeCallback(@NotNull Function3<? super Float, ? super Float, ? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void setProgressValue(float value) {
        this.binding.seekBar.setProgressValue(value);
    }

    public final void setProgressValuePrefix(@NotNull String prefix) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (Intrinsics.areEqual(this.prefix, prefix)) {
            return;
        }
        this.prefix = prefix;
        m47803c();
    }

    public final void setProgressValueSuffix(@NotNull String suffix) {
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (Intrinsics.areEqual(this.suffix, suffix)) {
            return;
        }
        this.suffix = suffix;
        m47803c();
    }

    public final void setRange(@NotNull Range<Float> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        this.binding.seekBar.setValueRange(range);
    }

    public final void setTitle(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        this.binding.tvProgressTitle.setText(title);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StickSeekBarContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StickSeekBarContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.prefix = "";
        this.suffix = "";
        this.title = "";
        this.formatter = "";
        this.isDisplayFloatValue = true;
        ViewStickProgressContainerBinding inflate = ViewStickProgressContainerBinding.inflate(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        m47802b(attributeSet);
        m47804d();
    }
}
