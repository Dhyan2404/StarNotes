package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.InsertPageFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.event.StatisticsStoolbarPageAdd;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.InsertPageWithTemplateAction;
import com.onyx.android.sdk.universal.editor.action.page.ImportImagesAsTemplateModelsAction;
import com.onyx.android.sdk.universal.editor.bean.PasteState;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.data.PastePagedArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportPagesEvent;
import com.onyx.android.sdk.universal.editor.events.app.InsertPdfPagesEvent;
import com.onyx.android.sdk.universal.editor.events.app.PastePageEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertFilePagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertImagePagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertPicturePageEvent;
import com.onyx.android.sdk.universal.editor.events.note.PickFileToInsertPagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.PickImagesToInsertPagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.TakePictureToInsertPageEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.template.AddRecentUseTemplateAction;
import com.onyx.galaxy.note.category.action.template.LoadRecentUseTemplatesAction;
import com.onyx.galaxy.note.category.event.InsertPageWithTemplateEvent;
import com.onyx.galaxy.note.category.event.MoreTemplateForInsertPageEvent;
import com.onyx.galaxy.note.category.view.adapter.template.PaperAdapter;
import com.onyx.galaxy.note.common.extension.StatisticsExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.PopupInsertPageBinding;
import com.onyx.galaxy.note.editor.view.popup.InsertPagePopup;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u00101\u001a\u00020,\u0012\u0006\u00104\u001a\u00020,\u0012\u0006\u00108\u001a\u000205¢\u0006\u0004\bC\u0010DJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0016\u0010\u0017\u001a\u00020\u00022\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u001b\u001a\u00020\u0018H\u0002J\u001c\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0011H\u0002J\u0016\u0010!\u001a\u00020\u00022\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00060\u0014H\u0002J\u0010\u0010$\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"H\u0007J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010#\u001a\u00020%H\u0007J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010#\u001a\u00020'H\u0007J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010#\u001a\u00020)H\u0007J\b\u0010+\u001a\u00020\u0002H\u0014R\u0017\u00101\u001a\u00020,8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0017\u00104\u001a\u00020,8\u0006¢\u0006\f\n\u0004\b2\u0010.\u001a\u0004\b3\u00100R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u001b\u0010>\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010A¨\u0006E"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;", "Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;", "", "K", "I", "X", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "templateModel", "S", "W", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "F", "d0", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "H", "c0", "b0", "", "from", "Y", "", "Landroid/net/Uri;", "uriList", "U", "", "pageIndex", "T", "B", "Lcom/onyx/android/sdk/data/InsertPageFrom;", "insertPageFrom", "insertPageReportValue", Constants.HASIDCALL_INDEX_SIG, "list", "f0", "Lcom/onyx/android/sdk/universal/editor/events/note/InsertFilePagesEvent;", NotificationCompat.CATEGORY_EVENT, "onInsertFilePagesEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagePagesEvent;", "onInsertImagePagesEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/InsertPicturePageEvent;", "onInsertPicturePageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportPagesEvent;", "onImportPagesEvent", "onShow", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "s", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "t", "getDocManagerBundle", "docManagerBundle", "Landroid/view/View;", "u", "Landroid/view/View;", "anchorView", "Lcom/onyx/galaxy/note/databinding/PopupInsertPageBinding;", "v", "Lkotlin/Lazy;", "A", "()Lcom/onyx/galaxy/note/databinding/PopupInsertPageBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;", "w", "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;", "paperAdapter", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nInsertPagePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertPagePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/InsertPagePopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,307:1\n1726#2,3:308\n*S KotlinDebug\n*F\n+ 1 InsertPagePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/InsertPagePopup\n*L\n299#1:308,3\n*E\n"})
/* loaded from: classes9.dex */
public final class InsertPagePopup extends BaseShortcutPopup {

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle docManagerBundle;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final View anchorView;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final PaperAdapter paperAdapter;

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.InsertPagePopup$a */
    /* loaded from: classes9.dex */
    public static final class C12388a<T> implements Consumer {
        public C12388a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertPagePopup.this.m48880f0(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.InsertPagePopup$b */
    /* loaded from: classes9.dex */
    public static final class C12389b<T> implements Consumer {
        public C12389b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertPagePopup.this.paperAdapter.submitList(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.InsertPagePopup$c */
    /* loaded from: classes9.dex */
    public static final class C12390c<T, R> implements Function {

        /* renamed from: e */
        public static final C12390c<T, R> f60250e = new C12390c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TemplateModel> apply(@NotNull List<TemplateModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.InsertPagePopup$d */
    /* loaded from: classes9.dex */
    public static final class C12391d<T, R> implements Function {

        /* renamed from: e */
        public static final C12391d<T, R> f60251e = new C12391d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TemplateModel> apply(@NotNull TemplateModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.just(it2).delay(500L, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.InsertPagePopup$e */
    /* loaded from: classes9.dex */
    public static final class C12392e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ int f60253f;

        public C12392e(int i) {
            this.f60253f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TemplateModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertPagePopup.this.m48871T(this.f60253f, it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertPagePopup(@NotNull EditorBundle editorBundle, @NotNull EditorBundle docManagerBundle, @NotNull View anchorView) {
        super(anchorView, true);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        this.editorBundle = editorBundle;
        this.docManagerBundle = docManagerBundle;
        this.anchorView = anchorView;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupInsertPageBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.InsertPagePopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupInsertPageBinding invoke() {
                View view;
                view = InsertPagePopup.this.anchorView;
                return PopupInsertPageBinding.inflate(LayoutInflater.from(view.getContext()));
            }
        });
        this.binding = lazy;
        this.paperAdapter = new PaperAdapter(null);
        m48869K();
    }

    /* renamed from: E */
    public static final void m48837E(InsertPagePopup this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48864C();
    }

    /* renamed from: G */
    public static final void m48838G(InsertPagePopup this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48867H();
    }

    /* renamed from: J */
    public static final void m48839J(InsertPagePopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        TemplateModel item = this$0.paperAdapter.getItem(i);
        if (item == null) {
            return;
        }
        this$0.m48870S(item);
    }

    /* renamed from: L */
    public static final void m48840L(InsertPagePopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.unregister(this$0.editorBundle, this$0);
        GlobalBundle.INSTANCE.unregister(this$0);
    }

    /* renamed from: M */
    public static final void m48841M(InsertPagePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48874X();
    }

    /* renamed from: N */
    public static final void m48842N(InsertPagePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48877b0();
    }

    /* renamed from: O */
    public static final void m48843O(InsertPagePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48865D();
    }

    /* renamed from: P */
    public static final void m48844P(InsertPagePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48866F();
    }

    /* renamed from: Q */
    public static final void m48845Q(InsertPagePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48879d0();
    }

    /* renamed from: R */
    public static final void m48846R(InsertPagePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48873W();
    }

    /* renamed from: V */
    public static final void m48847V(InsertPagePopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: a0 */
    public static /* synthetic */ void m48848a0(InsertPagePopup insertPagePopup, InsertPageFrom insertPageFrom, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        insertPagePopup.m48876Z(insertPageFrom, str);
    }

    /* renamed from: e0 */
    public static final void m48849e0(InsertPagePopup this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48878c0();
    }

    /* renamed from: A */
    public final PopupInsertPageBinding m48862A() {
        return (PopupInsertPageBinding) this.binding.getValue();
    }

    /* renamed from: B */
    public final int m48863B() {
        int coerceAtLeast;
        int checkedRadioButtonId = m48862A().radioGroup.getCheckedRadioButtonId();
        if (checkedRadioButtonId != C10651R.id.prev_current_page_radio) {
            return checkedRadioButtonId == C10651R.id.after_current_page_radio ? EditorBundleKt.currentPageNumber(this.editorBundle) : EditorBundleKt.pageCount(this.editorBundle);
        }
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(0, EditorBundleKt.currentPageIndex(this.editorBundle));
        return coerceAtLeast;
    }

    /* renamed from: C */
    public final void m48864C() {
        m48848a0(this, InsertPageFrom.IMPORT_FILE, null, 2, null);
        m48875Y(StatisticsStoolbarPageAdd.PAGE_ADD_FROM_IMPORT_FILE);
        EditorBundleKt.postEvent(this.editorBundle, new PickFileToInsertPagesEvent(m48863B()));
    }

    /* renamed from: D */
    public final void m48865D() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestStoragePermissionAction(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_FILE_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_FILE_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.cmi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                InsertPagePopup.m48837E(InsertPagePopup.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: F */
    public final void m48866F() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestImagePermission(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_PHOTOS_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_PHOTOS_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.uli
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                InsertPagePopup.m48838G(InsertPagePopup.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: H */
    public final void m48867H() {
        m48848a0(this, InsertPageFrom.IMPORT_PICTURE, null, 2, null);
        EditorBundleKt.postEvent(this.editorBundle, new PickImagesToInsertPagesEvent());
    }

    /* renamed from: I */
    public final void m48868I() {
        ItemClickUtilsKt.setOnDebouncedItemClick$default(this.paperAdapter, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.emi
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                InsertPagePopup.m48839J(InsertPagePopup.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        m48862A().recyclerView.setLayoutManager(new LinearLayoutManager(this.anchorView.getContext(), 0, false));
        m48862A().recyclerView.setAdapter(this.paperAdapter);
        new LoadRecentUseTemplatesAction(0, ResManager.INSTANCE.getInteger(C10651R.integer.recent_use_template_limit)).build().doOnNext(new C12388a()).doOnNext(new C12389b()).subscribe();
    }

    /* renamed from: K */
    public final void m48869K() {
        View root = m48862A().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(true);
        setFocusable(true);
        setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.tli
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                InsertPagePopup.m48840L(InsertPagePopup.this);
            }
        });
        m48868I();
        ViewKt.setViewVisibleOrGone(m48862A().pastePage, GlobalBundle.INSTANCE.isCanPastePage(EditorBundleKt.docId(this.editorBundle)));
        m48862A().pastePage.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InsertPagePopup.m48841M(InsertPagePopup.this, view);
            }
        });
        m48862A().addNotePages.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InsertPagePopup.m48842N(InsertPagePopup.this, view);
            }
        });
        m48862A().importFile.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InsertPagePopup.m48843O(InsertPagePopup.this, view);
            }
        });
        m48862A().importPic.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InsertPagePopup.m48844P(InsertPagePopup.this, view);
            }
        });
        m48862A().takePhoto.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ami
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InsertPagePopup.m48845Q(InsertPagePopup.this, view);
            }
        });
        m48862A().moreTemplate.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bmi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InsertPagePopup.m48846R(InsertPagePopup.this, view);
            }
        });
    }

    /* renamed from: S */
    public final void m48870S(TemplateModel templateModel) {
        GeoLayout loadGeoLayoutFromTemplateModel$default = TemplateModel.Companion.loadGeoLayoutFromTemplateModel$default(TemplateModel.INSTANCE, templateModel, null, false, 3, null);
        Templates templates = Templates.INSTANCE;
        TemplateJsonBean templateModelToJsonBean = templates.templateModelToJsonBean(templateModel, loadGeoLayoutFromTemplateModel$default);
        String valueOf = String.valueOf(m48863B());
        StringBuilder sb = new StringBuilder();
        sb.append("recent_");
        String stringSafely = ResManager.INSTANCE.getStringSafely(templateModel.getTitleResName(), templateModel.getTitle());
        if (stringSafely == null) {
            stringSafely = "";
        }
        sb.append(stringSafely);
        StatisticsBundle.INSTANCE.postEvent(new StatisticsStoolbarPageAdd(valueOf, sb.toString()));
        EditorBundleKt.postEvent(this.editorBundle, new InsertPageWithTemplateEvent(templateModelToJsonBean, Integer.valueOf(m48863B()), templates.paperTemplateRect(templateModel), InsertPageFrom.RECENT_TEMPLATE, true));
        Intrinsics.checkNotNull(templateModelToJsonBean);
        RxBaseAction.execute$default(new AddRecentUseTemplateAction(templateModelToJsonBean), null, null, null, 7, null);
        dismiss();
    }

    /* renamed from: T */
    public final void m48871T(int pageIndex, TemplateModel templateModel) {
        InsertPageArgs insertPageArgs = new InsertPageArgs();
        insertPageArgs.setInsertAt(pageIndex);
        Templates templates = Templates.INSTANCE;
        insertPageArgs.setTemplateJsonBean(Templates.templateModelToJsonBean$default(templates, templateModel, null, 1, null));
        insertPageArgs.setPageRect(templates.paperTemplateRect(templateModel));
        RxBaseAction.execute$default(new InsertPageWithTemplateAction(this.editorBundle, insertPageArgs), null, null, null, 7, null);
    }

    /* renamed from: U */
    public final void m48872U(List<? extends Uri> uriList) {
        List reversed;
        if (uriList.isEmpty()) {
            return;
        }
        int m48863B = m48863B();
        EditorBundle editorBundle = this.editorBundle;
        reversed = CollectionsKt___CollectionsKt.reversed(uriList);
        new ImportImagesAsTemplateModelsAction(editorBundle, reversed, this.editorBundle.getWorkBundle().getNoteBundle().getDocumentId()).build().flatMap(C12390c.f60250e).concatMap(C12391d.f60251e).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12392e(m48863B)).takeLast(1).doFinally(new Action() { // from class: com.sunia.HTREnginev2.dmi
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                InsertPagePopup.m48847V(InsertPagePopup.this);
            }
        }).subscribe();
    }

    /* renamed from: W */
    public final void m48873W() {
        EditorBundleKt.postEvent(this.editorBundle, new MoreTemplateForInsertPageEvent(Integer.valueOf(m48863B())));
        dismiss();
    }

    /* renamed from: X */
    public final void m48874X() {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new PastePagedArgs.PastePageInfo(m48863B()));
        EditorBundleKt.postEvent(this.editorBundle, new PastePageEvent(new PasteState.Create(new PastePagedArgs(listOf))));
    }

    /* renamed from: Y */
    public final void m48875Y(String from) {
        StatisticsBundle.INSTANCE.postEvent(new StatisticsStoolbarPageAdd(String.valueOf(m48863B()), from));
    }

    /* renamed from: Z */
    public final void m48876Z(InsertPageFrom insertPageFrom, String insertPageReportValue) {
        EditorBundle editorBundle = this.editorBundle;
        int m48863B = m48863B();
        if (insertPageReportValue == null) {
            insertPageReportValue = "";
        }
        StatisticsExtKt.reportInsertPageEvent(editorBundle, m48863B, insertPageReportValue, insertPageFrom);
    }

    /* renamed from: b0 */
    public final void m48877b0() {
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = this.docManagerBundle;
        Context context = this.anchorView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new SelectNotePagesPopup(editorBundle, editorBundle2, context, m48863B()).show();
        dismiss();
    }

    /* renamed from: c0 */
    public final void m48878c0() {
        m48848a0(this, InsertPageFrom.TAKE_PICTURE, null, 2, null);
        EditorBundleKt.postEvent(this.editorBundle, new TakePictureToInsertPageEvent());
    }

    /* renamed from: d0 */
    public final void m48879d0() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestCameraPermissionAction(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_CAMERA_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_CAMERA_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.vli
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                InsertPagePopup.m48849e0(InsertPagePopup.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: f0 */
    public final void m48880f0(List<TemplateModel> list) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
        TemplateModel templateModel = (TemplateModel) firstOrNull;
        if (templateModel == null) {
            return;
        }
        List<TemplateModel> list2 = list;
        boolean z = true;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator<T> it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (!(((TemplateModel) it2.next()).getOrientation() == templateModel.getOrientation())) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            m48862A().recyclerView.getLayoutParams().height = -2;
        } else {
            m48862A().recyclerView.getLayoutParams().height = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_183);
        }
    }

    @NotNull
    public final EditorBundle getDocManagerBundle() {
        return this.docManagerBundle;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportPagesEvent(@NotNull ImportPagesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.postEvent(this.editorBundle, new InsertPdfPagesEvent(event.getInsertPageArgs()));
        dismiss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertFilePagesEvent(@NotNull InsertFilePagesEvent event) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(event, "event");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) event.getUriList());
        Uri uri = (Uri) firstOrNull;
        if (uri == null) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = this.docManagerBundle;
        Context context = this.anchorView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new SelectFilePagesToInsertPagePopup(editorBundle, editorBundle2, context, new DocumentFileEntry(uri), m48863B(), null, 32, null).show();
        dismiss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertImagePagesEvent(@NotNull InsertImagePagesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48875Y(StatisticsStoolbarPageAdd.PAGE_ADD_FROM_IMPORT_PICTURE);
        m48872U(event.getUriList());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertPicturePageEvent(@NotNull InsertPicturePageEvent event) {
        List<? extends Uri> listOf;
        Intrinsics.checkNotNullParameter(event, "event");
        m48875Y(StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(event.getUri());
        m48872U(listOf);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        EditorBundleKt.register(this.editorBundle, this);
        GlobalBundle.INSTANCE.register(this);
        StatisticsExtKt.reportNoteEvent$default(this.editorBundle, OnyxStatisticConstant.ID_NOTE_VIEW_ADD_PAGE_POPUP, null, 2, null);
    }
}
