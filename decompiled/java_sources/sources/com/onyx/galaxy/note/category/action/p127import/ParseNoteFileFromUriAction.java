package com.onyx.galaxy.note.category.action.p127import;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.p126import.ImportFromNoteFileAction;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsCancelEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.p127import.ParseNoteFileFromUriAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.view.dialog.ImportSuccessDialog;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.common.view.ParseNoteProgressDialog;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\b\u0012\u0006\u0010\u001c\u001a\u00020\u0019¢\u0006\u0004\b#\u0010$J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0006J(\u0010\r\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\f0\u00022\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002R\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\b8\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR&\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "onDispose", "", "Landroid/net/Uri;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getResultList", "uri", "Lkotlin/Pair;", "q", "", "importedCount", "p", "t", "Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;", "u", C6998g.f39679a, "Ljava/util/List;", "getUriList", "()Ljava/util/List;", "uriList", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "importSelectedContext", "i", "Ljava/util/Map;", "parsedResultMap", "j", "Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;", "progressDialog", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class ParseNoteFileFromUriAction extends RxBaseNoteAppAction<ParseNoteFileFromUriAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<Uri> uriList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ImportSelectedContext importSelectedContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<Uri, List<SyncNoteModel>> parsedResultMap;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public ParseNoteProgressDialog progressDialog;

    @SourceDebugExtension({"SMAP\nParseNoteFileFromUriAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseNoteFileFromUriAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$create$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n2634#2:93\n1#3:94\n*S KotlinDebug\n*F\n+ 1 ParseNoteFileFromUriAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$create$1\n*L\n31#1:93\n31#1:94\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileFromUriAction$a */
    /* loaded from: classes9.dex */
    public static final class C11124a<T> implements Consumer {
        public C11124a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ParseNoteFileFromUriAction it2) {
            List emptyList;
            Intrinsics.checkNotNullParameter(it2, "it");
            List<Uri> uriList = ParseNoteFileFromUriAction.this.getUriList();
            ParseNoteFileFromUriAction parseNoteFileFromUriAction = ParseNoteFileFromUriAction.this;
            for (Uri uri : uriList) {
                Map map = parseNoteFileFromUriAction.parsedResultMap;
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                map.put(uri, emptyList);
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileFromUriAction$b */
    /* loaded from: classes9.dex */
    public static final class C11125b<T> implements Consumer {
        public C11125b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ParseNoteFileFromUriAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ParseNoteFileFromUriAction parseNoteFileFromUriAction = ParseNoteFileFromUriAction.this;
            parseNoteFileFromUriAction.progressDialog = parseNoteFileFromUriAction.m42831u();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileFromUriAction$c */
    /* loaded from: classes9.dex */
    public static final class C11126c<T, R> implements Function {
        public C11126c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Uri> apply(@NotNull ParseNoteFileFromUriAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(ParseNoteFileFromUriAction.this.getUriList());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileFromUriAction$d */
    /* loaded from: classes9.dex */
    public static final class C11127d<T, R> implements Function {
        public C11127d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Pair<Uri, List<SyncNoteModel>>> apply(@NotNull Uri it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseNoteFileFromUriAction.this.m42829q(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileFromUriAction$e */
    /* loaded from: classes9.dex */
    public static final class C11128e<T> implements Consumer {
        public C11128e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Pair<? extends Uri, ? extends List<? extends SyncNoteModel>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ParseNoteFileFromUriAction.this.parsedResultMap.put(it2.getFirst(), it2.getSecond());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileFromUriAction$f */
    /* loaded from: classes9.dex */
    public static final class C11129f<T, R> implements Function {
        public C11129f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ParseNoteFileFromUriAction apply(@NotNull Pair<? extends Uri, ? extends List<? extends SyncNoteModel>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseNoteFileFromUriAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileFromUriAction$g */
    /* loaded from: classes9.dex */
    public static final class C11130g<T, R> implements Function {
        public C11130g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ParseNoteFileFromUriAction> apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.just(ParseNoteFileFromUriAction.this);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileFromUriAction$h */
    /* loaded from: classes9.dex */
    public static final class C11131h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ImportFromNoteFileAction f54256e;

        public C11131h(ImportFromNoteFileAction importFromNoteFileAction) {
            this.f54256e = importFromNoteFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull Uri it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f54256e.build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileFromUriAction$i */
    /* loaded from: classes9.dex */
    public static final class C11132i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Uri f54257e;

        /* renamed from: f */
        public final /* synthetic */ ImportFromNoteFileAction f54258f;

        public C11132i(Uri uri, ImportFromNoteFileAction importFromNoteFileAction) {
            this.f54257e = uri;
            this.f54258f = importFromNoteFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<Uri, List<SyncNoteModel>> apply(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new Pair<>(this.f54257e, this.f54258f.getNoteList());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileFromUriAction$j */
    /* loaded from: classes9.dex */
    public static final class C11133j<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Uri f54260f;

        public C11133j(Uri uri) {
            this.f54260f = uri;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ParseNoteFileFromUriAction.this.m42830t(this.f54260f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParseNoteFileFromUriAction(@NotNull List<? extends Uri> uriList, @NotNull ImportSelectedContext importSelectedContext) {
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        Intrinsics.checkNotNullParameter(importSelectedContext, "importSelectedContext");
        this.uriList = uriList;
        this.importSelectedContext = importSelectedContext;
        this.parsedResultMap = new LinkedHashMap();
    }

    /* renamed from: o */
    public static final void m42825o(ParseNoteFileFromUriAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ParseNoteProgressDialog parseNoteProgressDialog = this$0.progressDialog;
        if (parseNoteProgressDialog != null) {
            parseNoteProgressDialog.dismiss();
        }
    }

    /* renamed from: r */
    public static final void m42826r(ParseNoteFileFromUriAction this$0, Uri uri, ImportFromNoteFileAction action) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(uri, "$uri");
        Intrinsics.checkNotNullParameter(action, "$action");
        this$0.m42828p(uri, action.getNoteList().size());
    }

    /* renamed from: s */
    public static final void m42827s(ParseNoteFileFromUriAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onDispose();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ParseNoteFileFromUriAction> create() {
        Observable doOnNext = Observable.just(this).doOnNext(new C11124a()).observeOn(getMainUIScheduler()).doOnNext(new C11125b()).flatMap(new C11126c()).concatMap(new C11127d()).doOnNext(new C11128e());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<ParseNoteFileFromUriAction> doFinally = RxjavaKt.takeLastOne(doOnNext).map(new C11129f()).onErrorResumeNext(new C11130g()).observeOn(getMainUIScheduler()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.nwk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ParseNoteFileFromUriAction.m42825o(ParseNoteFileFromUriAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @NotNull
    public final Map<Uri, List<SyncNoteModel>> getResultList() {
        return this.parsedResultMap;
    }

    @NotNull
    public final List<Uri> getUriList() {
        return this.uriList;
    }

    public void onDispose() {
    }

    /* renamed from: p */
    public final void m42828p(Uri uri, int importedCount) {
        if (importedCount <= 0) {
            return;
        }
        this.importSelectedContext.completeCount(CollectionKt.asList(uri), importedCount, new Function1<ImportSelectedContext, Unit>() { // from class: com.onyx.galaxy.note.category.action.import.ParseNoteFileFromUriAction$handleCompleteCount$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ImportSelectedContext importSelectedContext) {
                invoke2(importSelectedContext);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ImportSelectedContext agr) {
                Intrinsics.checkNotNullParameter(agr, "agr");
                Activity activity = ParseNoteFileFromUriAction.this.getActivity();
                if (activity != null) {
                    new ImportSuccessDialog(activity, agr).show();
                }
            }
        });
    }

    /* renamed from: q */
    public final Observable<Pair<Uri, List<SyncNoteModel>>> m42829q(final Uri uri) {
        List listOf;
        NoteImportArgs noteImportArgs = new NoteImportArgs(uri, this.importSelectedContext.getSelectedFolderId());
        this.importSelectedContext.resetNoteImportArg(noteImportArgs);
        EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(noteImportArgs);
        final ImportFromNoteFileAction importFromNoteFileAction = new ImportFromNoteFileAction(docManagerBundle, listOf, false, 4, null);
        ParseNoteProgressDialog parseNoteProgressDialog = this.progressDialog;
        if (parseNoteProgressDialog != null) {
            parseNoteProgressDialog.setFileName(noteImportArgs.getImportFileName());
        }
        Observable<Pair<Uri, List<SyncNoteModel>>> doOnError = Observable.just(uri).flatMap(new C11131h(importFromNoteFileAction)).map(new C11132i(uri, importFromNoteFileAction)).observeOn(getMainUIScheduler()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.owk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ParseNoteFileFromUriAction.m42826r(ParseNoteFileFromUriAction.this, uri, importFromNoteFileAction);
            }
        }).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.pwk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ParseNoteFileFromUriAction.m42827s(ParseNoteFileFromUriAction.this);
            }
        }).doOnError(new C11133j(uri));
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        return doOnError;
    }

    /* renamed from: t */
    public final void m42830t(Uri uri) {
        boolean endsWith;
        String uri2 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
        endsWith = StringsKt__StringsJVMKt.endsWith(uri2, CloudStorageConstants.YNOTE_TITLE_SUFFIX, true);
        if (endsWith) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.parse_note_file_error, false, 2, (Object) null);
        }
    }

    /* renamed from: u */
    public final ParseNoteProgressDialog m42831u() {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            return null;
        }
        ParseNoteProgressDialog showCloseButton = new ParseNoteProgressDialog(activityContext).showCloseButton(new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.action.import.ParseNoteFileFromUriAction$showProgressDialog$dialog$1
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
                ParseNoteFileFromUriAction.this.dispose();
                DocCollectionBundle.INSTANCE.postEvent(new ImportDocumentsCancelEvent());
            }
        });
        showCloseButton.show();
        return showCloseButton;
    }
}
