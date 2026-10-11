package com.onegravity.rteditor.toolbar.spinner;

import android.view.View;
import android.widget.TextView;

/* loaded from: classes7.dex */
public abstract class SpinnerItem {
    protected Object mListenerTag;
    protected OnChangedListener mOnChangedListener;
    protected final String mTitle;

    /* loaded from: classes7.dex */
    public interface OnChangedListener {
        void onSpinnerItemChanged(Object obj);
    }

    public SpinnerItem(String str) {
        this.mTitle = str;
    }

    /* renamed from: a */
    public void mo31788a(View view) {
    }

    /* renamed from: b */
    public void mo31787b(TextView textView) {
        if (textView != null) {
            textView.setText(getName());
            textView.setHorizontallyScrolling(true);
        }
    }

    /* renamed from: c */
    public void m31789c(OnChangedListener onChangedListener, Object obj) {
        this.mOnChangedListener = onChangedListener;
        this.mListenerTag = obj;
    }

    public String getName() {
        return this.mTitle;
    }
}
