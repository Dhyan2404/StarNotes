package com.onyx.galaxy.note.p048ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.galaxy.note.databinding.ItemOptionSelectBinding;
import com.onyx.galaxy.note.p048ui.adapter.OptionSelectAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003BI\u0012\u0014\b\u0002\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0014\b\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00180\u0013\u0012\u0014\b\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00100\u0013¢\u0006\u0004\b$\u0010%J&\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014J/\u0010\u0011\u001a\u00020\u00102\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00018\u0000H\u0014¢\u0006\u0004\b\u0011\u0010\u0012R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00140\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00180\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0016R \u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00100\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0016R$\u0010#\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/adapter/OptionSelectAdapter;", "", "T", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemOptionSelectBinding;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Object;)V", "Lkotlin/Function1;", "", "r", "Lkotlin/jvm/functions/Function1;", "displayTextMapper", "", "s", "supportedMapper", "t", "onOptionSelect", "u", Constants.OBJECT_SIG, "getSelectedItem", "()Ljava/lang/Object;", "setSelectedItem", "(Ljava/lang/Object;)V", "selectedItem", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class OptionSelectAdapter<T> extends BaseQuickAdapter<T, DataBindingHolder<ItemOptionSelectBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Function1<T, String> displayTextMapper;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Function1<T, Boolean> supportedMapper;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Function1<Integer, Unit> onOptionSelect;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public T selectedItem;

    public OptionSelectAdapter() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    public static final void m51252m(OptionSelectAdapter this$0, Object obj, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectedItem = obj;
        this$0.notifyDataSetChanged();
    }

    @Nullable
    public final T getSelectedItem() {
        return this.selectedItem;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(DataBindingHolder<ItemOptionSelectBinding> dataBindingHolder, int i, Object obj) {
        onBindViewHolder2(dataBindingHolder, i, (int) obj);
    }

    public final void setSelectedItem(@Nullable T t) {
        this.selectedItem = t;
    }

    public /* synthetic */ OptionSelectAdapter(Function1 function1, Function1 function12, Function1 function13, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new Function1<T, String>() { // from class: com.onyx.galaxy.note.ui.adapter.OptionSelectAdapter.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ String invoke(Object obj) {
                return invoke2((C127711) obj);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final String invoke2(@NotNull T it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.toString();
            }
        } : function1, (i & 2) != 0 ? new Function1<T, Boolean>() { // from class: com.onyx.galaxy.note.ui.adapter.OptionSelectAdapter.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull T it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.TRUE;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                return invoke((C127722) obj);
            }
        } : function12, (i & 4) != 0 ? new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.ui.adapter.OptionSelectAdapter.3
            public final void invoke(int i2) {
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }
        } : function13);
    }

    /* renamed from: onBindViewHolder, reason: avoid collision after fix types in other method */
    public void onBindViewHolder2(@NotNull DataBindingHolder<ItemOptionSelectBinding> holder, int position, @Nullable final T item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        boolean areEqual = Intrinsics.areEqual(this.selectedItem, item);
        holder.getBinding().titleText.setText(this.displayTextMapper.invoke(item));
        holder.getBinding().selectImage.setSelected(areEqual);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().selectImage, areEqual);
        holder.getBinding().itemView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.khk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OptionSelectAdapter.m51252m(OptionSelectAdapter.this, item, view);
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemOptionSelectBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemOptionSelectBinding inflate = ItemOptionSelectBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OptionSelectAdapter(@NotNull Function1<? super T, String> displayTextMapper, @NotNull Function1<? super T, Boolean> supportedMapper, @NotNull Function1<? super Integer, Unit> onOptionSelect) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(displayTextMapper, "displayTextMapper");
        Intrinsics.checkNotNullParameter(supportedMapper, "supportedMapper");
        Intrinsics.checkNotNullParameter(onOptionSelect, "onOptionSelect");
        this.displayTextMapper = displayTextMapper;
        this.supportedMapper = supportedMapper;
        this.onOptionSelect = onOptionSelect;
    }
}
