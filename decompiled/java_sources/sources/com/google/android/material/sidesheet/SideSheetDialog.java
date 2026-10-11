package com.google.android.material.sidesheet;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.GravityInt;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.C5139R;
import com.sunia.HTREnginev2.wnm;

/* loaded from: classes6.dex */
public class SideSheetDialog extends wnm<SideSheetCallback> {

    /* renamed from: t */
    public static final int f32378t = C5139R.attr.sideSheetDialogTheme;

    /* renamed from: u */
    public static final int f32379u = C5139R.style.Theme_Material3_Light_SideSheetDialog;

    /* renamed from: com.google.android.material.sidesheet.SideSheetDialog$a */
    /* loaded from: classes6.dex */
    public class C5382a extends SideSheetCallback {
        public C5382a() {
        }

        @Override // com.google.android.material.sidesheet.SideSheetCallback, com.sunia.HTREnginev2.tnm
        public void onSlide(@NonNull View view, float f) {
        }

        @Override // com.google.android.material.sidesheet.SideSheetCallback, com.sunia.HTREnginev2.tnm
        public void onStateChanged(@NonNull View view, int i) {
            if (i == 5) {
                SideSheetDialog.this.cancel();
            }
        }
    }

    public SideSheetDialog(@NonNull Context context) {
        this(context, 0);
    }

    @Override // com.sunia.HTREnginev2.wnm, android.app.Dialog, android.content.DialogInterface
    public /* bridge */ /* synthetic */ void cancel() {
        super.cancel();
    }

    @Override // com.sunia.HTREnginev2.wnm
    /* renamed from: h */
    public void mo24903h(Sheet<SideSheetCallback> sheet) {
        sheet.addCallback(new C5382a());
    }

    @Override // com.sunia.HTREnginev2.wnm
    public /* bridge */ /* synthetic */ boolean isDismissWithSheetAnimationEnabled() {
        return super.isDismissWithSheetAnimationEnabled();
    }

    @Override // com.sunia.HTREnginev2.wnm
    @NonNull
    /* renamed from: j */
    public Sheet<SideSheetCallback> mo24904j(@NonNull FrameLayout frameLayout) {
        return SideSheetBehavior.from(frameLayout);
    }

    @Override // com.sunia.HTREnginev2.wnm
    @IdRes
    /* renamed from: l */
    public int mo24905l() {
        return C5139R.id.m3_side_sheet;
    }

    @Override // com.sunia.HTREnginev2.wnm
    @LayoutRes
    /* renamed from: m */
    public int mo24906m() {
        return C5139R.layout.m3_side_sheet_dialog;
    }

    @Override // com.sunia.HTREnginev2.wnm
    /* renamed from: o */
    public int mo24907o() {
        return 3;
    }

    @Override // com.sunia.HTREnginev2.wnm, android.app.Dialog, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // com.sunia.HTREnginev2.wnm, android.app.Dialog, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.sunia.HTREnginev2.wnm, android.app.Dialog
    public /* bridge */ /* synthetic */ void setCancelable(boolean z) {
        super.setCancelable(z);
    }

    @Override // com.sunia.HTREnginev2.wnm, android.app.Dialog
    public /* bridge */ /* synthetic */ void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
    }

    @Override // com.sunia.HTREnginev2.wnm, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public /* bridge */ /* synthetic */ void setContentView(@LayoutRes int i) {
        super.setContentView(i);
    }

    @Override // com.sunia.HTREnginev2.wnm
    public /* bridge */ /* synthetic */ void setDismissWithSheetAnimationEnabled(boolean z) {
        super.setDismissWithSheetAnimationEnabled(z);
    }

    @Override // com.sunia.HTREnginev2.wnm
    public /* bridge */ /* synthetic */ void setSheetEdge(@GravityInt int i) {
        super.setSheetEdge(i);
    }

    public SideSheetDialog(@NonNull Context context, @StyleRes int i) {
        super(context, i, f32378t, f32379u);
    }

    @Override // com.sunia.HTREnginev2.wnm
    @NonNull
    public Sheet<SideSheetCallback> getBehavior() {
        Sheet behavior = super.getBehavior();
        if (behavior instanceof SideSheetBehavior) {
            return (SideSheetBehavior) behavior;
        }
        throw new IllegalStateException("The view is not associated with SideSheetBehavior");
    }

    @Override // com.sunia.HTREnginev2.wnm, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public /* bridge */ /* synthetic */ void setContentView(@Nullable View view) {
        super.setContentView(view);
    }

    @Override // com.sunia.HTREnginev2.wnm, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public /* bridge */ /* synthetic */ void setContentView(@Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
    }
}
