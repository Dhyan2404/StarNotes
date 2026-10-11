package com.onyx.android.sdk.p039ui;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\r\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\b&\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u0015\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003¢\u0006\u0004\b'\u0010(J \u0010\u0006\u001a\u00020\u00042\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\b\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\b\u001a\u00020\u0003H&J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0003J*\u0010\u0010\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0016J*\u0010\u0012\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003H\u0016J\u0012\u0010\u0014\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0013H\u0016R\u0017\u0010\u001a\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\"\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R6\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/BaseTextWatcher;", "Landroid/text/TextWatcher;", "Lkotlin/Function2;", "", "", "callback", "setTextChangeCallback", "getLengthDisplay", "getMaxLengthDisplay", "maxLength", "updateMaxLength", "", "s", gon.f71290o0, "count", gon.f71277d0, "beforeTextChanged", gon.f71276c0, "onTextChanged", "Landroid/text/Editable;", "afterTextChanged", "Landroid/widget/EditText;", "e", "Landroid/widget/EditText;", "getEditText", "()Landroid/widget/EditText;", "editText", C6997f.f39671c, "I", "getMaxLength", "()I", "setMaxLength", "(I)V", C6998g.f39679a, "Lkotlin/jvm/functions/Function2;", "getCallback", "()Lkotlin/jvm/functions/Function2;", "setCallback", "(Lkotlin/jvm/functions/Function2;)V", Constants.CONSTRUCTOR_NAME, "(Landroid/widget/EditText;I)V", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class BaseTextWatcher implements TextWatcher {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditText editText;

    /* renamed from: f, reason: from kotlin metadata */
    public int maxLength;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Function2<? super Integer, ? super Integer, Unit> callback;

    public BaseTextWatcher(@NotNull EditText editText, int i) {
        Intrinsics.checkNotNullParameter(editText, "editText");
        this.editText = editText;
        this.maxLength = i;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(@Nullable Editable s) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(@Nullable CharSequence s, int start, int count, int after) {
    }

    @Nullable
    public final Function2<Integer, Integer, Unit> getCallback() {
        return this.callback;
    }

    @NotNull
    public final EditText getEditText() {
        return this.editText;
    }

    public abstract int getLengthDisplay();

    public final int getMaxLength() {
        return this.maxLength;
    }

    public abstract int getMaxLengthDisplay();

    @Override // android.text.TextWatcher
    public void onTextChanged(@Nullable CharSequence s, int start, int before, int count) {
    }

    public final void setCallback(@Nullable Function2<? super Integer, ? super Integer, Unit> function2) {
        this.callback = function2;
    }

    public final void setMaxLength(int i) {
        this.maxLength = i;
    }

    public final void setTextChangeCallback(@NotNull Function2<? super Integer, ? super Integer, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void updateMaxLength(int maxLength) {
        if (maxLength > 0) {
            this.maxLength = maxLength;
        }
    }

    public /* synthetic */ BaseTextWatcher(EditText editText, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editText, (i2 & 2) != 0 ? 0 : i);
    }
}
