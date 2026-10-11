package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ObservableField;
import androidx.databinding.ObservableInt;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.onyx.android.sdk.replicator.note.data.audio.AudioDataSet;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.PlaySpeedType;
import com.onyx.galaxy.note.editor.view.CustomShortcutsContainer;
import com.onyx.galaxy.note.editor.view.PalmCollectionImageView;
import com.onyx.galaxy.note.editor.view.custom.TickSeekBar;
import com.onyx.galaxy.note.editor.viewmodel.AudioViewModel;
import com.onyx.galaxy.note.editor.viewmodel.PlayerViewModel;
import com.onyx.galaxy.note.generated.callback.OnClickListener;

/* loaded from: classes9.dex */
public class LayoutFunctionToolBindingImpl extends LayoutFunctionToolBinding implements OnClickListener.Listener {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57354u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57355v0;

    /* renamed from: q0 */
    @Nullable
    public final View.OnClickListener f57356q0;

    /* renamed from: t0 */
    public long f57357t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57355v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_back, 5);
        sparseIntArray.put(C10651R.id.iv_tab_indicator, 6);
        sparseIntArray.put(C10651R.id.iv_custom_shortcut, 7);
        sparseIntArray.put(C10651R.id.iv_title_cloud, 8);
        sparseIntArray.put(C10651R.id.progress_sync, 9);
        sparseIntArray.put(C10651R.id.iv_sync_status, 10);
        sparseIntArray.put(C10651R.id.title_layout, 11);
        sparseIntArray.put(C10651R.id.play_layout, 12);
        sparseIntArray.put(C10651R.id.btn_audio_close, 13);
        sparseIntArray.put(C10651R.id.btn_audio_more, 14);
    }

    public LayoutFunctionToolBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 15, f57354u0, f57355v0));
    }

    @Override // com.onyx.galaxy.note.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        AudioViewModel audioViewModel = this.mAudioViewModel;
        if (audioViewModel != null) {
            audioViewModel.onPlay();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00b8  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.LayoutFunctionToolBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57357t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57357t0 = 256L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return m45347t((ObservableField) obj, i2);
            case 1:
                return m45348u((ObservableInt) obj, i2);
            case 2:
                return m45351x((ObservableField) obj, i2);
            case 3:
                return m45346s((PlayerViewModel) obj, i2);
            case 4:
                return m45350w((ObservableInt) obj, i2);
            case 5:
                return m45345r((AudioViewModel) obj, i2);
            case 6:
                return m45349v((ObservableInt) obj, i2);
            case 7:
                return m45352y((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    /* renamed from: r */
    public final boolean m45345r(AudioViewModel audioViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57357t0 |= 32;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45346s(PlayerViewModel playerViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57357t0 |= 8;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutFunctionToolBinding
    public void setAudioViewModel(@Nullable AudioViewModel audioViewModel) {
        updateRegistration(5, audioViewModel);
        this.mAudioViewModel = audioViewModel;
        synchronized (this) {
            this.f57357t0 |= 32;
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
    public final boolean m45347t(ObservableField<AudioDataSet> observableField, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57357t0 |= 1;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45348u(ObservableInt observableInt, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57357t0 |= 2;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45349v(ObservableInt observableInt, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57357t0 |= 64;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45350w(ObservableInt observableInt, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57357t0 |= 16;
        }
        return true;
    }

    /* renamed from: x */
    public final boolean m45351x(ObservableField<PlaySpeedType> observableField, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57357t0 |= 4;
        }
        return true;
    }

    /* renamed from: y */
    public final boolean m45352y(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57357t0 |= 128;
        }
        return true;
    }

    public LayoutFunctionToolBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 8, (TintConstraintLayout) objArr[0], (TintImageView) objArr[13], (TintImageView) objArr[14], (TintImageView) objArr[1], (PalmCollectionImageView) objArr[5], (PalmCollectionImageView) objArr[7], (PalmCollectionImageView) objArr[10], (PalmCollectionImageView) objArr[6], (FrameLayout) objArr[8], (FrameLayout) objArr[12], (TintTextView) objArr[3], (CircularProgressIndicator) objArr[9], (TickSeekBar) objArr[2], (CustomShortcutsContainer) objArr[11], (TintTextView) objArr[4]);
        this.f57357t0 = -1L;
        this.autoLayout.setTag(null);
        this.btnAudioPlay.setTag(null);
        this.playProgressTime.setTag(null);
        this.seekBar.setTag(null);
        this.tvPlaySpeed.setTag(null);
        setRootTag(view);
        this.f57356q0 = new OnClickListener(this, 1);
        invalidateAll();
    }
}
