package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.ScreenUtils;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.google.android.material.C5139R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.bean.DataFetchType;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentAction;
import com.onyx.android.sdk.universal.editor.action.SaveDocumentAction;
import com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction;
import com.onyx.android.sdk.universal.editor.action.doc.ReopenDocumentAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.page.ForceRemovePagesAction;
import com.onyx.android.sdk.universal.editor.action.page.LoadVirtualPageModelListAction;
import com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.common.view.CommonProgressDialog;
import com.onyx.galaxy.note.databinding.PopupPageRecycleBinBinding;
import com.onyx.galaxy.note.editor.view.adapter.RemovedPageThumbnailListAdapter;
import com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010/\u001a\u00020*\u0012\u0006\u00102\u001a\u00020*\u0012\u0006\u00106\u001a\u000203¢\u0006\u0004\bA\u0010BJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0018\u0010\u000e\u001a\u00020\u00022\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0018\u0010\u000f\u001a\u00020\u00022\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0010\u001a\u00020\u00022\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0012\u0010\u0013\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\n2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\nH\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\f\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0002J\b\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u0010\u001e\u001a\u00020\u0002H\u0002J\b\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010$\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"H\u0002J\u0016\u0010'\u001a\u00020\u00022\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00020%H\u0002J\b\u0010(\u001a\u00020\u0002H\u0002J\b\u0010)\u001a\u00020\u0002H\u0002R\u0017\u0010/\u001a\u00020*8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u0017\u00102\u001a\u00020*8\u0006¢\u0006\f\n\u0004\b0\u0010,\u001a\u0004\b1\u0010.R\u0014\u00106\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u001b\u0010<\u001a\u0002078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?¨\u0006C"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;", "Lcom/google/android/material/bottomsheet/BottomSheetDialog;", "", "V", "Q", "J", "N", "K", "k0", "m0", "", "", "I", "pageList", "d0", "B", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", Constants.HASIDCALL_INDEX_SIG, "c0", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "removePageList", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "G", "W", "Lio/reactivex/rxjava3/core/Observable;", "Y", "Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;", "j0", "a0", "l0", "Landroid/view/View;", "view", "", "pos", "h0", "Lkotlin/Function0;", "action", "i0", "X", "b0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "v", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "w", "getDocManagerBundle", "docManagerBundle", "Landroid/content/Context;", "x", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;", "y", "Lkotlin/Lazy;", "H", "()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;", "z", "Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;", "adapter", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPageRecycleBinPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageRecycleBinPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,344:1\n256#2,2:345\n256#2,2:347\n256#2,2:349\n256#2,2:351\n1549#3:353\n1620#3,3:354\n1549#3:357\n1620#3,2:358\n1622#3:361\n1#4:360\n*S KotlinDebug\n*F\n+ 1 PageRecycleBinPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup\n*L\n189#1:345,2\n190#1:347,2\n191#1:349,2\n192#1:351,2\n199#1:353\n199#1:354,3\n254#1:357\n254#1:358,2\n254#1:361\n*E\n"})
/* loaded from: classes9.dex */
public final class PageRecycleBinPopup extends BottomSheetDialog {

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle docManagerBundle;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public RemovedPageThumbnailListAdapter adapter;

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$a */
    /* loaded from: classes9.dex */
    public static final class C12427a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<String> f60386f;

