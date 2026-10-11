package com.sunia.HTREnginev2;

import android.content.Context;
import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

/* loaded from: classes6.dex */
public class zud extends AccessibilityDelegateCompat {

    /* renamed from: d */
    public final AccessibilityNodeInfoCompat.AccessibilityActionCompat f92215d;

    public zud(Context context, int i) {
        this.f92215d = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, context.getString(i));
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.addAction(this.f92215d);
    }
}
