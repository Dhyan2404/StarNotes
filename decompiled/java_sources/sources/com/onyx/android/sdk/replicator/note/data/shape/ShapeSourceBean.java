package com.onyx.android.sdk.replicator.note.data.shape;

import com.onyx.android.sdk.base.extension.CollectionKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\b\u0010\r\u001a\u00020\u0000H\u0016R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;", "", "()V", "referenceShapeBeanList", "", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;", "getReferenceShapeBeanList", "()Ljava/util/List;", "setReferenceShapeBeanList", "(Ljava/util/List;)V", "addShapeReferenceBean", "", "bean", "clone", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeSourceBean implements Cloneable {

    @Nullable
    private List<ShapeReferenceBean> referenceShapeBeanList;

    public final void addShapeReferenceBean(@Nullable ShapeReferenceBean bean) {
        List<ShapeReferenceBean> ensureMutableList = CollectionKt.ensureMutableList(this.referenceShapeBeanList);
        this.referenceShapeBeanList = ensureMutableList;
        CollectionKt.safeAdd(ensureMutableList, bean);
    }

    @Nullable
    public final List<ShapeReferenceBean> getReferenceShapeBeanList() {
        return this.referenceShapeBeanList;
    }

    public final void setReferenceShapeBeanList(@Nullable List<ShapeReferenceBean> list) {
        this.referenceShapeBeanList = list;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ShapeSourceBean m72372clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.ShapeSourceBean");
        return (ShapeSourceBean) clone;
    }
}
