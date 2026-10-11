package com.onyx.galaxy.note.category.action.template;

import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.FileKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.action.DeleteFileAction;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.template.AddPagesToCustomPaperAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.TemplateFileBean;
import com.onyx.galaxy.note.editor.action.export.LoadCurNoteExportArgsAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00020\u0004H\u0002J\u001e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000f\u001a\u00020\bH\u0002R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0011¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/app/Dialog;", "u", "", "s", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "", "pageIndex", "r", "t", C6999h.f39688c, "Ljava/util/List;", "pageIndexList", "i", "Landroid/app/Dialog;", "loadingDialog", "", "j", "pdfCachePath", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AddPagesToCustomPaperAction extends RxBaseAppAction<List<? extends TemplateModel>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> pageIndexList;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Dialog loadingDialog;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<String> pdfCachePath;

    /* renamed from: com.onyx.galaxy.note.category.action.template.AddPagesToCustomPaperAction$a */
    /* loaded from: classes9.dex */
    public static final class C11173a<T> implements Consumer {
        public C11173a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AddPagesToCustomPaperAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AddPagesToCustomPaperAction.this.m42924u();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.AddPagesToCustomPaperAction$b */
    /* loaded from: classes9.dex */
    public static final class C11174b<T, R> implements Function {
        public C11174b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<String>> apply(@NotNull AddPagesToCustomPaperAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddPagesToCustomPaperAction.this.m42922s();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.AddPagesToCustomPaperAction$c */
    /* loaded from: classes9.dex */
    public static final class C11175c<T, R> implements Function {

        /* renamed from: e */
        public static final C11175c<T, R> f54321e = new C11175c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.AddPagesToCustomPaperAction$d */
    /* loaded from: classes9.dex */
    public static final class C11176d<T, R> implements Function {
        public C11176d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Uri apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FileKt.toProviderUri(new File(it2), AddPagesToCustomPaperAction.this.getAppContext());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.AddPagesToCustomPaperAction$e */
    /* loaded from: classes9.dex */
    public static final class C11177e<T, R> implements Function {
        public C11177e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<TemplateModel>> apply(@NotNull Uri it2) {
            List listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = AddPagesToCustomPaperAction.this.getEditorBundle();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(TemplateFileBean.Companion.createTemplateFileBean$default(TemplateFileBean.INSTANCE, it2, null, null, 6, null));
            return new ImportFilesAsCustomPaperAction(editorBundle, listOf).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.AddPagesToCustomPaperAction$f */
    /* loaded from: classes9.dex */
    public static final class C11178f<T> implements Consumer {

        /* renamed from: e */
        public static final C11178f<T> f54324e = new C11178f<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.add_fail, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.AddPagesToCustomPaperAction$g */
    /* loaded from: classes9.dex */
    public static final class C11179g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f54325e;

        public C11179g(String str) {
            this.f54325e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f54325e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.AddPagesToCustomPaperAction$h */
    /* loaded from: classes9.dex */
    public static final class C11180h<T, R> implements Function {

        /* renamed from: com.onyx.galaxy.note.category.action.template.AddPagesToCustomPaperAction$h$a */
        /* loaded from: classes9.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ AddPagesToCustomPaperAction f54327e;

            /* renamed from: f */
            public final /* synthetic */ NoteExportArgs f54328f;

            public a(AddPagesToCustomPaperAction addPagesToCustomPaperAction, NoteExportArgs noteExportArgs) {
                this.f54327e = addPagesToCustomPaperAction;
                this.f54328f = noteExportArgs;
            }

            @NotNull
            /* renamed from: a */
            public final ObservableSource<? extends String> m42933a(int i) {
                return this.f54327e.m42921r(this.f54328f.getNoteModel(), i);
            }

            @Override // io.reactivex.rxjava3.functions.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return m42933a(((Number) obj).intValue());
            }
        }

        public C11180h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull NoteExportArgs model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return Observable.fromIterable(AddPagesToCustomPaperAction.this.pageIndexList).concatMap(new a(AddPagesToCustomPaperAction.this, model));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.AddPagesToCustomPaperAction$i */
    /* loaded from: classes9.dex */
    public static final class C11181i<T> implements Consumer {
        public C11181i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CollectionKt.safeAdd(AddPagesToCustomPaperAction.this.pdfCachePath, it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddPagesToCustomPaperAction(@NotNull EditorBundle editorBundle, @NotNull List<Integer> pageIndexList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIndexList, "pageIndexList");
        this.pageIndexList = pageIndexList;
        this.pdfCachePath = new ArrayList();
    }

    /* renamed from: o */
    public static final void m42918o() {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.add_success, false, 2, (Object) null);
    }

    /* renamed from: p */
    public static final void m42919p(AddPagesToCustomPaperAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RxBaseAction.execute$default(new DeleteFileAction(this$0.pdfCachePath), null, null, null, 7, null);
    }

    /* renamed from: q */
    public static final void m42920q(AddPagesToCustomPaperAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Dialog dialog = this$0.loadingDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TemplateModel>> create() {
        Observable<List<TemplateModel>> doFinally = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C11173a()).flatMap(new C11174b()).flatMap(C11175c.f54321e).map(new C11176d()).concatMap(new C11177e()).takeLast(1).observeOn(getMainUIScheduler()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.q8
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AddPagesToCustomPaperAction.m42918o();
            }
        }).doOnError(C11178f.f54324e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.r8
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AddPagesToCustomPaperAction.m42919p(AddPagesToCustomPaperAction.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.s8
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AddPagesToCustomPaperAction.m42920q(AddPagesToCustomPaperAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: r */
    public final Observable<String> m42921r(SyncNoteModel noteModel, int pageIndex) {
        List listOf;
        List listOf2;
        VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(pageIndex);
        Intrinsics.checkNotNull(virtualPage);
        String id = virtualPage.getBox().getId();
        String m42923t = m42923t();
        EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(id);
        listOf2 = CollectionsKt__CollectionsJVMKt.listOf(new NoteExportArgs(noteModel, listOf, null, false, 12, null));
        Observable<String> map = RxjavaKt.takeLastOne(new ExportToPDFFileAction(docManagerBundle, listOf2, m42923t).build()).map(new C11179g(m42923t));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<List<String>> m42922s() {
        Observable<List<String>> observable = new LoadCurNoteExportArgsAction(getEditorBundle()).build().flatMap(new C11180h()).doOnNext(new C11181i()).toList().toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "toObservable(...)");
        return observable;
    }

    /* renamed from: t */
    public final String m42923t() {
        FileUtils fileUtils = FileUtils.INSTANCE;
        return fileUtils.combinePath(ResManager.INSTANCE.getAppContext().getCacheDir().getAbsolutePath(), fileUtils.getValidFileName(UUIDUtils.INSTANCE.shortUUID(), CloudStorageConstants.PDF_FILE_SUFFIX));
    }

    /* renamed from: u */
    public final Dialog m42924u() {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            return null;
        }
        CommonDialog create = new CommonDialog.Builder(activityContext).setDialogType(1).setMessage(C10651R.string.adding).setCancelable(false).create();
        this.loadingDialog = create;
        if (create != null) {
            create.show();
        }
        return this.loadingDialog;
    }
}
