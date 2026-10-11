package com.onyx.galaxy.note.category.action.p127import;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.FileKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.p126import.ImportFromNoteFileAction;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.galaxy.note.category.action.p127import.ImportUserManualNoteAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnSaveNoteEvent;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\fB\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/import/ImportUserManualNoteAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "filePath", GoogleApiAvailabilityLight.f29016b, "m", "p", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ImportUserManualNoteAction extends RxBaseNoteAppAction<Boolean> {

    @NotNull
    public static final String DEFAULT_USER_MANUAL_NAME = "user_manual";

    /* renamed from: com.onyx.galaxy.note.category.action.import.ImportUserManualNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C11062a<T, R> implements Function {
        public C11062a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull ImportUserManualNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportUserManualNoteAction.this.m42705m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ImportUserManualNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C11063b<T> implements Predicate {

        /* renamed from: e */
        public static final C11063b<T> f54151e = new C11063b<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FileUtils.INSTANCE.isFileExist(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ImportUserManualNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C11064c<T, R> implements Function {
        public C11064c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportUserManualNoteAction.this.m42706n(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ImportUserManualNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C11065d<T> implements Consumer {
        public C11065d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FileUtils.INSTANCE.deleteFile(new File(ImportUserManualNoteAction.this.m42707p()));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ImportUserManualNoteAction$e */
    /* loaded from: classes9.dex */
    public static final class C11066e<T, R> implements Function {

        /* renamed from: e */
        public static final C11066e<T, R> f54154e = new C11066e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(it2.getProgress() >= 100.0d);
        }
    }

    /* renamed from: o */
    public static final void m42704o(ImportUserManualNoteAction this$0, ImportFromNoteFileAction action, boolean z) {
        Object first;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(action, "$action");
        Debug debug = Debug.INSTANCE;
        Class<?> cls = this$0.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append("import user manual success:");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) action.getNoteList());
        sb.append(((SyncNoteModel) first).getTitle());
        debug.m32035d(cls, sb.toString(), new Object[0]);
        DocCollectionBundle.INSTANCE.postEvent(new OnSaveNoteEvent(action.getNoteList()));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doOnError = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C11062a()).filter(C11063b.f54151e).flatMap(new C11064c()).observeOn(Schedulers.m61350io()).doOnError(new C11065d());
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        return doOnError;
    }

    /* renamed from: m */
    public final String m42705m() {
        String m42707p = m42707p();
        FileUtils fileUtils = FileUtils.INSTANCE;
        return (!fileUtils.isFileExist(m42707p) && fileUtils.copyInputStreamToFile(ResManager.INSTANCE.openRawResource(FilenameUtils.getBaseName(m42707p)), new File(m42707p)) > 0) ? m42707p : "";
    }

    /* renamed from: n */
    public final Observable<Boolean> m42706n(String filePath) {
        List listOf;
        NoteImportArgs noteImportArgs = new NoteImportArgs(FileKt.toProviderUri(new File(filePath), getAppContext()), null, 2, null);
        EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(noteImportArgs);
        final ImportFromNoteFileAction importFromNoteFileAction = new ImportFromNoteFileAction(docManagerBundle, listOf, false, 4, null);
        Observable map = RxjavaKt.takeLastOne(importFromNoteFileAction.build()).map(C11066e.f54154e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.doOnNextIf(map, new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.category.action.import.ImportUserManualNoteAction$importNoteFile$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.booleanValue() && CollectionKt.getSize(ImportFromNoteFileAction.this.getNoteList()) > 0);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.gji
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ImportUserManualNoteAction.m42704o(ImportUserManualNoteAction.this, importFromNoteFileAction, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* renamed from: p */
    public final String m42707p() {
        Paths paths = Paths.INSTANCE;
        return paths.append(paths.toPath(AppFilePaths.INSTANCE.appFilesPath()), NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getUserManualName() + CloudStorageConstants.YNOTE_TITLE_SUFFIX).toAbsolutePath().toString();
    }
}
