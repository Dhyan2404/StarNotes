package com.onyx.android.sdk.replicator.note.data.pen;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0016\u001a\u00020\u0004J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0018\u001a\u00020\u0004J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0007J\b\u0010\u001b\u001a\u0004\u0018\u00010\u000eJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\u001e\u001a\u00020\u001f2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0007R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR \u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0006\"\u0004\b\u0015\u0010\b¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;", "Ljava/io/Serializable;", "()V", "id", "", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "name", "getName", "setName", "penList", "", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "getPenList", "()Ljava/util/List;", "setPenList", "(Ljava/util/List;)V", "selectedId", "getSelectedId", "setSelectedId", "ensureUniqueId", "getNextPenArgs", "selectId", "getPenArgsById", "getQuickPens", "getSelectedPenArgs", "loadPenArgsById", "penId", "setQuickPens", "", "list", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nPencilBox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PencilBox.kt\ncom/onyx/android/sdk/replicator/note/data/pen/PencilBox\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"})
/* loaded from: classes8.dex */
public final class PencilBox implements Serializable {

    @Nullable
    private String selectedId;

    @NotNull
    private String name = "";

    @NotNull
    private String id = "";

    @NotNull
    private List<PenArgs> penList = new ArrayList();

    @NotNull
    public final String ensureUniqueId() {
        if (this.id.length() == 0) {
            this.id = UUIDUtils.INSTANCE.shortUUID();
        }
        return this.id;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final PenArgs getNextPenArgs(@NotNull String selectId) {
        Object obj;
        Intrinsics.checkNotNullParameter(selectId, "selectId");
        if (this.penList.isEmpty()) {
            return null;
        }
        if (this.penList.size() == 1) {
            return this.penList.get(0);
        }
        Iterator<T> it2 = this.penList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((PenArgs) obj).getId(), selectId)) {
                break;
            }
        }
        PenArgs penArgs = (PenArgs) obj;
        if (penArgs == null) {
            return null;
        }
        int indexOf = this.penList.indexOf(penArgs);
        return indexOf < this.penList.size() - 1 ? this.penList.get(indexOf + 1) : this.penList.get(0);
    }

    @Nullable
    public final PenArgs getPenArgsById(@Nullable String selectId) {
        Object obj = null;
        if (selectId == null) {
            return null;
        }
        Iterator<T> it2 = this.penList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (Intrinsics.areEqual(((PenArgs) next).getId(), selectId)) {
                obj = next;
                break;
            }
        }
        return (PenArgs) obj;
    }

    @NotNull
    public final List<PenArgs> getPenList() {
        return this.penList;
    }

    @Deprecated(message = "Don't remove, this is to maintain compatibility", replaceWith = @ReplaceWith(expression = "this.penList", imports = {}))
    @JSONField(deserialize = false, serialize = true)
    @NotNull
    public final List<PenArgs> getQuickPens() {
        return this.penList;
    }

    @Nullable
    public final String getSelectedId() {
        return this.selectedId;
    }

    @Nullable
    public final PenArgs getSelectedPenArgs() {
        return getPenArgsById(this.selectedId);
    }

    @Nullable
    public final PenArgs loadPenArgsById(@Nullable String penId) {
        for (PenArgs penArgs : this.penList) {
            if (StringUtils.equals(penArgs.getId(), penId)) {
                return penArgs;
            }
        }
        return null;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setPenList(@NotNull List<PenArgs> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.penList = list;
    }

    @Deprecated(message = "Don't remove, this is to maintain compatibility", replaceWith = @ReplaceWith(expression = "this.penList", imports = {}))
    @JSONField(deserialize = false, serialize = true)
    public final void setQuickPens(@NotNull List<PenArgs> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.penList = list;
    }

    public final void setSelectedId(@Nullable String str) {
        this.selectedId = str;
    }
}
