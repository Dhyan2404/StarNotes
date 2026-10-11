package com.google.android.material.bottomsheet;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes6.dex */
public class BottomSheetDialogFragment extends AppCompatDialogFragment {

    /* renamed from: z1 */
    public boolean f30553z1;

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDialogFragment$b */
    /* loaded from: classes6.dex */
    public class C5185b extends BottomSheetBehavior.BottomSheetCallback {
        public C5185b() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(@NonNull View view, float f) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(@NonNull View view, int i) {
            if (i == 5) {
                BottomSheetDialogFragment.this.m23226s0();
            }
        }
    }

    public BottomSheetDialogFragment() {
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        if (m23228u0(false)) {
            return;
        }
        super.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        if (m23228u0(true)) {
            return;
        }
        super.dismissAllowingStateLoss();
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return new BottomSheetDialog(getContext(), getTheme());
    }

    /* renamed from: s0 */
    public final void m23226s0() {
        if (this.f30553z1) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }

    /* renamed from: t0 */
    public final void m23227t0(@NonNull BottomSheetBehavior<?> bottomSheetBehavior, boolean z) {
        this.f30553z1 = z;
        if (bottomSheetBehavior.getState() == 5) {
            m23226s0();
            return;
        }
        if (getDialog() instanceof BottomSheetDialog) {
            ((BottomSheetDialog) getDialog()).m23219l();
        }
        bottomSheetBehavior.addBottomSheetCallback(new C5185b());
        bottomSheetBehavior.setState(5);
    }

    /* renamed from: u0 */
    public final boolean m23228u0(boolean z) {
        Dialog dialog = getDialog();
        if (!(dialog instanceof BottomSheetDialog)) {
            return false;
        }
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) dialog;
        BottomSheetBehavior<FrameLayout> behavior = bottomSheetDialog.getBehavior();
        if (!behavior.isHideable() || !bottomSheetDialog.getDismissWithAnimation()) {
            return false;
        }
        m23227t0(behavior, z);
        return true;
    }

    @SuppressLint({"ValidFragment"})
    public BottomSheetDialogFragment(@LayoutRes int i) {
        super(i);
    }
}
