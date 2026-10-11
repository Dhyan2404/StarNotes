package com.onyx.android.sdk.p039ui;

import android.text.Editable;
import android.widget.EditText;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.extension.StringRuleLengthKt;
import com.onyx.android.sdk.uicommon.C8044R;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J*\u0010\u000b\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J\b\u0010\u0010\u001a\u00020\u0005H\u0016J\b\u0010\u0011\u001a\u00020\u0005H\u0016J*\u0010\u0012\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0016¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/CustomTextWatcher;", "Lcom/onyx/android/sdk/ui/BaseTextWatcher;", "editText", "Landroid/widget/EditText;", "maxLength", "", "(Landroid/widget/EditText;I)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", gon.f71290o0, "count", gon.f71277d0, "getLengthDisplay", "getMaxLengthDisplay", "onTextChanged", gon.f71276c0, "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CustomTextWatcher extends BaseTextWatcher {
    public /* synthetic */ CustomTextWatcher(EditText editText, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editText, (i2 & 2) != 0 ? 0 : i);
    }

    @Override // com.onyx.android.sdk.p039ui.BaseTextWatcher, android.text.TextWatcher
    public void afterTextChanged(@Nullable Editable s) {
        Function2<Integer, Integer, Unit> callback;
        if (s == null || getMaxLength() == 0 || (callback = getCallback()) == null) {
            return;
        }
        callback.invoke(Integer.valueOf(getLengthDisplay()), Integer.valueOf(getMaxLength() / ((int) ResManager.INSTANCE.getFloat(C8044R.dimen.custom_length_ratio))));
    }

    @Override // com.onyx.android.sdk.p039ui.BaseTextWatcher, android.text.TextWatcher
    public void beforeTextChanged(@Nullable CharSequence s, int start, int count, int after) {
    }

    @Override // com.onyx.android.sdk.p039ui.BaseTextWatcher
    public int getLengthDisplay() {
        return (int) Math.ceil(StringRuleLengthKt.toRuleLength(getEditText().getText()) / ResManager.INSTANCE.getFloat(C8044R.dimen.custom_length_ratio));
    }

    @Override // com.onyx.android.sdk.p039ui.BaseTextWatcher
    public int getMaxLengthDisplay() {
        return (int) Math.ceil(getMaxLength() / ResManager.INSTANCE.getFloat(C8044R.dimen.custom_length_ratio));
    }

    @Override // com.onyx.android.sdk.p039ui.BaseTextWatcher, android.text.TextWatcher
    public void onTextChanged(@Nullable CharSequence s, int start, int before, int count) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTextWatcher(@NotNull EditText editText, int i) {
        super(editText, i);
        Intrinsics.checkNotNullParameter(editText, "editText");
    }
}
