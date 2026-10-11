package com.onegravity.rteditor.toolbar.spinner;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.onegravity.rteditor.C7028R;
import com.onegravity.rteditor.toolbar.spinner.SpinnerItem;
import com.onegravity.rteditor.toolbar.spinner.SpinnerItemAdapter;
import java.util.List;

/* loaded from: classes7.dex */
public class SpinnerItemAdapter<T extends SpinnerItem> extends BaseAdapter implements SpinnerItem.OnChangedListener {

    /* renamed from: e */
    public final int f40568e;

    /* renamed from: f */
    public final int f40569f;

    /* renamed from: g */
    public int f40570g;

    /* renamed from: h */
    public final List<T> f40571h;

    /* renamed from: i */
    public final LayoutInflater f40572i;

    /* renamed from: j */
    public ViewGroup f40573j;

    /* renamed from: k */
    public String f40574k;

    /* renamed from: n */
    public final int f40577n;

    /* renamed from: m */
    public final SparseArray<View> f40576m = new SparseArray<>();

    /* renamed from: l */
    public final Handler f40575l = new Handler();

    public SpinnerItemAdapter(Context context, SpinnerItems<T> spinnerItems, int i, int i2) {
        this.f40570g = spinnerItems.getSelectedItem();
        this.f40571h = spinnerItems.getItems();
        this.f40572i = LayoutInflater.from(context);
        this.f40568e = i;
        this.f40569f = i2;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C7028R.attr.rte_ToolbarSpinnerSelectedColor, typedValue, true);
        this.f40577n = typedValue.resourceId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m31791c(Object obj) {
        int intValue = ((Integer) obj).intValue();
        int itemViewType = (intValue << 16) + getItemViewType(intValue);
        T t = this.f40571h.get(intValue);
        View view = this.f40576m.get(itemViewType);
        if (view != null) {
            m31792b(intValue, view, t);
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View] */
    /* renamed from: b */
    public final void m31792b(int i, View view, SpinnerItem spinnerItem) {
        TextView textView = (TextView) view.findViewById(C7028R.id.spinner_name);
        spinnerItem.mo31787b(textView);
        spinnerItem.mo31788a(view.findViewById(C7028R.id.spinner_color));
        ?? findViewById = view.findViewById(C7028R.id.chip_pacemaker);
        if (findViewById != 0) {
            textView = findViewById;
        }
        textView.setBackgroundResource(i == this.f40570g ? this.f40577n : R.color.transparent);
    }

    /* renamed from: d */
    public final void m31793d(TextView textView) {
        if (textView != null) {
            textView.setText(this.f40574k);
            textView.setVisibility(this.f40574k == null ? 8 : 0);
            textView.setHorizontallyScrolling(true);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f40571h.size();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    @SuppressLint({"InlinedApi"})
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        T t = this.f40571h.get(i);
        t.m31789c(this, Integer.valueOf(i));
        View inflate = this.f40572i.inflate(this.f40569f, viewGroup, false);
        this.f40576m.put((i << 16) + getItemViewType(i), inflate);
        m31792b(i, inflate, t);
        return inflate;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return 0;
    }

    public int getSelectedItem() {
        return this.f40570g;
    }

    @Override // android.widget.Adapter
    @SuppressLint({"ViewHolder"})
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View inflate = this.f40572i.inflate(this.f40568e, viewGroup, false);
        this.f40573j = viewGroup;
        m31793d((TextView) inflate.findViewById(C7028R.id.title));
        return inflate;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return true;
    }

    @Override // com.onegravity.rteditor.toolbar.spinner.SpinnerItem.OnChangedListener
    public void onSpinnerItemChanged(final Object obj) {
        this.f40575l.post(new Runnable() { // from class: com.sunia.HTREnginev2.iwm
            @Override // java.lang.Runnable
            public final void run() {
                SpinnerItemAdapter.this.m31791c(obj);
            }
        });
    }

    public void setSelectedItem(int i) {
        this.f40570g = i;
    }

    public void updateSpinnerTitle(String str) {
        this.f40574k = str;
        ViewGroup viewGroup = this.f40573j;
        if (viewGroup != null) {
            try {
                m31793d((TextView) viewGroup.getChildAt(0).findViewById(C7028R.id.title));
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.widget.Adapter
    public T getItem(int i) {
        return this.f40571h.get(i);
    }
}
