package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.galaxy.note.databinding.ItemSearchFilterBinding;
import com.onyx.galaxy.note.editor.view.adapter.SearchFilterAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003B\u001b\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\n0\u0014¢\u0006\u0004\b!\u0010\"J/\u0010\u000b\u001a\u00020\n2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00018\u0000H\u0014¢\u0006\u0004\b\u000b\u0010\fJ&\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0007H\u0014J\u0006\u0010\u0013\u001a\u00020\nR#\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\n0\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R$\u0010 \u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/SearchFilterAdapter;", "", "T", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSearchFilterBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Object;)V", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "resetSelectedByFirst", "Lkotlin/Function1;", "r", "Lkotlin/jvm/functions/Function1;", "getInvoke", "()Lkotlin/jvm/functions/Function1;", "invoke", "s", Constants.OBJECT_SIG, "getSelected", "()Ljava/lang/Object;", "setSelected", "(Ljava/lang/Object;)V", "selected", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SearchFilterAdapter<T> extends BaseQuickAdapter<T, DataBindingHolder<ItemSearchFilterBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Function1<T, Unit> invoke;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public T selected;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SearchFilterAdapter(@NotNull Function1<? super T, Unit> invoke) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(invoke, "invoke");
        this.invoke = invoke;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    public static final void m47654m(SearchFilterAdapter this$0, Object item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.invoke.invoke(item);
        this$0.selected = item;
        this$0.notifyDataSetChanged();
    }

    @NotNull
    public final Function1<T, Unit> getInvoke() {
        return this.invoke;
    }

    @Nullable
    public final T getSelected() {
        return this.selected;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(DataBindingHolder<ItemSearchFilterBinding> dataBindingHolder, int i, Object obj) {
        onBindViewHolder2(dataBindingHolder, i, (int) obj);
    }

    public final void resetSelectedByFirst() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) getItems());
        this.selected = (T) firstOrNull;
        notifyDataSetChanged();
    }

    public final void setSelected(@Nullable T t) {
        this.selected = t;
    }

    /* renamed from: onBindViewHolder, reason: avoid collision after fix types in other method */
    public void onBindViewHolder2(@NotNull DataBindingHolder<ItemSearchFilterBinding> holder, int position, @Nullable final T item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().getRoot().setSelected(item.equals(this.selected));
        holder.getBinding().tvName.setText(item.toString());
        holder.getBinding().getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u6m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchFilterAdapter.m47654m(SearchFilterAdapter.this, item, view);
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemSearchFilterBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemSearchFilterBinding inflate = ItemSearchFilterBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
