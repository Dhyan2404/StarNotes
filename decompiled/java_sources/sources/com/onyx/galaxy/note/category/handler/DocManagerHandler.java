package com.onyx.galaxy.note.category.handler;

import android.net.Uri;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.filepicker.DocumentType;
import com.onyx.android.sdk.replicator.note.action.FetchAccountQuotasAction;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.docmanager.action.pdf.LoadReaderPageThumbnailAction;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.doc.CreateVirtualDocAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.thumbnail.SaveCoverThumbnailAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.data.SaveCoverThumbnailArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageResultEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.doc.CreateVirtualDocRequest;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.event.NCreateNoteModelResultEvent;
import com.onyx.galaxy.note.category.handler.DocManagerHandler;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleActivity;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 %2\u00020\u0001:\u0001%B\t\b\u0002¢\u0006\u0004\b#\u0010$J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0007J\u0014\u0010\r\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0011H\u0007J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0016\u0010\u001a\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0017H\u0002R\u0017\u0010\"\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;", "", "", "destroy", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "noteCreateInfo", "createNoteByTemplate", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;", NotificationCompat.CATEGORY_EVENT, "onImportDocumentsResultEvent", "", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "importArgs", "importDocuments", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;", "args", "importImage", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageResultEvent;", "onImportImageResultEvent", "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;", "createRequest", "Lio/reactivex/rxjava3/core/Observable;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "model", "b", "e", "noteModel", "d", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getDocManagerBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "docManagerBundle", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocManagerHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocManagerHandler.kt\ncom/onyx/galaxy/note/category/handler/DocManagerHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,205:1\n1549#2:206\n1620#2,3:207\n*S KotlinDebug\n*F\n+ 1 DocManagerHandler.kt\ncom/onyx/galaxy/note/category/handler/DocManagerHandler\n*L\n114#1:206\n114#1:207,3\n*E\n"})
/* loaded from: classes9.dex */
public final class DocManagerHandler {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: b */
    @NotNull
    public static List<String> f54528b = DocumentType.INSTANCE.allDocumentExtension();

    /* renamed from: c */
    @NotNull
    public static final Lazy<String[]> f54529c;

    /* renamed from: d */
    @NotNull
    public static final Lazy<String[]> f54530d;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle docManagerBundle;

    @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J \u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00170\u00162\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR!\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR!\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0011\u0010\r¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion;", "", "()V", "documentExtensions", "", "", "getDocumentExtensions", "()Ljava/util/List;", "setDocumentExtensions", "(Ljava/util/List;)V", "documentMimeTypes", "", "getDocumentMimeTypes", "()[Ljava/lang/String;", "documentMimeTypes$delegate", "Lkotlin/Lazy;", "importDocumentMimeTypes", "getImportDocumentMimeTypes", "importDocumentMimeTypes$delegate", "createInstance", "Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;", "filterUri", "Lio/reactivex/rxjava3/core/Observable;", "", "Landroid/net/Uri;", "uriList", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final DocManagerHandler createInstance() {
            return new DocManagerHandler(null);
        }

