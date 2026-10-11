package com.onyx.galaxy.note.member.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.galaxy.note.databinding.ItemChargeFeatureBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J&\u0010\t\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014J\u000e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0005R\u0016\u0010\u0014\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter$ItemViewHolder;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", FirebaseAnalytics.Param.INDEX, "updateSelected", "r", "I", "selectedIndex", Constants.CONSTRUCTOR_NAME, "()V", "ItemViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFeatureAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureAdapter.kt\ncom/onyx/galaxy/note/member/adapter/FeatureAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,50:1\n256#2,2:51\n*S KotlinDebug\n*F\n+ 1 FeatureAdapter.kt\ncom/onyx/galaxy/note/member/adapter/FeatureAdapter\n*L\n32#1:51,2\n*E\n"})
/* loaded from: classes9.dex */
public final class FeatureAdapter extends BaseQuickAdapter<String, ItemViewHolder> {

    /* renamed from: r, reason: from kotlin metadata */
    public int selectedIndex;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter$ItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemChargeFeatureBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemChargeFeatureBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemChargeFeatureBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;Lcom/onyx/galaxy/note/databinding/ItemChargeFeatureBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class ItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemChargeFeatureBinding binding;

        /* renamed from: I */
        public final /* synthetic */ FeatureAdapter f61265I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ItemViewHolder(@NotNull FeatureAdapter featureAdapter, ItemChargeFeatureBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f61265I = featureAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemChargeFeatureBinding getBinding() {
            return this.binding;
        }
    }

    public FeatureAdapter() {
        super(null, 1, null);
    }

    public final void updateSelected(int index) {
        this.selectedIndex = index;
        notifyDataSetChanged();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull ItemViewHolder holder, int position, @Nullable String item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        boolean z = this.selectedIndex == position;
        holder.getBinding().tvTitle.setText(item);
        holder.getBinding().getRoot().setSelected(z);
        View viewSelectedLine = holder.getBinding().viewSelectedLine;
        Intrinsics.checkNotNullExpressionValue(viewSelectedLine, "viewSelectedLine");
        viewSelectedLine.setVisibility(z ? 0 : 8);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public ItemViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemChargeFeatureBinding inflate = ItemChargeFeatureBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new ItemViewHolder(this, inflate);
    }
}
