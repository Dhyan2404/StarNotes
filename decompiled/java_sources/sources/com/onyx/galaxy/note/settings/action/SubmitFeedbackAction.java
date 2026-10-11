package com.onyx.galaxy.note.settings.action;

import android.content.Context;
import android.net.Uri;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.action.UriCopyFileAction;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.oss.OssConfig;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import com.onyx.galaxy.note.common.action.UploadToOssAction;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.common.crash.CrashHandler;
import com.onyx.galaxy.note.common.crash.XCrashHandler;
import com.onyx.galaxy.note.common.request.GetLogEncryptionKeyRequest;
import com.onyx.galaxy.note.settings.action.SubmitFeedbackAction;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.data.SubmitFeedbackContext;
import com.onyx.galaxy.note.settings.request.SubmitFeedbackRequest;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018\u0000 42\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00014B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e¢\u0006\u0004\b2\u00103J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0000H\u0002J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u0003H\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0003H\u0002J\u0014\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eH\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\nH\u0002J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u0018\u001a\u00020\u0005H\u0002J\b\u0010\u0019\u001a\u00020\u0005H\u0002R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R'\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00100\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u0010.\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010+R\u0016\u00101\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b/\u00100¨\u00065"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "A", "", "", "B", "", "z", "", "Landroid/net/Uri;", "Ljava/io/File;", "s", "t", "x", "Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;", "w", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "u", "r", "y", "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;", C6999h.f39688c, "Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;", "submitFeedbackContext", "i", "Lkotlin/Lazy;", "v", "()Ljava/util/Map;", "fileByUriMap", "j", "Ljava/util/List;", "ossUploadFiles", C4921e.f26537n, "Ljava/io/File;", "zipFile", "l", "tempRecentLogcatFile", "m", "Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;", "keyRequest", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSubmitFeedbackAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubmitFeedbackAction.kt\ncom/onyx/galaxy/note/settings/action/SubmitFeedbackAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,199:1\n1855#2,2:200\n1855#2,2:202\n1855#2,2:204\n37#3,2:206\n526#4:208\n511#4,6:209\n526#4:216\n511#4,6:217\n1#5:215\n*S KotlinDebug\n*F\n+ 1 SubmitFeedbackAction.kt\ncom/onyx/galaxy/note/settings/action/SubmitFeedbackAction\n*L\n89#1:200,2\n95#1:202,2\n124#1:204,2\n142#1:206,2\n190#1:208\n190#1:209,6\n194#1:216\n194#1:217,6\n*E\n"})
/* loaded from: classes9.dex */
public final class SubmitFeedbackAction extends RxBaseNoteAppAction<Boolean> {

    /* renamed from: n */
    @NotNull
    public static final String f61460n = "feedback_upload_dir";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final SubmitFeedbackContext submitFeedbackContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy fileByUriMap;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<File> ossUploadFiles;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public File zipFile;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public File tempRecentLogcatFile;

    /* renamed from: m, reason: from kotlin metadata */
    public GetLogEncryptionKeyRequest keyRequest;

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$a */
    /* loaded from: classes9.dex */
    public static final class C12659a<T> implements Consumer {
        public C12659a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull File it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SubmitFeedbackAction.this.m50715r();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$b */
    /* loaded from: classes9.dex */
    public static final class C12660b<T, R> implements Function {
        public C12660b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<String>> apply(@NotNull File it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SubmitFeedbackAction.this.m50712B();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$c */
    /* loaded from: classes9.dex */
    public static final class C12661c<T> implements Consumer {
        public C12661c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> urls) {
            Object first;
            Intrinsics.checkNotNullParameter(urls, "urls");
            SubmitFeedbackContext submitFeedbackContext = SubmitFeedbackAction.this.submitFeedbackContext;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) urls);
            submitFeedbackContext.setZipFileUrl((String) first);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$d */
    /* loaded from: classes9.dex */
    public static final class C12662d<T, R> implements Function {
        public C12662d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SubmitFeedbackAction apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SubmitFeedbackAction.this.m50711A();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$e */
    /* loaded from: classes9.dex */
    public static final class C12663e<T> implements Consumer {
        public C12663e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SubmitFeedbackAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SubmitFeedbackAction.this.m50714o();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$f */
    /* loaded from: classes9.dex */
    public static final class C12664f<T, R> implements Function {

