package com.onyx.android.sdk.universal.editor;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocOptions;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.AppType;
import com.onyx.android.sdk.universal.editor.config.DocumentState;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.ReaderDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.feature.work.WorkFeatureManager;
import com.onyx.android.sdk.universal.editor.helper.EditorMemoryManagement;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 {2\u00020\u0001:\u0001{B\u0007¢\u0006\u0004\by\u0010zJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\u000e\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\u0002J\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0018\u001a\u00020\u0013R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010&\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010-\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u00103\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0017\u00108\u001a\u0002048\u0006¢\u0006\f\n\u0004\b\t\u00105\u001a\u0004\b6\u00107R\"\u0010?\u001a\u0002098\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010F\u001a\u00020@8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\"\u0010M\u001a\u00020G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\"\u0010T\u001a\u00020N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\"\u0010[\u001a\u00020U8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR*\u0010c\u001a\n\u0012\u0004\u0012\u00020]\u0018\u00010\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR\"\u0010e\u001a\u00020d8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\be\u0010f\u001a\u0004\bg\u0010h\"\u0004\bi\u0010jR\u0016\u0010l\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010kR$\u0010t\u001a\u0004\u0018\u00010m8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bn\u0010o\u001a\u0004\bp\u0010q\"\u0004\br\u0010sR\u0011\u0010x\u001a\u00020u8F¢\u0006\u0006\u001a\u0004\bv\u0010w¨\u0006|"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "", "", "j", "i", C6998g.f39679a, "a", "b", "c", "d", "e", C6999h.f39688c, "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;", C6997f.f39671c, C4921e.f26537n, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "init", "destroy", "", "ensureCloseVirtualDoc", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "newOpenDocArgs", "openVirtualDoc", "isOpen", "Lorg/greenrobot/eventbus/EventBus;", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "setEventBus", "(Lorg/greenrobot/eventbus/EventBus;)V", "", "I", "getRotation", "()I", "setRotation", "(I)V", "rotation", "Landroid/graphics/RectF;", "Landroid/graphics/RectF;", "getVisibleBoundingRect", "()Landroid/graphics/RectF;", "setVisibleBoundingRect", "(Landroid/graphics/RectF;)V", "visibleBoundingRect", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "getOpenDocArgs", "()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "setOpenDocArgs", "(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V", "openDocArgs", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "getDbProviderBundle", "()Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "dbProviderBundle", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;", "getDocOptions", "()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;", "setDocOptions", "(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;)V", "docOptions", "Lcom/onyx/android/sdk/universal/editor/config/DocumentState;", "Lcom/onyx/android/sdk/universal/editor/config/DocumentState;", "getDocumentState", "()Lcom/onyx/android/sdk/universal/editor/config/DocumentState;", "setDocumentState", "(Lcom/onyx/android/sdk/universal/editor/config/DocumentState;)V", "documentState", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "getReaderBundle", "()Lcom/onyx/android/sdk/reader/ReaderBundle;", "setReaderBundle", "(Lcom/onyx/android/sdk/reader/ReaderBundle;)V", "readerBundle", "Lcom/onyx/android/sdk/note/NoteBundle;", "Lcom/onyx/android/sdk/note/NoteBundle;", "getNoteBundle", "()Lcom/onyx/android/sdk/note/NoteBundle;", "setNoteBundle", "(Lcom/onyx/android/sdk/note/NoteBundle;)V", "noteBundle", "Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeatureManager;", "Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeatureManager;", "getWorkFeatureManager", "()Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeatureManager;", "setWorkFeatureManager", "(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeatureManager;)V", "workFeatureManager", "Lorg/apache/commons/lang3/Range;", "", "Lorg/apache/commons/lang3/Range;", "getCustomScaleRange", "()Lorg/apache/commons/lang3/Range;", "setCustomScaleRange", "(Lorg/apache/commons/lang3/Range;)V", "customScaleRange", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;", "virtualPolicy", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;", "getVirtualPolicy", "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;", "setVirtualPolicy", "(Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;)V", "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;", "docDataProviderInfo", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "l", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "getBoxManager", "()Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "setBoxManager", "(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;)V", "boxManager", "Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;", "getVirtualModelProvider", "()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;", "virtualModelProvider", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class WorkBundle {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: m */
    @NotNull
    public static final ConcurrentHashMap<String, AtomicInteger> f47561m = new ConcurrentHashMap<>();

    /* renamed from: a, reason: from kotlin metadata */
    public int rotation;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public RectF visibleBoundingRect = new RectF();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public OpenDocArgs openDocArgs = OpenDocArgs.INSTANCE.createDummyArgs();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final DBProviderBundle dbProviderBundle;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public VirtualDocOptions docOptions;
    public EventBus eventBus;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public DocumentState documentState;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public ReaderBundle readerBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public NoteBundle noteBundle;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public WorkFeatureManager workFeatureManager;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Range<Float> customScaleRange;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public ProviderInfo docDataProviderInfo;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public BoxManager boxManager;
    public VirtualDocPolicy virtualPolicy;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R#\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/WorkBundle$Companion;", "", "", EditorConstants.ARGS_DOC_ID, "", "openDoc", "closeDoc", "Ljava/util/concurrent/atomic/AtomicInteger;", "b", "Ljava/util/concurrent/ConcurrentHashMap;", "docIdReferenceCountMap", "Ljava/util/concurrent/ConcurrentHashMap;", "getDocIdReferenceCountMap", "()Ljava/util/concurrent/ConcurrentHashMap;", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: c */
        public static final AtomicInteger m36721c(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (AtomicInteger) tmp0.invoke(obj);
        }

        /* renamed from: b */
        public final AtomicInteger m36722b(String docId) {
            ConcurrentHashMap<String, AtomicInteger> docIdReferenceCountMap = getDocIdReferenceCountMap();
            final WorkBundle$Companion$getDocIdCount$1 workBundle$Companion$getDocIdCount$1 = new Function1<String, AtomicInteger>() { // from class: com.onyx.android.sdk.universal.editor.WorkBundle$Companion$getDocIdCount$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final AtomicInteger invoke(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new AtomicInteger(0);
                }
            };
            AtomicInteger computeIfAbsent = docIdReferenceCountMap.computeIfAbsent(docId, new Function() { // from class: com.sunia.HTREnginev2.aao
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    AtomicInteger m36721c;
                    m36721c = WorkBundle.Companion.m36721c(Function1.this, obj);
                    return m36721c;
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
            return computeIfAbsent;
        }

        public final int closeDoc(@NotNull String docId) {
            Intrinsics.checkNotNullParameter(docId, "docId");
            return m36722b(docId).decrementAndGet();
        }

        @NotNull
        public final ConcurrentHashMap<String, AtomicInteger> getDocIdReferenceCountMap() {
            return WorkBundle.f47561m;
        }

        public final int openDoc(@NotNull String docId) {
            Intrinsics.checkNotNullParameter(docId, "docId");
            return m36722b(docId).incrementAndGet();
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AppType.values().length];
            try {
                iArr[AppType.NOTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AppType.READER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public WorkBundle() {
        DBProviderBundle dBProviderBundle = new DBProviderBundle();
        this.dbProviderBundle = dBProviderBundle;
        this.docOptions = new VirtualDocOptions();
        this.documentState = DocumentState.PENDING;
        this.readerBundle = new ReaderBundle();
        this.noteBundle = new NoteBundle(dBProviderBundle);
        this.workFeatureManager = new WorkFeatureManager();
        this.docDataProviderInfo = m36714f();
    }

    /* renamed from: a */
    public final void m36709a() {
        int closeDoc = INSTANCE.closeDoc(this.openDocArgs.getDocumentId());
        Debug debug = Debug.INSTANCE;
        debug.m32038d(AnyKt.toSimpleNameString(this), "closeDoc docId = " + this.openDocArgs.getDocumentId() + ", reference count = " + closeDoc, new Object[0]);
        if (closeDoc <= 0) {
            debug.m32038d(AnyKt.toSimpleNameString(this), "close database, docId = " + this.openDocArgs.getDocumentId(), new Object[0]);
            m36710b();
            m36711c();
            m36712d();
            m36713e();
        }
    }

    /* renamed from: b */
    public final void m36710b() {
        this.dbProviderBundle.closeCouchHolder(this.docDataProviderInfo);
    }

    /* renamed from: c */
    public final void m36711c() {
        this.dbProviderBundle.closeCouchHolder(ProviderInfoUtils.INSTANCE.getDocPBRecordProviderInfo(this.openDocArgs.getUserId(), this.openDocArgs.getDocumentId()));
    }

    /* renamed from: d */
    public final void m36712d() {
        this.dbProviderBundle.closeCouchHolder(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(this.openDocArgs.getUserId()));
    }

    public final void destroy() {
        ensureCloseVirtualDoc();
    }

    /* renamed from: e */
    public final void m36713e() {
        this.dbProviderBundle.closeCouchHolder(ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(this.openDocArgs.getUserId()));
    }

    public final boolean ensureCloseVirtualDoc() {
        if (!this.openDocArgs.isValidArgs()) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "ensureCloseVirtualDoc fail, doc not open.", new Object[0]);
            return false;
        }
        m36715g();
        WorkBundleKt.postDocumentState(this);
        m36716h();
        return true;
    }

    /* renamed from: f */
    public final ProviderInfo m36714f() {
        return ProviderInfoUtils.INSTANCE.getDocDataProviderInfo(this.openDocArgs.getUserId(), this.openDocArgs.getDocumentId());
    }

    /* renamed from: g */
    public final void m36715g() {
        Debug.INSTANCE.m32059w(WorkBundle.class, "destroyDocumentData, docId = " + this.openDocArgs.getDocumentId(), new Object[0]);
        m36709a();
        this.readerBundle.destroy();
        this.noteBundle.destroy();
        this.boxManager = null;
        this.documentState = DocumentState.PENDING;
        this.openDocArgs = OpenDocArgs.INSTANCE.createDummyArgs();
        this.docOptions = new VirtualDocOptions();
        if (this.virtualPolicy != null) {
            getVirtualPolicy().close();
        }
    }

    @Nullable
    public final BoxManager getBoxManager() {
        return this.boxManager;
    }

    @Nullable
    public final Range<Float> getCustomScaleRange() {
        return this.customScaleRange;
    }

    @NotNull
    public final DBProviderBundle getDbProviderBundle() {
        return this.dbProviderBundle;
    }

    @NotNull
    public final VirtualDocOptions getDocOptions() {
        return this.docOptions;
    }

    @NotNull
    public final DocumentState getDocumentState() {
        return this.documentState;
    }

    @NotNull
    public final EventBus getEventBus() {
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            return eventBus;
        }
        Intrinsics.throwUninitializedPropertyAccessException("eventBus");
        return null;
    }

    @NotNull
    public final NoteBundle getNoteBundle() {
        return this.noteBundle;
    }

    @NotNull
    public final OpenDocArgs getOpenDocArgs() {
        return this.openDocArgs;
    }

    @NotNull
    public final ReaderBundle getReaderBundle() {
        return this.readerBundle;
    }

    public final int getRotation() {
        return this.rotation;
    }

    @NotNull
    public final VirtualModelProvider getVirtualModelProvider() {
        return this.dbProviderBundle.getVirtualModelProvider(this.docDataProviderInfo);
    }

    @NotNull
    public final VirtualDocPolicy getVirtualPolicy() {
        VirtualDocPolicy virtualDocPolicy = this.virtualPolicy;
        if (virtualDocPolicy != null) {
            return virtualDocPolicy;
        }
        Intrinsics.throwUninitializedPropertyAccessException("virtualPolicy");
        return null;
    }

    @NotNull
    public final RectF getVisibleBoundingRect() {
        return this.visibleBoundingRect;
    }

    @NotNull
    public final WorkFeatureManager getWorkFeatureManager() {
        return this.workFeatureManager;
    }

    /* renamed from: h */
    public final void m36716h() {
        if (Debug.INSTANCE.getDebug()) {
            CouchDBManager.INSTANCE.dumpCouchDB();
        }
    }

    /* renamed from: i */
    public final void m36717i() {
        this.noteBundle.setEventBus(getEventBus());
        this.noteBundle.init();
        this.noteBundle.getNoteDoc().setPageLimitCount(AppConfig.INSTANCE.getNotePageLimitCount());
        this.noteBundle.getNoteDoc().setMemoryManagement(new EditorMemoryManagement(this));
    }

    public final void init(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        setEventBus(editorBundle.getUiBundle().getEventBus());
        m36717i();
    }

    public final boolean isOpen() {
        return this.documentState == DocumentState.OPENED;
    }

    /* renamed from: j */
    public final void m36718j() {
        this.readerBundle.setDocId(this.openDocArgs.getDocumentId());
    }

    /* renamed from: k */
    public final void m36719k() {
        VirtualDocPolicy noteDocPolicy;
        int i = WhenMappings.$EnumSwitchMapping$0[this.openDocArgs.getAppType().ordinal()];
        if (i == 1) {
            noteDocPolicy = new NoteDocPolicy(this);
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            noteDocPolicy = new ReaderDocPolicy();
        }
        setVirtualPolicy(noteDocPolicy);
    }

    public final void openVirtualDoc(@NotNull OpenDocArgs newOpenDocArgs) {
        Intrinsics.checkNotNullParameter(newOpenDocArgs, "newOpenDocArgs");
        if (this.openDocArgs.isValidArgs()) {
            Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(this), "expected old openDocArgs is invalid, but actual is valid, please ensureCloseVirtualDoc first!", new Object[0]);
        }
        this.openDocArgs = newOpenDocArgs;
        this.docOptions = new VirtualDocOptions();
        Debug debug = Debug.INSTANCE;
        debug.m32059w(WorkBundle.class, "openVirtualDoc, docId = " + this.openDocArgs.getDocumentId(), new Object[0]);
        int openDoc = INSTANCE.openDoc(this.openDocArgs.getDocumentId());
        debug.m32038d(AnyKt.toSimpleNameString(this), "open doc docId = " + this.openDocArgs.getDocumentId() + ", reference count = " + openDoc, new Object[0]);
        this.documentState = DocumentState.OPENING;
        this.readerBundle = new ReaderBundle();
        m36718j();
        this.noteBundle = new NoteBundle(this.dbProviderBundle);
        m36717i();
        this.workFeatureManager = new WorkFeatureManager();
        this.docDataProviderInfo = m36714f();
        m36719k();
    }

    public final void setBoxManager(@Nullable BoxManager boxManager) {
        this.boxManager = boxManager;
    }

    public final void setCustomScaleRange(@Nullable Range<Float> range) {
        this.customScaleRange = range;
    }

    public final void setDocOptions(@NotNull VirtualDocOptions virtualDocOptions) {
        Intrinsics.checkNotNullParameter(virtualDocOptions, "<set-?>");
        this.docOptions = virtualDocOptions;
    }

    public final void setDocumentState(@NotNull DocumentState documentState) {
        Intrinsics.checkNotNullParameter(documentState, "<set-?>");
        this.documentState = documentState;
    }

    public final void setEventBus(@NotNull EventBus eventBus) {
        Intrinsics.checkNotNullParameter(eventBus, "<set-?>");
        this.eventBus = eventBus;
    }

    public final void setNoteBundle(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "<set-?>");
        this.noteBundle = noteBundle;
    }

    public final void setOpenDocArgs(@NotNull OpenDocArgs openDocArgs) {
        Intrinsics.checkNotNullParameter(openDocArgs, "<set-?>");
        this.openDocArgs = openDocArgs;
    }

    public final void setReaderBundle(@NotNull ReaderBundle readerBundle) {
        Intrinsics.checkNotNullParameter(readerBundle, "<set-?>");
        this.readerBundle = readerBundle;
    }

    public final void setRotation(int i) {
        this.rotation = i;
    }

    public final void setVirtualPolicy(@NotNull VirtualDocPolicy virtualDocPolicy) {
        Intrinsics.checkNotNullParameter(virtualDocPolicy, "<set-?>");
        this.virtualPolicy = virtualDocPolicy;
    }

    public final void setVisibleBoundingRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.visibleBoundingRect = rectF;
    }

    public final void setWorkFeatureManager(@NotNull WorkFeatureManager workFeatureManager) {
        Intrinsics.checkNotNullParameter(workFeatureManager, "<set-?>");
        this.workFeatureManager = workFeatureManager;
    }
}
