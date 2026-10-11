package com.onyx.android.sdk.universal.editor.action.search;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.DelegatedValueProvider;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.OptionsRepo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.fts.bean.RecentDocInfo;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction;
import com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0007\u0018\u0000 $2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001$B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\f\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u0014\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0014\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0013\u001a\u00020\u0011H\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001c\u0010!\u001a\b\u0012\u0004\u0012\u00020\n0\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "v", "w", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "t", "", EditorConstants.ARGS_DOC_ID, "u", "", "excludeRecentPage", "", "r", "", "x", "p", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "i", "Lkotlin/Lazy;", "s", "()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "userNoteProvider", "", "j", "Ljava/util/List;", "unIndexedDocIds", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBuildTextIndexInBackgroundAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildTextIndexInBackgroundAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,179:1\n288#2,2:180\n288#2,2:182\n1549#2:184\n1620#2,3:185\n766#2:193\n857#2:194\n858#2:196\n1549#2:197\n1620#2,3:198\n41#3,5:188\n97#3:201\n97#3:202\n637#4:195\n*S KotlinDebug\n*F\n+ 1 BuildTextIndexInBackgroundAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction\n*L\n77#1:180,2\n102#1:182,2\n109#1:184\n109#1:185,3\n114#1:193\n114#1:194\n114#1:196\n120#1:197\n120#1:198,3\n113#1:188,5\n144#1:201\n148#1:202\n114#1:195\n*E\n"})
/* loaded from: classes8.dex */
public final class BuildTextIndexInBackgroundAction extends RxBaseAppAction<BuildTextIndexInBackgroundAction> {
    public static final long FTS_IDLE_INTERVAL = 60000;
    public static final long FTS_PAGE_PROTECTION_PERIOD = 10000;
    public static final long FTS_TASK_INTERVAL = 1000;

    @NotNull
    public static final String SETTINGS_DOC_RECENT = "settings_recent_doc_info";

    @NotNull
    public static final String SETTINGS_PAUSE_TASK = "settings_pause_task";

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NoteSearchArgs noteSearchArgs;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy userNoteProvider;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<String> unIndexedDocIds;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: k */
    @NotNull
    public static final OptionsRepo f50420k = new OptionsRepo();

