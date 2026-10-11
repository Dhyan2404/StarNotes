package com.onyx.android.sdk.replicator.note.data.shape;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.extension.CollectionKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0000H\u0016J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0007R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;", "", "()V", "shapeReferenceBean", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;", "getShapeReferenceBean", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;", "setShapeReferenceBean", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V", "shapeSrcBean", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;", "getShapeSrcBean", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;", "setShapeSrcBean", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V", "clone", "getConnectionShapeIds", "", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShapeConnectionBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeConnectionBean.kt\ncom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,29:1\n1549#2:30\n1620#2,3:31\n*S KotlinDebug\n*F\n+ 1 ShapeConnectionBean.kt\ncom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean\n*L\n25#1:30\n25#1:31,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeConnectionBean implements Cloneable {

    @Nullable
    private ShapeReferenceBean shapeReferenceBean;

    @Nullable
    private ShapeSourceBean shapeSrcBean;

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final List<String> getConnectionShapeIds() {
        ArrayList arrayList;
        List<String> list;
        List<ShapeReferenceBean> referenceShapeBeanList;
        int collectionSizeOrDefault;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ShapeSourceBean shapeSourceBean = this.shapeSrcBean;
        if (shapeSourceBean == null || (referenceShapeBeanList = shapeSourceBean.getReferenceShapeBeanList()) == null) {
            arrayList = null;
        } else {
            List<ShapeReferenceBean> list2 = referenceShapeBeanList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(((ShapeReferenceBean) it2.next()).getShapeId());
            }
        }
        CollectionKt.safeAddAll(linkedHashSet, arrayList);
        ShapeReferenceBean shapeReferenceBean = this.shapeReferenceBean;
        CollectionKt.safeAdd(linkedHashSet, shapeReferenceBean != null ? shapeReferenceBean.getShapeId() : null);
        list = CollectionsKt___CollectionsKt.toList(linkedHashSet);
        return list;
    }

    @Nullable
    public final ShapeReferenceBean getShapeReferenceBean() {
        return this.shapeReferenceBean;
    }

    @Nullable
    public final ShapeSourceBean getShapeSrcBean() {
        return this.shapeSrcBean;
    }

    public final void setShapeReferenceBean(@Nullable ShapeReferenceBean shapeReferenceBean) {
        this.shapeReferenceBean = shapeReferenceBean;
    }

    public final void setShapeSrcBean(@Nullable ShapeSourceBean shapeSourceBean) {
        this.shapeSrcBean = shapeSourceBean;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ShapeConnectionBean m72361clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.ShapeConnectionBean");
        return (ShapeConnectionBean) clone;
    }
}
