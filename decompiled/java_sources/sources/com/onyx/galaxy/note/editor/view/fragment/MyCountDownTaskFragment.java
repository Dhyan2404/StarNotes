package com.onyx.galaxy.note.editor.view.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.google.android.material.divider.MaterialDividerItemDecoration;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.FragmentKt;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentMyCountDownTaskBinding;
import com.onyx.galaxy.note.editor.action.counter.DeleteCounterTaskAction;
import com.onyx.galaxy.note.editor.action.counter.LoadCountDownTaskListAction;
import com.onyx.galaxy.note.editor.action.counter.StartCounterAction;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.onyx.galaxy.note.editor.view.adapter.MyCountDownTaskAdapter;
import com.onyx.galaxy.note.editor.view.fragment.MyCountDownTaskFragment;
import com.onyx.galaxy.note.editor.view.popup.CounterMoreOptionsPopup;
import com.onyx.galaxy.note.p048ui.view.ThemeRecyclerView;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0012\u001a\u00020\u000bH\u0002R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0015\u001a\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "onResume", "", "position", "q0", "p0", "x0", "Lcom/onyx/galaxy/note/databinding/FragmentMyCountDownTaskBinding;", "d1", "Lkotlin/Lazy;", "s0", "()Lcom/onyx/galaxy/note/databinding/FragmentMyCountDownTaskBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;", "e1", "r0", "()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;", "adapter", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MyCountDownTaskFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* renamed from: com.onyx.galaxy.note.editor.view.fragment.MyCountDownTaskFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12359a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ int f60041f;

        public C12359a(int i) {
            this.f60041f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteCounterTaskAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MyCountDownTaskFragment.this.m48428r0().removeAt(this.f60041f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.fragment.MyCountDownTaskFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12360b<T> implements Consumer {
        public C12360b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CounterTaskModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MyCountDownTaskFragment.this.m48428r0().submitList(it2);
        }
    }

    public MyCountDownTaskFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentMyCountDownTaskBinding>() { // from class: com.onyx.galaxy.note.editor.view.fragment.MyCountDownTaskFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentMyCountDownTaskBinding invoke() {
                return FragmentMyCountDownTaskBinding.inflate(LayoutInflater.from(MyCountDownTaskFragment.this.getContext()));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<MyCountDownTaskAdapter>() { // from class: com.onyx.galaxy.note.editor.view.fragment.MyCountDownTaskFragment$adapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MyCountDownTaskAdapter invoke() {
                return new MyCountDownTaskAdapter();
            }
        });
        this.adapter = lazy2;
    }

    /* renamed from: t0 */
    public static final void m48422t0(MyCountDownTaskFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.navigateWithAnimation$default(this$0, C10651R.id.fragment_edit_counter_setting, (Bundle) null, 2, (Object) null);
    }

    /* renamed from: u0 */
    public static final void m48423u0(MyCountDownTaskFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m48428r0().toggleItemExpandState(i);
    }

    /* renamed from: v0 */
    public static final void m48424v0(MyCountDownTaskFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        CounterTaskModel item = this$0.m48428r0().getItem(i);
        if (item != null) {
            RxBaseAction.execute$default(new StartCounterAction(CounterBundle.INSTANCE.getDefaultBundle(), item), null, null, null, 7, null);
        }
    }

    /* renamed from: w0 */
    public static final void m48425w0(final MyCountDownTaskFragment this$0, BaseQuickAdapter baseQuickAdapter, View v, final int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(v, "v");
        if (this$0.m48428r0().getItem(i) != null) {
            Context context = v.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            CounterMoreOptionsPopup counterMoreOptionsPopup = new CounterMoreOptionsPopup(context, 0, false, 6, null);
            counterMoreOptionsPopup.setCallback(new CounterMoreOptionsPopup.OperationCallback() { // from class: com.onyx.galaxy.note.editor.view.fragment.MyCountDownTaskFragment$onViewCreated$5$1$1
                @Override // com.onyx.galaxy.note.editor.view.popup.CounterMoreOptionsPopup.OperationCallback
                public void onDelete() {
                    MyCountDownTaskFragment.this.m48426p0(i);
                }

                @Override // com.onyx.galaxy.note.editor.view.popup.CounterMoreOptionsPopup.OperationCallback
                public void onEdit() {
                    MyCountDownTaskFragment.this.m48427q0(i);
                }
            });
            View root = this$0.m48429s0().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            PopupExtKt.showActionPopup$default(counterMoreOptionsPopup, v, ViewKt.globalVisibleRect(root), 0, ViewKt.globalVisibleRect(v).height(), 4, null);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m48429s0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m48430x0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        TintTextView tvAdd = m48429s0().tvAdd;
        Intrinsics.checkNotNullExpressionValue(tvAdd, "tvAdd");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvAdd, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vqj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MyCountDownTaskFragment.m48422t0(MyCountDownTaskFragment.this, view2);
            }
        }, 1, null);
        final ThemeRecyclerView themeRecyclerView = m48429s0().rvTask;
        themeRecyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 1, false));
        themeRecyclerView.addItemDecoration(new Function0<RecyclerView.ItemDecoration>() { // from class: com.onyx.galaxy.note.editor.view.fragment.MyCountDownTaskFragment$onViewCreated$2$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RecyclerView.ItemDecoration invoke() {
                MaterialDividerItemDecoration materialDividerItemDecoration = new MaterialDividerItemDecoration(ThemeRecyclerView.this.getContext(), 1);
                materialDividerItemDecoration.setDividerColor(ThemeUtils.getColorById(C7996R.color.theme_bg_overlay_color_01));
                ResManager resManager = ResManager.INSTANCE;
                materialDividerItemDecoration.setDividerThickness(resManager.getDimensionPixelSize(C7384R.dimen.dp_0_4));
                materialDividerItemDecoration.setDividerInsetStart(resManager.getDimens(C7384R.dimen.dp_16));
                materialDividerItemDecoration.setDividerInsetEnd(resManager.getDimens(C7384R.dimen.dp_16));
                return materialDividerItemDecoration;
            }
        });
        themeRecyclerView.setAdapter(m48428r0());
        ItemClickUtilsKt.addOnDebouncedChildClick$default(m48428r0(), C10651R.id.iv_expand_flag_arrow, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.wqj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                MyCountDownTaskFragment.m48423u0(MyCountDownTaskFragment.this, baseQuickAdapter, view2, i);
            }
        }, 2, null);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(m48428r0(), C10651R.id.tv_start, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.xqj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                MyCountDownTaskFragment.m48424v0(MyCountDownTaskFragment.this, baseQuickAdapter, view2, i);
            }
        }, 2, null);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(m48428r0(), C10651R.id.iv_more_option, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.yqj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                MyCountDownTaskFragment.m48425w0(MyCountDownTaskFragment.this, baseQuickAdapter, view2, i);
            }
        }, 2, null);
    }

    /* renamed from: p0 */
    public final void m48426p0(int position) {
        List listOf;
        CounterTaskModel item = m48428r0().getItem(position);
        if (item != null) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(item);
            Observable<DeleteCounterTaskAction> doOnNext = new DeleteCounterTaskAction(listOf).build().doOnNext(new C12359a(position));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
        }
    }

    /* renamed from: q0 */
    public final void m48427q0(int position) {
        CounterTaskModel item = m48428r0().getItem(position);
        if (item == null) {
            return;
        }
        FragmentKt.navigateWithAnimation(this, C10651R.id.fragment_edit_counter_setting, CounterUtils.INSTANCE.withTaskModelBundle(item));
    }

    /* renamed from: r0 */
    public final MyCountDownTaskAdapter m48428r0() {
        return (MyCountDownTaskAdapter) this.adapter.getValue();
    }

    /* renamed from: s0 */
    public final FragmentMyCountDownTaskBinding m48429s0() {
        return (FragmentMyCountDownTaskBinding) this.binding.getValue();
    }

    /* renamed from: x0 */
    public final void m48430x0() {
        Observable<List<? extends CounterTaskModel>> doOnNext = new LoadCountDownTaskListAction().build().doOnNext(new C12360b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }
}
