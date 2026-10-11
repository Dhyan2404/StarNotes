package com.sunia.HTREnginev2;

import android.view.View;
import com.chad.library.adapter4.BaseQuickAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public abstract class pve<T> implements BaseQuickAdapter.OnItemClickListener<T>, BaseQuickAdapter.OnItemChildClickListener<T> {

    /* renamed from: a */
    public final long f81272a;

    /* renamed from: b */
    public long f81273b;

    public pve(long j) {
        this.f81272a = j;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
    public void onClick(@NotNull BaseQuickAdapter<T, ?> adapter, @NotNull View view, int i) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.f81273b;
        if (j >= this.f81272a || j < 0) {
            this.f81273b = currentTimeMillis;
            onSingleClick(adapter, view, i);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
    public void onItemClick(@NotNull BaseQuickAdapter<T, ?> adapter, @NotNull View view, int i) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.f81273b;
        if (j >= this.f81272a || j < 0) {
            this.f81273b = currentTimeMillis;
            onSingleClick(adapter, view, i);
        }
    }

    public abstract void onSingleClick(@NotNull BaseQuickAdapter<T, ?> baseQuickAdapter, @NotNull View view, int i);
}
