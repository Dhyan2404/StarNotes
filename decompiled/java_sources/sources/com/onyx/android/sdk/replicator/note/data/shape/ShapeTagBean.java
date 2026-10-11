package com.onyx.android.sdk.replicator.note.data.shape;

import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\b\u001a\u00020\u0000H\u0016R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "", "()V", "tagList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "getTagList", "()Ljava/util/List;", "clone", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeTagBean implements Cloneable {

    @NotNull
    private final List<SyncTagModel> tagList = new ArrayList();

    @NotNull
    public final List<SyncTagModel> getTagList() {
        return this.tagList;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ShapeTagBean m72373clone() {
        Sequence asSequence;
        Sequence map;
        List list;
        ShapeTagBean shapeTagBean = new ShapeTagBean();
        List<SyncTagModel> list2 = shapeTagBean.tagList;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.tagList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<SyncTagModel, SyncTagModel>() { // from class: com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean$clone$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final SyncTagModel invoke(@NotNull SyncTagModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.m72394clone();
            }
        });
        list = SequencesKt___SequencesKt.toList(map);
        list2.addAll(list);
        return shapeTagBean;
    }
}
