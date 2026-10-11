package com.onyx.galaxy.note.category.view.popup;

import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.p039ui.LayoutParamRes;
import com.onyx.galaxy.note.category.event.OrientationChangedEvent;
import com.onyx.galaxy.note.category.view.adapter.OptionsAdapter;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;
import com.onyx.galaxy.note.databinding.PopupOptionsSelectorBinding;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u0019\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b?\u0010@J\b\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R$\u0010\u0019\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R(\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R8\u0010+\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020#0\"j\b\u0012\u0004\u0012\u00028\u0000`$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R>\u00104\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00040,j\b\u0012\u0004\u0012\u00028\u0000`-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001b\u0010:\u001a\u0002058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u001a\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00000;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006A"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;", "", "T", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "onShow", "Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;", NotificationCompat.CATEGORY_EVENT, "onOrientationChanged", "m", "l", "Landroidx/fragment/app/FragmentActivity;", "q", "Landroidx/fragment/app/FragmentActivity;", "uiContext", "Lcom/onyx/android/sdk/ui/LayoutParamRes;", "r", "Lcom/onyx/android/sdk/ui/LayoutParamRes;", "layoutParamRes", "s", Constants.OBJECT_SIG, "getSelectedOption", "()Ljava/lang/Object;", "setSelectedOption", "(Ljava/lang/Object;)V", "selectedOption", "", "t", "Ljava/util/List;", "getSelectorOptions", "()Ljava/util/List;", "setSelectorOptions", "(Ljava/util/List;)V", "selectorOptions", "Lkotlin/Function1;", "", "Lcom/onyx/galaxy/note/category/view/adapter/OptionTextMapper;", "u", "Lkotlin/jvm/functions/Function1;", "getOptionTextMapper", "()Lkotlin/jvm/functions/Function1;", "setOptionTextMapper", "(Lkotlin/jvm/functions/Function1;)V", "optionTextMapper", "Lkotlin/Function2;", "Lcom/onyx/galaxy/note/category/view/adapter/OptionSelectedCallback;", "v", "Lkotlin/jvm/functions/Function2;", "getOptionSelectedCallback", "()Lkotlin/jvm/functions/Function2;", "setOptionSelectedCallback", "(Lkotlin/jvm/functions/Function2;)V", "optionSelectedCallback", "Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;", "w", "Lkotlin/Lazy;", C4921e.f26537n, "()Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;", "x", "Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;", "adapter", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/FragmentActivity;Lcom/onyx/android/sdk/ui/LayoutParamRes;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class OptionsSelectorPopup<T> extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final FragmentActivity uiContext;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final LayoutParamRes layoutParamRes;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public T selectedOption;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public List<? extends T> selectorOptions;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public Function1<? super T, String> optionTextMapper;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public Function2<? super T, ? super String, Unit> optionSelectedCallback;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public final OptionsAdapter<T> adapter;

    public /* synthetic */ OptionsSelectorPopup(FragmentActivity fragmentActivity, LayoutParamRes layoutParamRes, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragmentActivity, (i & 2) != 0 ? new LayoutParamRes() : layoutParamRes);
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

    @NotNull
    public final List<T> getSelectorOptions() {
        return this.selectorOptions;
    }

    /* renamed from: k */
    public final PopupOptionsSelectorBinding m44703k() {
        return (PopupOptionsSelectorBinding) this.binding.getValue();
    }

    /* renamed from: l */
    public final void m44704l() {
        int indexOf;
        m44703k().optionsListView.setLayoutManager(new LinearLayoutManager(this.uiContext));
        m44703k().optionsListView.setAdapter(this.adapter);
        this.adapter.setOptionTextMapper(this.optionTextMapper);
        this.adapter.setOptionSelectedCallback(this.optionSelectedCallback);
        this.adapter.setSelectedOption(this.selectedOption);
        this.adapter.submitList(this.selectorOptions);
        indexOf = CollectionsKt___CollectionsKt.indexOf((List) ((List<? extends Object>) this.selectorOptions), (Object) this.selectedOption);
        if (indexOf >= 0) {
            m44703k().optionsListView.scrollToPosition(indexOf);
        }
    }

    /* renamed from: m */
    public final void m44705m() {
        if (this.layoutParamRes.getPopupWidthRes() != 0) {
            MaxHeightRecyclerView optionsListView = m44703k().optionsListView;
            Intrinsics.checkNotNullExpressionValue(optionsListView, "optionsListView");
            ViewKt.setLayoutParams(optionsListView, new Function1<ViewGroup.LayoutParams, Unit>(this) { // from class: com.onyx.galaxy.note.category.view.popup.OptionsSelectorPopup$initView$1
                final /* synthetic */ OptionsSelectorPopup<T> this$0;

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
                    setLayoutParams.width = (int) resManager.getDimension(layoutParamRes.getPopupWidthRes());
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onOrientationChanged(@NotNull OrientationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        dismiss();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        m44705m();
        m44704l();
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

    public final void setSelectorOptions(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectorOptions = list;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OptionsSelectorPopup(@NotNull FragmentActivity uiContext, @NotNull LayoutParamRes layoutParamRes) {
        super(uiContext, null, 2, null);
        List<? extends T> emptyList;
        Lazy lazy;
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(layoutParamRes, "layoutParamRes");
        this.uiContext = uiContext;
        this.layoutParamRes = layoutParamRes;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.selectorOptions = emptyList;
        this.optionTextMapper = new Function1<T, String>() { // from class: com.onyx.galaxy.note.category.view.popup.OptionsSelectorPopup$optionTextMapper$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ String invoke(Object obj) {
                return invoke2((OptionsSelectorPopup$optionTextMapper$1<T>) obj);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final String invoke2(@NotNull T item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return item.toString();
            }
        };
        this.optionSelectedCallback = new Function2<T, String, Unit>() { // from class: com.onyx.galaxy.note.category.view.popup.OptionsSelectorPopup$optionSelectedCallback$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull T item, @NotNull String text) {
                Intrinsics.checkNotNullParameter(item, "item");
                Intrinsics.checkNotNullParameter(text, "text");
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, String str) {
                invoke2((OptionsSelectorPopup$optionSelectedCallback$1<T>) obj, str);
                return Unit.INSTANCE;
            }
        };
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupOptionsSelectorBinding>(this) { // from class: com.onyx.galaxy.note.category.view.popup.OptionsSelectorPopup$binding$2
            final /* synthetic */ OptionsSelectorPopup<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupOptionsSelectorBinding invoke() {
                FragmentActivity fragmentActivity;
                fragmentActivity = this.this$0.uiContext;
                return PopupOptionsSelectorBinding.inflate(fragmentActivity.getLayoutInflater());
            }
        });
        this.binding = lazy;
        this.adapter = new OptionsAdapter<>(layoutParamRes);
        setOutsideTouchable(true);
        setFocusable(true);
        setContentView(m44703k().getRoot());
        if (layoutParamRes.getPopupBackgroundRes() != 0) {
            setBackgroundDrawable(ResManager.INSTANCE.getDrawable(layoutParamRes.getPopupBackgroundRes()));
        }
    }
}
