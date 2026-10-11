package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.RecyclerViewKt;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.theme.widgets.DynamicImageView;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.TemplateDisplayType;
import com.onyx.galaxy.note.category.data.TemplateSourceType;
import com.onyx.galaxy.note.category.event.DeleteCategoryEvent;
import com.onyx.galaxy.note.category.p044ui.MaterialTemplateFragment;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.adapter.template.CoverTitleCategoryAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.MaterialCoverCategoryAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.MaterialPaperCategoryAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.PaperTitleCategoryAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.ScrollPositionListener;
import com.onyx.galaxy.note.category.viewmodel.MaterialTemplateViewModel;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentMaterialTemplateBinding;
import com.onyx.galaxy.note.datarepository.event.TemplateChangeEvent;
import com.onyx.galaxy.note.utils.Navigator;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bL\u0010MJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0007J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0015H\u0007J\u0012\u0010\u0019\u001a\u00020\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016J$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016J\u001a\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001e2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\"\u001a\u00020\u0002H\u0016J\b\u0010#\u001a\u00020\u0002H\u0016R\u001b\u0010)\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u001b\u0010.\u001a\u00020*8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010&\u001a\u0004\b,\u0010-R\u001b\u00103\u001a\u00020/8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b0\u0010&\u001a\u0004\b1\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010&\u001a\u0004\b6\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010&\u001a\u0004\b;\u0010<R\u001b\u0010B\u001a\u00020>8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010&\u001a\u0004\b@\u0010AR\u001b\u0010G\u001a\u00020C8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010&\u001a\u0004\bE\u0010FR\u0014\u0010K\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010J¨\u0006N"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "A0", "x0", "z0", "w0", "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;", "templateDisplayType", "v0", "", "position", "B0", "o0", "G0", "D0", "E0", "C0", "Lcom/onyx/galaxy/note/datarepository/event/TemplateChangeEvent;", NotificationCompat.CATEGORY_EVENT, "onPaperImportEvent", "Lcom/onyx/galaxy/note/category/event/DeleteCategoryEvent;", "onDeleteCategoryEvent", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroy", "onDestroyView", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "d1", "Lkotlin/Lazy;", "u0", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "templateViewModel", "Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;", "e1", "r0", "()Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;", "materialViewModel", "Lcom/onyx/galaxy/note/databinding/FragmentMaterialTemplateBinding;", "f1", "getBinding", "()Lcom/onyx/galaxy/note/databinding/FragmentMaterialTemplateBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialCoverCategoryAdapter;", "g1", "q0", "()Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialCoverCategoryAdapter;", "coverMaterialCategoryAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;", "h1", "t0", "()Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;", "paperMaterialCategoryAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;", "i1", "s0", "()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;", "paperCategoryTitleAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;", "j1", "p0", "()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;", "coverCategoryTitleAdapter", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "k1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMaterialTemplateFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/MaterialTemplateFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,280:1\n256#2,2:281\n256#2,2:283\n*S KotlinDebug\n*F\n+ 1 MaterialTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/MaterialTemplateFragment\n*L\n234#1:281,2\n240#1:283,2\n*E\n"})
/* loaded from: classes17.dex */
public final class MaterialTemplateFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy templateViewModel;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy materialViewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final Lazy coverMaterialCategoryAdapter;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public final Lazy paperMaterialCategoryAdapter;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public final Lazy paperCategoryTitleAdapter;

    /* renamed from: j1, reason: from kotlin metadata */
    @NotNull
    public final Lazy coverCategoryTitleAdapter;

    /* renamed from: k1, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TemplateDisplayType.values().length];
            try {
                iArr[TemplateDisplayType.COVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TemplateDisplayType.PAPER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$a */
    /* loaded from: classes9.dex */
    public static final class C11256a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f54629a;

        public C11256a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f54629a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f54629a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f54629a.invoke(obj);
        }
    }

    public MaterialTemplateFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<NoteTemplateViewModel>() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$templateViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteTemplateViewModel invoke() {
                Fragment parentFragment = MaterialTemplateFragment.this.getParentFragment();
                if (parentFragment == null) {
                    parentFragment = MaterialTemplateFragment.this;
                }
                Intrinsics.checkNotNull(parentFragment);
                return (NoteTemplateViewModel) new ViewModelProvider(parentFragment).get(NoteTemplateViewModel.class);
            }
        });
        this.templateViewModel = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<MaterialTemplateViewModel>() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$materialViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MaterialTemplateViewModel invoke() {
                return (MaterialTemplateViewModel) FragmentKt.getViewModel(MaterialTemplateFragment.this, MaterialTemplateViewModel.class);
            }
        });
        this.materialViewModel = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<FragmentMaterialTemplateBinding>() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentMaterialTemplateBinding invoke() {
                FragmentMaterialTemplateBinding inflate = FragmentMaterialTemplateBinding.inflate(LayoutInflater.from(MaterialTemplateFragment.this.getContext()));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<MaterialCoverCategoryAdapter>() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$coverMaterialCategoryAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MaterialCoverCategoryAdapter invoke() {
                NoteTemplateViewModel m43161u0;
                m43161u0 = MaterialTemplateFragment.this.m43161u0();
                return new MaterialCoverCategoryAdapter(m43161u0);
            }
        });
        this.coverMaterialCategoryAdapter = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<MaterialPaperCategoryAdapter>() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$paperMaterialCategoryAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MaterialPaperCategoryAdapter invoke() {
                NoteTemplateViewModel m43161u0;
                m43161u0 = MaterialTemplateFragment.this.m43161u0();
                return new MaterialPaperCategoryAdapter(m43161u0);
            }
        });
        this.paperMaterialCategoryAdapter = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<PaperTitleCategoryAdapter>() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$paperCategoryTitleAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PaperTitleCategoryAdapter invoke() {
                return new PaperTitleCategoryAdapter();
            }
        });
        this.paperCategoryTitleAdapter = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<CoverTitleCategoryAdapter>() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$coverCategoryTitleAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CoverTitleCategoryAdapter invoke() {
                return new CoverTitleCategoryAdapter();
            }
        });
        this.coverCategoryTitleAdapter = lazy7;
        this.compositeDisposable = new CompositeDisposable();
    }

    /* renamed from: F0 */
    public static final void m43143F0(MaterialTemplateFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43151C0();
    }

    /* renamed from: H0 */
    public static final void m43144H0(MaterialTemplateFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43152D0();
    }

    /* renamed from: y0 */
    public static final void m43148y0(View view) {
        Navigator.INSTANCE.navigateToTemplateMaterialCenter();
    }

    /* renamed from: A0 */
    public final void m43149A0() {
        m43164x0();
        m43165z0();
    }

    /* renamed from: B0 */
    public final void m43150B0(int position) {
        RecyclerView.Adapter adapter = getBinding().rlCategoryTitle.getAdapter();
        if (adapter instanceof PaperTitleCategoryAdapter) {
            PaperTitleCategoryAdapter paperTitleCategoryAdapter = (PaperTitleCategoryAdapter) adapter;
            paperTitleCategoryAdapter.setDisplayPosition(position);
            paperTitleCategoryAdapter.getRecyclerView().scrollToPosition(position);
        }
        if (adapter instanceof CoverTitleCategoryAdapter) {
            CoverTitleCategoryAdapter coverTitleCategoryAdapter = (CoverTitleCategoryAdapter) adapter;
            coverTitleCategoryAdapter.setDisplayPosition(position);
            coverTitleCategoryAdapter.getRecyclerView().scrollToPosition(position);
        }
    }

    /* renamed from: C0 */
    public final void m43151C0() {
        if (m43161u0().getTemplateType().getValue() != TemplateDisplayType.PAPER && m43161u0().getTemplateSourceType().getValue() == TemplateSourceType.MATERIALS) {
            CoverTitleCategoryAdapter m43156p0 = m43156p0();
            CoverModel value = m43161u0().getCoverModel().getValue();
            int selectPosition = m43156p0.getSelectPosition(value != null ? value.getCategoryId() : null);
            TintRecycleView clCategoryAddedTemplate = getBinding().clCategoryAddedTemplate;
            Intrinsics.checkNotNullExpressionValue(clCategoryAddedTemplate, "clCategoryAddedTemplate");
            RecyclerViewKt.scrollToPositionIfCompletelyInVisible(clCategoryAddedTemplate, selectPosition);
        }
    }

    /* renamed from: D0 */
    public final void m43152D0() {
        if (m43161u0().getTemplateType().getValue() != TemplateDisplayType.COVER && m43161u0().getTemplateSourceType().getValue() == TemplateSourceType.MATERIALS) {
            PaperTitleCategoryAdapter m43159s0 = m43159s0();
            TemplateModel value = m43161u0().getPaperModel().getValue();
            int selectPosition = m43159s0.getSelectPosition(value != null ? value.getCategoryId() : null);
            TintRecycleView clCategoryAddedTemplate = getBinding().clCategoryAddedTemplate;
            Intrinsics.checkNotNullExpressionValue(clCategoryAddedTemplate, "clCategoryAddedTemplate");
            RecyclerViewKt.scrollToPositionIfCompletelyInVisible(clCategoryAddedTemplate, selectPosition);
        }
    }

    /* renamed from: E0 */
    public final void m43153E0() {
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        Disposable subscribe = RxjavaKt.postDelayObservable(root, 500).observeOn(AndroidSchedulers.mainThread()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.hgj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                MaterialTemplateFragment.m43143F0(MaterialTemplateFragment.this);
            }
        }).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: G0 */
    public final void m43154G0() {
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        Disposable subscribe = RxjavaKt.postDelayObservable(root, 500).observeOn(AndroidSchedulers.mainThread()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.jgj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                MaterialTemplateFragment.m43144H0(MaterialTemplateFragment.this);
            }
        }).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    @NotNull
    public final FragmentMaterialTemplateBinding getBinding() {
        return (FragmentMaterialTemplateBinding) this.binding.getValue();
    }

    /* renamed from: o0 */
    public final void m43155o0() {
        if (m43161u0().getTemplateType().getValue() == TemplateDisplayType.PAPER) {
            CommonEmptyView emptyView = getBinding().emptyView;
            Intrinsics.checkNotNullExpressionValue(emptyView, "emptyView");
            emptyView.setVisibility(m43160t0().getItems().isEmpty() ? 0 : 8);
            m43161u0().getVisibleMaterialButton().postValue(Boolean.valueOf(!m43160t0().getItems().isEmpty()));
            getBinding().emptyView.updateTitle(ResManager.INSTANCE.getString(C10651R.string.empty_view_paper_title));
            return;
        }
        getBinding().emptyView.updateTitle(ResManager.INSTANCE.getString(C10651R.string.empty_view_cover_title));
        m43161u0().getVisibleMaterialButton().postValue(Boolean.valueOf(!m43157q0().getItems().isEmpty()));
        CommonEmptyView emptyView2 = getBinding().emptyView;
        Intrinsics.checkNotNullExpressionValue(emptyView2, "emptyView");
        emptyView2.setVisibility(m43157q0().getItems().isEmpty() ? 0 : 8);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063323, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteCategoryEvent(@NotNull DeleteCategoryEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        MaterialTemplateViewModel m43158r0 = m43158r0();
        String id = event.getId();
        TemplateDisplayType value = m43161u0().getTemplateType().getValue();
        if (value == null) {
            value = TemplateDisplayType.PAPER;
        }
        Intrinsics.checkNotNull(value);
        m43158r0.deleteMaterialsCategory(id, value);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        GlobalBundle.INSTANCE.unregister(this);
        super.onDestroy();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.compositeDisposable.dispose();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPaperImportEvent(@NotNull TemplateChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43158r0().loadData();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m43149A0();
        m43163w0();
    }

    /* renamed from: p0 */
    public final CoverTitleCategoryAdapter m43156p0() {
        return (CoverTitleCategoryAdapter) this.coverCategoryTitleAdapter.getValue();
    }

    /* renamed from: q0 */
    public final MaterialCoverCategoryAdapter m43157q0() {
        return (MaterialCoverCategoryAdapter) this.coverMaterialCategoryAdapter.getValue();
    }

    /* renamed from: r0 */
    public final MaterialTemplateViewModel m43158r0() {
        return (MaterialTemplateViewModel) this.materialViewModel.getValue();
    }

    /* renamed from: s0 */
    public final PaperTitleCategoryAdapter m43159s0() {
        return (PaperTitleCategoryAdapter) this.paperCategoryTitleAdapter.getValue();
    }

    /* renamed from: t0 */
    public final MaterialPaperCategoryAdapter m43160t0() {
        return (MaterialPaperCategoryAdapter) this.paperMaterialCategoryAdapter.getValue();
    }

    /* renamed from: u0 */
    public final NoteTemplateViewModel m43161u0() {
        return (NoteTemplateViewModel) this.templateViewModel.getValue();
    }

    /* renamed from: v0 */
    public final void m43162v0(TemplateDisplayType templateDisplayType) {
        int i = WhenMappings.$EnumSwitchMapping$0[templateDisplayType.ordinal()];
        if (i == 1) {
            getBinding().clCategoryAddedTemplate.setAdapter(m43157q0());
            getBinding().rlCategoryTitle.setAdapter(m43156p0());
            m43153E0();
        } else if (i == 2) {
            getBinding().rlCategoryTitle.setAdapter(m43159s0());
            getBinding().clCategoryAddedTemplate.setAdapter(m43160t0());
            m43154G0();
        }
        m43155o0();
    }

    /* renamed from: w0 */
    public final void m43163w0() {
        m43158r0().loadData();
        m43161u0().getTemplateType().observe(getViewLifecycleOwner(), new C11256a(new Function1<TemplateDisplayType, Unit>() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$initData$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TemplateDisplayType templateDisplayType) {
                invoke2(templateDisplayType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(TemplateDisplayType templateDisplayType) {
                MaterialTemplateFragment materialTemplateFragment = MaterialTemplateFragment.this;
                Intrinsics.checkNotNull(templateDisplayType);
                materialTemplateFragment.m43162v0(templateDisplayType);
            }
        }));
        m43158r0().getMaterialPaperList().observe(getViewLifecycleOwner(), new C11256a(new MaterialTemplateFragment$initData$2(this)));
        m43158r0().getMaterialCoverList().observe(getViewLifecycleOwner(), new C11256a(new MaterialTemplateFragment$initData$3(this)));
        m43161u0().getCoverModel().observe(getViewLifecycleOwner(), new C11256a(new Function1<CoverModel, Unit>() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$initData$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CoverModel coverModel) {
                invoke2(coverModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable CoverModel coverModel) {
                MaterialCoverCategoryAdapter m43157q0;
                m43157q0 = MaterialTemplateFragment.this.m43157q0();
                m43157q0.notifySelectChange();
                MaterialTemplateFragment.this.m43153E0();
            }
        }));
        m43161u0().getPaperModel().observe(getViewLifecycleOwner(), new C11256a(new Function1<TemplateModel, Unit>() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$initData$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TemplateModel templateModel) {
                invoke2(templateModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(TemplateModel templateModel) {
                MaterialPaperCategoryAdapter m43160t0;
                m43160t0 = MaterialTemplateFragment.this.m43160t0();
                m43160t0.notifySelectChange();
                MaterialTemplateFragment.this.m43154G0();
            }
        }));
    }

    /* renamed from: x0 */
    public final void m43164x0() {
        DynamicImageView imageView = getBinding().emptyView.getImageView();
        Intrinsics.checkNotNullExpressionValue(imageView, "<get-imageView>(...)");
        ResManager resManager = ResManager.INSTANCE;
        ViewKt.setLayoutParams(imageView, resManager.getDimens(C7384R.dimen.dp_148), resManager.getDimens(C7384R.dimen.dp_148));
        TintTextView tvSubTitle = getBinding().emptyView.getTvSubTitle();
        Intrinsics.checkNotNullExpressionValue(tvSubTitle, "<get-tvSubTitle>(...)");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvSubTitle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.igj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaterialTemplateFragment.m43148y0(view);
            }
        }, 1, null);
    }

    /* renamed from: z0 */
    public final void m43165z0() {
        getBinding().clCategoryAddedTemplate.setLayoutManager(new LinearLayoutManager(getContext()));
        getBinding().clCategoryAddedTemplate.setAdapter(m43160t0());
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(0);
        TintRecycleView clCategoryAddedTemplate = getBinding().clCategoryAddedTemplate;
        Intrinsics.checkNotNullExpressionValue(clCategoryAddedTemplate, "clCategoryAddedTemplate");
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        RecyclerViewKt.addMaterialItemDecoration$default(clCategoryAddedTemplate, requireContext, 1, resManager.getDimensionPixelSize(C7384R.dimen.dp_24), false, 8, null);
        getBinding().rlCategoryTitle.setLayoutManager(linearLayoutManager);
        getBinding().rlCategoryTitle.setAdapter(m43159s0());
        TintRecycleView rlCategoryTitle = getBinding().rlCategoryTitle;
        Intrinsics.checkNotNullExpressionValue(rlCategoryTitle, "rlCategoryTitle");
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
        RecyclerViewKt.addMaterialItemDecoration$default(rlCategoryTitle, requireContext2, 0, resManager.getDimensionPixelSize(C10651R.dimen.template_category_divider_width), false, 8, null);
        getBinding().clCategoryAddedTemplate.addOnScrollListener(new ScrollPositionListener() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$initMaterialCategory$1
            @Override // com.onyx.galaxy.note.category.view.adapter.template.ScrollPositionListener
            public void onPositionChange(int position) {
                super.onPositionChange(position);
                MaterialTemplateFragment.this.m43150B0(position);
            }
        });
        m43156p0().setItemClickCallback(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$initMaterialCategory$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                MaterialTemplateFragment.this.getBinding().clCategoryAddedTemplate.smoothScrollToPosition(i);
            }
        });
        m43159s0().setItemClickCallback(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.category.ui.MaterialTemplateFragment$initMaterialCategory$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                MaterialTemplateFragment.this.getBinding().clCategoryAddedTemplate.smoothScrollToPosition(i);
            }
        });
    }
}
