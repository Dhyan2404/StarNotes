package com.onyx.android.sdk.replicator.note.data.info;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/info/Association;", "", "associationId", "", CouchFieldKey.KEY_ASSOCIATION_TYPE, "", "(Ljava/lang/String;I)V", "getAssociationId", "()Ljava/lang/String;", "setAssociationId", "(Ljava/lang/String;)V", "getAssociationType", "()I", "setAssociationType", "(I)V", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class Association {

    @Nullable
    private String associationId;
    private int associationType;

    /* JADX WARN: Multi-variable type inference failed */
    public Association() {
        this(null, 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ Association copy$default(Association association, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = association.associationId;
        }
        if ((i2 & 2) != 0) {
            i = association.associationType;
        }
        return association.copy(str, i);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getAssociationId() {
        return this.associationId;
    }

    /* renamed from: component2, reason: from getter */
    public final int getAssociationType() {
        return this.associationType;
    }

    @NotNull
    public final Association copy(@Nullable String associationId, int associationType) {
        return new Association(associationId, associationType);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Association)) {
            return false;
        }
        Association association = (Association) other;
        return Intrinsics.areEqual(this.associationId, association.associationId) && this.associationType == association.associationType;
    }

    @Nullable
    public final String getAssociationId() {
        return this.associationId;
    }

    public final int getAssociationType() {
        return this.associationType;
    }

    public int hashCode() {
        String str = this.associationId;
        return ((str == null ? 0 : str.hashCode()) * 31) + Integer.hashCode(this.associationType);
    }

    public final void setAssociationId(@Nullable String str) {
        this.associationId = str;
    }

    public final void setAssociationType(int i) {
        this.associationType = i;
    }

    @NotNull
    public String toString() {
        return "Association(associationId=" + this.associationId + ", associationType=" + this.associationType + ')';
    }

    public Association(@Nullable String str, int i) {
        this.associationId = str;
        this.associationType = i;
    }

    public /* synthetic */ Association(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? 0 : i);
    }
}
