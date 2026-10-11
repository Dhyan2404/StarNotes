package com.onyx.android.sdk.media.event;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u0004HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/media/event/RecordChangeEvent;", "", "", "component1", "", "component2", "component3", CouchFieldKey.KEY_RECORD_ID, "maxAmplitude", "duration", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getRecordId", "()Ljava/lang/String;", "b", "I", "getMaxAmplitude", "()I", "c", "getDuration", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;II)V", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class RecordChangeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String recordId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final int maxAmplitude;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int duration;

    public RecordChangeEvent(@NotNull String recordId, int i, int i2) {
        Intrinsics.checkNotNullParameter(recordId, "recordId");
        this.recordId = recordId;
        this.maxAmplitude = i;
        this.duration = i2;
    }

    public static /* synthetic */ RecordChangeEvent copy$default(RecordChangeEvent recordChangeEvent, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = recordChangeEvent.recordId;
        }
        if ((i3 & 2) != 0) {
            i = recordChangeEvent.maxAmplitude;
        }
        if ((i3 & 4) != 0) {
            i2 = recordChangeEvent.duration;
        }
        return recordChangeEvent.copy(str, i, i2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getRecordId() {
        return this.recordId;
    }

    /* renamed from: component2, reason: from getter */
    public final int getMaxAmplitude() {
        return this.maxAmplitude;
    }

    /* renamed from: component3, reason: from getter */
    public final int getDuration() {
        return this.duration;
    }

    @NotNull
    public final RecordChangeEvent copy(@NotNull String recordId, int maxAmplitude, int duration) {
        Intrinsics.checkNotNullParameter(recordId, "recordId");
        return new RecordChangeEvent(recordId, maxAmplitude, duration);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RecordChangeEvent)) {
            return false;
        }
        RecordChangeEvent recordChangeEvent = (RecordChangeEvent) other;
        return Intrinsics.areEqual(this.recordId, recordChangeEvent.recordId) && this.maxAmplitude == recordChangeEvent.maxAmplitude && this.duration == recordChangeEvent.duration;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final int getMaxAmplitude() {
        return this.maxAmplitude;
    }

    @NotNull
    public final String getRecordId() {
        return this.recordId;
    }

    public int hashCode() {
        return (((this.recordId.hashCode() * 31) + Integer.hashCode(this.maxAmplitude)) * 31) + Integer.hashCode(this.duration);
    }

    @NotNull
    public String toString() {
        return "RecordChangeEvent(recordId=" + this.recordId + ", maxAmplitude=" + this.maxAmplitude + ", duration=" + this.duration + ')';
    }
}
