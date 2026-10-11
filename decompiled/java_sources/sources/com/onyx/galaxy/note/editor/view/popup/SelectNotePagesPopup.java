package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.ScreenUtils;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.material.C5139R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.tabs.TabLayout;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.InsertPageFrom;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.event.StatisticsStoolbarPageAdd;
import com.onyx.android.sdk.extension.TabLayoutKt;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTagNodes;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentAction;
import com.onyx.android.sdk.universal.editor.action.SaveDocumentAction;
import com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction;
import com.onyx.android.sdk.universal.editor.action.page.LoadVirtualPageModelListAction;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.AuthNoteAction;
import com.onyx.galaxy.note.category.action.LoadNoteListAction;
import com.onyx.galaxy.note.category.action.LoadTagTreeAction;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.data.NoteSelectType;
import com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer;
import com.onyx.galaxy.note.category.view.adapter.SelectNoteListAdapter;
import com.onyx.galaxy.note.common.extension.NoteQueryArgsKt;
import com.onyx.galaxy.note.common.extension.StatisticsExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.CommonProgressDialog;
import com.onyx.galaxy.note.databinding.PopupSelectNotePagesBinding;
import com.onyx.galaxy.note.editor.view.adapter.PageThumbnailListAdapter;
import com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.collections4.CollectionUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010'\u001a\u00020\"\u0012\u0006\u0010*\u001a\u00020\"\u0012\u0006\u0010.\u001a\u00020+\u0012\u0006\u00101\u001a\u00020/¢\u0006\u0004\bG\u0010HJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0012\u0010\n\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\n\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\u0012\u0010\u0014\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002J\u0012\u0010\u0016\u001a\u00020\u00022\b\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u0002J\u0016\u0010\u001a\u001a\u00020\u00022\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u001d\u001a\u00020\u0002H\u0002J\b\u0010\u001e\u001a\u00020\u0002H\u0002J\b\u0010 \u001a\u00020\u001fH\u0002J\b\u0010!\u001a\u00020\u0002H\u0002R\u0017\u0010'\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010*\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b(\u0010$\u001a\u0004\b)\u0010&R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u00101\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010\u0004R\u001b\u00107\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u001b\u0010<\u001a\u0002088BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u00104\u001a\u0004\b:\u0010;R \u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020>0=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010?R\u0016\u0010C\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010E¨\u0006I"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;", "Lcom/google/android/material/bottomsheet/BottomSheetDialog;", "", "V", "I", "Q", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "U", "", SearchIntents.EXTRA_QUERY, "h0", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "E", "X", "G", "k0", "N", "K", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "d0", "selectType", "a0", "", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "list", "g0", "c0", "b0", "i0", "F", "Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;", "j0", "l0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "v", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "w", "getDocManagerBundle", "docManagerBundle", "Landroid/content/Context;", "x", "Landroid/content/Context;", "context", "", "y", "insertPageIndex", "Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;", "z", "Lkotlin/Lazy;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;", "J", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "()Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;", "noteListAdapter", "", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "Ljava/util/Map;", "noteListMap", "Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;", "notePageListAdapter", Constants.HASIDCALL_INDEX_SIG, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "selectedNoteModel", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectNotePagesPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectNotePagesPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,339:1\n58#2,23:340\n93#2,3:363\n766#3:366\n857#3,2:367\n1655#3,8:369\n1549#3:377\n1620#3,3:378\n766#3:381\n857#3,2:382\n766#3:385\n857#3,2:386\n1655#3,8:388\n1549#3:396\n1620#3,3:397\n1#4:384\n*S KotlinDebug\n*F\n+ 1 SelectNotePagesPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup\n*L\n159#1:340,23\n159#1:363,3\n175#1:366\n175#1:367,2\n176#1:369,8\n177#1:377\n177#1:378,3\n179#1:381\n179#1:382,2\n181#1:385\n181#1:386,2\n183#1:388,8\n193#1:396\n193#1:397,3\n*E\n"})
/* loaded from: classes9.dex */
public final class SelectNotePagesPopup extends BottomSheetDialog {

    /* renamed from: J, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteListAdapter;

    /* renamed from: O, reason: from kotlin metadata */
    @NotNull
    public final Map<NoteSelectType, NoteModelBeanList> noteListMap;

