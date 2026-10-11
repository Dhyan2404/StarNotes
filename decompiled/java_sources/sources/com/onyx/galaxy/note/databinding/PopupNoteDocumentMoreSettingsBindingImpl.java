package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.NoteCommonSettingsLayout;
import com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout;
import com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout;
import com.onyx.galaxy.note.editor.view.toolbar.NoteTagLayout;
import com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText;

/* loaded from: classes9.dex */
public class PopupNoteDocumentMoreSettingsBindingImpl extends PopupNoteDocumentMoreSettingsBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57725u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57726v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57727q0;

    /* renamed from: t0 */
    public long f57728t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57726v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_close, 1);
        sparseIntArray.put(C10651R.id.root_container, 2);
        sparseIntArray.put(C10651R.id.title_edittext, 3);
        sparseIntArray.put(C10651R.id.fl_tag_container, 4);
        sparseIntArray.put(C10651R.id.note_page_setting, 5);
        sparseIntArray.put(C10651R.id.note_export_setting, 6);
        sparseIntArray.put(C10651R.id.note_common_setting, 7);
    }

    public PopupNoteDocumentMoreSettingsBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f57725u0, f57726v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57728t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57728t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57728t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.PopupNoteDocumentMoreSettingsBinding
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

    public PopupNoteDocumentMoreSettingsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (NoteTagLayout) objArr[4], (TintImageView) objArr[1], (NoteCommonSettingsLayout) objArr[7], (NoteExportSettingsLayout) objArr[6], (NotePageSettingsLayout) objArr[5], (LinearLayout) objArr[2], (NoteTitleEditText) objArr[3]);
        this.f57728t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57727q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
