package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.category.view.adapter.TextLabelAdapter;
import com.onyx.galaxy.note.databinding.ItemTextLabelBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003:\u0001\"B9\u0012\u0014\b\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u001a\b\u0002\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u001c¢\u0006\u0004\b \u0010!J \u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014J)\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00018\u0000H\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0016\u0010\u0015R \u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR&\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/TextLabelAdapter;", "", "T", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/category/view/adapter/TextLabelAdapter$VH;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "(Lcom/onyx/galaxy/note/category/view/adapter/TextLabelAdapter$VH;ILjava/lang/Object;)V", "Lcom/onyx/galaxy/note/databinding/ItemTextLabelBinding;", "binding", "m", "(Lcom/onyx/galaxy/note/databinding/ItemTextLabelBinding;Ljava/lang/Object;)V", C4921e.f26528e, "Lkotlin/Function1;", "", "r", "Lkotlin/jvm/functions/Function1;", "getLabel", "Lkotlin/Function2;", "s", "Lkotlin/jvm/functions/Function2;", "drawItem", Constants.CONSTRUCTOR_NAME, "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TextLabelAdapter<T> extends BaseQuickAdapter<T, C11417VH> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Function1<T, String> getLabel;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Function2<ItemTextLabelBinding, T, Unit> drawItem;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/TextLabelAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemTextLabelBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemTextLabelBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemTextLabelBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemTextLabelBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.TextLabelAdapter$VH */
    /* loaded from: classes9.dex */
    public static final class C11417VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemTextLabelBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11417VH(@NotNull ItemTextLabelBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
        }

        @NotNull
        public final ItemTextLabelBinding getBinding() {
            return this.binding;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TextLabelAdapter() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* renamed from: n */
    public static final void m44218n(TextLabelAdapter this$0, Object item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) this$0.getLabel.invoke(item), false, 2, (Object) null);
    }

    /* renamed from: m */
    public final void m44219m(ItemTextLabelBinding binding, final T item) {
        TintTextView root = binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ViewKt.click$default(root, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jdn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextLabelAdapter.m44218n(TextLabelAdapter.this, item, view);
            }
        }, 1, null);
    }

    /* renamed from: o */
    public final void m44220o(ItemTextLabelBinding binding, T item) {
        binding.label.setText(StringKt.shortenFromCenter(this.getLabel.invoke(item), 4));
        this.drawItem.invoke(binding, item);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(C11417VH c11417vh, int i, Object obj) {
        onBindViewHolder2(c11417vh, i, (int) obj);
    }

    public /* synthetic */ TextLabelAdapter(Function1 function1, Function2 function2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new Function1<T, String>() { // from class: com.onyx.galaxy.note.category.view.adapter.TextLabelAdapter.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ String invoke(Object obj) {
                return invoke2((C114151) obj);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final String invoke2(@NotNull T it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.toString();
            }
        } : function1, (i & 2) != 0 ? new Function2<ItemTextLabelBinding, T, Unit>() { // from class: com.onyx.galaxy.note.category.view.adapter.TextLabelAdapter.2
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ItemTextLabelBinding binding, @NotNull T data) {
                Intrinsics.checkNotNullParameter(binding, "binding");
                Intrinsics.checkNotNullParameter(data, "data");
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ItemTextLabelBinding itemTextLabelBinding, Object obj) {
                invoke2(itemTextLabelBinding, (ItemTextLabelBinding) obj);
                return Unit.INSTANCE;
            }
        } : function2);
    }

    /* renamed from: onBindViewHolder, reason: avoid collision after fix types in other method */
    public void onBindViewHolder2(@NotNull C11417VH holder, int position, @Nullable T item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        m44219m(holder.getBinding(), item);
        m44220o(holder.getBinding(), item);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11417VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemTextLabelBinding inflate = ItemTextLabelBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new C11417VH(inflate);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TextLabelAdapter(@NotNull Function1<? super T, String> getLabel, @NotNull Function2<? super ItemTextLabelBinding, ? super T, Unit> drawItem) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(getLabel, "getLabel");
        Intrinsics.checkNotNullParameter(drawItem, "drawItem");
        this.getLabel = getLabel;
        this.drawItem = drawItem;
    }
}
