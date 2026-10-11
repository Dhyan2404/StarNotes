package com.onyx.galaxy.note.category.action.p127import;

import android.content.Context;
import android.net.Uri;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.p126import.ImportFromNoteFileAction;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsCancelEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.p127import.ParseNoteFileIntentAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.common.view.ParseNoteProgressDialog;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0016\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B-\u0012\u0006\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\f\u0012\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0014\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "onDispose", "q", "Landroid/net/Uri;", "uri", "u", "", HuaweiYunQueryArgs.FILE_NAME, "Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;", "v", C6998g.f39679a, "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", C6999h.f39688c, Constants.STRING_SIG, CouchFieldKey.KEY_PARENT_ID, "i", "Ljava/util/List;", CouchFieldKey.KEY_TAG_ID_LIST, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class ParseNoteFileIntentAction extends RxBaseNoteAppAction<List<? extends SyncNoteModel>> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Uri uri;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final String parentId;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public final List<String> tagIdList;

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileIntentAction$a */
    /* loaded from: classes9.dex */
    public static final class C11134a<T, R> implements Function {
        public C11134a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<SyncNoteModel>> apply(@NotNull Uri it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseNoteFileIntentAction.this.m42850q();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileIntentAction$b */
    /* loaded from: classes9.dex */
    public static final class C11135b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ImportFromNoteFileAction f54265e;

        public C11135b(ImportFromNoteFileAction importFromNoteFileAction) {
            this.f54265e = importFromNoteFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f54265e.getNoteList();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseNoteFileIntentAction$c */
    /* loaded from: classes9.dex */
    public static final class C11136c<T> implements Consumer {
        public C11136c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ParseNoteFileIntentAction parseNoteFileIntentAction = ParseNoteFileIntentAction.this;
            parseNoteFileIntentAction.m42851u(parseNoteFileIntentAction.getUri());
        }
    }

    public /* synthetic */ ParseNoteFileIntentAction(Uri uri, String str, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(uri, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : list);
    }

    /* renamed from: p */
    public static final void m42846p(ParseNoteFileIntentAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onDispose();
    }

    /* renamed from: r */
    public static final void m42847r(ImportFromNoteFileAction action, NoteImportArgs importArgs, ParseNoteFileIntentAction this$0) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(importArgs, "$importArgs");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (CollectionKt.isNullOrEmpty(action.getNoteList()) || importArgs.allErrorImported()) {
            this$0.m42851u(this$0.uri);
        }
    }

    /* renamed from: s */
    public static final void m42848s(ParseNoteFileIntentAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onDispose();
    }

    /* renamed from: t */
    public static final void m42849t(ParseNoteProgressDialog parseNoteProgressDialog) {
        if (parseNoteProgressDialog != null) {
            parseNoteProgressDialog.dismiss();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<SyncNoteModel>> create() {
        Observable<List<SyncNoteModel>> doOnDispose = Observable.just(this.uri).observeOn(getMainUIScheduler()).flatMap(new C11134a()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.twk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ParseNoteFileIntentAction.m42846p(ParseNoteFileIntentAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    @NotNull
    public final Uri getUri() {
        return this.uri;
    }

    public void onDispose() {
    }

    /* renamed from: q */
    public final Observable<List<SyncNoteModel>> m42850q() {
        List listOf;
        final NoteImportArgs noteImportArgs = new NoteImportArgs(this.uri, this.parentId);
        noteImportArgs.setTagIdList(this.tagIdList);
        EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(noteImportArgs);
        final ImportFromNoteFileAction importFromNoteFileAction = new ImportFromNoteFileAction(docManagerBundle, listOf, false, 4, null);
        final ParseNoteProgressDialog m42852v = m42852v(noteImportArgs.getImportFileName());
        Observable<ProgressInfo> observeOn = importFromNoteFileAction.build().observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<List<SyncNoteModel>> doFinally = RxjavaKt.takeLastOne(observeOn).map(new C11135b(importFromNoteFileAction)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.qwk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ParseNoteFileIntentAction.m42847r(ImportFromNoteFileAction.this, noteImportArgs, this);
            }
        }).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.rwk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ParseNoteFileIntentAction.m42848s(ParseNoteFileIntentAction.this);
            }
        }).doOnError(new C11136c()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.swk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ParseNoteFileIntentAction.m42849t(ParseNoteProgressDialog.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: u */
    public final void m42851u(Uri uri) {
        boolean endsWith;
        String uri2 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
        endsWith = StringsKt__StringsJVMKt.endsWith(uri2, CloudStorageConstants.YNOTE_TITLE_SUFFIX, true);
        if (endsWith) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.parse_note_file_error, false, 2, (Object) null);
        }
    }

    /* renamed from: v */
    public final ParseNoteProgressDialog m42852v(String fileName) {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            return null;
        }
        ParseNoteProgressDialog showCloseButton = new ParseNoteProgressDialog(activityContext).setFileName(fileName).showCloseButton(new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.action.import.ParseNoteFileIntentAction$showProgressDialog$dialog$1
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
                ParseNoteFileIntentAction.this.dispose();
                DocCollectionBundle.INSTANCE.postEvent(new ImportDocumentsCancelEvent());
            }
        });
        showCloseButton.show();
        return showCloseButton;
    }

    public ParseNoteFileIntentAction(@NotNull Uri uri, @Nullable String str, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.uri = uri;
        this.parentId = str;
        this.tagIdList = list;
    }
}