    /* renamed from: Q, reason: from kotlin metadata */
    @NotNull
    public PageThumbnailListAdapter notePageListAdapter;

    /* renamed from: Z, reason: from kotlin metadata */
    @Nullable
    public SyncNoteModel selectedNoteModel;

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
    public final int insertPageIndex;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$a */
    /* loaded from: classes9.dex */
    public static final class C12457a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Integer> f60548f;

        public C12457a(List<Integer> list) {
            this.f60548f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertOtherNotePagesAction apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new InsertOtherNotePagesAction(SelectNotePagesPopup.this.getEditorBundle(), SelectNotePagesPopup.this.getDocManagerBundle(), this.f60548f, SelectNotePagesPopup.this.insertPageIndex);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$b */
    /* loaded from: classes9.dex */
    public static final class C12458b<T, R> implements Function {

        /* renamed from: e */
        public static final C12458b<T, R> f60549e = new C12458b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull InsertOtherNotePagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$c */
    /* loaded from: classes9.dex */
    public static final class C12459c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ CommonProgressDialog f60550e;

        public C12459c(CommonProgressDialog commonProgressDialog) {
            this.f60550e = commonProgressDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f60550e.updateProgress((int) it2.getProgress());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$d */
    /* loaded from: classes9.dex */
    public static final class C12460d<T> implements Consumer {

        /* renamed from: e */
        public static final C12460d<T> f60551e = new C12460d<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.insert_page_fail, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$e */
    /* loaded from: classes9.dex */
    public static final class C12461e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ NoteSelectType f60553f;

        public C12461e(NoteSelectType noteSelectType) {
            this.f60553f = noteSelectType;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectNotePagesPopup.this.noteListMap.put(this.f60553f, it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$f */
    /* loaded from: classes9.dex */
    public static final class C12462f<T> implements Consumer {
        public C12462f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectNotePagesPopup.this.m49465g0(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$g */
    /* loaded from: classes9.dex */
    public static final class C12463g<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ NoteSelectType f60555e;

        public C12463g(NoteSelectType noteSelectType) {
            this.f60555e = noteSelectType;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f60555e == NoteSelectType.TAB_ALL;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$h */
    /* loaded from: classes9.dex */
    public static final class C12464h<T> implements Consumer {
        public C12464h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectNotePagesPopup.this.m49463c0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$i */
    /* loaded from: classes9.dex */
    public static final class C12465i<T, R> implements Function {
        public C12465i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<VirtualPageModel>> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadVirtualPageModelListAction(SelectNotePagesPopup.this.getDocManagerBundle()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$j */
    /* loaded from: classes9.dex */
    public static final class C12466j<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ PageThumbnailListAdapter f60559e;

        public C12466j(PageThumbnailListAdapter pageThumbnailListAdapter) {
            this.f60559e = pageThumbnailListAdapter;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<VirtualPageModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f60559e.setPageData(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$k */
    /* loaded from: classes9.dex */
    public static final class C12467k<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ SyncNoteModel f60561f;

        public C12467k(SyncNoteModel syncNoteModel) {
            this.f60561f = syncNoteModel;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<VirtualPageModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectNotePagesPopup.this.selectedNoteModel = this.f60561f;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$l */
    /* loaded from: classes9.dex */
    public static final class C12468l<T> implements Consumer {
        public C12468l() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<VirtualPageModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectNotePagesPopup.this.m49448C().fileSelectAll.setEnabled(true);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$m */
    /* loaded from: classes9.dex */
    public static final class C12469m<T> implements Consumer {
        public C12469m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteTagBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectNotePagesPopup.this.m49449D().setTagByIdMap(NoteTagNodes.INSTANCE.flattenToMap(it2));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectNotePagesPopup(@NotNull EditorBundle editorBundle, @NotNull EditorBundle docManagerBundle, @NotNull Context context, int i) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        this.editorBundle = editorBundle;
        this.docManagerBundle = docManagerBundle;
        this.context = context;
        this.insertPageIndex = i;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupSelectNotePagesBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupSelectNotePagesBinding invoke() {
                Context context2;
                context2 = SelectNotePagesPopup.this.context;
                return PopupSelectNotePagesBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SelectNoteListAdapter>() { // from class: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$noteListAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SelectNoteListAdapter invoke() {
                return new SelectNoteListAdapter();
            }
        });
        this.noteListAdapter = lazy2;
        this.noteListMap = new LinkedHashMap();
        this.notePageListAdapter = new PageThumbnailListAdapter();
        m49459V();
    }

    /* renamed from: H */
    public static final void m49424H(SelectNotePagesPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49469k0();
    }

    /* renamed from: J */
    public static final void m49425J(SelectNotePagesPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: L */
    public static final void m49426L(SelectNotePagesPopup this$0, BaseQuickAdapter it2, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m49464d0((SyncNoteModel) it2.getItem(i));
    }

    /* renamed from: M */
    public static final void m49427M(SelectNotePagesPopup this$0, BaseQuickAdapter it2, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m49464d0((SyncNoteModel) it2.getItem(i));
    }

    /* renamed from: P */
    public static final void m49428P(SelectNotePagesPopup this$0, BaseQuickAdapter it2, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        PageDataModel pageDataModel = (PageDataModel) it2.getItem(i);
        if (pageDataModel == null) {
            return;
        }
        this$0.notePageListAdapter.onItemClick(pageDataModel);
        this$0.m49470l0();
    }

    /* renamed from: R */
    public static final void m49429R(SelectNotePagesPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49451F();
    }

    /* renamed from: S */
    public static final void m49430S(SelectNotePagesPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49460X();
    }

    /* renamed from: T */
    public static final void m49431T(SelectNotePagesPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.notePageListAdapter.toggleSelectAll();
    }

    /* renamed from: W */
    public static final void m49432W(SelectNotePagesPopup this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49448C().swipeContainer.getRecycleView().setAdapter(null);
    }

    /* renamed from: Y */
    public static final void m49433Y(SelectNotePagesPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: Z */
    public static final void m49434Z(CommonProgressDialog progressDialog) {
        Intrinsics.checkNotNullParameter(progressDialog, "$progressDialog");
        progressDialog.dismiss();
    }

    /* renamed from: e0 */
    public static final void m49435e0(SelectNotePagesPopup this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49467i0();
    }

    /* renamed from: f0 */
    public static final void m49436f0(SelectNotePagesPopup this$0, SyncNoteModel syncNoteModel, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49462b0(syncNoteModel);
    }

    /* renamed from: C */
    public final PopupSelectNotePagesBinding m49448C() {
        return (PopupSelectNotePagesBinding) this.binding.getValue();
    }

    /* renamed from: D */
    public final SelectNoteListAdapter m49449D() {
        return (SelectNoteListAdapter) this.noteListAdapter.getValue();
    }

    /* renamed from: E */
    public final NoteSelectType m49450E() {
        TintTabLayoutView tabLayout = m49448C().tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        TabLayout.Tab selectedTab = TabLayoutKt.getSelectedTab(tabLayout);
        Object tag = selectedTab != null ? selectedTab.getTag() : null;
        if (tag instanceof NoteSelectType) {
            return (NoteSelectType) tag;
        }
        return null;
    }

    /* renamed from: F */
    public final void m49451F() {
        List emptyList;
        ViewKt.setViewVisibleOrInvisible(m49448C().pageLayout, false);
        ViewKt.setViewVisibleOrInvisible(m49448C().noteLayout, true);
        PageThumbnailListAdapter pageThumbnailListAdapter = this.notePageListAdapter;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        pageThumbnailListAdapter.submitList(emptyList);
        m49448C().fileSelectAll.setChecked(false);
        m49448C().fileSelectAll.setEnabled(false);
    }

    /* renamed from: G */
    public final void m49452G() {
        m49448C().displayType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wfm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectNotePagesPopup.m49424H(SelectNotePagesPopup.this, view);
            }
        });
    }

    /* renamed from: I */
    public final void m49453I() {
        m49448C().btnBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.sfm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectNotePagesPopup.m49425J(SelectNotePagesPopup.this, view);
            }
        });
        m49452G();
        m49455N();
        m49454K();
        m49461a0(NoteSelectType.TAB_ALL);
    }

    /* renamed from: K */
    public final void m49454K() {
        ItemClickUtilsKt.setOnDebouncedItemClick$default(m49449D(), 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.xfm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SelectNotePagesPopup.m49426L(SelectNotePagesPopup.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(m49449D(), C10651R.id.v_click_open, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.mfm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SelectNotePagesPopup.m49427M(SelectNotePagesPopup.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        m49448C().noteRecyclerView.setAdapter(m49449D());
    }

    /* renamed from: N */
    public final void m49455N() {
        TintTabLayoutView tabLayout = m49448C().tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        com.onyx.galaxy.note.common.extension.TabLayoutKt.addNoteListTabs(tabLayout, new Function1<TabLayout.Tab, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$initNoteTabLayout$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TabLayout.Tab tab) {
                invoke2(tab);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TabLayout.Tab it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                SelectNotePagesPopup selectNotePagesPopup = SelectNotePagesPopup.this;
                Object tag = it2.getTag();
                selectNotePagesPopup.m49461a0(tag instanceof NoteSelectType ? (NoteSelectType) tag : null);
            }
        });
    }

    /* renamed from: O */
    public final void m49456O() {
        PageThumbnailListAdapter pageThumbnailListAdapter = new PageThumbnailListAdapter();
        this.notePageListAdapter = pageThumbnailListAdapter;
        ItemClickUtilsKt.setOnDebouncedItemClick$default(pageThumbnailListAdapter, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.tfm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SelectNotePagesPopup.m49428P(SelectNotePagesPopup.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        this.notePageListAdapter.setSelectItemChangeCallback(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$initPageAdapter$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                SelectNotePagesPopup.this.m49448C().fileSelectAll.setChecked(z);
                SelectNotePagesPopup.this.m49470l0();
            }
        });
        m49448C().swipeContainer.setOnSwipeStateChangeListener(new SwipeRecycleViewContainer.OnSwipeStateChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$initPageAdapter$3
            @Override // com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer.OnSwipeStateChangeListener
            public void onFinished() {
                PageThumbnailListAdapter pageThumbnailListAdapter2;
                pageThumbnailListAdapter2 = SelectNotePagesPopup.this.notePageListAdapter;
                pageThumbnailListAdapter2.swipeFinish();
            }

            @Override // com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer.OnSwipeStateChangeListener
            public void onStart() {
                PageThumbnailListAdapter pageThumbnailListAdapter2;
                pageThumbnailListAdapter2 = SelectNotePagesPopup.this.notePageListAdapter;
                pageThumbnailListAdapter2.swipeStart();
            }

            @Override // com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer.OnSwipeStateChangeListener
            public void onSwiped(int startIndex, int endStartIndex) {
                PageThumbnailListAdapter pageThumbnailListAdapter2;
                pageThumbnailListAdapter2 = SelectNotePagesPopup.this.notePageListAdapter;
                pageThumbnailListAdapter2.toggleSwipe(Math.min(startIndex, endStartIndex), Math.max(startIndex, endStartIndex));
            }
        });
        m49448C().swipeContainer.getRecycleView().setAdapter(this.notePageListAdapter);
    }

    /* renamed from: Q */
    public final void m49457Q() {
        m49448C().pageBtnBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lfm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectNotePagesPopup.m49429R(SelectNotePagesPopup.this, view);
            }
        });
        m49448C().addPages.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.pfm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectNotePagesPopup.m49430S(SelectNotePagesPopup.this, view);
            }
        });
        m49448C().fileSelectAll.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qfm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectNotePagesPopup.m49431T(SelectNotePagesPopup.this, view);
            }
        });
        m49456O();
    }

    /* renamed from: U */
    public final void m49458U() {
        TouchModeMaxLengthInputTextEdit tieName = m49448C().tieName;
        Intrinsics.checkNotNullExpressionValue(tieName, "tieName");
        tieName.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$initSearchView$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                CharSequence trim;
                if (s == null) {
                    return;
                }
                trim = StringsKt__StringsKt.trim(s);
                SelectNotePagesPopup.this.m49466h0(trim.toString());
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
    }

    /* renamed from: V */
    public final void m49459V() {
        setContentView(m49448C().getRoot());
        setCanceledOnTouchOutside(false);
        m49453I();
        m49457Q();
        m49458U();
        Object parent = m49448C().getRoot().getParent();
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
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.rfm
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SelectNotePagesPopup.m49432W(SelectNotePagesPopup.this, dialogInterface);
            }
        });
    }