    /* renamed from: l */
    @NotNull
    public static final DelegatedValueProvider<Companion, Boolean> f50421l = new DelegatedValueProvider() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$special$$inlined$delegate$1
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public RESULT getValue(CONTEXT context, @NotNull KProperty<?> kProperty) {
            return (RESULT) DelegatedValueProvider.DefaultImpls.getValue(this, context, kProperty);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public final Boolean provideValue(CONTEXT context) {
            OptionsRepo optionsRepo = BuildTextIndexInBackgroundAction.f50420k;
            Boolean bool = Boolean.FALSE;
            if (optionsRepo.getRepo().containsKey(BuildTextIndexInBackgroundAction.SETTINGS_PAUSE_TASK) && (optionsRepo.getRepo().get(BuildTextIndexInBackgroundAction.SETTINGS_PAUSE_TASK) instanceof Boolean)) {
                Object obj = optionsRepo.getRepo().get(BuildTextIndexInBackgroundAction.SETTINGS_PAUSE_TASK);
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                }
                bool = (Boolean) obj;
            }
            return Boolean.valueOf(bool.booleanValue());
        }
    };

    /* renamed from: m */
    @NotNull
    public static final DelegatedValueProvider<Companion, RecentDocInfo> f50422m = new DelegatedValueProvider() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$special$$inlined$delegate$2
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public RESULT getValue(CONTEXT context, @NotNull KProperty<?> kProperty) {
            return (RESULT) DelegatedValueProvider.DefaultImpls.getValue(this, context, kProperty);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public final RecentDocInfo provideValue(CONTEXT context) {
            Object obj = BuildTextIndexInBackgroundAction.f50420k.getRepo().get(BuildTextIndexInBackgroundAction.SETTINGS_DOC_RECENT);
            if (!(obj instanceof RecentDocInfo)) {
                obj = null;
            }
            return (RecentDocInfo) obj;
        }
    };

    @Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b(\u0010)J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001c\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\tJ \u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\r\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\tR\u0017\u0010\u0013\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0005\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001d\u0010\u001f\u001a\u0004\u0018\u00010\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u0018\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020 8\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010#\u001a\u00020 8\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\"R\u0014\u0010$\u001a\u00020 8\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\"R\u0014\u0010%\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010'\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010&¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;", "", "", "pause", "", "pauseTask", "", EditorConstants.ARGS_DOC_ID, "onNoteActivated", "", "pageIds", "onPageUpdated", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "Lio/reactivex/rxjava3/core/Observable;", "onShapeUpdated", "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "ftsWorkerOptions", "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "getFtsWorkerOptions", "()Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "pauseTask$delegate", "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;", "recentDocInfo$delegate", "b", "()Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;", "recentDocInfo", "", "FTS_IDLE_INTERVAL", "J", "FTS_PAGE_PROTECTION_PERIOD", "FTS_TASK_INTERVAL", "SETTINGS_DOC_RECENT", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "SETTINGS_PAUSE_TASK", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nBuildTextIndexInBackgroundAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildTextIndexInBackgroundAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,179:1\n766#2:180\n857#2,2:181\n1549#2:183\n1620#2,3:184\n1655#2,8:187\n*S KotlinDebug\n*F\n+ 1 BuildTextIndexInBackgroundAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion\n*L\n172#1:180\n172#1:181,2\n174#1:183\n174#1:184,3\n174#1:187,8\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: a */
        public static final /* synthetic */ KProperty<Object>[] f50426a = {Reflection.property1(new PropertyReference1Impl(Companion.class, "pauseTask", "getPauseTask()Z", 0)), Reflection.property1(new PropertyReference1Impl(Companion.class, "recentDocInfo", "getRecentDocInfo()Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;", 0))};

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final boolean m39742a() {
            return ((Boolean) BuildTextIndexInBackgroundAction.f50421l.getValue(this, f50426a[0])).booleanValue();
        }

        /* renamed from: b */
        public final RecentDocInfo m39743b() {
            return (RecentDocInfo) BuildTextIndexInBackgroundAction.f50422m.getValue(this, f50426a[1]);
        }

        @NotNull
        public final OptionsRepo getFtsWorkerOptions() {
            return BuildTextIndexInBackgroundAction.f50420k;
        }

        public final void onNoteActivated(@NotNull String docId) {
            Intrinsics.checkNotNullParameter(docId, "docId");
            RecentDocInfo recentDocInfo = new RecentDocInfo();
            recentDocInfo.setDocId(docId);
            recentDocInfo.setLastUpdateTime(DateTimeUtil.INSTANCE.millisOfNow());
            getFtsWorkerOptions().put(BuildTextIndexInBackgroundAction.SETTINGS_DOC_RECENT, recentDocInfo);
        }

        public final void onPageUpdated(@NotNull String docId, @NotNull List<String> pageIds) {
            Intrinsics.checkNotNullParameter(docId, "docId");
            Intrinsics.checkNotNullParameter(pageIds, "pageIds");
            RecentDocInfo recentDocInfo = new RecentDocInfo();
            recentDocInfo.setDocId(docId);
            recentDocInfo.setPageIds(pageIds);
            recentDocInfo.setLastUpdateTime(DateTimeUtil.INSTANCE.millisOfNow());
            getFtsWorkerOptions().put(BuildTextIndexInBackgroundAction.SETTINGS_DOC_RECENT, recentDocInfo);
        }

        @NotNull
        public final Observable<?> onShapeUpdated(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> shapes) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(shapes, "shapes");
            ArrayList arrayList = new ArrayList();
            for (Object obj : shapes) {
                if (ShapeTypes.INSTANCE.isSupportHWR((Shape) obj)) {
                    arrayList.add(obj);
                }
            }
            String documentUniqueId = EditorBundleKt.noteBundle(editorBundle).getNoteDoc().getDocumentUniqueId();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((Shape) it2.next()).getPageUniqueId());
            }
            HashSet hashSet = new HashSet();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : arrayList2) {
                if (hashSet.add((String) obj2)) {
                    arrayList3.add(obj2);
                }
            }
            onPageUpdated(documentUniqueId, arrayList3);
            return new RemoveTextIndexByPageAction(editorBundle, arrayList3, null, 4, null).build();
        }

        public final void pauseTask(boolean pause) {
            getFtsWorkerOptions().put(BuildTextIndexInBackgroundAction.SETTINGS_PAUSE_TASK, Boolean.valueOf(pause));
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$a */
    /* loaded from: classes8.dex */
    public static final class C9833a<T> implements Consumer {
        public C9833a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BuildTextIndexInBackgroundAction.this.m39741x();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$b */
    /* loaded from: classes8.dex */
    public static final class C9834b<T, R> implements Function {
        public C9834b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildTextIndexInBackgroundAction.this.m39739v();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$c */
    /* loaded from: classes8.dex */
    public static final class C9835c<T, R> implements Function {
        public C9835c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildTextIndexInBackgroundAction.this.m39740w();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$d */
    /* loaded from: classes8.dex */
    public static final class C9836d<T> implements Consumer {
        public C9836d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BuildTextIndexInBackgroundAction.this.m39741x();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$e */
    /* loaded from: classes8.dex */
    public static final class C9837e<T, R> implements Function {

        /* renamed from: e */
        public static final C9837e<T, R> f50431e = new C9837e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Long> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.interval(0L, 1000L, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$f */
    /* loaded from: classes8.dex */
    public static final class C9838f<T, R> implements Function {
        public C9838f() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> m39749a(long j) {
            return BuildTextIndexInBackgroundAction.this.m39733n();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m39749a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$g */
    /* loaded from: classes8.dex */
    public static final class C9839g<T, R> implements Function {
        public C9839g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BuildTextIndexInBackgroundAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildTextIndexInBackgroundAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$h */
    /* loaded from: classes8.dex */
    public static final class C9840h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SyncNoteModel f50435f;

        public C9840h(SyncNoteModel syncNoteModel) {
            this.f50435f = syncNoteModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentDataAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new OpenDocumentDataAction(BuildTextIndexInBackgroundAction.this.getEditorBundle(), OpenDocArgs.INSTANCE.createFrom(this.f50435f)).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$i */
    /* loaded from: classes8.dex */
    public static final class C9841i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SyncNoteModel f50437f;

        public C9841i(SyncNoteModel syncNoteModel) {
            this.f50437f = syncNoteModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull OpenDocumentDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildTextIndexInBackgroundAction.this.m39738u(this.f50437f.getUniqueId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$j */
    /* loaded from: classes8.dex */
    public static final class C9842j<T, R> implements Function {
        public C9842j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloseDocumentAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CloseDocumentAction(BuildTextIndexInBackgroundAction.this.getEditorBundle(), false, false, 4, null).build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuildTextIndexInBackgroundAction(@NotNull NoteSearchArgs noteSearchArgs) {
        super(EditorBundle.INSTANCE.createInstance());
        Lazy lazy;
        Intrinsics.checkNotNullParameter(noteSearchArgs, "noteSearchArgs");
        this.noteSearchArgs = noteSearchArgs;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<NoteProvider>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction$userNoteProvider$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteProvider invoke() {
                return KSyncBundle.INSTANCE.getUserNoteProvider();
            }
        });
        this.userNoteProvider = lazy;
        this.unIndexedDocIds = new ArrayList();
    }

    /* renamed from: o */
    public static final void m39731o(BuildTextIndexInBackgroundAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m39734p();
    }

    /* renamed from: q */
    public static final void m39732q(BuildTextIndexInBackgroundAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getEditorBundle().destroy();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<BuildTextIndexInBackgroundAction> create() {
        Observable<BuildTextIndexInBackgroundAction> map = Observable.just(Unit.INSTANCE).doOnNext(new C9836d()).flatMap(C9837e.f50431e).observeOn(ClusterManager.INSTANCE.getDataObserveOn()).concatMap(new C9838f()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.jv
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                BuildTextIndexInBackgroundAction.m39731o(BuildTextIndexInBackgroundAction.this);
            }
        }).map(new C9839g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<?> m39733n() {
        if (INSTANCE.m39742a()) {
            Observable<?> delay = Observable.just(Unit.INSTANCE).delay(1000L, TimeUnit.MILLISECONDS);
            Intrinsics.checkNotNullExpressionValue(delay, "delay(...)");
            return delay;
        }
        if (this.unIndexedDocIds.isEmpty()) {
            Observable<?> delay2 = Observable.just(Unit.INSTANCE).doOnNext(new C9833a()).delay(60000L, TimeUnit.MILLISECONDS);
            Intrinsics.checkNotNullExpressionValue(delay2, "delay(...)");
            return delay2;
        }
        Observable<?> concatMap = Observable.just(Unit.INSTANCE).concatMap(new C9834b()).concatMap(new C9835c());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return concatMap;
    }

    /* renamed from: p */
    public final void m39734p() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<CloseDocumentAction> doFinally = new CloseDocumentAction(getEditorBundle(), false, false).build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.iv
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                BuildTextIndexInBackgroundAction.m39732q(BuildTextIndexInBackgroundAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doFinally, null, null, 3, null);
    }

    /* renamed from: r */
    public final List<String> m39735r(boolean excludeRecentPage) {
        int collectionSizeOrDefault;
        List<VirtualPage> virtualPageList = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(virtualPageList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = virtualPageList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualPage) it2.next()).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
        }
        RecentDocInfo m39743b = INSTANCE.m39743b();
        if (!(m39743b != null && (m39743b.getPageIds().isEmpty() ^ true) && DateTimeUtil.INSTANCE.millisOfNow() - m39743b.getLastUpdateTime() < 10000)) {
            m39743b = null;
        }
        if (!excludeRecentPage) {
            return arrayList;
        }
        if (!(m39743b != null)) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!m39743b.getPageIds().contains((String) obj)) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    /* renamed from: s */
    public final NoteProvider m39736s() {
        return (NoteProvider) this.userNoteProvider.getValue();
    }

    /* renamed from: t */
    public final Observable<?> m39737t(SyncNoteModel noteModel) {
        Observable<?> flatMap = Observable.just(Unit.INSTANCE).flatMap(new C9840h(noteModel)).observeOn(ClusterManager.INSTANCE.getDataObserveOn()).flatMap(new C9841i(noteModel)).flatMap(new C9842j());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: u */
    public final Observable<?> m39738u(String docId) {
        Object obj;
        if (EditorBundleKt.getDocFtsProvider(getEditorBundle()).isAllPageIndexed(TextSearchType.INSTANCE.getContentTypes(this.noteSearchArgs.getSearchTypes()), EditorBundleKt.pageCount(getEditorBundle()))) {
            this.unIndexedDocIds.remove(docId);
            Observable<?> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        List<String> m39735r = m39735r(true);
        if (m39735r.isEmpty()) {
            Observable<?> just2 = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Iterator<T> it2 = m39735r.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (!EditorBundleKt.getDocFtsProvider(getEditorBundle()).isPageIndexed((String) obj, r0)) {
                break;
            }
        }
        String str = (String) obj;
        if (str != null) {
            return new BuildTextIndexByPageAction(getEditorBundle(), CollectionKt.asList(str), this.noteSearchArgs).build();
        }
        Observable<?> just3 = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
        return just3;
    }

    /* renamed from: v */
    public final Observable<?> m39739v() {
        RecentDocInfo m39743b = INSTANCE.m39743b();
        String docId = m39743b != null ? m39743b.getDocId() : null;
        if (docId == null) {
            docId = "";
        }
        if ((docId.length() == 0) || !this.unIndexedDocIds.contains(docId)) {
            Observable<?> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        SyncNoteModel loadNote = NoteModelProviderKt.loadNote(m39736s(), docId);
        if (loadNote != null) {
            return m39737t(loadNote);
        }
        Observable<?> just2 = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    /* renamed from: w */
    public final Observable<?> m39740w() {
        RecentDocInfo m39743b = INSTANCE.m39743b();
        Object obj = null;
        String docId = m39743b != null ? m39743b.getDocId() : null;
        if (docId == null) {
            docId = "";
        }
        Iterator<T> it2 = this.unIndexedDocIds.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (!Intrinsics.areEqual((String) next, docId)) {
                obj = next;
                break;
            }
        }
        String str = (String) obj;
        if (str == null) {
            Observable<?> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        SyncNoteModel loadNote = NoteModelProviderKt.loadNote(m39736s(), str);
        if (loadNote != null) {
            return m39737t(loadNote);
        }
        Observable<?> just2 = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    /* renamed from: x */
    public final void m39741x() {
        int collectionSizeOrDefault;
        List<String> mutableList;
        List<SyncNoteModel> noteModels = this.noteSearchArgs.getNoteModels();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModels, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = noteModels.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncNoteModel) it2.next()).getUniqueId());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        this.unIndexedDocIds = mutableList;
    }
}
