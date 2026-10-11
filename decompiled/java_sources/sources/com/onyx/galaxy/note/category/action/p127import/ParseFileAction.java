package com.onyx.galaxy.note.category.action.p127import;

import android.content.Context;
import android.net.Uri;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.filepicker.DocumentType;
import com.onyx.android.sdk.filepicker.QueryInfoFromUriAction;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction;
import com.onyx.android.sdk.universal.docmanager.action.ImportImageAction;
import com.onyx.android.sdk.universal.docmanager.action.name.NoteNameCreateAction;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageArgs;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.p127import.ParseFileAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.handler.DocManagerHandler;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import sun.awt.AppContext;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00030\u0014¢\u0006\u0004\b1\u00102J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u001e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u00052\u0006\u0010\u000f\u001a\u00020\rH\u0002J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0002J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0002J\u0014\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0005H\u0002J\u001a\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u00052\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u000e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014J\b\u0010\u001b\u001a\u00020\u0002H\u0016R\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR(\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00030\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0016\u0010)\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u001c\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00030*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010!R\u001d\u00100\u001a\b\u0012\u0004\u0012\u00020-0*8\u0006¢\u0006\f\n\u0004\b.\u0010!\u001a\u0004\b/\u0010#¨\u00063"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Landroid/net/Uri;", "uri", "Lio/reactivex/rxjava3/core/Observable;", "t", "z", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, SardineUtil.DEFAULT_NAMESPACE_PREFIX, FirebaseAnalytics.Param.SUCCESS, "F", "w", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;", "s", "args", "Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;", "x", "A", "u", "", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "r", "importArgs", "v", "y", BaiduYunConstant.CREATE, "isDisposed", "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "activityContext", C6999h.f39688c, "Ljava/util/List;", "getUriList", "()Ljava/util/List;", "setUriList", "(Ljava/util/List;)V", "uriList", "i", Constants.HASIDCALL_INDEX_SIG, AppContext.DISPOSED_PROPERTY_NAME, "", "j", "documentList", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C4921e.f26537n, "getImportModels", "importModels", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nParseFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseFileAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,213:1\n1#2:214\n1549#3:215\n1620#3,3:216\n1549#3:219\n1620#3,3:220\n*S KotlinDebug\n*F\n+ 1 ParseFileAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseFileAction\n*L\n162#1:215\n162#1:216,3\n185#1:219\n185#1:220,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ParseFileAction extends RxBaseNoteAppAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<? extends Uri> uriList;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean disposed;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<Uri> documentList;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> importModels;

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$a */
    /* loaded from: classes9.dex */
    public static final class C11067a<T, R> implements Function {
        public C11067a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Uri it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseFileAction.this.m42729t(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$b */
    /* loaded from: classes9.dex */
    public static final class C11068b<T, R> implements Function {
        public C11068b() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42737a(boolean z) {
            return ParseFileAction.this.m42723A();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42737a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$c */
    /* loaded from: classes9.dex */
    public static final class C11069c<T, R> implements Function {

        /* renamed from: e */
        public static final C11069c<T, R> f54167e = new C11069c<>();

        @NotNull
        /* renamed from: a */
        public final Boolean m42738a(boolean z) {
            return Boolean.TRUE;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42738a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$d */
    /* loaded from: classes9.dex */
    public static final class C11070d<T, R> implements Function {
        public C11070d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CheckPdfPasswordAction> apply(@NotNull QueryInfoFromUriAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CheckPdfPasswordAction(DocCollectionBundle.INSTANCE.docManagerBundle(), it2.getResult()).setActivityContext(ParseFileAction.this.activityContext).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$e */
    /* loaded from: classes9.dex */
    public static final class C11071e<T, R> implements Function {

        /* renamed from: e */
        public static final C11071e<T, R> f54169e = new C11071e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteImportArgs> apply(@NotNull CheckPdfPasswordAction it2) {
            List<String> emptyList;
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteImportArgs.Companion companion = NoteImportArgs.INSTANCE;
            List<DocumentFileEntry> resultList = it2.getResultList();
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return companion.createFromDocEntries(resultList, null, emptyList);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$f */
    /* loaded from: classes9.dex */
    public static final class C11072f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Uri f54170e;

        public C11072f(Uri uri) {
            this.f54170e = uri;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportImageArgs apply(@NotNull String it2) {
            List mutableListOf;
            List emptyList;
            Intrinsics.checkNotNullParameter(it2, "it");
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(this.f54170e);
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return new ImportImageArgs(it2, mutableListOf, null, emptyList, null, 16, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$g */
    /* loaded from: classes9.dex */
    public static final class C11073g<T, R> implements Function {
        public C11073g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<NoteImportArgs> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseFileAction.this.m42731v(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$h */
    /* loaded from: classes9.dex */
    public static final class C11074h<T, R> implements Function {

        /* renamed from: e */
        public static final C11074h<T, R> f54172e = new C11074h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    @SourceDebugExtension({"SMAP\nParseFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseFileAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseFileAction$importDocumentObservable$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,213:1\n766#2:214\n857#2,2:215\n*S KotlinDebug\n*F\n+ 1 ParseFileAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseFileAction$importDocumentObservable$1\n*L\n188#1:214\n188#1:215,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$i */
    /* loaded from: classes9.dex */
    public static final class C11075i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<NoteImportArgs> f54173e;

        public C11075i(List<NoteImportArgs> list) {
            this.f54173e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteImportArgs> apply(@NotNull List<? extends Uri> uriList) {
            Intrinsics.checkNotNullParameter(uriList, "uriList");
            List<NoteImportArgs> list = this.f54173e;
            ArrayList arrayList = new ArrayList();
            for (T t : list) {
                if (uriList.contains(((NoteImportArgs) t).getImportFileUri())) {
                    arrayList.add(t);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$j */
    /* loaded from: classes9.dex */
    public static final class C11076j<T, R> implements Function {

        /* renamed from: e */
        public static final C11076j<T, R> f54174e = new C11076j<>();

        /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$j$a */
        /* loaded from: classes9.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public static final a<T, R> f54175e = new a<>();

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final List<SyncNoteModel> apply(@NotNull ImportDocumentsAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getNoteModels();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<SyncNoteModel>> apply(@NotNull List<NoteImportArgs> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ImportDocumentsAction(DocCollectionBundle.INSTANCE.docManagerBundle(), it2).disablePostEvent().build().map(a.f54175e);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$k */
    /* loaded from: classes9.dex */
    public static final class C11077k<T> implements Consumer {
        public C11077k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ParseFileAction.this.getImportModels().addAll(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$l */
    /* loaded from: classes9.dex */
    public static final class C11078l<T, R> implements Function {
        public C11078l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ImportImageAction> apply(@NotNull ImportImageArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseFileAction.this.m42733x(it2);
        }
    }

    @SourceDebugExtension({"SMAP\nParseFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseFileAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseFileAction$importImage$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1#2:214\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$m */
    /* loaded from: classes9.dex */
    public static final class C11079m<T> implements Consumer {
        public C11079m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportImageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SyncNoteModel importModel = it2.getImportModel();
            if (importModel != null) {
                ParseFileAction.this.getImportModels().add(importModel);
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$n */
    /* loaded from: classes9.dex */
    public static final class C11080n<T, R> implements Function {

        /* renamed from: e */
        public static final C11080n<T, R> f54179e = new C11080n<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ImportImageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$o */
    /* loaded from: classes9.dex */
    public static final class C11081o<T, R> implements Function {
        public C11081o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Uri it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseFileAction.this.m42724C(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$p */
    /* loaded from: classes9.dex */
    public static final class C11082p<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Uri f54182f;

        public C11082p(Uri uri) {
            this.f54182f = uri;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42752a(boolean z) {
            return ParseFileAction.this.m42726F(z, this.f54182f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42752a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseFileAction$q */
    /* loaded from: classes9.dex */
    public static final class C11083q<T, R> implements Function {

        /* renamed from: e */
        public static final C11083q<T, R> f54184e = new C11083q<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(CollectionKt.isNonBlank(it2));
        }
    }

    public ParseFileAction(@NotNull Context activityContext, @NotNull List<? extends Uri> uriList) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        this.activityContext = activityContext;
        this.uriList = uriList;
        this.documentList = new ArrayList();
        this.importModels = new ArrayList();
        setActivityContext(activityContext);
    }

    /* renamed from: B */
    public static final void m42715B(boolean z) {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.open_file_not_supported_format, false, 2, (Object) null);
    }

    /* renamed from: E */
    public static final void m42716E(ParseFileAction this$0, List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.importModels.addAll(it2);
    }

    /* renamed from: p */
    public static final void m42721p(ParseFileAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.disposed = true;
    }

    /* renamed from: q */
    public static final void m42722q(ParseFileAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.disposed = true;
    }

    /* renamed from: A */
    public final Observable<Boolean> m42723A() {
        if (this.documentList.isEmpty()) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<Boolean> observeOn = m42730u().observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return RxjavaKt.takeLastOne(RxjavaKt.doOnNextIfFalse(observeOn, new Consumer() { // from class: com.sunia.HTREnginev2.gwk
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ParseFileAction.m42715B(((Boolean) obj).booleanValue());
            }
        }));
    }

    /* renamed from: C */
    public final Observable<Boolean> m42724C(Uri uri) {
        Object obj;
        Iterator<T> it2 = DocumentType.INSTANCE.partDocumentExtension().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (FileExtensionUtils.INSTANCE.extensions(UriUtils.INSTANCE.getMimeType(uri)).contains((String) obj)) {
                break;
            }
        }
        if (!(obj != null) && ZipUtils.INSTANCE.isZipFile(uri)) {
            return m42725D(uri);
        }
        Observable<Boolean> just = Observable.just(Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: D */
    public final Observable<Boolean> m42725D(final Uri uri) {
        Observable map = RxjavaKt.doOnNextIf(new ParseNoteFileIntentAction(uri) { // from class: com.onyx.galaxy.note.category.action.import.ParseFileAction$parseNoteFileIntentAction$1
            {
                String str = null;
                List list = null;
                int i = 6;
                DefaultConstructorMarker defaultConstructorMarker = null;
            }

            @Override // com.onyx.galaxy.note.category.action.p127import.ParseNoteFileIntentAction
            public void onDispose() {
                this.disposed = true;
            }
        }.setActivityContext(this.activityContext).build(), new Function1<List<? extends SyncNoteModel>, Boolean>() { // from class: com.onyx.galaxy.note.category.action.import.ParseFileAction$parseNoteFileIntentAction$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends SyncNoteModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(CollectionKt.isNonBlank(it2));
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.hwk
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ParseFileAction.m42716E(ParseFileAction.this, (List) obj);
            }
        }).map(C11083q.f54184e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, Boolean.FALSE);
    }

    /* renamed from: F */
    public final Observable<Boolean> m42726F(boolean success, Uri uri) {
        if (success) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (m42734y(uri)) {
            return m42732w(uri);
        }
        this.documentList.add(uri);
        Observable<Boolean> just2 = Observable.just(Boolean.TRUE);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        if (this.uriList.isEmpty()) {
            Observable<Boolean> doFinally = Observable.just(Boolean.TRUE).doFinally(new Action() { // from class: com.sunia.HTREnginev2.iwk
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    ParseFileAction.m42721p(ParseFileAction.this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
            return doFinally;
        }
        Observable concatMap = Observable.fromIterable(this.uriList).concatMap(new C11067a());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<Boolean> doFinally2 = RxjavaKt.takeLastOne(concatMap).flatMap(new C11068b()).map(C11069c.f54167e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.jwk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ParseFileAction.m42722q(ParseFileAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally2, "doFinally(...)");
        return doFinally2;
    }

    @NotNull
    public final List<SyncNoteModel> getImportModels() {
        return this.importModels;
    }

    @NotNull
    public final List<Uri> getUriList() {
        return this.uriList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return super.isDisposed() || this.disposed;
    }

    /* renamed from: r */
    public final Observable<List<NoteImportArgs>> m42727r() {
        int collectionSizeOrDefault;
        List<Uri> list = this.documentList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Uri uri : list) {
            arrayList.add(new Pair(uri, UriUtils.INSTANCE.getMimeType(uri)));
        }
        Observable<List<NoteImportArgs>> map = new QueryInfoFromUriAction(arrayList).build().flatMap(new C11070d()).map(C11071e.f54169e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<ImportImageArgs> m42728s(Uri uri) {
        Observable map = new NoteNameCreateAction(1, ResManager.INSTANCE.getStringSafely(C10651R.string.unnamed_note), 0, null, 12, null).build().map(new C11072f(uri));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setUriList(@NotNull List<? extends Uri> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.uriList = list;
    }

    /* renamed from: t */
    public final Observable<Boolean> m42729t(Uri uri) {
        return m42735z(uri);
    }

    /* renamed from: u */
    public final Observable<Boolean> m42730u() {
        Observable<Boolean> map = m42727r().flatMap(new C11073g()).map(C11074h.f54172e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: v */
    public final Observable<?> m42731v(List<NoteImportArgs> importArgs) {
        int collectionSizeOrDefault;
        List<? extends Uri> list;
        List<NoteImportArgs> list2 = importArgs;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteImportArgs) it2.next()).getImportFileUri());
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        Observable<?> doOnNext = DocManagerHandler.INSTANCE.filterUri(list).map(new C11075i(importArgs)).flatMap(C11076j.f54174e).doOnNext(new C11077k());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: w */
    public final Observable<Boolean> m42732w(Uri uri) {
        Observable<Boolean> map = m42728s(uri).flatMap(new C11078l()).doOnNext(new C11079m()).map(C11080n.f54179e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: x */
    public final Observable<ImportImageAction> m42733x(ImportImageArgs args) {
        return new ImportImageAction(DocCollectionBundle.INSTANCE.docManagerBundle(), args).disablePostEvent().build();
    }

    /* renamed from: y */
    public final boolean m42734y(Uri uri) {
        FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
        UriUtils uriUtils = UriUtils.INSTANCE;
        if (fileExtensionUtils.isImageType(uriUtils.getMimeType(uri))) {
            return true;
        }
        if (!fileExtensionUtils.isAllType(uriUtils.getMimeType(uri))) {
            return false;
        }
        String name = FilenameUtils.getName(uri.toString());
        if (name == null) {
            name = "";
        }
        return fileExtensionUtils.isImageFile(name);
    }

    /* renamed from: z */
    public final Observable<Boolean> m42735z(Uri uri) {
        String mimeType = UriUtils.INSTANCE.getMimeType(uri);
        Debug.INSTANCE.m32052i(ParseFileAction.class, "parseFile type:" + mimeType + ",data:" + uri, new Object[0]);
        Observable<Boolean> flatMap = Observable.just(uri).observeOn(Schedulers.m61350io()).flatMap(new C11081o()).observeOn(getMainUIScheduler()).flatMap(new C11082p(uri));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
