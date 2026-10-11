package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.LayoutParamRes;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.OptionsAdapter;
import com.onyx.galaxy.note.databinding.ItemSelectorOptionBinding;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003B\u0011\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b6\u00107J&\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014J/\u0010\u0011\u001a\u00020\u00102\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00018\u0000H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0016\u0010\u0015J\u001f\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0017\u0010\u0015R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR$\u0010\"\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R8\u0010,\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020$0#j\b\u0012\u0004\u0012\u00028\u0000`%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R>\u00105\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00100-j\b\u0012\u0004\u0012\u00028\u0000`.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104¨\u00068"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;", "", "T", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Object;)V", "binding", "m", "(Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;Ljava/lang/Object;)V", "p", C4921e.f26528e, "Lcom/onyx/android/sdk/ui/LayoutParamRes;", "r", "Lcom/onyx/android/sdk/ui/LayoutParamRes;", "layoutParamRes", "s", Constants.OBJECT_SIG, "getSelectedOption", "()Ljava/lang/Object;", "setSelectedOption", "(Ljava/lang/Object;)V", "selectedOption", "Lkotlin/Function1;", "", "Lcom/onyx/galaxy/note/category/view/adapter/OptionTextMapper;", "t", "Lkotlin/jvm/functions/Function1;", "getOptionTextMapper", "()Lkotlin/jvm/functions/Function1;", "setOptionTextMapper", "(Lkotlin/jvm/functions/Function1;)V", "optionTextMapper", "Lkotlin/Function2;", "Lcom/onyx/galaxy/note/category/view/adapter/OptionSelectedCallback;", "u", "Lkotlin/jvm/functions/Function2;", "getOptionSelectedCallback", "()Lkotlin/jvm/functions/Function2;", "setOptionSelectedCallback", "(Lkotlin/jvm/functions/Function2;)V", "optionSelectedCallback", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/ui/LayoutParamRes;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOptionsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionsAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/OptionsAdapter\n+ 2 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n19#2,3:95\n22#2,4:100\n1855#3,2:98\n*S KotlinDebug\n*F\n+ 1 OptionsAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/OptionsAdapter\n*L\n61#1:95,3\n61#1:100,4\n61#1:98,2\n*E\n"})
/* loaded from: classes9.dex */
public final class OptionsAdapter<T> extends BaseQuickAdapter<T, DataBindingHolder<ItemSelectorOptionBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final LayoutParamRes layoutParamRes;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public T selectedOption;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public Function1<? super T, String> optionTextMapper;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public Function2<? super T, ? super String, Unit> optionSelectedCallback;

    /* JADX WARN: Multi-variable type inference failed */
    public OptionsAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    public static final void m44144n(final OptionsAdapter this$0, Object item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        final T t = this$0.selectedOption;
        this$0.selectedOption = item;
        try {
            Iterator<T> it2 = CollectionKt.indexesOf(this$0.getItems(), new Function1<T, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.OptionsAdapter$addItemEvent$lambda$1$$inlined$notifyItemChangedSafely$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                    return invoke((C11393x799c5d67<T>) obj);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull T it3) {
                    Intrinsics.checkNotNullParameter(it3, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it3, OptionsAdapter.this.getSelectedOption()) || Intrinsics.areEqual(it3, t));
                }
            }).iterator();
            while (it2.hasNext()) {
                this$0.notifyItemChanged(((Number) it2.next()).intValue());
            }
        } catch (Throwable unused) {
            Debug.INSTANCE.m32037d("BaseQuickAdapter is detached");
        }
        this$0.optionSelectedCallback.invoke(item, this$0.optionTextMapper.invoke(item));
    }

    @NotNull
    public final Function2<T, String, Unit> getOptionSelectedCallback() {
        return this.optionSelectedCallback;
    }

    @NotNull
    public final Function1<T, String> getOptionTextMapper() {
        return this.optionTextMapper;
    }

    @Nullable
    public final T getSelectedOption() {
        return this.selectedOption;
    }

    /* renamed from: m */
    public final void m44145m(ItemSelectorOptionBinding binding, final T item) {
        View root = binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ViewKt.click$default(root, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qhk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OptionsAdapter.m44144n(OptionsAdapter.this, item, view);
            }
        }, 1, null);
    }

    /* renamed from: o */
    public final void m44146o(ItemSelectorOptionBinding binding, T item) {
        Object first;
        Object last;
        int i;
        if (getItems().isEmpty()) {
            return;
        }
        if (getItems().size() == 1) {
            i = C10651R.drawable.ripple_white_corner;
        } else {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) getItems());
            if (Intrinsics.areEqual(item, first)) {
                i = C10651R.drawable.ripple_white_top_corner;
            } else {
                last = CollectionsKt___CollectionsKt.last((List<? extends Object>) getItems());
                i = Intrinsics.areEqual(item, last) ? C10651R.drawable.ripple_white_bottom_corner : C10651R.drawable.ripple_white;
            }
        }
        binding.getRoot().setBackground(ThemeUtils.getThemeDrawable(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(DataBindingHolder<ItemSelectorOptionBinding> dataBindingHolder, int i, Object obj) {
        onBindViewHolder2(dataBindingHolder, i, (int) obj);
    }

    /* renamed from: p */
    public final void m44147p(ItemSelectorOptionBinding binding, T item) {
        Object last;
        boolean areEqual = Intrinsics.areEqual(item, this.selectedOption);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) getItems());
        boolean z = item == last;
        binding.displayText.setText(this.optionTextMapper.invoke(item));
        binding.displayText.setSelected(areEqual);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(binding.selectedIcon, areEqual);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(binding.bottomDivider, !z);
        m44146o(binding, item);
    }

    public final void setOptionSelectedCallback(@NotNull Function2<? super T, ? super String, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.optionSelectedCallback = function2;
    }

    public final void setOptionTextMapper(@NotNull Function1<? super T, String> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.optionTextMapper = function1;
    }

    public final void setSelectedOption(@Nullable T t) {
        this.selectedOption = t;
    }

    public /* synthetic */ OptionsAdapter(LayoutParamRes layoutParamRes, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new LayoutParamRes() : layoutParamRes);
    }

    /* renamed from: onBindViewHolder, reason: avoid collision after fix types in other method */
    public void onBindViewHolder2(@NotNull DataBindingHolder<ItemSelectorOptionBinding> holder, int position, @Nullable T item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        ItemSelectorOptionBinding binding = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding, "getBinding(...)");
        m44145m(binding, item);
        ItemSelectorOptionBinding binding2 = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding2, "getBinding(...)");
        m44147p(binding2, item);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemSelectorOptionBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemSelectorOptionBinding inflate = ItemSelectorOptionBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        if (this.layoutParamRes.getItemHeightRes() != 0) {
            View root = inflate.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            com.onyx.android.sdk.base.extension.ViewKt.setLayoutParams(root, new Function1<ViewGroup.LayoutParams, Unit>(this) { // from class: com.onyx.galaxy.note.category.view.adapter.OptionsAdapter$onCreateViewHolder$1
                final /* synthetic */ OptionsAdapter<T> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                    invoke2(layoutParams);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                    LayoutParamRes layoutParamRes;
                    Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                    ResManager resManager = ResManager.INSTANCE;
                    layoutParamRes = this.this$0.layoutParamRes;
                    setLayoutParams.height = (int) resManager.getDimension(layoutParamRes.getItemHeightRes());
                }
            });
        }
        if (this.layoutParamRes.getItemTextSizeRes() != 0) {
            inflate.displayText.setTextSize(0, ResManager.INSTANCE.getDimension(this.layoutParamRes.getItemTextSizeRes()));
        }
        return new DataBindingHolder<>(inflate);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OptionsAdapter(@NotNull LayoutParamRes layoutParamRes) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(layoutParamRes, "layoutParamRes");
        this.layoutParamRes = layoutParamRes;
        this.optionTextMapper = new Function1<T, String>() { // from class: com.onyx.galaxy.note.category.view.adapter.OptionsAdapter$optionTextMapper$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ String invoke(Object obj) {
                return invoke2((OptionsAdapter$optionTextMapper$1<T>) obj);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final String invoke2(@NotNull T item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return item.toString();
            }
        };
        this.optionSelectedCallback = new Function2<T, String, Unit>() { // from class: com.onyx.galaxy.note.category.view.adapter.OptionsAdapter$optionSelectedCallback$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull T item, @NotNull String text) {
                Intrinsics.checkNotNullParameter(item, "item");
                Intrinsics.checkNotNullParameter(text, "text");
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, String str) {
                invoke2((OptionsAdapter$optionSelectedCallback$1<T>) obj, str);
                return Unit.INSTANCE;
            }
        };
    }
}