        /* renamed from: e */
        public static final C12664f<T, R> f61473e = new C12664f<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull SubmitFeedbackAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$g */
    /* loaded from: classes9.dex */
    public static final class C12665g<T, R> implements Function {
        public C12665g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClusterInfo> apply(@NotNull SubmitFeedbackAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SubmitFeedbackAction.this.ensureClusterInfo();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$h */
    /* loaded from: classes9.dex */
    public static final class C12666h<T, R> implements Function {
        public C12666h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GetLogEncryptionKeyRequest apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SubmitFeedbackAction.this.m50720w();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$i */
    /* loaded from: classes9.dex */
    public static final class C12667i<T> implements Consumer {
        public C12667i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetLogEncryptionKeyRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SubmitFeedbackAction.this.submitFeedbackContext.setKey(it2.getId());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$j */
    /* loaded from: classes9.dex */
    public static final class C12668j<T, R> implements Function {
        public C12668j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Integer> apply(@NotNull GetLogEncryptionKeyRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SubmitFeedbackAction.this.m50723z();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$k */
    /* loaded from: classes9.dex */
    public static final class C12669k<T, R> implements Function {

        /* renamed from: e */
        public static final C12669k<T, R> f61478e = new C12669k<>();

        @NotNull
        /* renamed from: a */
        public final File m50734a(int i) {
            return LogcatGenerator.INSTANCE.generateLogcatFile$note_overseasRelease(ResManager.INSTANCE.getAppContext());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m50734a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$l */
    /* loaded from: classes9.dex */
    public static final class C12670l<T> implements Consumer {
        public C12670l() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull File it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SubmitFeedbackAction.this.tempRecentLogcatFile = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$m */
    /* loaded from: classes9.dex */
    public static final class C12671m<T, R> implements Function {
        public C12671m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final File apply(@NotNull File it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SubmitFeedbackAction.this.m50717t();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$n */
    /* loaded from: classes9.dex */
    public static final class C12672n<T> implements Consumer {
        public C12672n() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull File it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SubmitFeedbackAction.this.zipFile = it2;
        }
    }

    public SubmitFeedbackAction(@NotNull Context context, @NotNull SubmitFeedbackContext submitFeedbackContext) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(submitFeedbackContext, "submitFeedbackContext");
        this.context = context;
        this.submitFeedbackContext = submitFeedbackContext;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Map<Uri, File>>() { // from class: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction$fileByUriMap$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Map<Uri, File> invoke() {
                Map<Uri, File> m50716s;
                m50716s = SubmitFeedbackAction.this.m50716s();
                return m50716s;
            }
        });
        this.fileByUriMap = lazy;
        this.ossUploadFiles = new ArrayList();
    }

    /* renamed from: p */
    public static final void m50709p(SubmitFeedbackAction this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50722y();
    }

    /* renamed from: q */
    public static final void m50710q(SubmitFeedbackAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50713n();
    }

    /* renamed from: A */
    public final SubmitFeedbackAction m50711A() throws Exception {
        new SubmitFeedbackRequest(this.submitFeedbackContext).m72424execute();
        return this;
    }

    /* renamed from: B */
    public final Observable<List<String>> m50712B() {
        List mutableListOf;
        Context context = this.context;
        RxOSSManager m50718u = m50718u();
        File file = this.zipFile;
        Intrinsics.checkNotNull(file);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(file);
        return new UploadToOssAction(context, m50718u, mutableListOf).build();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable observeOn = Observable.just(this).flatMap(new C12665g()).observeOn(getObserveOn()).map(new C12666h()).doOnNext(new C12667i()).concatMap(new C12668j()).takeLast(1).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<Boolean> map = RxjavaKt.doOnNextSafety(observeOn, new Consumer() { // from class: com.sunia.HTREnginev2.d5n
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SubmitFeedbackAction.m50709p(SubmitFeedbackAction.this, ((Integer) obj).intValue());
            }
        }).map(C12669k.f61478e).doOnNext(new C12670l()).map(new C12671m()).doOnNext(new C12672n()).doOnNext(new C12659a()).flatMap(new C12660b()).observeOn(getObserveOn()).doOnNext(new C12661c()).map(new C12662d()).doOnNext(new C12663e()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.e5n
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SubmitFeedbackAction.m50710q(SubmitFeedbackAction.this);
            }
        }).observeOn(getMainUIScheduler()).map(C12664f.f61473e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final void m50713n() {
        FileUtils.deleteQuietly(this.zipFile);
        FileUtils.deleteQuietly(this.tempRecentLogcatFile);
        Iterator<T> it2 = m50719v().values().iterator();
        while (it2.hasNext()) {
            FileUtils.deleteQuietly((File) it2.next());
        }
    }

    /* renamed from: o */
    public final void m50714o() {
        Iterator<T> it2 = this.ossUploadFiles.iterator();
        while (it2.hasNext()) {
            FileUtils.deleteQuietly((File) it2.next());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0022 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m50715r() {
        /*
            r6 = this;
            com.onyx.galaxy.note.common.request.GetLogEncryptionKeyRequest r0 = r6.keyRequest
            r1 = 0
            if (r0 != 0) goto Lb
            java.lang.String r0 = "keyRequest"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            r0 = r1
        Lb:
            java.lang.String r0 = r0.getEncryptionKey()
            java.io.File r2 = r6.zipFile
            if (r2 == 0) goto L62
            if (r0 == 0) goto L1e
            boolean r2 = kotlin.text.StringsKt.isBlank(r0)
            if (r2 == 0) goto L1c
            goto L1e
        L1c:
            r2 = 0
            goto L1f
        L1e:
            r2 = 1
        L1f:
            if (r2 == 0) goto L22
            goto L62
        L22:
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L5d
            android.content.Context r3 = r6.context     // Catch: java.lang.Throwable -> L5d
            java.io.File r3 = r3.getCacheDir()     // Catch: java.lang.Throwable -> L5d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5d
            r4.<init>()     // Catch: java.lang.Throwable -> L5d
            java.io.File r5 = r6.zipFile     // Catch: java.lang.Throwable -> L5d
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)     // Catch: java.lang.Throwable -> L5d
            java.lang.String r5 = r5.getName()     // Catch: java.lang.Throwable -> L5d
            r4.append(r5)     // Catch: java.lang.Throwable -> L5d
            java.lang.String r5 = ".encryption"
            r4.append(r5)     // Catch: java.lang.Throwable -> L5d
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L5d
            r2.<init>(r3, r4)     // Catch: java.lang.Throwable -> L5d
            com.onyx.galaxy.note.settings.utils.FeedbackEncryptor r1 = com.onyx.galaxy.note.settings.utils.FeedbackEncryptor.INSTANCE     // Catch: java.lang.Throwable -> L5a
            java.io.File r3 = r6.zipFile     // Catch: java.lang.Throwable -> L5a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)     // Catch: java.lang.Throwable -> L5a
            r1.encryptFile(r3, r2, r0)     // Catch: java.lang.Throwable -> L5a
            java.io.File r6 = r6.zipFile     // Catch: java.lang.Throwable -> L5a
            onyx.org.apache.commons.io.FileUtils.copyFile(r2, r6)     // Catch: java.lang.Throwable -> L5a
            onyx.org.apache.commons.io.FileUtils.deleteQuietly(r2)
            return
        L5a:
            r6 = move-exception
            r1 = r2
            goto L5e
        L5d:
            r6 = move-exception
        L5e:
            onyx.org.apache.commons.io.FileUtils.deleteQuietly(r1)
            throw r6
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.settings.action.SubmitFeedbackAction.m50715r():void");
    }

    /* renamed from: s */
    public final Map<Uri, File> m50716s() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        File externalFilesDir = this.context.getExternalFilesDir(f61460n);
        Intrinsics.checkNotNull(externalFilesDir);
        com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.mkdirs(externalFilesDir);
        for (Uri uri : this.submitFeedbackContext.getPictures()) {
            linkedHashMap.put(uri, new File(externalFilesDir, UriKt.getFileName(uri, this.context)));
        }
        return linkedHashMap;
    }

    /* renamed from: t */
    public final File m50717t() {
        File externalFilesDir = this.context.getExternalFilesDir(f61460n);
        Intrinsics.checkNotNull(externalFilesDir);
        File file = new File(externalFilesDir, m50721x());
        File crashDir = CrashHandler.INSTANCE.getCrashDir();
        File file2 = new File(LogUtils.getConfig().getDir());
        File xCrashDirFile = XCrashHandler.INSTANCE.getXCrashDirFile();
        List<File> list = this.ossUploadFiles;
        File[] listFiles = crashDir.listFiles();
        CollectionKt.safeAddAll(list, listFiles != null ? ArraysKt___ArraysKt.toList(listFiles) : null);
        List<File> list2 = this.ossUploadFiles;
        File[] listFiles2 = file2.listFiles();
        CollectionKt.safeAddAll(list2, listFiles2 != null ? ArraysKt___ArraysKt.toList(listFiles2) : null);
        List<File> list3 = this.ossUploadFiles;
        File[] listFiles3 = xCrashDirFile.listFiles();
        CollectionKt.safeAddAll(list3, listFiles3 != null ? ArraysKt___ArraysKt.toList(listFiles3) : null);
        this.ossUploadFiles.addAll(m50719v().values());
        if (!ZipUtils.INSTANCE.compress((File[]) this.ossUploadFiles.toArray(new File[0]), file)) {
            LogUtils.eTag(SubmitFeedbackAction.class.getSimpleName(), "generateLogAndCrashFiles failed");
        }
        return file;
    }

    /* renamed from: u */
    public final RxOSSManager m50718u() {
        OssConfig.Companion companion = OssConfig.INSTANCE;
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        OssConfig feedbackOssConfig = companion.feedbackOssConfig(clusterInfo);
        feedbackOssConfig.setToken(AccountDataBundle.INSTANCE.getAccountToken());
        return new RxOSSManager(feedbackOssConfig);
    }

    /* renamed from: v */
    public final Map<Uri, File> m50719v() {
        return (Map) this.fileByUriMap.getValue();
    }

    /* renamed from: w */
    public final GetLogEncryptionKeyRequest m50720w() {
        GetLogEncryptionKeyRequest getLogEncryptionKeyRequest = new GetLogEncryptionKeyRequest();
        this.keyRequest = getLogEncryptionKeyRequest;
        getLogEncryptionKeyRequest.setClusterInfo(getClusterInfo());
        GetLogEncryptionKeyRequest getLogEncryptionKeyRequest2 = this.keyRequest;
        if (getLogEncryptionKeyRequest2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("keyRequest");
            getLogEncryptionKeyRequest2 = null;
        }
        getLogEncryptionKeyRequest2.m72420execute();
        GetLogEncryptionKeyRequest getLogEncryptionKeyRequest3 = this.keyRequest;
        if (getLogEncryptionKeyRequest3 != null) {
            return getLogEncryptionKeyRequest3;
        }
        Intrinsics.throwUninitializedPropertyAccessException("keyRequest");
        return null;
    }

    /* renamed from: x */
    public final String m50721x() {
        return DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HHMMSS_3().format(new Date()) + ShapeDocumentUtils.SHAPE_FILE_END;
    }

    /* renamed from: y */
    public final void m50722y() {
        Map<String, Integer> stylusQuicklyClickMap = NoteConfigManager.INSTANCE.getStylusQuicklyClickMap();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<String, Integer>> it2 = stylusQuicklyClickMap.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<String, Integer> next = it2.next();
            if (next.getValue().intValue() != -1) {
                linkedHashMap.put(next.getKey(), next.getValue());
            }
        }
        if (!(!linkedHashMap.isEmpty())) {
            linkedHashMap = null;
        }
        if (linkedHashMap != null) {
            Debug.INSTANCE.m32053i("user stylus quickly click config:" + linkedHashMap);
        }
        Map<String, Integer> gestureQuicklyClickMap = NoteConfigManager.INSTANCE.getGestureQuicklyClickMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, Integer> entry : gestureQuicklyClickMap.entrySet()) {
            if (entry.getValue().intValue() != -1) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap3 = linkedHashMap2.isEmpty() ^ true ? linkedHashMap2 : null;
        if (linkedHashMap3 != null) {
            Debug.INSTANCE.m32053i("user gesture quickly click config:" + linkedHashMap3);
        }
        LogcatGenerator.INSTANCE.logDeviceUserInfo();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [io.reactivex.rxjava3.observables.ConnectableObservable] */
    /* renamed from: z */
    public final Observable<Integer> m50723z() {
        if (m50719v().isEmpty()) {
            Observable<Integer> just = Observable.just(0);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<Integer> refCount = new UriCopyFileAction(m50719v(), this.context).create().refCount();
        Intrinsics.checkNotNullExpressionValue(refCount, "refCount(...)");
        return refCount;
    }
}
