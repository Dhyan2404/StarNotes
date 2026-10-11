package com.onyx.android.sdk.theme.widgets;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.utils.TintManager;

/* loaded from: classes8.dex */
public class TintRecycleView extends RecyclerView implements Tintable {

    /* renamed from: W1 */
    public AppCompatBackgroundHelper f46977W1;

    public TintRecycleView(@NonNull Context context) {
        this(context, null);
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46977W1;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.tint();
        }
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    public TintRecycleView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this, TintManager.get(context));
        this.f46977W1 = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttribute(attributeSet, -1);
    }

    public TintRecycleView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this, TintManager.get(context));
        this.f46977W1 = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttribute(attributeSet, -1);
    }
}