    /* renamed from: X */
    public final void m49460X() {
        int collectionSizeOrDefault;
        List list;
        List<PageDataModel> selectedItems = this.notePageListAdapter.getSelectedItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(selectedItems, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = selectedItems.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((PageDataModel) it2.next()).getPageIndex()));
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        m49448C().swipeContainer.getRecycleView().setAdapter(null);
        final CommonProgressDialog m49468j0 = m49468j0();
        StatisticsBundle.INSTANCE.postEvent(new StatisticsStoolbarPageAdd(String.valueOf(this.insertPageIndex), StatisticsStoolbarPageAdd.PAGE_ADD_FROM_OTHER_DOC));
        EditorBundle editorBundle = this.editorBundle;
        int i = this.insertPageIndex;
        SyncNoteModel syncNoteModel = this.selectedNoteModel;
        String uniqueId = syncNoteModel != null ? syncNoteModel.getUniqueId() : null;
        if (uniqueId == null) {
            uniqueId = "";
        }
        StatisticsExtKt.reportInsertPageEvent(editorBundle, i, uniqueId, InsertPageFrom.OTHER_NOTE);
        new SaveDocumentAction(this.editorBundle).build().map(new C12457a(list)).flatMap(C12458b.f60549e).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12459c(m49468j0)).doOnError(C12460d.f60551e).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.ufm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SelectNotePagesPopup.m49433Y(SelectNotePagesPopup.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.vfm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SelectNotePagesPopup.m49434Z(CommonProgressDialog.this);
            }
        }).subscribe();
    }

    /* renamed from: a0 */
    public final void m49461a0(NoteSelectType selectType) {
        if (selectType == null) {
            selectType = NoteSelectType.TAB_ALL;
        }
        NoteModelBeanList noteModelBeanList = this.noteListMap.get(selectType);
        if (noteModelBeanList != null) {
            m49465g0(noteModelBeanList);
            return;
        }
        CBQueryArgs andWithSelectType = NoteQueryArgsKt.andWithSelectType(NoteQueryArgsKt.sortWith(NoteConfigKt.getCommonNoteArgs(), SortBy.UpdateAt, SortOrder.Desc), selectType);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        new LoadNoteListAction(andWithSelectType.andWith(couchUtils.equalExpression("type", 1)).andWith(couchUtils.nonExpression(CouchFieldKey.KEY_UNIQUE_ID, EditorBundleKt.docId(this.editorBundle))).andWith(couchUtils.nonExpression(CouchFieldKey.KEY_ACTIVE_SCENE, 2)), null, 2, null).build().doOnNext(new C12461e(selectType)).doOnNext(new C12462f()).filter(new C12463g(selectType)).doOnNext(new C12464h()).subscribe();
    }

    /* renamed from: b0 */
    public final void m49462b0(SyncNoteModel noteModel) {
        PageThumbnailListAdapter pageThumbnailListAdapter = this.notePageListAdapter;
        pageThumbnailListAdapter.setEditorBundle(this.docManagerBundle);
        new OpenDocumentAction(this.docManagerBundle, OpenDocArgs.INSTANCE.createFrom(noteModel)).build().flatMap(new C12465i()).doOnNext(new C12466j(pageThumbnailListAdapter)).doOnNext(new C12467k(noteModel)).doOnNext(new C12468l()).subscribe();
    }

    /* renamed from: c0 */
    public final void m49463c0() {
        new LoadTagTreeAction().build().doOnNext(new C12469m()).subscribe();
    }

    /* renamed from: d0 */
    public final void m49464d0(final SyncNoteModel noteModel) {
        List listOf;
        if (noteModel == null) {
            return;
        }
        Context context = this.context;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(noteModel.getUniqueId());
        RxjavaKt.doOnNextIfTrue(RxjavaKt.doOnNextIfTrue(new AuthNoteAction(context, listOf).build(), new Consumer() { // from class: com.sunia.HTREnginev2.nfm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SelectNotePagesPopup.m49435e0(SelectNotePagesPopup.this, ((Boolean) obj).booleanValue());
            }
        }), new Consumer() { // from class: com.sunia.HTREnginev2.ofm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SelectNotePagesPopup.m49436f0(SelectNotePagesPopup.this, noteModel, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: g0 */
    public final void m49465g0(List<NoteModelBean> list) {
        m49449D().submitList(list);
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
    public final void m49466h0(String query) {
        int collectionSizeOrDefault;
        boolean contains;
        boolean contains2;
        m49448C().searchView.setTag(query);
        if (query == null || query.length() == 0) {
            m49461a0(m49450E());
            return;
        }
        NoteModelBeanList noteModelBeanList = this.noteListMap.get(NoteSelectType.TAB_ALL);
        if (noteModelBeanList == null) {
            return;
        }
        Collection<SyncTagModel> values = m49449D().getTagByIdMap().values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : values) {
            contains2 = StringsKt__StringsKt.contains((CharSequence) ((SyncTagModel) obj).getContent(), (CharSequence) query, true);
            if (contains2) {
                arrayList.add(obj);
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (hashSet.add(((SyncTagModel) obj2).getUniqueId())) {
                arrayList2.add(obj2);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((SyncTagModel) it2.next()).getUniqueId());
        }
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        for (NoteModelBean noteModelBean : noteModelBeanList) {
            String title = noteModelBean.getTitle();
            if (title == null) {
                title = "";
            }
            contains = StringsKt__StringsKt.contains((CharSequence) title, (CharSequence) query, true);
            if (contains) {
                arrayList5.add(noteModelBean);
            }
        }
        arrayList4.addAll(arrayList5);
        ArrayList arrayList6 = new ArrayList();
        for (NoteModelBean noteModelBean2 : noteModelBeanList) {
            if (CollectionUtils.containsAny(noteModelBean2.getTagIdList(), arrayList3)) {
                arrayList6.add(noteModelBean2);
            }
        }
        arrayList4.addAll(arrayList6);
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList7 = new ArrayList();
        for (Object obj3 : arrayList4) {
            if (hashSet2.add(((NoteModelBean) obj3).getUniqueId())) {
                arrayList7.add(obj3);
            }
        }
        m49465g0(arrayList7);
    }

    /* renamed from: i0 */
    public final void m49467i0() {
        ViewKt.setViewVisibleOrInvisible(m49448C().pageLayout, true);
        ViewKt.setViewVisibleOrInvisible(m49448C().noteLayout, false);
        m49456O();
    }

    /* renamed from: j0 */
    public final CommonProgressDialog m49468j0() {
        CommonProgressDialog commonProgressDialog = new CommonProgressDialog(this.context);
        String string = this.context.getString(C10651R.string.in_progress);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        CommonProgressDialog titleText = commonProgressDialog.setTitleText(string);
        titleText.show();
        return titleText;
    }

    /* renamed from: k0 */
    public final void m49469k0() {
        NoteDisplayType noteDisplayType;
        int i = m49449D().toggleDisplayType();
        NoteDisplayType[] values = NoteDisplayType.values();
        int length = values.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                noteDisplayType = null;
                break;
            }
            noteDisplayType = values[i2];
            if (noteDisplayType.getType() == i) {
                break;
            } else {
                i2++;
            }
        }
        m49448C().noteRecyclerView.setDisplayType((NoteDisplayType) AnyKt.getOrElse(noteDisplayType, new Function0<NoteDisplayType>() { // from class: com.onyx.galaxy.note.editor.view.popup.SelectNotePagesPopup$toggleDisplayType$noteDisplayType$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteDisplayType invoke() {
                return NoteDisplayType.DISPLAY_GRID;
            }
        }));
        m49448C().displayType.setImageResource(i == 2 ? C10651R.drawable.ic_display_linear : C10651R.drawable.ic_display_grid);
    }

    /* renamed from: l0 */
    public final void m49470l0() {
        m49448C().addPages.setEnabled(!this.notePageListAdapter.getSelectedItems().isEmpty());
    }
}
