package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ObservableField;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.onyx.android.sdk.extension.BindingAdapterUtils;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.PalmCollectionFrameLayout;
import com.onyx.galaxy.note.editor.view.PalmCollectionImageView;
import com.onyx.galaxy.note.editor.viewmodel.AudioViewModel;
import com.onyx.galaxy.note.editor.viewmodel.RecorderViewModel;

/* loaded from: classes9.dex */
public class LayoutCustomShortcutsViewBindingImpl extends LayoutCustomShortcutsViewBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57326u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57327v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f57328q0;

    /* renamed from: t0 */
    public long f57329t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57327v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.left_scroll_view, 3);
        sparseIntArray.put(C10651R.id.left_shortcut_container, 4);
        sparseIntArray.put(C10651R.id.iv_camera, 5);
        sparseIntArray.put(C10651R.id.iv_screen_shot, 6);
        sparseIntArray.put(C10651R.id.record_layout, 7);
        sparseIntArray.put(C10651R.id.iv_audio_set, 8);
        sparseIntArray.put(C10651R.id.iv_audio_set_normal, 9);
        sparseIntArray.put(C10651R.id.iv_audio_set_preview, 10);
        sparseIntArray.put(C10651R.id.iv_audio_set_new_record, 11);
        sparseIntArray.put(C10651R.id.iv_title_more, 12);
        sparseIntArray.put(C10651R.id.iv_slide, 13);
        sparseIntArray.put(C10651R.id.iv_add_page, 14);
        sparseIntArray.put(C10651R.id.iv_title_layer, 15);
        sparseIntArray.put(C10651R.id.iv_touch_mode, 16);
        sparseIntArray.put(C10651R.id.iv_touch_mode_stylus, 17);
        sparseIntArray.put(C10651R.id.iv_touch_mode_finger, 18);
        sparseIntArray.put(C10651R.id.iv_adjust_page_whitespace, 19);
        sparseIntArray.put(C10651R.id.iv_doc_overview_full, 20);
        sparseIntArray.put(C10651R.id.iv_export_doc, 21);
        sparseIntArray.put(C10651R.id.iv_realtime_beautify, 22);
        sparseIntArray.put(C10651R.id.iv_realtime_mode, 23);
        sparseIntArray.put(C10651R.id.iv_realtime_mode_inner, 24);
        sparseIntArray.put(C10651R.id.iv_realtime_settings, 25);
        sparseIntArray.put(C10651R.id.iv_non_realtime_mode, 26);
        sparseIntArray.put(C10651R.id.iv_reading_mode, 27);
        sparseIntArray.put(C10651R.id.iv_reading_mode_note, 28);
        sparseIntArray.put(C10651R.id.iv_reading_mode_reading, 29);
        sparseIntArray.put(C10651R.id.iv_counter, 30);
        sparseIntArray.put(C10651R.id.iv_encryption, 31);
        sparseIntArray.put(C10651R.id.iv_encryption_lock, 32);
        sparseIntArray.put(C10651R.id.iv_encryption_unlock, 33);
        sparseIntArray.put(C10651R.id.iv_note_overview, 34);
        sparseIntArray.put(C10651R.id.iv_note_mode, 35);
        sparseIntArray.put(C10651R.id.iv_full_screen, 36);
        sparseIntArray.put(C10651R.id.left_side_divider, 37);
        sparseIntArray.put(C10651R.id.right_scroll_view, 38);
        sparseIntArray.put(C10651R.id.right_shortcut_container, 39);
        sparseIntArray.put(C10651R.id.right_side_divider, 40);
    }

    public LayoutCustomShortcutsViewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 41, f57326u0, f57327v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        boolean z;
        boolean z2;
        synchronized (this) {
            j = this.f57329t0;
            this.f57329t0 = 0L;
        }
        AudioViewModel audioViewModel = this.mAudioViewModel;
        long j2 = 15 & j;
        boolean z3 = false;
        if (j2 != 0) {
            if ((j & 10) != 0) {
                z2 = audioViewModel != null ? audioViewModel.isRecording() : false;
                z = !z2;
            } else {
                z2 = false;
                z = false;
            }
            RecorderViewModel recorderViewModel = audioViewModel != null ? audioViewModel.getRecorderViewModel() : null;
            updateRegistration(0, recorderViewModel);
            ObservableField<String> time = recorderViewModel != null ? recorderViewModel.getTime() : null;
            updateRegistration(2, time);
            r9 = time != null ? time.get() : null;
            z3 = z2;
        } else {
            z = false;
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.btnRecord, r9);
        }
        if ((j & 10) != 0) {
            BindingAdapterUtils.setViewVisibleOrGone(this.btnRecord, z3);
            BindingAdapterUtils.setViewVisibleOrGone(this.ivRecord, z);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57329t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57329t0 = 8L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45337s((RecorderViewModel) obj, i2);
        }
        if (i == 1) {
            return m45336r((AudioViewModel) obj, i2);
        }
        if (i != 2) {
            return false;
        }
        return m45338t((ObservableField) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45336r(AudioViewModel audioViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57329t0 |= 2;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45337s(RecorderViewModel recorderViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57329t0 |= 1;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutCustomShortcutsViewBinding
    public void setAudioViewModel(@Nullable AudioViewModel audioViewModel) {
        updateRegistration(1, audioViewModel);
        this.mAudioViewModel = audioViewModel;
        synchronized (this) {
            this.f57329t0 |= 2;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (1 != i) {
            return false;
        }
        setAudioViewModel((AudioViewModel) obj);
        return true;
    }

    /* renamed from: t */
    public final boolean m45338t(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57329t0 |= 4;
        }
        return true;
    }

    public LayoutCustomShortcutsViewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3, (TintTextView) objArr[2], (PalmCollectionImageView) objArr[14], (PalmCollectionImageView) objArr[19], (TintFrameLayout) objArr[8], (PalmCollectionImageView) objArr[11], (PalmCollectionImageView) objArr[9], (PalmCollectionImageView) objArr[10], (PalmCollectionImageView) objArr[5], (PalmCollectionImageView) objArr[30], (PalmCollectionImageView) objArr[20], (PalmCollectionFrameLayout) objArr[31], (TintImageView) objArr[32], (TintImageView) objArr[33], (PalmCollectionImageView) objArr[21], (PalmCollectionImageView) objArr[36], (TintImageView) objArr[26], (PalmCollectionImageView) objArr[35], (PalmCollectionImageView) objArr[34], (PalmCollectionFrameLayout) objArr[27], (TintImageView) objArr[28], (TintImageView) objArr[29], (PalmCollectionFrameLayout) objArr[22], (TintFrameLayout) objArr[23], (TintImageView) objArr[24], (TintImageView) objArr[25], (TintImageView) objArr[1], (PalmCollectionImageView) objArr[6], (PalmCollectionImageView) objArr[13], (PalmCollectionImageView) objArr[15], (PalmCollectionImageView) objArr[12], (PalmCollectionFrameLayout) objArr[16], (TintImageView) objArr[18], (TintImageView) objArr[17], (HorizontalScrollView) objArr[3], (LinearLayout) objArr[4], (TintView) objArr[37], (PalmCollectionFrameLayout) objArr[7], (HorizontalScrollView) objArr[38], (LinearLayout) objArr[39], (TintView) objArr[40]);
        this.f57329t0 = -1L;
        this.btnRecord.setTag(null);
        this.ivRecord.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f57328q0 = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
