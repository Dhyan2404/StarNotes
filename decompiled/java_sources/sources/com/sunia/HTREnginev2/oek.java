package com.sunia.HTREnginev2;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.databinding.ObservableList;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class oek<T> extends BaseAdapter {

    /* renamed from: e */
    public List<T> f79633e;

    /* renamed from: f */
    public ObservableList.OnListChangedCallback f79634f;

    /* renamed from: g */
    public final Context f79635g;

    /* renamed from: h */
    public final int f79636h;

    /* renamed from: i */
    public final int f79637i;

    /* renamed from: j */
    public final int f79638j;

    /* renamed from: k */
    public final LayoutInflater f79639k;

    /* renamed from: com.sunia.HTREnginev2.oek$a */
    /* loaded from: classes3.dex */
    public class C14185a extends ObservableList.OnListChangedCallback {
        public C14185a() {
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onChanged(ObservableList observableList) {
            oek.this.notifyDataSetChanged();
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeChanged(ObservableList observableList, int i, int i2) {
            oek.this.notifyDataSetChanged();
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeInserted(ObservableList observableList, int i, int i2) {
            oek.this.notifyDataSetChanged();
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeMoved(ObservableList observableList, int i, int i2, int i3) {
            oek.this.notifyDataSetChanged();
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeRemoved(ObservableList observableList, int i, int i2) {
            oek.this.notifyDataSetChanged();
        }
    }

    public oek(Context context, List<T> list, int i, int i2, int i3) {
        this.f79635g = context;
        this.f79637i = i;
        this.f79636h = i2;
        this.f79638j = i3;
        this.f79639k = i == 0 ? null : (LayoutInflater) context.getSystemService("layout_inflater");
        m55944b(list);
    }

    /* renamed from: a */
    public View m55943a(int i, int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = i == 0 ? new TextView(this.f79635g) : this.f79639k.inflate(i, viewGroup, false);
        }
        int i3 = this.f79638j;
        TextView textView = (TextView) (i3 == 0 ? view : view.findViewById(i3));
        T t = this.f79633e.get(i2);
        textView.setText(t instanceof CharSequence ? (CharSequence) t : String.valueOf(t));
        return view;
    }

    /* renamed from: b */
    public void m55944b(List<T> list) {
        List<T> list2 = this.f79633e;
        if (list2 == list) {
            return;
        }
        if (list2 instanceof ObservableList) {
            ((ObservableList) list2).removeOnListChangedCallback(this.f79634f);
        }
        this.f79633e = list;
        if (list instanceof ObservableList) {
            if (this.f79634f == null) {
                this.f79634f = new C14185a();
            }
            ((ObservableList) this.f79633e).addOnListChangedCallback(this.f79634f);
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f79633e.size();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return m55943a(this.f79636h, i, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f79633e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return m55943a(this.f79637i, i, view, viewGroup);
    }
}
