package com.onyx.android.sdk.p039ui;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016B\u001b\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0015\u0010\u0019J\u001f\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ \u0010\u000b\u001a\u00020\u00062\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\tJ\u0006\u0010\f\u001a\u00020\u0002J\u0006\u0010\r\u001a\u00020\u0002J\b\u0010\u000e\u001a\u00020\u0006H\u0014R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;", "Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;", "", "maxLength", "", "customLengthRule", "", "setMaxLength", "(Ljava/lang/Integer;Z)V", "Lkotlin/Function2;", "callback", "setTextChangeCallback", "getLengthDisplay", "getMaxLengthDisplay", "onDetachedFromWindow", "Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;", "editTextMaxLengthHelper", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class MaxLengthInputTextEdit extends TintTextInputEditTextView {

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public AppcompatEditTextMaxLengthHelper editTextMaxLengthHelper;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MaxLengthInputTextEdit(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final int getLengthDisplay() {
        AppcompatEditTextMaxLengthHelper appcompatEditTextMaxLengthHelper = this.editTextMaxLengthHelper;
        if (appcompatEditTextMaxLengthHelper != null) {
            return appcompatEditTextMaxLengthHelper.getTextLengthDisplay();
        }
        return 0;
    }

    public final int getMaxLengthDisplay() {
        AppcompatEditTextMaxLengthHelper appcompatEditTextMaxLengthHelper = this.editTextMaxLengthHelper;
        if (appcompatEditTextMaxLengthHelper != null) {
            return appcompatEditTextMaxLengthHelper.getMaxLengthDisplay();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AppcompatEditTextMaxLengthHelper appcompatEditTextMaxLengthHelper = this.editTextMaxLengthHelper;
        if (appcompatEditTextMaxLengthHelper != null) {
            appcompatEditTextMaxLengthHelper.release();
        }
    }

    public final void setMaxLength(@Nullable Integer maxLength, boolean customLengthRule) {
        AppcompatEditTextMaxLengthHelper appcompatEditTextMaxLengthHelper = this.editTextMaxLengthHelper;
        if (appcompatEditTextMaxLengthHelper != null) {
            Intrinsics.checkNotNull(appcompatEditTextMaxLengthHelper);
            Intrinsics.checkNotNull(maxLength);
            appcompatEditTextMaxLengthHelper.setMaxLength(maxLength.intValue(), customLengthRule);
        }
    }

    public final void setTextChangeCallback(@NotNull Function2<? super Integer, ? super Integer, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        AppcompatEditTextMaxLengthHelper appcompatEditTextMaxLengthHelper = this.editTextMaxLengthHelper;
        if (appcompatEditTextMaxLengthHelper != null) {
            appcompatEditTextMaxLengthHelper.setTextChangedCallback(callback);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaxLengthInputTextEdit(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        AppcompatEditTextMaxLengthHelper appcompatEditTextMaxLengthHelper = new AppcompatEditTextMaxLengthHelper(this);
        this.editTextMaxLengthHelper = appcompatEditTextMaxLengthHelper;
        Intrinsics.checkNotNull(appcompatEditTextMaxLengthHelper);
        appcompatEditTextMaxLengthHelper.loadFromAttribute(attributeSet);
    }
}
