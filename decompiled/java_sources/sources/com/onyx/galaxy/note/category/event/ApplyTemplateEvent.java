package com.onyx.galaxy.note.category.event;

import com.onyx.android.sdk.replicator.note.bean.ApplyTemplateInfo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;", "", "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;", "component1", "applyTemplateInfo", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;", "getApplyTemplateInfo", "()Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class ApplyTemplateEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final ApplyTemplateInfo applyTemplateInfo;

    public ApplyTemplateEvent(@NotNull ApplyTemplateInfo applyTemplateInfo) {
        Intrinsics.checkNotNullParameter(applyTemplateInfo, "applyTemplateInfo");
        this.applyTemplateInfo = applyTemplateInfo;
    }

    public static /* synthetic */ ApplyTemplateEvent copy$default(ApplyTemplateEvent applyTemplateEvent, ApplyTemplateInfo applyTemplateInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            applyTemplateInfo = applyTemplateEvent.applyTemplateInfo;
        }
        return applyTemplateEvent.copy(applyTemplateInfo);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final ApplyTemplateInfo getApplyTemplateInfo() {
        return this.applyTemplateInfo;
    }

    @NotNull
    public final ApplyTemplateEvent copy(@NotNull ApplyTemplateInfo applyTemplateInfo) {
        Intrinsics.checkNotNullParameter(applyTemplateInfo, "applyTemplateInfo");
        return new ApplyTemplateEvent(applyTemplateInfo);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ApplyTemplateEvent) && Intrinsics.areEqual(this.applyTemplateInfo, ((ApplyTemplateEvent) other).applyTemplateInfo);
    }

    @NotNull
    public final ApplyTemplateInfo getApplyTemplateInfo() {
        return this.applyTemplateInfo;
    }

    public int hashCode() {
        return this.applyTemplateInfo.hashCode();
    }

    @NotNull
    public String toString() {
        return "ApplyTemplateEvent(applyTemplateInfo=" + this.applyTemplateInfo + ')';
    }
}
