package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemAudioBindingImpl extends ItemAudioBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56933t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56934u0;

    /* renamed from: q0 */
    public long f56935q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56934u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_play, 4);
        sparseIntArray.put(C10651R.id.more_settings, 5);
        sparseIntArray.put(C10651R.id.checkbox, 6);
    }

    public ItemAudioBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f56933t0, f56934u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        String str;
        String str2;
        String str3;
        synchronized (this) {
            j = this.f56935q0;
            this.f56935q0 = 0L;
        }
        AudioInfoBean audioInfoBean = this.mModel;
        long j2 = j & 3;
        if (j2 == 0 || audioInfoBean == null) {
            str = null;
            str2 = null;
            str3 = null;
        } else {
            str = audioInfoBean.getCreationTimeFormatText();
            str2 = audioInfoBean.getDurationFormatText();
            str3 = audioInfoBean.getTitle();
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.title, str3);
            TextViewBindingAdapter.setText(this.tvDuration, str2);
            TextViewBindingAdapter.setText(this.tvTime, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56935q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56935q0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.ItemAudioBinding
    public void setModel(@Nullable AudioInfoBean audioInfoBean) {
        this.mModel = audioInfoBean;
        synchronized (this) {
            this.f56935q0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((AudioInfoBean) obj);
        return true;
    }

    public ItemAudioBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintRadioButton) objArr[6], (TintImageView) objArr[4], (TintImageView) objArr[5], (RelativeLayout) objArr[0], (TintTextView) objArr[1], (TintTextView) objArr[2], (TintTextView) objArr[3]);
        this.f56935q0 = -1L;
        this.rlContentLayout.setTag(null);
        this.title.setTag(null);
        this.tvDuration.setTag(null);
        this.tvTime.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
