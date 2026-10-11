package com.onyx.galaxy.note.editor.viewmodel;

import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.geometry.data.IdentifyRectF;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.doc.LoadUserNoteModelsAction;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.events.app.StartActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.android.sdk.universal.editor.view.EditorViewHandler;
import com.onyx.galaxy.note.category.action.LoadNoteTabListAction;
import com.onyx.galaxy.note.category.action.SaveNoteTabListAction;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.editor.data.SlideBarType;
import com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0010\u0018\u0000 H2\u00020\u0001:\u0001HB\u0007¢\u0006\u0004\bF\u0010GJ\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0003\u001a\u00020\u0002J&\u0010\u000e\u001a\u00020\r2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00052\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u000bJ$\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u0013J\u0016\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u000bJ\u000e\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\tJ\u0016\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u001aJ\u000e\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\tJ\u000e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\tJ\u0016\u0010!\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u001eJ\u0016\u0010\"\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u000bJ\u000e\u0010#\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\tR#\u0010)\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050$8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R$\u00101\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R0\u00106\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b02j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b`38\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R0\u00108\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001a02j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001a`38\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00105R \u0010<\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R \u0010>\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001e098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010;R$\u0010E\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006I"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "currentNote", "Lio/reactivex/rxjava3/core/Observable;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "loadTabNoteList", "loadTabNote", "", "docIdList", "", "clearAll", "", "updateTabNoteList", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "editorBundleManager", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "noteListArgs", "Lio/reactivex/rxjava3/functions/Consumer;", "currentNoteCallback", "onUserNoteListImported", EditorConstants.ARGS_DOC_ID, "status", "updateRulerStatus", "getRulerStatus", "Landroid/graphics/Matrix;", "updateRulerMatrix", "getRulerMatrix", "key", "Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;", "getMagnifierViewport", "identifyRectF", "updateMagnifierViewport", "updateMagnifierStatus", "getMagnifierStatus", "Landroidx/lifecycle/MutableLiveData;", "i", "Landroidx/lifecycle/MutableLiveData;", "getTabNoteList", "()Landroidx/lifecycle/MutableLiveData;", "tabNoteList", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "j", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "getSlideBarType", "()Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "setSlideBarType", "(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V", "slideBarType", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", C4921e.f26537n, "Ljava/util/HashMap;", "rulerStatusMap", "l", "rulerMatrixMap", "", "m", "Ljava/util/Map;", "magnifierStatusMap", GoogleApiAvailabilityLight.f29016b, "magnifierViewportMap", C4921e.f26528e, Constants.STRING_SIG, "getTakePicturePath", "()Ljava/lang/String;", "setTakePicturePath", "(Ljava/lang/String;)V", "takePicturePath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteScribbleViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteScribbleViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1549#2:140\n1620#2,3:141\n1549#2:144\n1620#2,3:145\n766#2:148\n857#2,2:149\n1549#2:151\n1620#2,3:152\n766#2:155\n857#2,2:156\n1855#2,2:158\n*S KotlinDebug\n*F\n+ 1 NoteScribbleViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel\n*L\n72#1:140\n72#1:141,3\n75#1:144\n75#1:145,3\n76#1:148\n76#1:149,2\n79#1:151\n79#1:152,3\n80#1:155\n80#1:156,2\n81#1:158,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteScribbleViewModel extends BaseViewModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public SlideBarType slideBarType;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public String takePicturePath;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<NoteTabData>> tabNoteList = new MutableLiveData<>();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final HashMap<String, Boolean> rulerStatusMap = new HashMap<>();

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final HashMap<String, Matrix> rulerMatrixMap = new HashMap<>();

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Boolean> magnifierStatusMap = new LinkedHashMap();

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Map<String, IdentifyRectF> magnifierViewportMap = new LinkedHashMap();

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\b\u0012\u0004\u0012\u00020\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$Companion;", "", "()V", "findByDocId", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "", EditorConstants.ARGS_DOC_ID, "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nNoteScribbleViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteScribbleViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n288#2,2:140\n*S KotlinDebug\n*F\n+ 1 NoteScribbleViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$Companion\n*L\n136#1:140,2\n*E\n"})
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final NoteTabData findByDocId(@NotNull List<NoteTabData> list, @NotNull String docId) {
            Object obj;
            Intrinsics.checkNotNullParameter(list, "<this>");
            Intrinsics.checkNotNullParameter(docId, "docId");
            Iterator<T> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (Intrinsics.areEqual(((NoteTabData) obj).getUniqueId(), docId)) {
                    break;
                }
            }
            return (NoteTabData) obj;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12580a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ SyncNoteModel f61179e;

        public C12580a(SyncNoteModel syncNoteModel) {
            this.f61179e = syncNoteModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteTabData apply(@NotNull List<NoteTabData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTabData findByDocId = NoteScribbleViewModel.INSTANCE.findByDocId(it2, this.f61179e.getUniqueId());
            Intrinsics.checkNotNull(findByDocId);
            return findByDocId;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12581b<T> implements Consumer {
        public C12581b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NoteTabData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteScribbleViewModel.this.getTabNoteList().setValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12582c<T> implements Predicate {

        /* renamed from: e */
        public static final C12582c<T> f61181e = new C12582c<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C12583d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f61182e;

        public C12583d(EditorBundle editorBundle) {
            this.f61182e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            StartActivateDocumentEvent.Companion companion = StartActivateDocumentEvent.INSTANCE;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            StartActivateDocumentEvent createFrom$default = StartActivateDocumentEvent.Companion.createFrom$default(companion, (SyncNoteModel) first, false, 2, (Object) null);
            createFrom$default.setSaveBeforeActivate(false);
            EditorBundleKt.postEvent(this.f61182e, createFrom$default);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C12584e<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f61183e;

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f61184f;

        public C12584e(EditorBundle editorBundle, EditorBundle editorBundle2) {
            this.f61183e = editorBundle;
            this.f61184f = editorBundle2;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Intrinsics.areEqual(this.f61183e, this.f61184f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$f */
    /* loaded from: classes9.dex */
    public static final class C12585f<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Consumer<SyncNoteModel> f61185e;

        public C12585f(Consumer<SyncNoteModel> consumer) {
            this.f61185e = consumer;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            Consumer<SyncNoteModel> consumer = this.f61185e;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            RxjavaKt.acceptSafety(consumer, first);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$g */
    /* loaded from: classes9.dex */
    public static final class C12586g<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<String> f61187f;

        public C12586g(List<String> list) {
            this.f61187f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteScribbleViewModel noteScribbleViewModel = NoteScribbleViewModel.this;
            List<String> list = this.f61187f;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            NoteScribbleViewModel.updateTabNoteList$default(noteScribbleViewModel, list, (SyncNoteModel) first, false, 4, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$h */
    /* loaded from: classes9.dex */
    public static final class C12587h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ boolean f61188e;

        public C12587h(boolean z) {
            this.f61188e = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SaveNoteTabListAction(LoadNoteTabListAction.INSTANCE.toNoteTabDatas(it2), this.f61188e).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$i */
    /* loaded from: classes9.dex */
    public static final class C12588i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SyncNoteModel f61190f;

        public C12588i(SyncNoteModel syncNoteModel) {
            this.f61190f = syncNoteModel;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends List<NoteTabData>> m50421a(boolean z) {
            return NoteScribbleViewModel.this.loadTabNoteList(this.f61190f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m50421a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: i */
    public static final Boolean m50408i(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Boolean) tmp0.invoke(obj);
    }

    /* renamed from: j */
    public static final IdentifyRectF m50409j(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (IdentifyRectF) tmp0.invoke(obj);
    }

    /* renamed from: k */
    public static final Matrix m50410k(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Matrix) tmp0.invoke(obj);
    }

    /* renamed from: l */
    public static final Boolean m50411l(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Boolean) tmp0.invoke(obj);
    }

    /* renamed from: m */
    public static final void m50412m(NoteScribbleViewModel this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.notifyChange();
    }

    public static /* synthetic */ void updateTabNoteList$default(NoteScribbleViewModel noteScribbleViewModel, List list, SyncNoteModel syncNoteModel, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        noteScribbleViewModel.updateTabNoteList(list, syncNoteModel, z);
    }

    public final boolean getMagnifierStatus(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, Boolean> map = this.magnifierStatusMap;
        final NoteScribbleViewModel$getMagnifierStatus$1 noteScribbleViewModel$getMagnifierStatus$1 = new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$getMagnifierStatus$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.FALSE;
            }
        };
        Boolean computeIfAbsent = map.computeIfAbsent(key, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.u1k
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean m50408i;
                m50408i = NoteScribbleViewModel.m50408i(Function1.this, obj);
                return m50408i;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent.booleanValue();
    }

    @NotNull
    public final IdentifyRectF getMagnifierViewport(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, IdentifyRectF> map = this.magnifierViewportMap;
        final NoteScribbleViewModel$getMagnifierViewport$1 noteScribbleViewModel$getMagnifierViewport$1 = new Function1<String, IdentifyRectF>() { // from class: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$getMagnifierViewport$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final IdentifyRectF invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new IdentifyRectF("", new RectF());
            }
        };
        IdentifyRectF computeIfAbsent = map.computeIfAbsent(key, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.s1k
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                IdentifyRectF m50409j;
                m50409j = NoteScribbleViewModel.m50409j(Function1.this, obj);
                return m50409j;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final Matrix getRulerMatrix(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        HashMap<String, Matrix> hashMap = this.rulerMatrixMap;
        final NoteScribbleViewModel$getRulerMatrix$1 noteScribbleViewModel$getRulerMatrix$1 = new Function1<String, Matrix>() { // from class: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$getRulerMatrix$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Matrix invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new Matrix();
            }
        };
        Matrix computeIfAbsent = hashMap.computeIfAbsent(docId, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.q1k
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Matrix m50410k;
                m50410k = NoteScribbleViewModel.m50410k(Function1.this, obj);
                return m50410k;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    public final boolean getRulerStatus(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        HashMap<String, Boolean> hashMap = this.rulerStatusMap;
        final NoteScribbleViewModel$getRulerStatus$1 noteScribbleViewModel$getRulerStatus$1 = new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel$getRulerStatus$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.FALSE;
            }
        };
        Boolean computeIfAbsent = hashMap.computeIfAbsent(docId, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.t1k
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean m50411l;
                m50411l = NoteScribbleViewModel.m50411l(Function1.this, obj);
                return m50411l;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent.booleanValue();
    }

    @Nullable
    public final SlideBarType getSlideBarType() {
        return this.slideBarType;
    }

    @NotNull
    public final MutableLiveData<List<NoteTabData>> getTabNoteList() {
        return this.tabNoteList;
    }

    @Nullable
    public final String getTakePicturePath() {
        return this.takePicturePath;
    }

    @NotNull
    public final Observable<NoteTabData> loadTabNote(@NotNull SyncNoteModel currentNote) {
        Intrinsics.checkNotNullParameter(currentNote, "currentNote");
        Observable<NoteTabData> onErrorComplete = new LoadNoteTabListAction(currentNote).build().map(new C12580a(currentNote)).onErrorComplete();
        Intrinsics.checkNotNullExpressionValue(onErrorComplete, "onErrorComplete(...)");
        return onErrorComplete;
    }

    @NotNull
    public final Observable<List<NoteTabData>> loadTabNoteList(@NotNull SyncNoteModel currentNote) {
        Intrinsics.checkNotNullParameter(currentNote, "currentNote");
        Observable doOnComplete = new LoadNoteTabListAction(currentNote).build().doOnNext(new C12581b()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.r1k
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteScribbleViewModel.m50412m(NoteScribbleViewModel.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        return doOnComplete;
    }

    public final void onUserNoteListImported(@NotNull EditorBundleManager editorBundleManager, @NotNull CopyNoteListArgs noteListArgs, @NotNull Consumer<SyncNoteModel> currentNoteCallback) {
        List list;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List listOf;
        int collectionSizeOrDefault3;
        Intrinsics.checkNotNullParameter(editorBundleManager, "editorBundleManager");
        Intrinsics.checkNotNullParameter(noteListArgs, "noteListArgs");
        Intrinsics.checkNotNullParameter(currentNoteCallback, "currentNoteCallback");
        EditorBundle focusEditorBundle = editorBundleManager.focusEditorBundle();
        List<NoteTabData> value = this.tabNoteList.getValue();
        if (value != null) {
            List<NoteTabData> list2 = value;
            collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            list = new ArrayList(collectionSizeOrDefault3);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                list.add(((NoteTabData) it2.next()).getUniqueId());
            }
        } else {
            list = null;
        }
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        List list3 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it3 = list3.iterator();
        while (it3.hasNext()) {
            arrayList.add(noteListArgs.getDstDocId((String) it3.next()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!list.contains((String) obj)) {
                arrayList2.add(obj);
            }
        }
        List<EditorViewHandler> editorViewHandlers = editorBundleManager.getEditorViewHandlers();
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(editorViewHandlers, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it4 = editorViewHandlers.iterator();
        while (it4.hasNext()) {
            arrayList3.add(((EditorViewHandler) it4.next()).getEditorBundle());
        }
        ArrayList<EditorBundle> arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (EditorBundleKt.isDocumentOpen((EditorBundle) obj2)) {
                arrayList4.add(obj2);
            }
        }
        for (EditorBundle editorBundle : arrayList4) {
            String docId = EditorBundleKt.docId(editorBundle);
            String dstDocId = noteListArgs.getDstDocId(docId);
            if (!Intrinsics.areEqual(dstDocId, docId)) {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(dstDocId);
                new LoadUserNoteModelsAction(listOf).build().filter(C12582c.f61181e).doOnNext(new C12583d(editorBundle)).filter(new C12584e(editorBundle, focusEditorBundle)).doOnNext(new C12585f(currentNoteCallback)).doOnNext(new C12586g(arrayList2)).subscribe();
            }
        }
    }

    public final void setSlideBarType(@Nullable SlideBarType slideBarType) {
        this.slideBarType = slideBarType;
    }

    public final void setTakePicturePath(@Nullable String str) {
        this.takePicturePath = str;
    }

    public final void updateMagnifierStatus(@NotNull String key, boolean status) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.magnifierStatusMap.put(key, Boolean.valueOf(status));
    }

    public final void updateMagnifierViewport(@NotNull String key, @NotNull IdentifyRectF identifyRectF) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(identifyRectF, "identifyRectF");
        this.magnifierViewportMap.put(key, identifyRectF);
    }

    public final void updateRulerMatrix(@NotNull String docId, @NotNull Matrix status) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(status, "status");
        this.rulerMatrixMap.put(docId, status);
    }

    public final void updateRulerStatus(@NotNull String docId, boolean status) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        this.rulerStatusMap.put(docId, Boolean.valueOf(status));
    }

    public final void updateTabNoteList(@NotNull List<String> docIdList, @NotNull SyncNoteModel currentNote, boolean clearAll) {
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        Intrinsics.checkNotNullParameter(currentNote, "currentNote");
        new LoadUserNoteModelsAction(docIdList).build().flatMap(new C12587h(clearAll)).flatMap(new C12588i(currentNote)).subscribe();
    }
}
