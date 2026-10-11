package com.onyx.galaxy.note.editor.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.databinding.ItemLassoElementBinding;
import com.onyx.galaxy.note.editor.data.LassoElementType;
import com.onyx.galaxy.note.editor.view.adapter.LassoElementAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b%\u0010&J+\u0010\u000b\u001a\u00020\t2#\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005J\u0014\u0010\u000f\u001a\u00020\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fJ\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0002H\u0007J(\u0010\u0014\u001a\u00020\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0013\u001a\u00020\r2\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\rH\u0014R'\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\r0\u001bj\b\u0012\u0004\u0012\u00020\r`\u001c8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R3\u0010$\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/editor/data/LassoElementType;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemLassoElementBinding;", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "item", "", "callback", "setClickCallback", "", "", "list", "initSelectList", "element", "selectChange", "holder", "position", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "r", "Ljava/util/ArrayList;", "getSelectList", "()Ljava/util/ArrayList;", "selectList", "s", "Lkotlin/jvm/functions/Function1;", "clickCallback", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LassoElementAdapter extends BaseQuickAdapter<LassoElementType, DataBindingHolder<ItemLassoElementBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<Integer> selectList;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public Function1<? super LassoElementType, Unit> clickCallback;

    public LassoElementAdapter() {
        super(null, 1, null);
        this.selectList = new ArrayList<>();
    }

    /* renamed from: m */
    public static final void m47622m(LassoElementAdapter this$0, LassoElementType lassoElementType, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function1<? super LassoElementType, Unit> function1 = this$0.clickCallback;
        if (function1 != null) {
            function1.invoke(lassoElementType);
        }
    }

    @NotNull
    public final ArrayList<Integer> getSelectList() {
        return this.selectList;
    }

    public final void initSelectList(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.selectList.clear();
        this.selectList.addAll(list);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void selectChange(@NotNull LassoElementType element) {
        Intrinsics.checkNotNullParameter(element, "element");
        if (this.selectList.contains(Integer.valueOf(element.getType()))) {
            this.selectList.remove(Integer.valueOf(element.getType()));
        } else {
            this.selectList.add(Integer.valueOf(element.getType()));
        }
    }

    public final void setClickCallback(@Nullable Function1<? super LassoElementType, Unit> callback) {
        this.clickCallback = callback;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemLassoElementBinding> holder, int position, @Nullable final LassoElementType item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().tvTitle.setText(ResManager.INSTANCE.getStringSafely(item.getTitle(), Integer.valueOf(item.getTitle())));
        holder.getBinding().ivSelect.setChecked(this.selectList.contains(Integer.valueOf(item.getType())));
        holder.getBinding().ivSelect.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.evi
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                LassoElementAdapter.m47622m(LassoElementAdapter.this, item, compoundButton, z);
            }
        });
        holder.getBinding().executePendingBindings();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemLassoElementBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemLassoElementBinding inflate = ItemLassoElementBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
