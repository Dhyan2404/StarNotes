package com.onyx.android.sdk.note.common.document.doc;

import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b,\u0010-J \u0010\t\u001a\u00020\b*\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u0006J\"\u0010\u000b\u001a\u0004\u0018\u00010\n*\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u0006J \u0010\f\u001a\u00020\b*\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u0006J,\u0010\u000e\u001a\u0004\u0018\u00010\n*\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\bJ\n\u0010\u0010\u001a\u00020\n*\u00020\u000fJ\n\u0010\u0010\u001a\u00020\n*\u00020\u0011J\u001e\u0010\u0016\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\bH\u0002J\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u0011*\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\bH\u0002J:\u0010\u001a\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u00190\u0018*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0014\u0010\u001e\u001a\u00020\u001d*\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0012\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0003*\u00020\u0002H\u0002J\u001e\u0010 \u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\bH\u0002J\u0018\u0010!\u001a\u0004\u0018\u00010\u0011*\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\bH\u0002J@\u0010'\u001a\u00020&2\b\u0010\"\u001a\u0004\u0018\u00010\u000f2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010%\u001a\u0004\u0018\u00010\u0011H\u0002J\u0010\u0010)\u001a\u00020&2\u0006\u0010(\u001a\u00020\u001bH\u0002R\u0014\u0010*\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/NoteDocShapeLocation;", "", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "visibleBoxList", "Landroid/graphics/RectF;", "viewport", "", "hasNextShape", "Lcom/onyx/android/sdk/note/common/document/doc/ShapeLocationBean;", "nextShapeLocationBean", "hasPrevShape", "findIfHitCache", "prevShapeLocationBean", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "toShapeLocationBean", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "Ljava/util/Date;", "currentCreateAt", "sortCreateAt", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "b", C6999h.f39688c, "Lkotlin/Pair;", "", "a", "", "notePageId", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", C6997f.f39671c, C6998g.f39679a, "d", "j", "shapeInMemory", "visibleShapeListInMemory", "notVisibleShapeListInMemory", "shapeInDb", "", "l", NotificationCompat.CATEGORY_MESSAGE, "m", "DEBUG", Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteDocShapeLocation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocShapeLocation.kt\ncom/onyx/android/sdk/note/common/document/doc/NoteDocShapeLocation\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,349:1\n18#2,4:350\n50#2,6:354\n56#2:363\n18#2,4:366\n50#2,7:370\n18#2,4:383\n50#2,7:387\n18#2,4:394\n50#2,6:398\n56#2:407\n18#2,4:410\n50#2,7:414\n1747#3,3:360\n1002#3,2:364\n1855#3:377\n1855#3,2:378\n1856#3:380\n1747#3,3:404\n1002#3,2:408\n1002#3,2:422\n215#4,2:381\n1#5:421\n*S KotlinDebug\n*F\n+ 1 NoteDocShapeLocation.kt\ncom/onyx/android/sdk/note/common/document/doc/NoteDocShapeLocation\n*L\n41#1:350,4\n41#1:354,6\n41#1:363\n125#1:366,4\n125#1:370,7\n180#1:383,4\n180#1:387,7\n200#1:394,4\n200#1:398,6\n200#1:407\n288#1:410,4\n288#1:414,7\n44#1:360,3\n85#1:364,2\n145#1:377\n156#1:378,2\n145#1:380\n203#1:404,3\n242#1:408,2\n317#1:422,2\n167#1:381,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteDocShapeLocation {
    public static final boolean DEBUG = false;

    @NotNull
    public static final NoteDocShapeLocation INSTANCE = new NoteDocShapeLocation();

    /* renamed from: c */
    public static /* synthetic */ CBQueryArgs m33749c(NoteDocShapeLocation noteDocShapeLocation, NoteDocument noteDocument, Date date, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return noteDocShapeLocation.m33754b(noteDocument, date, z);
    }

    /* renamed from: e */
    public static /* synthetic */ CBQueryArgs m33750e(NoteDocShapeLocation noteDocShapeLocation, NoteDocument noteDocument, Date date, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return noteDocShapeLocation.m33755d(noteDocument, date, z);
    }

    /* renamed from: i */
    public static /* synthetic */ ShapeModel m33751i(NoteDocShapeLocation noteDocShapeLocation, NoteDocument noteDocument, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return noteDocShapeLocation.m33758h(noteDocument, z);
    }

    /* renamed from: k */
    public static /* synthetic */ ShapeModel m33752k(NoteDocShapeLocation noteDocShapeLocation, NoteDocument noteDocument, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return noteDocShapeLocation.m33759j(noteDocument, z);
    }

    public static /* synthetic */ ShapeLocationBean prevShapeLocationBean$default(NoteDocShapeLocation noteDocShapeLocation, NoteDocument noteDocument, List list, RectF rectF, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return noteDocShapeLocation.prevShapeLocationBean(noteDocument, list, rectF, z);
    }

    /* renamed from: a */
    public final Pair<List<Shape>, List<Shape>> m33753a(NoteDocument noteDocument, RectF rectF, List<BoxInfo> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        RectF copy = RectFKt.copy(rectF);
        copy.offsetTo(0.0f, 0.0f);
        for (BoxInfo boxInfo : list) {
            BoxInfo noteInfo = boxInfo.getNoteInfo();
            String id = noteInfo != null ? noteInfo.getId() : null;
            if (id == null) {
                id = "";
            }
            linkedHashSet.add(id);
            NotePage m33756f = INSTANCE.m33756f(noteDocument, id);
            if (NotePageShape.INSTANCE.hasShapes(m33756f)) {
                Matrix noteNormalizeMatrix = BoxInfoUtils.INSTANCE.noteNormalizeMatrix(boxInfo);
                RectF copy2 = RectFKt.copy(copy);
                noteNormalizeMatrix.mapRect(copy2);
                for (Shape shape : m33756f.getShapeList()) {
                    if (copy2.contains(shape.getBoundingRect()) || RectF.intersects(copy2, shape.getBoundingRect())) {
                        arrayList.add(shape);
                    } else {
                        arrayList2.add(shape);
                    }
                }
            }
        }
        for (Map.Entry<String, NotePage> entry : noteDocument.getPageDataMap().entrySet()) {
            String key = entry.getKey();
            NotePage value = entry.getValue();
            if (!linkedHashSet.contains(key) && value.getIsLoaded()) {
                arrayList2.addAll(value.getShapeList());
            }
        }
        return new Pair<>(arrayList, arrayList2);
    }

    /* renamed from: b */
    public final CBQueryArgs m33754b(NoteDocument noteDocument, Date date, boolean z) {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.greaterThanExpression(CouchFieldKey.KEY_CREATE_AT, Long.valueOf(date.getTime()))).andWith(couchUtils.notInExpression(CouchFieldKey.KEY_PAGE_ID, m33757g(noteDocument)));
        if (z) {
            andWith.setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_CREATE_AT, true));
        }
        andWith.setLimit(1);
        return andWith;
    }

    /* renamed from: d */
    public final CBQueryArgs m33755d(NoteDocument noteDocument, Date date, boolean z) {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.lessThanExpression(CouchFieldKey.KEY_CREATE_AT, Long.valueOf(date.getTime()))).andWith(couchUtils.notInExpression(CouchFieldKey.KEY_PAGE_ID, m33757g(noteDocument)));
        if (z) {
            andWith.setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_CREATE_AT, false));
        }
        andWith.setLimit(1);
        return andWith;
    }

    /* renamed from: f */
    public final NotePage m33756f(NoteDocument noteDocument, String str) {
        long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
        NotePage ensureNotePage = NoteDocNotePage.INSTANCE.ensureNotePage(noteDocument, str);
        m33761m("ensureNotePage, " + ((Object) Duration.m74024toStringimpl(TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto))));
        return ensureNotePage;
    }

    /* renamed from: g */
    public final List<String> m33757g(NoteDocument noteDocument) {
        Sequence asSequence;
        Sequence filter;
        Sequence map;
        List<String> list;
        Set<Map.Entry<String, NotePage>> entrySet = noteDocument.getPageDataMap().entrySet();
        Intrinsics.checkNotNullExpressionValue(entrySet, "<get-entries>(...)");
        asSequence = CollectionsKt___CollectionsKt.asSequence(entrySet);
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Map.Entry<String, NotePage>, Boolean>() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocShapeLocation$getLoadedPageIdListInMemory$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Map.Entry<String, NotePage> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getValue().getIsLoaded());
            }
        });
        map = SequencesKt___SequencesKt.map(filter, new Function1<Map.Entry<String, NotePage>, String>() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocShapeLocation$getLoadedPageIdListInMemory$2
            @Override // kotlin.jvm.functions.Function1
            public final String invoke(@NotNull Map.Entry<String, NotePage> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getKey();
            }
        });
        list = SequencesKt___SequencesKt.toList(map);
        return list;
    }

    /* renamed from: h */
    public final ShapeModel m33758h(NoteDocument noteDocument, boolean z) {
        Object firstOrNull;
        long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) noteDocument.getProviderHolder().getNoteShapeProvider().loadShapeList(INSTANCE.m33754b(noteDocument, noteDocument.getShapeLocationBean().getCreatedAt(), z)));
        long m74119elapsedNowUwyO8pc = TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto);
        StringBuilder sb = new StringBuilder();
        sb.append("loadNextShapeFromDb, sortCreateAt = ");
        sb.append(z);
        sb.append(", shapeModel = ");
        ShapeModel shapeModel = (ShapeModel) firstOrNull;
        sb.append(shapeModel != null ? shapeModel.getUniqueId() : null);
        sb.append(", time = ");
        sb.append((Object) Duration.m74024toStringimpl(m74119elapsedNowUwyO8pc));
        m33761m(sb.toString());
        return shapeModel;
    }

    public final boolean hasNextShape(@NotNull NoteDocument noteDocument, @NotNull List<BoxInfo> visibleBoxList, @NotNull RectF viewport) {
        boolean z;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        if (!noteDocument.getShapeLocationBean().isEnabledQueryNextShape()) {
            m33761m("no next shape, fast return");
            return false;
        }
        long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
        Pair<List<Shape>, List<Shape>> m33753a = INSTANCE.m33753a(noteDocument, viewport, visibleBoxList);
        m33753a.component1();
        List<Shape> component2 = m33753a.component2();
        if (!(component2 instanceof Collection) || !component2.isEmpty()) {
            Iterator<T> it2 = component2.iterator();
            while (it2.hasNext()) {
                Date date = ((Shape) it2.next()).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                if (date != null && date.compareTo(noteDocument.getShapeLocationBean().getCreatedAt()) > 0) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (!z) {
            z = INSTANCE.m33758h(noteDocument, false) != null;
        }
        m33761m("hasNextShape = " + z + ", " + ((Object) Duration.m74024toStringimpl(TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto))));
        return z;
    }

    public final boolean hasPrevShape(@NotNull NoteDocument noteDocument, @NotNull List<BoxInfo> visibleBoxList, @NotNull RectF viewport) {
        boolean z;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
        Pair<List<Shape>, List<Shape>> m33753a = INSTANCE.m33753a(noteDocument, viewport, visibleBoxList);
        m33753a.component1();
        List<Shape> component2 = m33753a.component2();
        if (!(component2 instanceof Collection) || !component2.isEmpty()) {
            Iterator<T> it2 = component2.iterator();
            while (it2.hasNext()) {
                Date date = ((Shape) it2.next()).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                if (date != null && date.compareTo(noteDocument.getShapeLocationBean().getCreatedAt()) < 0) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (!z) {
            z = INSTANCE.m33759j(noteDocument, false) != null;
        }
        m33761m("hasPrevShape = " + z + ", " + ((Object) Duration.m74024toStringimpl(TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto))));
        return z;
    }

    /* renamed from: j */
    public final ShapeModel m33759j(NoteDocument noteDocument, boolean z) {
        Object firstOrNull;
        long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) noteDocument.getProviderHolder().getNoteShapeProvider().loadShapeList(INSTANCE.m33755d(noteDocument, noteDocument.getShapeLocationBean().getCreatedAt(), z)));
        long m74119elapsedNowUwyO8pc = TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto);
        StringBuilder sb = new StringBuilder();
        sb.append("loadPrevShapeFromDb, sortCreateAt = ");
        sb.append(z);
        sb.append(", shapeModel = ");
        ShapeModel shapeModel = (ShapeModel) firstOrNull;
        sb.append(shapeModel != null ? shapeModel.getUniqueId() : null);
        sb.append(", time = ");
        sb.append((Object) Duration.m74024toStringimpl(m74119elapsedNowUwyO8pc));
        m33761m(sb.toString());
        return shapeModel;
    }

    /* renamed from: l */
    public final void m33760l(Shape shapeInMemory, List<? extends Shape> visibleShapeListInMemory, List<? extends Shape> notVisibleShapeListInMemory, Date currentCreateAt, ShapeModel shapeInDb) {
    }

    /* renamed from: m */
    public final void m33761m(String msg) {
    }

    @Nullable
    public final ShapeLocationBean nextShapeLocationBean(@NotNull NoteDocument noteDocument, @NotNull List<BoxInfo> visibleBoxList, @NotNull RectF viewport) {
        Object obj;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        if (!noteDocument.getShapeLocationBean().isEnabledQueryNextShape()) {
            m33761m("no next shape, fast return null");
            return null;
        }
        Pair<List<Shape>, List<Shape>> m33753a = m33753a(noteDocument, viewport, visibleBoxList);
        List<Shape> component1 = m33753a.component1();
        List<Shape> component2 = m33753a.component2();
        Date createdAt = noteDocument.getShapeLocationBean().getCreatedAt();
        if (component2.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(component2, new Comparator() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocShapeLocation$nextShapeLocationBean$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(((Shape) t).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String(), ((Shape) t2).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String());
                    return compareValues;
                }
            });
        }
        Iterator<T> it2 = component2.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            Date date = ((Shape) obj).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
            if (date != null && date.compareTo(createdAt) > 0) {
                break;
            }
        }
        Shape shape = (Shape) obj;
        ShapeModel m33751i = m33751i(this, noteDocument, false, 1, null);
        m33760l(shape, component1, component2, createdAt, m33751i);
        if (shape == null && m33751i == null) {
            return null;
        }
        if (shape != null && m33751i == null) {
            return toShapeLocationBean(shape);
        }
        if (shape != null && m33751i != null) {
            Date date2 = shape.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
            return (date2 != null ? date2.getTime() : 0L) < m33751i.getCreatedAt() ? toShapeLocationBean(shape) : toShapeLocationBean(m33751i);
        }
        if (shape != null || m33751i == null) {
            return null;
        }
        return toShapeLocationBean(m33751i);
    }

    @Nullable
    public final ShapeLocationBean prevShapeLocationBean(@NotNull NoteDocument noteDocument, @NotNull List<BoxInfo> visibleBoxList, @NotNull RectF viewport, boolean z) {
        Shape shape;
        ShapeModel m33752k;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        Pair<List<Shape>, List<Shape>> m33753a = m33753a(noteDocument, viewport, visibleBoxList);
        List<Shape> component1 = m33753a.component1();
        List<Shape> component2 = m33753a.component2();
        Date createdAt = noteDocument.getShapeLocationBean().getCreatedAt();
        if (component2.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(component2, new Comparator() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocShapeLocation$prevShapeLocationBean$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(((Shape) t).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String(), ((Shape) t2).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String());
                    return compareValues;
                }
            });
        }
        ListIterator<Shape> listIterator = component2.listIterator(component2.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                shape = null;
                break;
            }
            shape = listIterator.previous();
            Date date = shape.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
            if (date != null && date.compareTo(createdAt) < 0) {
                break;
            }
        }
        Shape shape2 = shape;
        if (!z || shape2 == null) {
            m33752k = m33752k(this, noteDocument, false, 1, null);
        } else {
            m33761m("hit cache in memory success, do not query from db");
            m33752k = null;
        }
        m33760l(shape2, component1, component2, createdAt, m33752k);
        if (shape2 == null && m33752k == null) {
            return null;
        }
        if (shape2 != null && m33752k == null) {
            return toShapeLocationBean(shape2);
        }
        if (shape2 != null && m33752k != null) {
            Date date2 = shape2.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
            return (date2 != null ? date2.getTime() : 0L) > m33752k.getCreatedAt() ? toShapeLocationBean(shape2) : toShapeLocationBean(m33752k);
        }
        if (shape2 != null || m33752k == null) {
            return null;
        }
        return toShapeLocationBean(m33752k);
    }

    @NotNull
    public final ShapeLocationBean toShapeLocationBean(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        String shapeUniqueId = shape.getShapeUniqueId();
        String pageUniqueId = shape.getPageUniqueId();
        Date date = shape.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
        if (date == null) {
            date = new Date();
        }
        return new ShapeLocationBean(shapeUniqueId, pageUniqueId, date);
    }

    @NotNull
    public final ShapeLocationBean toShapeLocationBean(@NotNull ShapeModel shapeModel) {
        Intrinsics.checkNotNullParameter(shapeModel, "<this>");
        String uniqueId = shapeModel.getUniqueId();
        String pageUniqueId = shapeModel.getPageUniqueId();
        if (pageUniqueId == null) {
            pageUniqueId = "";
        }
        return new ShapeLocationBean(uniqueId, pageUniqueId, new Date(shapeModel.getCreatedAt()));
    }
}
