package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.data.common.data.template.SourceType;
import com.onyx.android.sdk.event.StatisticsQuickNoteTemplateViewEvent;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.bean.TemplateCategory;
import com.onyx.android.sdk.replicator.note.bean.TemplateQueryBean;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.galaxy.note.category.action.cover.LoadAllOfficialCoverListAction;
import com.onyx.galaxy.note.category.action.template.LoadOfficialTemplateListAction;
import com.onyx.galaxy.note.category.data.TemplateFragmentArgs;
import com.onyx.galaxy.note.category.data.TemplateSourceType;
import com.onyx.galaxy.note.category.p044ui.TemplateRecycleView;
import com.onyx.galaxy.note.category.view.adapter.template.CoverAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.PaperAdapter;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 D2\u00020\u0001:\u0001DB\u0011\b\u0016\u0012\u0006\u0010<\u001a\u00020;¢\u0006\u0004\b=\u0010>B\u001b\b\u0016\u0012\u0006\u0010<\u001a\u00020;\u0012\b\u0010@\u001a\u0004\u0018\u00010?¢\u0006\u0004\b=\u0010AB#\b\u0016\u0012\u0006\u0010<\u001a\u00020;\u0012\b\u0010@\u001a\u0004\u0018\u00010?\u0012\u0006\u0010B\u001a\u00020\u000f¢\u0006\u0004\b=\u0010CJ\u0016\u0010\u0005\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\u0006\u0010\u0006\u001a\u00020\u0003J\u0006\u0010\u0007\u001a\u00020\u0003J\u0006\u0010\b\u001a\u00020\u0003J\u0006\u0010\t\u001a\u00020\u0003J\u0006\u0010\n\u001a\u00020\u0003J\u0006\u0010\u000b\u001a\u00020\u0003J\u0006\u0010\f\u001a\u00020\u0003J \u0010\u0013\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011J \u0010\u0016\u001a\u00020\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011J\b\u0010\u0017\u001a\u00020\u0003H\u0014J\b\u0010\u0018\u001a\u00020\u0003H\u0002J\b\u0010\u0019\u001a\u00020\u0003H\u0002J\b\u0010\u001a\u001a\u00020\u0003H\u0002R\u001e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R.\u0010/\u001a\u0004\u0018\u00010'2\b\u0010(\u001a\u0004\u0018\u00010'8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001b\u00105\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u001b\u0010:\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u00102\u001a\u0004\b8\u00109¨\u0006E"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;", "Landroidx/recyclerview/widget/RecyclerView;", "Lkotlin/Function0;", "", "callback", "setCategoryTitleChange", "update", "notifyPaperSelect", "notifyPaperChangeSelectColors", "notifyCoverChangeSelectColors", "notifyCoverSelect", "notifyPaperChange", "notifyCoverChange", "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", "coverCategory", "", "orientation", "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;", "templateSourceType", "loadCoverList", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;", "templateCategory", "loadPaperList", "onDetachedFromWindow", "b1", "e1", "f1", "W1", "Lkotlin/jvm/functions/Function0;", "categoryTitleChangeCallback", "X1", "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", "Y1", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;", "paperCategory", "Z1", "I", "a2", "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "value", "b2", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "getTemplateViewModel", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "setTemplateViewModel", "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V", "templateViewModel", "Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;", "c2", "Lkotlin/Lazy;", "getCoverTemplateAdapter", "()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;", "coverTemplateAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;", "d2", "getPaperTemplateAdapter", "()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;", "paperTemplateAdapter", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTemplateRecycleView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateRecycleView.kt\ncom/onyx/galaxy/note/category/ui/TemplateRecycleView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,218:1\n350#2,7:219\n350#2,7:226\n*S KotlinDebug\n*F\n+ 1 TemplateRecycleView.kt\ncom/onyx/galaxy/note/category/ui/TemplateRecycleView\n*L\n96#1:219,7\n105#1:226,7\n*E\n"})
/* loaded from: classes9.dex */
public final class TemplateRecycleView extends RecyclerView {

    @NotNull
    public static final String PAYLOAD_KEY_CHANGE_SELECT_COLORS = "change_select_colors";

