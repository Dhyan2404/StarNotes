package com.onyx.android.sdk.replicator.note.bean;

import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001b\u001a\u00020\bHÆ\u0003J1\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0006HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", "", CouchFieldKey.KEY_UNIQUE_ID, "", "title", "type", "", "orientation", "Lcom/onyx/android/sdk/base/data/Orientation;", "(Ljava/lang/String;Ljava/lang/String;ILcom/onyx/android/sdk/base/data/Orientation;)V", "getOrientation", "()Lcom/onyx/android/sdk/base/data/Orientation;", "setOrientation", "(Lcom/onyx/android/sdk/base/data/Orientation;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getType", "()I", "setType", "(I)V", "getUniqueId", "setUniqueId", "component1", "component2", "component3", "component4", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class CoverCategory {

    @NotNull
    private Orientation orientation;

    @NotNull
    private String title;
    private int type;

    @NotNull
    private String uniqueId;

    public CoverCategory() {
        this(null, null, 0, null, 15, null);
    }

    public static /* synthetic */ CoverCategory copy$default(CoverCategory coverCategory, String str, String str2, int i, Orientation orientation, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = coverCategory.uniqueId;
        }
        if ((i2 & 2) != 0) {
            str2 = coverCategory.title;
        }
        if ((i2 & 4) != 0) {
            i = coverCategory.type;
        }
        if ((i2 & 8) != 0) {
            orientation = coverCategory.orientation;
        }
        return coverCategory.copy(str, str2, i, orientation);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getUniqueId() {
        return this.uniqueId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* renamed from: component3, reason: from getter */
    public final int getType() {
        return this.type;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final Orientation getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final CoverCategory copy(@NotNull String uniqueId, @NotNull String title, int type, @NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        return new CoverCategory(uniqueId, title, type, orientation);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CoverCategory)) {
            return false;
        }
        CoverCategory coverCategory = (CoverCategory) other;
        return Intrinsics.areEqual(this.uniqueId, coverCategory.uniqueId) && Intrinsics.areEqual(this.title, coverCategory.title) && this.type == coverCategory.type && this.orientation == coverCategory.orientation;
    }

    @NotNull
    public final Orientation getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public int hashCode() {
        return (((((this.uniqueId.hashCode() * 31) + this.title.hashCode()) * 31) + Integer.hashCode(this.type)) * 31) + this.orientation.hashCode();
    }

    public final void setOrientation(@NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<set-?>");
        this.orientation = orientation;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }

    @NotNull
    public String toString() {
        return "CoverCategory(uniqueId=" + this.uniqueId + ", title=" + this.title + ", type=" + this.type + ", orientation=" + this.orientation + ')';
    }

    public CoverCategory(@NotNull String uniqueId, @NotNull String title, int i, @NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        this.uniqueId = uniqueId;
        this.title = title;
        this.type = i;
        this.orientation = orientation;
    }

    public /* synthetic */ CoverCategory(String str, String str2, int i, Orientation orientation, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? Orientation.PORTRAIT : orientation);
    }
}