        public C12427a(List<String> list) {
            this.f60386f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ForceRemovePagesAction(PageRecycleBinPopup.this.getEditorBundle(), this.f60386f).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$b */
    /* loaded from: classes9.dex */
    public static final class C12428b<T> implements Consumer {

        /* renamed from: e */
        public static final C12428b<T> f60387e = new C12428b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C8037R.string.delete_fail, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$c */
    /* loaded from: classes9.dex */
    public static final class C12429c<T> implements Consumer {
        public C12429c() {
        }

        /* renamed from: a */
        public final void m49194a(boolean z) {
            PageRecycleBinPopup.this.m49184c0();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m49194a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$d */
    /* loaded from: classes9.dex */
    public static final class C12430d<T> implements Consumer {
        public C12430d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageRecycleBinPopup.this.m49181Z(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$e */
    /* loaded from: classes9.dex */
    public static final class C12431e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ OpenDocArgs f60391f;

        public C12431e(OpenDocArgs openDocArgs) {
            this.f60391f = openDocArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new OpenDocumentAction(PageRecycleBinPopup.this.getDocManagerBundle(), this.f60391f).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$f */
    /* loaded from: classes9.dex */
    public static final class C12432f<T, R> implements Function {
        public C12432f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PageRecycleBinPopup.this.m49180Y();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$g */
    /* loaded from: classes9.dex */
    public static final class C12433g<T, R> implements Function {
        public C12433g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<PageDataModel> apply(@NotNull List<VirtualPageModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PageRecycleBinPopup.this.m49170G(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$h */
    /* loaded from: classes9.dex */
    public static final class C12434h<T, R> implements Function {
        public C12434h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<PageDataModel>> apply(@NotNull List<PageDataModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseQuickAdapterKt.createSubmitListObservable(PageRecycleBinPopup.this.adapter, it2);
        }
    }

    @SourceDebugExtension({"SMAP\nPageRecycleBinPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageRecycleBinPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$onDocOpenedObservable$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,344:1\n256#2,2:345\n*S KotlinDebug\n*F\n+ 1 PageRecycleBinPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$onDocOpenedObservable$3\n*L\n280#1:345,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$i */
    /* loaded from: classes9.dex */
    public static final class C12435i<T> implements Consumer {
        public C12435i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<PageDataModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CommonEmptyView emptyView = PageRecycleBinPopup.this.m49171H().emptyView;
            Intrinsics.checkNotNullExpressionValue(emptyView, "emptyView");
            emptyView.setVisibility(CollectionKt.isNullOrEmpty(it2) ? 0 : 8);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$j */
    /* loaded from: classes9.dex */
    public static final class C12436j<T, R> implements Function {
        public C12436j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PageRecycleBinPopup.this.m49180Y();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$k */
    /* loaded from: classes9.dex */
    public static final class C12437k<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<String> f60399f;

        public C12437k(List<String> list) {
            this.f60399f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new RestoreRemovedPagesAction(PageRecycleBinPopup.this.getEditorBundle(), this.f60399f).build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageRecycleBinPopup(@NotNull EditorBundle editorBundle, @NotNull EditorBundle docManagerBundle, @NotNull Context context) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        this.editorBundle = editorBundle;
        this.docManagerBundle = docManagerBundle;
        this.context = context;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupPageRecycleBinBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupPageRecycleBinBinding invoke() {
                Context context2;
                context2 = PageRecycleBinPopup.this.context;
                return PopupPageRecycleBinBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.adapter = new RemovedPageThumbnailListAdapter();
        m49176Q();
        m49177V();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: C */
    public static /* synthetic */ void m49143C(PageRecycleBinPopup pageRecycleBinPopup, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = pageRecycleBinPopup.m49172I();
        }
        pageRecycleBinPopup.m49168B(list);
    }

    /* renamed from: E */
    public static final void m49144E() {
        ToastUtils.show$default(ToastUtils.INSTANCE, C8037R.string.delete_sucess, false, 2, (Object) null);
    }

    /* renamed from: F */
    public static final void m49145F(CommonProgressDialog progressDialog) {
        Intrinsics.checkNotNullParameter(progressDialog, "$progressDialog");
        progressDialog.dismiss();
    }

    /* renamed from: L */
    public static final void m49146L(PageRecycleBinPopup this$0, BaseQuickAdapter it2, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        PageDataModel pageDataModel = (PageDataModel) it2.getItem(i);
        if (pageDataModel != null && this$0.adapter.getSelectionMode()) {
            this$0.adapter.onItemClick(pageDataModel);
        }
    }

    /* renamed from: M */
    public static final void m49147M(PageRecycleBinPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.m49186h0(view, i);
    }

    /* renamed from: O */
    public static final void m49148O(PageRecycleBinPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m49154e0(this$0, null, 1, null);
    }

    /* renamed from: P */
    public static final void m49149P(PageRecycleBinPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m49143C(this$0, null, 1, null);
    }

    /* renamed from: R */
    public static final void m49150R(PageRecycleBinPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: S */
    public static final void m49151S(PageRecycleBinPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49189k0();
    }

    /* renamed from: T */
    public static final void m49152T(PageRecycleBinPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.adapter.toggleSelectAll();
    }

    /* renamed from: U */
    public static final void m49153U(PageRecycleBinPopup this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49179X();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e0 */
    public static /* synthetic */ void m49154e0(PageRecycleBinPopup pageRecycleBinPopup, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = pageRecycleBinPopup.m49172I();
        }
        pageRecycleBinPopup.m49185d0(list);
    }

    /* renamed from: f0 */
    public static final void m49155f0(PageRecycleBinPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49184c0();
    }

    /* renamed from: g0 */
    public static final void m49156g0(CommonProgressDialog progressDialog) {
        Intrinsics.checkNotNullParameter(progressDialog, "$progressDialog");
        progressDialog.dismiss();
    }

    /* renamed from: B */
    public final void m49168B(final List<String> pageList) {
        if (CollectionKt.isNullOrEmpty(pageList)) {
            return;
        }
        m49187i0(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$forceRemovePages$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                PageRecycleBinPopup.this.m49169D(pageList);
            }
        });
    }

    /* renamed from: D */
    public final void m49169D(List<String> pageList) {
        final CommonProgressDialog m49188j0 = m49188j0();
        new SaveDocumentAction(this.editorBundle).build().flatMap(new C12427a(pageList)).observeOn(AndroidSchedulers.mainThread()).doOnError(C12428b.f60387e).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.jtk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageRecycleBinPopup.m49144E();
            }
        }).doOnNext(new C12429c()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.mtk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageRecycleBinPopup.m49145F(CommonProgressDialog.this);
            }
        }).subscribe();
    }

    /* renamed from: G */
    public final List<PageDataModel> m49170G(List<VirtualPageModel> removePageList) {
        int collectionSizeOrDefault;
        List<VirtualPageModel> loadValidVirtualPageModelList = this.editorBundle.getWorkBundle().getVirtualModelProvider().loadValidVirtualPageModelList();
        Map map = CollectionKt.toMap(loadValidVirtualPageModelList, new Function1<VirtualPageModel, String>() { // from class: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$generatePageModelList$allPageMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull VirtualPageModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getUniqueId();
            }
        });
        List<VirtualPageModel> list = removePageList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (VirtualPageModel virtualPageModel : list) {
            VirtualPageModel virtualPageModel2 = (VirtualPageModel) map.get(virtualPageModel.getUniqueId());
            arrayList.add(PageDataModel.INSTANCE.fromVirtualPage(this.docManagerBundle, virtualPageModel2 != null ? loadValidVirtualPageModelList.indexOf(virtualPageModel2) : 0, virtualPageModel));
        }
        this.adapter.scalePageDisplayRectF(arrayList);
        return arrayList;
    }

    /* renamed from: H */
    public final PopupPageRecycleBinBinding m49171H() {
        return (PopupPageRecycleBinBinding) this.binding.getValue();
    }

    /* renamed from: I */
    public final List<String> m49172I() {
        int collectionSizeOrDefault;
        List<String> list;
        List<PageDataModel> selectedItems = this.adapter.getSelectedItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(selectedItems, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = selectedItems.iterator();
        while (it2.hasNext()) {
            arrayList.add(((PageDataModel) it2.next()).getPageId());
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    /* renamed from: J */
    public final void m49173J() {
        Object parent = m49171H().getRoot().getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
        BottomSheetBehavior from = BottomSheetBehavior.from((View) parent);
        Intrinsics.checkNotNullExpressionValue(from, "from(...)");
        from.setPeekHeight(ScreenUtils.getScreenHeight());
        Window window = getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
            FrameLayout frameLayout = (FrameLayout) window.getDecorView().findViewById(C5139R.id.design_bottom_sheet);
            if (frameLayout != null) {
                Intrinsics.checkNotNull(frameLayout);
                frameLayout.getLayoutParams().width = -1;
                frameLayout.getLayoutParams().height = -1;
            }
            getBehavior().setState(3);
        }
    }

    /* renamed from: K */
    public final void m49174K() {
        RemovedPageThumbnailListAdapter removedPageThumbnailListAdapter = new RemovedPageThumbnailListAdapter();
        this.adapter = removedPageThumbnailListAdapter;
        removedPageThumbnailListAdapter.quitSelectionMode();
        ItemClickUtilsKt.setOnDebouncedItemClick$default(this.adapter, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.ttk
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                PageRecycleBinPopup.m49146L(PageRecycleBinPopup.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(this.adapter, C10651R.id.more_settings, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.utk
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                PageRecycleBinPopup.m49147M(PageRecycleBinPopup.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        this.adapter.setSelectItemChangeCallback(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$initPageAdapter$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                PageRecycleBinPopup.this.m49171H().selectAll.setChecked(z);
                PageRecycleBinPopup.this.m49182a0();
            }
        });
        m49171H().swipeContainer.getRecycleView().setItemWidthLarge(ResManager.INSTANCE.getDimension(C7384R.dimen.dp_126));
        m49171H().swipeContainer.setOnSwipeStateChangeListener(new SwipeRecycleViewContainer.OnSwipeStateChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$initPageAdapter$4
            @Override // com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer.OnSwipeStateChangeListener
            public void onFinished() {
                PageRecycleBinPopup.this.adapter.swipeFinish();
            }

            @Override // com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer.OnSwipeStateChangeListener
            public void onStart() {
                if (PageRecycleBinPopup.this.adapter.getSelectionMode()) {
                    PageRecycleBinPopup.this.adapter.swipeStart();
                }
            }

            @Override // com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer.OnSwipeStateChangeListener
            public void onSwiped(int startIndex, int endStartIndex) {
                if (PageRecycleBinPopup.this.adapter.getSelectionMode()) {
                    PageRecycleBinPopup.this.adapter.toggleSwipe(Math.min(startIndex, endStartIndex), Math.max(startIndex, endStartIndex));
                }
            }
        });
        m49171H().swipeContainer.getRecycleView().setPadding(0, 0, 0, 0);
        m49171H().swipeContainer.getRecycleView().addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$initPageAdapter$5
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                super.getItemOffsets(outRect, view, parent, state);
                RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
                GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
                if (gridLayoutManager == null) {
                    return;
                }
                int spanCount = gridLayoutManager.getSpanCount();
                int childAdapterPosition = parent.getChildAdapterPosition(view);
                boolean z = false;
                if (childAdapterPosition >= 0 && childAdapterPosition < spanCount) {
                    z = true;
                }
                if (z) {
                    outRect.top += ResManager.INSTANCE.getDimens(C7384R.dimen.dp_8);
                }
            }
        });
        m49171H().swipeContainer.getRecycleView().setAdapter(this.adapter);
    }

    /* renamed from: N */
    public final void m49175N() {
        TintTextView tvDustBinOpRestore = m49171H().tvDustBinOpRestore;
        Intrinsics.checkNotNullExpressionValue(tvDustBinOpRestore, "tvDustBinOpRestore");
        ViewKt.click$default(tvDustBinOpRestore, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rtk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageRecycleBinPopup.m49148O(PageRecycleBinPopup.this, view);
            }
        }, 1, null);
        TintTextView tvDustBinOpDelete = m49171H().tvDustBinOpDelete;
        Intrinsics.checkNotNullExpressionValue(tvDustBinOpDelete, "tvDustBinOpDelete");
        ViewKt.click$default(tvDustBinOpDelete, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.stk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageRecycleBinPopup.m49149P(PageRecycleBinPopup.this, view);
            }
        }, 1, null);
        m49174K();
    }

    /* renamed from: Q */
    public final void m49176Q() {
        setContentView(m49171H().getRoot());
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        TintTextView close = m49171H().close;
        Intrinsics.checkNotNullExpressionValue(close, "close");
        ViewKt.click$default(close, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ntk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageRecycleBinPopup.m49150R(PageRecycleBinPopup.this, view);
            }
        }, 1, null);
        TintTextView finish = m49171H().finish;
        Intrinsics.checkNotNullExpressionValue(finish, "finish");
        ViewKt.click$default(finish, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.otk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageRecycleBinPopup.m49151S(PageRecycleBinPopup.this, view);
            }
        }, 1, null);
        m49171H().selectAll.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ptk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageRecycleBinPopup.m49152T(PageRecycleBinPopup.this, view);
            }
        });
        m49171H().emptyView.setEmptyBean(CommonEmptyView.INSTANCE.getDUSTBIN_EMPTY_BEAN());
        m49175N();
        m49173J();
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.qtk
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                PageRecycleBinPopup.m49153U(PageRecycleBinPopup.this, dialogInterface);
            }
        });
    }

    /* renamed from: V */
    public final void m49177V() {
        DocCommonActionsKt.createNoteObservable(this.editorBundle, new Function1<NoteBundle, SyncNoteModel>() { // from class: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$loadData$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final SyncNoteModel invoke(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getNoteDoc().getNoteModel();
            }
        }).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12430d()).subscribe();
    }

    /* renamed from: W */
    public final void m49178W(SyncNoteModel noteModel) {
        this.adapter.setEditorBundle(this.docManagerBundle);
        OpenDocArgs createFrom = OpenDocArgs.INSTANCE.createFrom(noteModel);
        createFrom.setPageDataFetchType(DataFetchType.REMOVED);
        SaveDocumentAction saveDocumentAction = new SaveDocumentAction(this.editorBundle);
        saveDocumentAction.setForceSave(true);
        saveDocumentAction.build().flatMap(new C12431e(createFrom)).flatMap(new C12432f()).subscribe();
    }

    /* renamed from: X */
    public final void m49179X() {
        RxBaseAction.execute$default(new CloseDocumentAction(this.docManagerBundle, false, false, 4, null), null, null, null, 7, null);
        m49183b0();
    }

    /* renamed from: Y */
    public final Observable<?> m49180Y() {
        Observable<?> doOnNext = new LoadVirtualPageModelListAction(this.docManagerBundle).build().observeOn(EditorBundleKt.coreScheduler(this.editorBundle)).map(new C12433g()).observeOn(AndroidSchedulers.mainThread()).flatMap(new C12434h()).doOnNext(new C12435i());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: Z */
    public final void m49181Z(SyncNoteModel noteModel) {
        if (noteModel == null) {
            return;
        }
        m49178W(noteModel);
    }

    /* renamed from: a0 */
    public final void m49182a0() {
        boolean z = !this.adapter.getSelectedItems().isEmpty();
        m49171H().llDustBinOpRestore.setEnabled(z);
        m49171H().ivDustBinOpRestore.setEnabled(z);
        m49171H().tvDustBinOpRestore.setEnabled(z);
        m49171H().llDustBinOpDelete.setEnabled(z);
        m49171H().ivDustBinOpDelete.setEnabled(z);
        m49171H().tvDustBinOpDelete.setEnabled(z);
        m49190l0();
    }

    /* renamed from: b0 */
    public final void m49183b0() {
        m49171H().swipeContainer.getRecycleView().setAdapter(null);
    }

    /* renamed from: c0 */
    public final void m49184c0() {
        this.adapter.quitSelectionMode();
        m49191m0();
        new ReopenDocumentAction(this.docManagerBundle).build().flatMap(new C12436j()).subscribe();
    }

    /* renamed from: d0 */
    public final void m49185d0(List<String> pageList) {
        if (CollectionKt.isNullOrEmpty(pageList)) {
            return;
        }
        final CommonProgressDialog m49188j0 = m49188j0();
        new SaveDocumentAction(this.editorBundle).build().flatMap(new C12437k(pageList)).observeOn(AndroidSchedulers.mainThread()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.ktk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageRecycleBinPopup.m49155f0(PageRecycleBinPopup.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.ltk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageRecycleBinPopup.m49156g0(CommonProgressDialog.this);
            }
        }).subscribe();
    }

    @NotNull
    public final EditorBundle getDocManagerBundle() {
        return this.docManagerBundle;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: h0 */
    public final void m49186h0(View view, int pos) {
        final PageDataModel item = this.adapter.getItem(pos);
        ContextMenuPopup contextMenuPopup = new ContextMenuPopup(this.context, C10651R.menu.page_recycle_bin_more_action_menu, new Function1<MenuItem, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$showActionPopup$popup$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MenuItem menuItem) {
                invoke2(menuItem);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull MenuItem it2) {
                List listOfNotNull;
                List listOfNotNull2;
                Intrinsics.checkNotNullParameter(it2, "it");
                int itemId = it2.getItemId();
                if (itemId == C10651R.id.delete) {
                    PageRecycleBinPopup pageRecycleBinPopup = PageRecycleBinPopup.this;
                    PageDataModel pageDataModel = item;
                    listOfNotNull2 = CollectionsKt__CollectionsKt.listOfNotNull(pageDataModel != null ? pageDataModel.getPageId() : null);
                    pageRecycleBinPopup.m49168B(listOfNotNull2);
                    return;
                }
                if (itemId == C10651R.id.restore) {
                    PageRecycleBinPopup pageRecycleBinPopup2 = PageRecycleBinPopup.this;
                    PageDataModel pageDataModel2 = item;
                    listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(pageDataModel2 != null ? pageDataModel2.getPageId() : null);
                    pageRecycleBinPopup2.m49185d0(listOfNotNull);
                }
            }
        }, null, 8, null);
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_12);
        View root = m49171H().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        PopupExtKt.showActionPopup$default(contextMenuPopup, view, com.onyx.android.sdk.base.extension.ViewKt.globalVisibleRect(root), 0, dimens, 4, null);
    }

    /* renamed from: i0 */
    public final void m49187i0(final Function0<Unit> action) {
        new CommonDialog.Builder(this.context).setTitle(C10651R.string.delete).setWarning(true).setMessage(C10651R.string.force_delete_page_warning).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup$showForceDeleteConfirmDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                action.invoke();
            }
        }).create().show();
    }

    /* renamed from: j0 */
    public final CommonProgressDialog m49188j0() {
        CommonProgressDialog commonProgressDialog = new CommonProgressDialog(this.context);
        String string = this.context.getString(C10651R.string.in_progress);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        CommonProgressDialog titleText = commonProgressDialog.setTitleText(string);
        titleText.show();
        return titleText;
    }

    /* renamed from: k0 */
    public final void m49189k0() {
        this.adapter.toggleSelectionMode();
        m49191m0();
    }

    /* renamed from: l0 */
    public final void m49190l0() {
        m49171H().selectedCount.setText(this.context.getString(C10651R.string.page_selected_count, Integer.valueOf(this.adapter.getSelectedItems().size())));
    }

    /* renamed from: m0 */
    public final void m49191m0() {
        boolean selectionMode = this.adapter.getSelectionMode();
        m49171H().finish.setText(selectionMode ? C10651R.string.finish : C10651R.string.select);
        TintTextView close = m49171H().close;
        Intrinsics.checkNotNullExpressionValue(close, "close");
        close.setVisibility(selectionMode ^ true ? 0 : 8);
        TintCheckBox selectAll = m49171H().selectAll;
        Intrinsics.checkNotNullExpressionValue(selectAll, "selectAll");
        selectAll.setVisibility(selectionMode ? 0 : 8);
        TintLinearLayout selectionActionLayout = m49171H().selectionActionLayout;
        Intrinsics.checkNotNullExpressionValue(selectionActionLayout, "selectionActionLayout");
        selectionActionLayout.setVisibility(selectionMode ? 0 : 8);
        TintTextView selectedCount = m49171H().selectedCount;
        Intrinsics.checkNotNullExpressionValue(selectedCount, "selectedCount");
        selectedCount.setVisibility(selectionMode ? 0 : 8);
        m49171H().selectAll.setChecked(false);
        m49190l0();
    }
}
