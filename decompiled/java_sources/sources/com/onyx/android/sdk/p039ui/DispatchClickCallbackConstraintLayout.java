package com.onyx.android.sdk.p039ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\b\u0016\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fB\u001d\b\u0016\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u000e\u0010\u0012B%\b\u0016\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u000e\u0010\u0015J\u001c\u0010\u0006\u001a\u00020\u00042\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002J\u0012\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0016R$\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;", "Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;", "Lkotlin/Function1;", "Landroid/view/MotionEvent;", "", "callback", "setClickCallback", "ev", "", "dispatchTouchEvent", "x0", "Lkotlin/jvm/functions/Function1;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DispatchClickCallbackConstraintLayout extends TintConstraintLayout {

    /* renamed from: x0, reason: from kotlin metadata */
    @Nullable
    public Function1<? super MotionEvent, Unit> callback;

    public DispatchClickCallbackConstraintLayout(@Nullable Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@Nullable MotionEvent ev) {
        Function1<? super MotionEvent, Unit> function1;
        Integer valueOf = ev != null ? Integer.valueOf(ev.getActionMasked()) : null;
        if (valueOf != null && valueOf.intValue() == 0 && (function1 = this.callback) != null) {
            function1.invoke(ev);
        }
        return super.dispatchTouchEvent(ev);
    }

    public final void setClickCallback(@Nullable Function1<? super MotionEvent, Unit> callback) {
        this.callback = callback;
    }

    public DispatchClickCallbackConstraintLayout(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DispatchClickCallbackConstraintLayout(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