    @NotNull
    public static final String PAYLOAD_KEY_SELECT = "select";

    /* renamed from: W1, reason: from kotlin metadata */
    @Nullable
    public Function0<Unit> categoryTitleChangeCallback;

    /* renamed from: X1, reason: from kotlin metadata */
    @Nullable
    public CoverCategory coverCategory;

    /* renamed from: Y1, reason: from kotlin metadata */
    @Nullable
    public TemplateCategory paperCategory;

    /* renamed from: Z1, reason: from kotlin metadata */
    public int orientation;

    /* renamed from: a2, reason: from kotlin metadata */
    @NotNull
    public TemplateSourceType templateSourceType;

    /* renamed from: b2, reason: from kotlin metadata */
    @Nullable
    public NoteTemplateViewModel templateViewModel;

    /* renamed from: c2, reason: from kotlin metadata */
    @NotNull
    public final Lazy coverTemplateAdapter;

    /* renamed from: d2, reason: from kotlin metadata */
    @NotNull
    public final Lazy paperTemplateAdapter;

    /* renamed from: com.onyx.galaxy.note.category.ui.TemplateRecycleView$a */
    /* loaded from: classes9.dex */
    public static final class C11351a<T> implements Consumer {
        public C11351a() {
        }

        /* renamed from: c */
        public static final void m43896c(TemplateRecycleView this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.getCoverTemplateAdapter().notifySelectChange();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CoverModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CoverAdapter coverTemplateAdapter = TemplateRecycleView.this.getCoverTemplateAdapter();
            final TemplateRecycleView templateRecycleView = TemplateRecycleView.this;
            coverTemplateAdapter.submitList(it2, new Runnable() { // from class: com.sunia.HTREnginev2.yan
                @Override // java.lang.Runnable
                public final void run() {
                    TemplateRecycleView.C11351a.m43896c(TemplateRecycleView.this);
                }
            });
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.TemplateRecycleView$b */
    /* loaded from: classes9.dex */
    public static final class C11352b<T> implements Consumer {
        public C11352b() {
        }

        /* renamed from: c */
        public static final void m43899c(TemplateRecycleView this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.getPaperTemplateAdapter().notifySelectChange();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PaperAdapter paperTemplateAdapter = TemplateRecycleView.this.getPaperTemplateAdapter();
            final TemplateRecycleView templateRecycleView = TemplateRecycleView.this;
            paperTemplateAdapter.submitList(it2, new Runnable() { // from class: com.sunia.HTREnginev2.zan
                @Override // java.lang.Runnable
                public final void run() {
                    TemplateRecycleView.C11352b.m43899c(TemplateRecycleView.this);
                }
            });
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TemplateRecycleView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: c1 */
    public static final void m43890c1(TemplateRecycleView this$0, BaseQuickAdapter adapter, View view, int i) {
        MutableLiveData<CoverModel> coverModel;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        CoverModel coverModel2 = (CoverModel) adapter.getItem(i);
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        if (noteTemplateViewModel != null && (coverModel = noteTemplateViewModel.getCoverModel()) != null) {
            coverModel.postValue(coverModel2);
        }
        Function0<Unit> function0 = this$0.categoryTitleChangeCallback;
        if (function0 != null) {
            function0.invoke();
        }
        this$0.m43894f1();
    }

    /* renamed from: d1 */
    public static final void m43891d1(TemplateRecycleView this$0, BaseQuickAdapter adapter, View view, int i) {
        MutableLiveData<TemplateModel> paperModel;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        TemplateModel templateModel = (TemplateModel) adapter.getItem(i);
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        if (noteTemplateViewModel != null && (paperModel = noteTemplateViewModel.getPaperModel()) != null) {
            paperModel.postValue(templateModel);
        }
        Function0<Unit> function0 = this$0.categoryTitleChangeCallback;
        if (function0 != null) {
            function0.invoke();
        }
        this$0.m43894f1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CoverAdapter getCoverTemplateAdapter() {
        return (CoverAdapter) this.coverTemplateAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PaperAdapter getPaperTemplateAdapter() {
        return (PaperAdapter) this.paperTemplateAdapter.getValue();
    }

    /* renamed from: b1 */
    public final void m43892b1() {
        getCoverTemplateAdapter().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.wan
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                TemplateRecycleView.m43890c1(TemplateRecycleView.this, baseQuickAdapter, view, i);
            }
        });
        getPaperTemplateAdapter().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.xan
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                TemplateRecycleView.m43891d1(TemplateRecycleView.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: e1 */
    public final void m43893e1() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(0);
        setLayoutManager(linearLayoutManager);
    }

    /* renamed from: f1 */
    public final void m43894f1() {
        MutableLiveData<TemplateModel> paperModel;
        MutableLiveData<CoverModel> coverModel;
        TemplateFragmentArgs templateFragmentArgs;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        boolean z = false;
        if (noteTemplateViewModel != null && (templateFragmentArgs = noteTemplateViewModel.getTemplateFragmentArgs()) != null && templateFragmentArgs.isQuicklyType()) {
            z = true;
        }
        if (z) {
            NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
            TemplateModel templateModel = null;
            CoverModel value = (noteTemplateViewModel2 == null || (coverModel = noteTemplateViewModel2.getCoverModel()) == null) ? null : coverModel.getValue();
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 != null && (paperModel = noteTemplateViewModel3.getPaperModel()) != null) {
                templateModel = paperModel.getValue();
            }
            if (value != null) {
                NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
                Intrinsics.checkNotNull(noteTemplateViewModel4);
                StatisticsBundle.INSTANCE.postEvent(new StatisticsQuickNoteTemplateViewEvent(noteTemplateViewModel4.getCoverModelStatisticName(), SourceType.INSTANCE.getSourceTypeName(value.getSource())));
            }
            if (templateModel != null) {
                NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
                Intrinsics.checkNotNull(noteTemplateViewModel5);
                StatisticsBundle.INSTANCE.postEvent(new StatisticsQuickNoteTemplateViewEvent(noteTemplateViewModel5.getPaperModelStatisticName(), SourceType.INSTANCE.getSourceTypeName(templateModel.getSource())));
            }
        }
    }

    @Nullable
    public final NoteTemplateViewModel getTemplateViewModel() {
        return this.templateViewModel;
    }

    public final void loadCoverList(@Nullable CoverCategory coverCategory, int orientation, @NotNull TemplateSourceType templateSourceType) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(templateSourceType, "templateSourceType");
        CoverCategory coverCategory2 = this.coverCategory;
        if (Intrinsics.areEqual(coverCategory2 != null ? coverCategory2.getUniqueId() : null, coverCategory != null ? coverCategory.getUniqueId() : null) && this.orientation == orientation) {
            getCoverTemplateAdapter().notifySelectChange();
            return;
        }
        this.templateSourceType = templateSourceType;
        this.orientation = orientation;
        this.coverCategory = coverCategory;
        this.paperCategory = null;
        setAdapter(getCoverTemplateAdapter());
        if (coverCategory != null) {
            arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(coverCategory);
            new LoadAllOfficialCoverListAction(arrayListOf, orientation, templateSourceType).build().doOnNext(new C11351a()).subscribe();
        }
    }

    public final void loadPaperList(@Nullable TemplateCategory templateCategory, int orientation, @NotNull TemplateSourceType templateSourceType) {
        List<String> listOf;
        TemplateFragmentArgs templateFragmentArgs;
        Intrinsics.checkNotNullParameter(templateSourceType, "templateSourceType");
        TemplateCategory templateCategory2 = this.paperCategory;
        if (Intrinsics.areEqual(templateCategory2 != null ? templateCategory2.getUniqueId() : null, templateCategory != null ? templateCategory.getUniqueId() : null) && this.orientation == orientation) {
            getPaperTemplateAdapter().notifySelectChange();
            return;
        }
        this.templateSourceType = templateSourceType;
        this.orientation = orientation;
        this.paperCategory = templateCategory;
        this.coverCategory = null;
        setAdapter(getPaperTemplateAdapter());
        if (templateCategory != null) {
            Integer valueOf = Integer.valueOf(orientation);
            TemplateQueryBean templateQueryBean = new TemplateQueryBean(templateCategory.getUniqueId(), null, null, null, 14, null);
            NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
            boolean z = false;
            if (noteTemplateViewModel != null && (templateFragmentArgs = noteTemplateViewModel.getTemplateFragmentArgs()) != null && templateFragmentArgs.isBoundlessNoteOperation()) {
                z = true;
            }
            if (z) {
                templateQueryBean.setOrientation(null);
                templateQueryBean.setSizeFormat(SizeFormat.BOUNDLESS.getSizeFormatName());
            } else {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(SizeFormat.BOUNDLESS.getSizeFormatName());
                templateQueryBean.setExcludeSizeFormat(listOf);
            }
            templateQueryBean.setOrientation(templateSourceType != TemplateSourceType.MATERIALS ? valueOf : null);
            new LoadOfficialTemplateListAction(templateQueryBean).build().doOnNext(new C11352b()).subscribe();
        }
    }

    public final void notifyCoverChange() {
        getCoverTemplateAdapter().notifySelectChange();
    }

    public final void notifyCoverChangeSelectColors() {
        MutableLiveData<CoverModel> coverModel;
        CoverModel value;
        Iterator<CoverModel> it2 = getCoverTemplateAdapter().getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            String uniqueId = it2.next().getUniqueId();
            NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
            if (Intrinsics.areEqual(uniqueId, (noteTemplateViewModel == null || (coverModel = noteTemplateViewModel.getCoverModel()) == null || (value = coverModel.getValue()) == null) ? null : value.getUniqueId())) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            getCoverTemplateAdapter().notifyItemChanged(i, PAYLOAD_KEY_CHANGE_SELECT_COLORS);
        }
    }

