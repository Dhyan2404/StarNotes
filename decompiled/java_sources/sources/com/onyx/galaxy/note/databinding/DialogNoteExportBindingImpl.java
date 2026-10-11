package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogNoteExportBindingImpl extends DialogNoteExportBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56480u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56481v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56482q0;

    /* renamed from: t0 */
    public long f56483t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56481v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_cancel, 1);
        sparseIntArray.put(C10651R.id.tv_export, 2);
        sparseIntArray.put(C10651R.id.export_type_container, 3);
        sparseIntArray.put(C10651R.id.vector_pdf, 4);
        sparseIntArray.put(C10651R.id.iv_vector_pdf, 5);
        sparseIntArray.put(C10651R.id.tv_vector_pdf, 6);
        sparseIntArray.put(C10651R.id.bitmap_pdf, 7);
        sparseIntArray.put(C10651R.id.iv_bitmap_pdf, 8);
        sparseIntArray.put(C10651R.id.tv_bitmap_pdf, 9);
        sparseIntArray.put(C10651R.id.image_file, 10);
        sparseIntArray.put(C10651R.id.iv_image_file, 11);
        sparseIntArray.put(C10651R.id.tv_image_file, 12);
        sparseIntArray.put(C10651R.id.note_file, 13);
        sparseIntArray.put(C10651R.id.iv_note_file, 14);
        sparseIntArray.put(C10651R.id.tv_note_file, 15);
        sparseIntArray.put(C10651R.id.format_desc, 16);
        sparseIntArray.put(C10651R.id.format_waring_desc_container, 17);
        sparseIntArray.put(C10651R.id.format_waring_desc, 18);
        sparseIntArray.put(C10651R.id.til_name, 19);
        sparseIntArray.put(C10651R.id.tie_name, 20);
        sparseIntArray.put(C10651R.id.ll_export_pages, 21);
        sparseIntArray.put(C10651R.id.tv_export_pages, 22);
        sparseIntArray.put(C10651R.id.exportWithBackground, 23);
        sparseIntArray.put(C10651R.id.tv_share, 24);
        sparseIntArray.put(C10651R.id.save_path, 25);
    }

    public DialogNoteExportBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 26, f56480u0, f56481v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56483t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56483t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56483t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.DialogNoteExportBinding
    public void setModel(@Nullable NoteTabData noteTabData) {
        this.mModel = noteTabData;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((NoteTabData) obj);
        return true;
    }

    public DialogNoteExportBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[7], (LinearLayout) objArr[3], (TintCheckBox) objArr[23], (TintTextView) objArr[16], (TintTextView) objArr[18], (LinearLayout) objArr[17], (ConstraintLayout) objArr[10], (ImageView) objArr[8], (ImageView) objArr[11], (ImageView) objArr[14], (ImageView) objArr[5], (TintLinearLayout) objArr[21], (ConstraintLayout) objArr[13], (TintTextView) objArr[25], (MaxLengthInputTextEdit) objArr[20], (TintTextInputLayoutView) objArr[19], (TintTextView) objArr[9], (TintTextView) objArr[1], (TintTextView) objArr[2], (TintTextView) objArr[22], (TintTextView) objArr[12], (TintTextView) objArr[15], (TintTextView) objArr[24], (TintTextView) objArr[6], (ConstraintLayout) objArr[4]);
        this.f56483t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56482q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
