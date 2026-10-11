package com.onyx.galaxy.note.datarepository.bean;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/bean/BatchUpdateArgs;", "", FirebaseAnalytics.Param.ITEMS, "", "Lcom/onyx/galaxy/note/datarepository/bean/ResourceItemArgs;", "(Ljava/util/List;)V", "getItems", "()Ljava/util/List;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class BatchUpdateArgs {

    @NotNull
    private final List<ResourceItemArgs> items;

    public BatchUpdateArgs(@NotNull List<ResourceItemArgs> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
    }

    @NotNull
    public final List<ResourceItemArgs> getItems() {
        return this.items;
    }
}
