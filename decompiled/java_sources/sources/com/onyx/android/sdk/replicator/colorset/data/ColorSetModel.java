package com.onyx.android.sdk.replicator.colorset.data;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", CouchFieldKey.KEY_COLORS, "", "", "getColors", "()Ljava/util/List;", "setColors", "(Ljava/util/List;)V", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "nameRes", "getNameRes", "setNameRes", CouchFieldKey.KEY_ORDER_INDEX, "", "getOrderIndex", "()J", "setOrderIndex", "(J)V", CouchFieldKey.KEY_PRESET, "", "getPreset", Constants.BOOLEAN_VALUE_SIG, "setPreset", "(Z)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ColorSetModel extends BaseReplicatorModel {

    @NotNull
    private List<Integer> colors;

    @NotNull
    private String name = "";

    @NotNull
    private String nameRes = "";
    private long orderIndex;
    private boolean preset;

    public ColorSetModel() {
        List<Integer> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.colors = emptyList;
        this.preset = true;
        this.orderIndex = -1L;
    }

    @NotNull
    public final List<Integer> getColors() {
        return this.colors;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getNameRes() {
        return this.nameRes;
    }

    public final long getOrderIndex() {
        return this.orderIndex;
    }

    public final boolean getPreset() {
        return this.preset;
    }

    public final void setColors(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.colors = list;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setNameRes(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.nameRes = str;
    }

    public final void setOrderIndex(long j) {
        this.orderIndex = j;
    }

    public final void setPreset(boolean z) {
        this.preset = z;
    }
}