        @NotNull
        public final Observable<List<Uri>> filterUri(@NotNull final List<? extends Uri> uriList) {
            Intrinsics.checkNotNullParameter(uriList, "uriList");
            Observable<List<Uri>> observeOn = Observable.just(this).observeOn(Schedulers.m61350io()).map(new Function() { // from class: com.onyx.galaxy.note.category.handler.DocManagerHandler$Companion$filterUri$1
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final List<Uri> apply(@NotNull DocManagerHandler.Companion it2) {
                    Sequence asSequence;
                    Sequence filter;
                    List<Uri> list;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    asSequence = CollectionsKt___CollectionsKt.asSequence(uriList);
                    filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Uri, Boolean>() { // from class: com.onyx.galaxy.note.category.handler.DocManagerHandler$Companion$filterUri$1.1
                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Boolean invoke(@NotNull Uri it3) {
                            String str;
                            Intrinsics.checkNotNullParameter(it3, "it");
                            boolean z = false;
                            try {
                                str = StringKt.safelyGetStr(FilenameUtils.getExtension(UriKt.getFileName(it3, ResManager.INSTANCE.getAppContext()))).toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(str, "toLowerCase(...)");
                            } catch (Exception unused) {
                                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.import_failed, false, 2, (Object) null);
                                Debug.INSTANCE.m32037d("filterUri getExtension exception!");
                                str = "";
                            }
                            if (!(str.length() == 0) && (DocManagerHandler.INSTANCE.getDocumentExtensions().contains(str) || Intrinsics.areEqual("note", str))) {
                                z = true;
                            }
                            return Boolean.valueOf(z);
                        }
                    });
                    list = SequencesKt___SequencesKt.toList(filter);
                    return list;
                }
            }).observeOn(AndroidSchedulers.mainThread());
            Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
            return observeOn;
        }

        @NotNull
        public final List<String> getDocumentExtensions() {
            return DocManagerHandler.f54528b;
        }

        @NotNull
        public final String[] getDocumentMimeTypes() {
            return (String[]) DocManagerHandler.f54530d.getValue();
        }

        @NotNull
        public final String[] getImportDocumentMimeTypes() {
            return (String[]) DocManagerHandler.f54529c.getValue();
        }

        public final void setDocumentExtensions(@NotNull List<String> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            DocManagerHandler.f54528b = list;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.handler.DocManagerHandler$a */
    /* loaded from: classes9.dex */
    public static final class C11226a<T, R> implements Function {
        public C11226a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull DocManagerHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.ensureCloseDoc(DocManagerHandler.this.getDocManagerBundle());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.handler.DocManagerHandler$b */
    /* loaded from: classes9.dex */
    public static final class C11227b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteCreateInfo f54535f;

        public C11227b(NoteCreateInfo noteCreateInfo) {
            this.f54535f = noteCreateInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateVirtualDocRequest> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CreateVirtualDocAction(DocManagerHandler.this.getDocManagerBundle(), this.f54535f, null, 4, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.handler.DocManagerHandler$c */
    /* loaded from: classes9.dex */
    public static final class C11228c<T> implements Consumer {
        public C11228c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateVirtualDocRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocManagerHandler.this.m43016b(it2.getNoteModel());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.handler.DocManagerHandler$d */
    /* loaded from: classes9.dex */
    public static final class C11229d<T, R> implements Function {
        public C11229d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateVirtualDocRequest> apply(@NotNull CreateVirtualDocRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocManagerHandler.this.m43019f(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.handler.DocManagerHandler$e */
    /* loaded from: classes9.dex */
    public static final class C11230e<T> implements Consumer {
        public C11230e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateVirtualDocRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocManagerHandler.this.m43017d(it2.getNoteModel());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.handler.DocManagerHandler$f */
    /* loaded from: classes9.dex */
    public static final class C11231f<T, R> implements Function {

        /* renamed from: e */
        public static final C11231f<T, R> f54539e = new C11231f<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull CreateVirtualDocRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            String parentUniqueId = it2.getNoteModel().getParentUniqueId();
            return parentUniqueId == null ? "" : parentUniqueId;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.handler.DocManagerHandler$g */
    /* loaded from: classes9.dex */
    public static final class C11232g<T, R> implements Function {
        public C11232g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.ensureCloseDoc(DocManagerHandler.this.getDocManagerBundle());
        }
    }

    @SourceDebugExtension({"SMAP\nDocManagerHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocManagerHandler.kt\ncom/onyx/galaxy/note/category/handler/DocManagerHandler$importDocuments$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,205:1\n766#2:206\n857#2,2:207\n*S KotlinDebug\n*F\n+ 1 DocManagerHandler.kt\ncom/onyx/galaxy/note/category/handler/DocManagerHandler$importDocuments$1\n*L\n117#1:206\n117#1:207,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.handler.DocManagerHandler$h */
    /* loaded from: classes9.dex */
    public static final class C11233h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<NoteImportArgs> f54541e;

        public C11233h(List<NoteImportArgs> list) {
            this.f54541e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteImportArgs> apply(@NotNull List<? extends Uri> uriList) {
            Intrinsics.checkNotNullParameter(uriList, "uriList");
            List<NoteImportArgs> list = this.f54541e;
            ArrayList arrayList = new ArrayList();
            for (T t : list) {
                if (uriList.contains(((NoteImportArgs) t).getImportFileUri())) {
                    arrayList.add(t);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.handler.DocManagerHandler$i */
    /* loaded from: classes9.dex */
    public static final class C11234i<T> implements Predicate {

        /* renamed from: e */
        public static final C11234i<T> f54542e = new C11234i<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<NoteImportArgs> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.handler.DocManagerHandler$j */
    /* loaded from: classes9.dex */
    public static final class C11235j<T> implements Consumer {
        public C11235j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NoteImportArgs> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocManagerHandler.this.m43018e(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.handler.DocManagerHandler$k */
    /* loaded from: classes9.dex */
    public static final class C11236k<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ SyncNoteModel f54544e;

        public C11236k(SyncNoteModel syncNoteModel) {
            this.f54544e = syncNoteModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveCoverThumbnailAction> apply(@NotNull LoadReaderPageThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SaveCoverThumbnailAction(new SaveCoverThumbnailArgs(this.f54544e.getUniqueId(), this.f54544e, it2.getBitmap())).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.handler.DocManagerHandler$l */
    /* loaded from: classes9.dex */
    public static final class C11237l<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CreateVirtualDocRequest f54545e;

        public C11237l(CreateVirtualDocRequest createVirtualDocRequest) {
            this.f54545e = createVirtualDocRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateVirtualDocRequest apply(@NotNull SaveCoverThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f54545e;
        }
    }

    static {
        Lazy<String[]> lazy;
        Lazy<String[]> lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<String[]>() { // from class: com.onyx.galaxy.note.category.handler.DocManagerHandler$Companion$importDocumentMimeTypes$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String[] invoke() {
                HashSet hashSet;
                hashSet = ArraysKt___ArraysKt.toHashSet(DocManagerHandler.INSTANCE.getDocumentMimeTypes());
                hashSet.add("application/octet-stream");
                return (String[]) hashSet.toArray(new String[0]);
            }
        });
        f54529c = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<String[]>() { // from class: com.onyx.galaxy.note.category.handler.DocManagerHandler$Companion$documentMimeTypes$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String[] invoke() {
                Sequence asSequence;
                Sequence map;
                Sequence filter;
                Set set;
                asSequence = CollectionsKt___CollectionsKt.asSequence(DocManagerHandler.INSTANCE.getDocumentExtensions());
                map = SequencesKt___SequencesKt.map(asSequence, new Function1<String, String>() { // from class: com.onyx.galaxy.note.category.handler.DocManagerHandler$Companion$documentMimeTypes$2.1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final String invoke(@NotNull String it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return StringKt.safelyGetStr(FileExtensionUtils.INSTANCE.mimeType(it2));
                    }
                });
                filter = SequencesKt___SequencesKt.filter(map, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.category.handler.DocManagerHandler$Companion$documentMimeTypes$2.2
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull String it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(StringKt.isNotBlank(it2));
                    }
                });
                set = SequencesKt___SequencesKt.toSet(filter);
                return (String[]) set.toArray(new String[0]);
            }
        });
        f54530d = lazy2;
    }

    public /* synthetic */ DocManagerHandler(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: c */
    public static final void m43015c(List it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.open_file_not_supported_format, false, 2, (Object) null);
    }

    /* renamed from: b */
    public final void m43016b(SyncNoteModel model) {
        NoteScribbleActivity.INSTANCE.openNewTask(model);
    }

    public final void createNoteByTemplate(@NotNull NoteCreateInfo noteCreateInfo) {
        Intrinsics.checkNotNullParameter(noteCreateInfo, "noteCreateInfo");
        Observable map = Observable.just(this).flatMap(new C11226a()).flatMap(new C11227b(noteCreateInfo)).doOnNext(new C11228c()).flatMap(new C11229d()).doOnNext(new C11230e()).map(C11231f.f54539e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        RxjavaKt.flatMapIf(map, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.category.handler.DocManagerHandler$createNoteByTemplate$7
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(StringKt.isNotBlank(it2));
            }
        }, new Function1<String, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.category.handler.DocManagerHandler$createNoteByTemplate$8
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull String it2) {
                List listOf;
                Intrinsics.checkNotNullParameter(it2, "it");
                listOf = CollectionsKt__CollectionsJVMKt.listOf(it2);
                return new UpdateFolderCoverAction(listOf).build();
            }
        }).flatMap(new C11232g()).subscribe();
    }

    /* renamed from: d */
    public final void m43017d(SyncNoteModel noteModel) {
        Debug.INSTANCE.m32035d(DocManagerHandler.class, "notify reload view model data", new Object[0]);
        EditorBundleKt.postEvent(this.docManagerBundle, new NCreateNoteModelResultEvent(noteModel));
        if (AccountDataBundle.INSTANCE.isVipRole()) {
            RxBaseAction.execute$default(new FetchAccountQuotasAction(), null, null, null, 7, null);
        }
    }

    public final void destroy() {
        Debug.INSTANCE.m32059w(DocManagerHandler.class, "destroy", new Object[0]);
        EditorBundleKt.unregister(this.docManagerBundle, this);
        this.docManagerBundle.destroy();
    }

    /* renamed from: e */
    public final void m43018e(List<NoteImportArgs> importArgs) {
        Debug.INSTANCE.m32035d(DocManagerHandler.class, "importDocument args size:" + CollectionKt.getSize(importArgs), new Object[0]);
        if (importArgs.isEmpty()) {
            return;
        }
        EditorBundleKt.postEvent(this.docManagerBundle, new ImportDocumentsEvent(importArgs));
    }

    /* renamed from: f */
    public final Observable<CreateVirtualDocRequest> m43019f(CreateVirtualDocRequest createRequest) {
        SyncNoteModel noteModel = createRequest.getNoteModel();
        createRequest.getArgs().setClearBitmap(true);
        Observable<CreateVirtualDocRequest> map = new LoadReaderPageThumbnailAction(this.docManagerBundle, createRequest.getArgs()).build().flatMap(new C11236k(noteModel)).map(new C11237l(createRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final EditorBundle getDocManagerBundle() {
        return this.docManagerBundle;
    }

    public final void importDocuments(@NotNull List<NoteImportArgs> importArgs) {
        int collectionSizeOrDefault;
        List<? extends Uri> list;
        Intrinsics.checkNotNullParameter(importArgs, "importArgs");
        List<NoteImportArgs> list2 = importArgs;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteImportArgs) it2.next()).getImportFileUri());
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        Observable<R> map = INSTANCE.filterUri(list).map(new C11233h(importArgs));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        RxjavaKt.doOnNextIf(map, new Function1<List<? extends NoteImportArgs>, Boolean>() { // from class: com.onyx.galaxy.note.category.handler.DocManagerHandler$importDocuments$2
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<NoteImportArgs> it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return Boolean.valueOf(it3.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends NoteImportArgs> list3) {
                return invoke2((List<NoteImportArgs>) list3);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.r7f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DocManagerHandler.m43015c((List) obj);
            }
        }).filter(C11234i.f54542e).doOnNext(new C11235j()).subscribe();
    }

    public final void importImage(@NotNull ImportImageArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (args.getUriList().isEmpty()) {
            Debug.INSTANCE.m32035d(DocManagerHandler.class, "importImage args is empty", new Object[0]);
        } else {
            EditorBundleKt.postEvent(this.docManagerBundle, new ImportImageEvent(args));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportDocumentsResultEvent(@NotNull ImportDocumentsResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        SyncNoteModel noteModel = event.getNoteModel();
        if (event.getSuccess() && noteModel != null) {
            if (event.getTotal() == 1 && event.getImportNoteCount() <= 1) {
                m43016b(noteModel);
            }
            m43017d(noteModel);
            return;
        }
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "import fail, path = " + event.getPath(), new Object[0]);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportImageResultEvent(@NotNull ImportImageResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        SyncNoteModel noteModel = event.getNoteModel();
        m43016b(noteModel);
        m43017d(noteModel);
    }

    public DocManagerHandler() {
        EditorBundle createInstance = EditorBundle.INSTANCE.createInstance();
        this.docManagerBundle = createInstance;
        Debug.INSTANCE.m32059w(DocManagerHandler.class, "init", new Object[0]);
        EditorBundleKt.register(createInstance, this);
    }
}