    public final void notifyCoverSelect() {
        getCoverTemplateAdapter().notifyItemRangeChanged(0, getCoverTemplateAdapter().getItemCount(), "select");
    }

    public final void notifyPaperChange() {
        getPaperTemplateAdapter().notifySelectChange();
    }

    public final void notifyPaperChangeSelectColors() {
        MutableLiveData<TemplateModel> paperModel;
        TemplateModel value;
        Iterator<TemplateModel> it2 = getPaperTemplateAdapter().getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            String uniqueId = it2.next().getUniqueId();
            NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
            if (Intrinsics.areEqual(uniqueId, (noteTemplateViewModel == null || (paperModel = noteTemplateViewModel.getPaperModel()) == null || (value = paperModel.getValue()) == null) ? null : value.getUniqueId())) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            getPaperTemplateAdapter().notifyItemChanged(i, PAYLOAD_KEY_CHANGE_SELECT_COLORS);
        }
    }

    public final void notifyPaperSelect() {
        getPaperTemplateAdapter().notifyItemRangeChanged(0, getPaperTemplateAdapter().getItemCount(), "select");
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.categoryTitleChangeCallback = null;
    }

    public final void setCategoryTitleChange(@Nullable Function0<Unit> callback) {
        if (this.categoryTitleChangeCallback == null) {
            this.categoryTitleChangeCallback = callback;
        }
    }

    public final void setTemplateViewModel(@Nullable NoteTemplateViewModel noteTemplateViewModel) {
        this.templateViewModel = noteTemplateViewModel;
        getCoverTemplateAdapter().setTemplateViewModel(noteTemplateViewModel);
        getPaperTemplateAdapter().setTemplateViewModel(noteTemplateViewModel);
    }

    public final void update() {
        notifyPaperChange();
        notifyCoverChange();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TemplateRecycleView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateRecycleView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        this.orientation = Orientation.PORTRAIT.getValue();
        this.templateSourceType = TemplateSourceType.OFFICIAL;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CoverAdapter>() { // from class: com.onyx.galaxy.note.category.ui.TemplateRecycleView$coverTemplateAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CoverAdapter invoke() {
                return new CoverAdapter(TemplateRecycleView.this.getTemplateViewModel());
            }
        });
        this.coverTemplateAdapter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<PaperAdapter>() { // from class: com.onyx.galaxy.note.category.ui.TemplateRecycleView$paperTemplateAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PaperAdapter invoke() {
                return new PaperAdapter(TemplateRecycleView.this.getTemplateViewModel());
            }
        });
        this.paperTemplateAdapter = lazy2;
        m43893e1();
        m43892b1();
    }
}
