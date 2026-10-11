package com.chad.library.adapter4.viewholder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes4.dex */
public class DataBindingHolder<DB extends ViewDataBinding> extends RecyclerView.ViewHolder {

    /* renamed from: H */
    public final DB f16253H;

    public DataBindingHolder(DB db) {
        super(db.getRoot());
        this.f16253H = db;
    }

    @NonNull
    public DB getBinding() {
        return this.f16253H;
    }

    public DataBindingHolder(@NonNull View view) {
        super(view);
        DB db = (DB) DataBindingUtil.bind(view);
        this.f16253H = db;
        if (db == null) {
            throw new NullPointerException("DataBinding is Null. Please check Layout resource or ItemView");
        }
    }

    public DataBindingHolder(@LayoutRes int i, @NonNull ViewGroup viewGroup) {
        this(LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false));
    }
}
