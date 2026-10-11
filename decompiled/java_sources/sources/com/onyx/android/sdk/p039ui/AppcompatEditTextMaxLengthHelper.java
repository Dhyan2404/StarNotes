package com.onyx.android.sdk.p039ui;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.EditText;
import com.onyx.android.sdk.skin.C7996R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0014¢\u0006\u0004\b\"\u0010#J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J \u0010\t\u001a\u00020\u00042\u0018\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006J\u0016\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0017R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;", "", "Landroid/util/AttributeSet;", "attrs", "", "loadFromAttribute", "Lkotlin/Function2;", "", "callback", "setTextChangedCallback", "maxLength", "", "customLengthRule", "setMaxLength", "release", "getTextLengthDisplay", "getMaxLengthDisplay", "a", "b", "c", "Landroid/widget/EditText;", "Landroid/widget/EditText;", "view", Constants.HASIDCALL_INDEX_SIG, "enableLengthRule", "I", "Lcom/onyx/android/sdk/ui/BaseTextWatcher;", "d", "Lcom/onyx/android/sdk/ui/BaseTextWatcher;", "textWatcher", "Landroid/text/InputFilter;", "e", "Landroid/text/InputFilter;", "textLengthFilter", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/widget/EditText;)V", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AppcompatEditTextMaxLengthHelper {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditText view;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean enableLengthRule;

    /* renamed from: c, reason: from kotlin metadata */
    public int maxLength;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public BaseTextWatcher textWatcher;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public InputFilter textLengthFilter;

    public AppcompatEditTextMaxLengthHelper(@NotNull EditText view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.view = view;
    }

    /* renamed from: a */
    public final void m36351a() {
        if (this.maxLength > 0) {
            m36353c();
            m36352b();
        }
    }

    /* renamed from: b */
    public final void m36352b() {
        InputFilter customLengthFilter = this.enableLengthRule ? new CustomLengthFilter(this.maxLength) : new InputFilter.LengthFilter(this.maxLength);
        this.textLengthFilter = customLengthFilter;
        EditText editText = this.view;
        Intrinsics.checkNotNull(customLengthFilter);
        editText.setFilters(new InputFilter[]{customLengthFilter});
    }

    /* renamed from: c */
    public final void m36353c() {
        release();
        BaseTextWatcher customTextWatcher = this.enableLengthRule ? new CustomTextWatcher(this.view, this.maxLength) : new NormalTextWatcher(this.view, this.maxLength);
        this.textWatcher = customTextWatcher;
        this.view.addTextChangedListener(customTextWatcher);
    }

    public final int getMaxLengthDisplay() {
        BaseTextWatcher baseTextWatcher = this.textWatcher;
        if (baseTextWatcher != null) {
            return baseTextWatcher.getMaxLengthDisplay();
        }
        return 0;
    }

    public final int getTextLengthDisplay() {
        BaseTextWatcher baseTextWatcher = this.textWatcher;
        return baseTextWatcher != null ? baseTextWatcher.getLengthDisplay() : this.view.getText().length();
    }

    public final void loadFromAttribute(@Nullable AttributeSet attrs) {
        TypedArray obtainStyledAttributes = this.view.getContext().obtainStyledAttributes(attrs, C7996R.styleable.TintTextEditTextMaxLengthHelper);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.enableLengthRule = obtainStyledAttributes.getBoolean(C7996R.styleable.TintTextEditTextMaxLengthHelper_enableLengthRule, false);
        this.maxLength = obtainStyledAttributes.getInt(C7996R.styleable.TintTextEditTextMaxLengthHelper_android_maxLength, 0);
        m36351a();
        obtainStyledAttributes.recycle();
    }

    public final void release() {
        BaseTextWatcher baseTextWatcher = this.textWatcher;
        if (baseTextWatcher != null) {
            this.view.removeTextChangedListener(baseTextWatcher);
            this.textWatcher = null;
        }
    }

    public final void setMaxLength(int maxLength, boolean customLengthRule) {
        this.maxLength = maxLength;
        this.enableLengthRule = customLengthRule;
        m36351a();
    }

    public final void setTextChangedCallback(@NotNull Function2<? super Integer, ? super Integer, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.textWatcher == null) {
            m36353c();
        }
        BaseTextWatcher baseTextWatcher = this.textWatcher;
        if (baseTextWatcher != null) {
            baseTextWatcher.setTextChangeCallback(callback);
        }
    }
}
