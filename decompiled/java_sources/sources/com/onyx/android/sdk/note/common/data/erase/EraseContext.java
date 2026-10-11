package com.onyx.android.sdk.note.common.data.erase;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\u0018\u0000 `2\u00020\u0001:\u0001`B\u0007¢\u0006\u0004\b^\u0010_J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tJ\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u0002J\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rJ\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0000J\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\rJ\u0006\u0010\u0015\u001a\u00020\u0014J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000e0\rJ\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017J\u0006\u0010\u001a\u001a\u00020\u0007J\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\u001c\u001a\u00020\u0007J\u0006\u0010\u001d\u001a\u00020\u0014J\u000e\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u000eJ\u0006\u0010 \u001a\u00020\u0014J\u0006\u0010!\u001a\u00020\u0014R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R$\u00102\u001a\u0012\u0012\u0004\u0012\u00020\t0.j\b\u0012\u0004\u0012\u00020\t`/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R(\u0010=\u001a\b\u0012\u0004\u0012\u00020\"068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010D\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR'\u0010K\u001a\u0012\u0012\u0004\u0012\u00020\"0Ej\b\u0012\u0004\u0012\u00020\"`F8\u0006¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR\"\u0010M\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010?\u001a\u0004\bM\u0010A\"\u0004\bN\u0010CR(\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR(\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bV\u0010P\u001a\u0004\bW\u0010R\"\u0004\bX\u0010TR(\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bZ\u0010P\u001a\u0004\b[\u0010R\"\u0004\b\\\u0010T¨\u0006a"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "detachErasingBufferDataList", "Landroid/graphics/RectF;", "rect", "", "unionEraseRect", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "bean", "addChangedShapeBean", "getChangedShapeBeans", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getChangedShapeList", "mergeChangedShapeBeans", "eraseContext", "merge", "getChangedAddShapeList", "", "isShapeChanged", "getChangedRemovedShapes", "", "", "getChangedPageSet", "resetEraseRect", "getEraseRect", "setAbort", "isAbort", "shape", "canErase", "isEraseComplete", "isErasing", "", "a", "I", "getEraseState", "()I", "setEraseState", "(I)V", "eraseState", "Ljava/util/concurrent/atomic/AtomicBoolean;", "b", "Ljava/util/concurrent/atomic/AtomicBoolean;", "abort", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "c", "Ljava/util/ArrayList;", "changedShapeBeans", "d", "Landroid/graphics/RectF;", "eraseRect", "", "e", "Ljava/util/Set;", "getOnlyEraseShapeTypes", "()Ljava/util/Set;", "setOnlyEraseShapeTypes", "(Ljava/util/Set;)V", "onlyEraseShapeTypes", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "getEraseAllContains", Constants.BOOLEAN_VALUE_SIG, "setEraseAllContains", "(Z)V", "eraseAllContains", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", C6998g.f39679a, "Ljava/util/HashSet;", "getHitTestShapeTypes", "()Ljava/util/HashSet;", "hitTestShapeTypes", C6999h.f39688c, "isSingleTapUp", "setSingleTapUp", "i", "Ljava/util/List;", "getErasingBufferDataList", "()Ljava/util/List;", "setErasingBufferDataList", "(Ljava/util/List;)V", "erasingBufferDataList", "j", "getErasingDataList", "setErasingDataList", "erasingDataList", C4921e.f26537n, "getDownToUpDataList", "setDownToUpDataList", "downToUpDataList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEraseContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseContext.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n1855#2,2:159\n1855#2,2:161\n1549#2:163\n1620#2,3:164\n*S KotlinDebug\n*F\n+ 1 EraseContext.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseContext\n*L\n73#1:159,2\n92#1:161,2\n105#1:163\n105#1:164,3\n*E\n"})
/* loaded from: classes8.dex */
public final class EraseContext {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    public int eraseState;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean abort = new AtomicBoolean(false);

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<ChangedShapeBean> changedShapeBeans = new ArrayList<>();

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public volatile RectF eraseRect;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public Set<Integer> onlyEraseShapeTypes;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean eraseAllContains;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final HashSet<Integer> hitTestShapeTypes;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean isSingleTapUp;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<TouchData> erasingBufferDataList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<TouchData> erasingDataList;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public List<TouchData> downToUpDataList;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b*\b\u0012\u0004\u0012\u00020\n0\bJ\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\b*\b\u0012\u0004\u0012\u00020\n0\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;", "", "()V", "isEraseAbort", "", "context", "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "getAddedShapeList", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "getRemovedShapes", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nEraseContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseContext.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n1549#2:159\n1620#2,3:160\n1549#2:163\n1620#2,3:164\n*S KotlinDebug\n*F\n+ 1 EraseContext.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion\n*L\n149#1:159\n149#1:160,3\n154#1:163\n154#1:164,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<Shape> getAddedShapeList(@NotNull List<ChangedShapeBean> list) {
            int collectionSizeOrDefault;
            List<Shape> flatten;
            Intrinsics.checkNotNullParameter(list, "<this>");
            List<ChangedShapeBean> list2 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(((ChangedShapeBean) it2.next()).getAddShapeList());
            }
            flatten = CollectionsKt__IterablesKt.flatten(arrayList);
            return flatten;
        }

        @NotNull
        public final List<Shape> getRemovedShapes(@NotNull List<ChangedShapeBean> list) {
            int collectionSizeOrDefault;
            List<Shape> flatten;
            Intrinsics.checkNotNullParameter(list, "<this>");
            List<ChangedShapeBean> list2 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(((ChangedShapeBean) it2.next()).getRemoveShapeList());
            }
            flatten = CollectionsKt__IterablesKt.flatten(arrayList);
            return flatten;
        }

        public final boolean isEraseAbort(@Nullable EraseContext context) {
            return context != null && context.isAbort();
        }

        public Companion() {
        }
    }

    public EraseContext() {
        Set<Integer> emptySet;
        emptySet = SetsKt__SetsKt.emptySet();
        this.onlyEraseShapeTypes = emptySet;
        this.hitTestShapeTypes = new HashSet<>();
        this.erasingBufferDataList = new ArrayList();
        this.erasingDataList = new ArrayList();
        this.downToUpDataList = new ArrayList();
    }

    public final void addChangedShapeBean(@NotNull ChangedShapeBean bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        this.changedShapeBeans.add(bean);
    }

    public final boolean canErase(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return CollectionKt.isNullOrEmpty(this.onlyEraseShapeTypes) || this.onlyEraseShapeTypes.contains(Integer.valueOf(ShapeTypes.INSTANCE.getTargetType(shape))) || this.onlyEraseShapeTypes.contains(Integer.valueOf(ShapePersistOptionsKt.getSubShapeType(shape, -1)));
    }

    @NotNull
    public final List<TouchData> detachErasingBufferDataList() {
        return CollectionKt.safelyDetachList$default(this.erasingBufferDataList, 0, 0, 3, null);
    }

    @NotNull
    public final List<Shape> getChangedAddShapeList() {
        return INSTANCE.getAddedShapeList(this.changedShapeBeans);
    }

    @NotNull
    public final Set<String> getChangedPageSet() {
        List mutableList;
        int collectionSizeOrDefault;
        List flatten;
        List distinct;
        Set<String> mutableSet;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.changedShapeBeans);
        List list = mutableList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ChangedShapeBean) it2.next()).getChangedPageSet());
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList);
        distinct = CollectionsKt___CollectionsKt.distinct(flatten);
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(distinct);
        return mutableSet;
    }

    @NotNull
    public final List<Shape> getChangedRemovedShapes() {
        return INSTANCE.getRemovedShapes(this.changedShapeBeans);
    }

    @NotNull
    public final List<ChangedShapeBean> getChangedShapeBeans() {
        return this.changedShapeBeans;
    }

    @NotNull
    public final List<Shape> getChangedShapeList() {
        List<Shape> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getChangedAddShapeList());
        CollectionKt.safeAddAll(mutableList, getChangedRemovedShapes());
        return mutableList;
    }

    @NotNull
    public final List<TouchData> getDownToUpDataList() {
        return this.downToUpDataList;
    }

    public final boolean getEraseAllContains() {
        return this.eraseAllContains;
    }

    @Nullable
    public final RectF getEraseRect() {
        return this.eraseRect;
    }

    public final int getEraseState() {
        return this.eraseState;
    }

    @NotNull
    public final List<TouchData> getErasingBufferDataList() {
        return this.erasingBufferDataList;
    }

    @NotNull
    public final List<TouchData> getErasingDataList() {
        return this.erasingDataList;
    }

    @NotNull
    public final HashSet<Integer> getHitTestShapeTypes() {
        return this.hitTestShapeTypes;
    }

    @NotNull
    public final Set<Integer> getOnlyEraseShapeTypes() {
        return this.onlyEraseShapeTypes;
    }

    public final boolean isAbort() {
        return this.abort.get();
    }

    public final boolean isEraseComplete() {
        return this.eraseState == 2;
    }

    public final boolean isErasing() {
        return this.eraseState == 1;
    }

    public final boolean isShapeChanged() {
        Iterator<T> it2 = getChangedShapeBeans().iterator();
        boolean z = false;
        while (it2.hasNext()) {
            z |= !((ChangedShapeBean) it2.next()).isEmpty();
        }
        return z;
    }

    /* renamed from: isSingleTapUp, reason: from getter */
    public final boolean getIsSingleTapUp() {
        return this.isSingleTapUp;
    }

    public final void merge(@NotNull EraseContext eraseContext) {
        Intrinsics.checkNotNullParameter(eraseContext, "eraseContext");
        this.changedShapeBeans.addAll(eraseContext.changedShapeBeans);
        this.hitTestShapeTypes.addAll(eraseContext.hitTestShapeTypes);
        mergeChangedShapeBeans();
        unionEraseRect(eraseContext.eraseRect);
    }

    @NotNull
    public final ChangedShapeBean mergeChangedShapeBeans() {
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        Iterator<T> it2 = this.changedShapeBeans.iterator();
        while (it2.hasNext()) {
            changedShapeBean.merge((ChangedShapeBean) it2.next());
        }
        this.changedShapeBeans.clear();
        addChangedShapeBean(changedShapeBean);
        return changedShapeBean;
    }

    public final void resetEraseRect() {
        this.eraseRect = null;
    }

    public final void setAbort() {
        this.abort.set(true);
    }

    public final void setDownToUpDataList(@NotNull List<TouchData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.downToUpDataList = list;
    }

    public final void setEraseAllContains(boolean z) {
        this.eraseAllContains = z;
    }

    public final void setEraseState(int i) {
        this.eraseState = i;
    }

    public final void setErasingBufferDataList(@NotNull List<TouchData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.erasingBufferDataList = list;
    }

    public final void setErasingDataList(@NotNull List<TouchData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.erasingDataList = list;
    }

    public final void setOnlyEraseShapeTypes(@NotNull Set<Integer> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.onlyEraseShapeTypes = set;
    }

    public final void setSingleTapUp(boolean z) {
        this.isSingleTapUp = z;
    }

    public final void unionEraseRect(@Nullable RectF rect) {
        if (rect == null) {
            return;
        }
        if (this.eraseRect == null) {
            this.eraseRect = new RectF(rect);
            return;
        }
        RectF rectF = this.eraseRect;
        Intrinsics.checkNotNull(rectF);
        rectF.union(rect);
    }
}
