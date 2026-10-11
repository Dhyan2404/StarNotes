package androidx.core.view.accessibility;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* loaded from: classes3.dex */
public final class AccessibilityClickableSpanCompat extends ClickableSpan {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final String SPAN_ID = "ACCESSIBILITY_CLICKABLE_SPAN_ID";

    /* renamed from: e */
    public final int f6015e;

    /* renamed from: f */
    public final AccessibilityNodeInfoCompat f6016f;

    /* renamed from: g */
    public final int f6017g;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AccessibilityClickableSpanCompat(int i, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, int i2) {
        this.f6015e = i;
        this.f6016f = accessibilityNodeInfoCompat;
        this.f6017g = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NonNull View view) {
        Bundle bundle = new Bundle();
        bundle.putInt(SPAN_ID, this.f6015e);
        this.f6016f.performAction(this.f6017g, bundle);
    }
}
