package com.onyx.android.sdk.universal.editor.events.note;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\u0019\u0010\u0006\u001a\u00020\u00002\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\t\u0010\t\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogCancelEvent;", "", "", "", "component1", "layerIds", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getLayerIds", "()Ljava/util/List;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ClearLayerDialogCancelEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Integer> layerIds;

    public ClearLayerDialogCancelEvent(@NotNull List<Integer> layerIds) {
        Intrinsics.checkNotNullParameter(layerIds, "layerIds");
        this.layerIds = layerIds;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ClearLayerDialogCancelEvent copy$default(ClearLayerDialogCancelEvent clearLayerDialogCancelEvent, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = clearLayerDialogCancelEvent.layerIds;
        }
        return clearLayerDialogCancelEvent.copy(list);
    }

    @NotNull
    public final List<Integer> component1() {
        return this.layerIds;
    }

    @NotNull
    public final ClearLayerDialogCancelEvent copy(@NotNull List<Integer> layerIds) {
        Intrinsics.checkNotNullParameter(layerIds, "layerIds");
        return new ClearLayerDialogCancelEvent(layerIds);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ClearLayerDialogCancelEvent) && Intrinsics.areEqual(this.layerIds, ((ClearLayerDialogCancelEvent) other).layerIds);
    }

    @NotNull
    public final List<Integer> getLayerIds() {
        return this.layerIds;
    }

    public int hashCode() {
        return this.layerIds.hashCode();
    }

    @NotNull
    public String toString() {
        return "ClearLayerDialogCancelEvent(layerIds=" + this.layerIds + ')';
    }
}
