package com.onyx.android.sdk.data;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001c\u0018\u00002\u00020\u0001:\u0001%BS\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\u0002\u0010\u000eR\u001a\u0010\f\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R \u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012R\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010 \"\u0004\b$\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;", "", FirebaseAnalytics.Param.ITEMS, "", "Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean$Item;", "totalSize", "", "totalCount", "", CouchFieldKey.KEY_UID, "", "udid", "eventAt", OnyxStatisticConstant.KEY_IDENTITIES, "(Ljava/util/List;JILjava/lang/String;Ljava/lang/String;JLjava/util/List;)V", "getEventAt", "()J", "setEventAt", "(J)V", "getIdentities", "()Ljava/util/List;", "setIdentities", "(Ljava/util/List;)V", "getItems", "setItems", "getTotalCount", "()I", "setTotalCount", "(I)V", "getTotalSize", "setTotalSize", "getUdid", "()Ljava/lang/String;", "setUdid", "(Ljava/lang/String;)V", "getUid", "setUid", "Item", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OnyxNoteSummaryReportBean {
    private long eventAt;

    @NotNull
    private List<Integer> identities;

    @NotNull
    private List<Item> items;
    private int totalCount;
    private long totalSize;

    @NotNull
    private String udid;

    @NotNull
    private String uid;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean$Item;", "", "noteId", "", "size", "", "(Ljava/lang/String;J)V", "getNoteId", "()Ljava/lang/String;", "setNoteId", "(Ljava/lang/String;)V", "getSize", "()J", "setSize", "(J)V", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final /* data */ class Item {

        @NotNull
        private String noteId;
        private long size;

        public Item() {
            this(null, 0L, 3, null);
        }

        public static /* synthetic */ Item copy$default(Item item, String str, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                str = item.noteId;
            }
            if ((i & 2) != 0) {
                j = item.size;
            }
            return item.copy(str, j);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getNoteId() {
            return this.noteId;
        }

        /* renamed from: component2, reason: from getter */
        public final long getSize() {
            return this.size;
        }

        @NotNull
        public final Item copy(@NotNull String noteId, long size) {
            Intrinsics.checkNotNullParameter(noteId, "noteId");
            return new Item(noteId, size);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Item)) {
                return false;
            }
            Item item = (Item) other;
            return Intrinsics.areEqual(this.noteId, item.noteId) && this.size == item.size;
        }

        @NotNull
        public final String getNoteId() {
            return this.noteId;
        }

        public final long getSize() {
            return this.size;
        }

        public int hashCode() {
            return (this.noteId.hashCode() * 31) + Long.hashCode(this.size);
        }

        public final void setNoteId(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.noteId = str;
        }

        public final void setSize(long j) {
            this.size = j;
        }

        @NotNull
        public String toString() {
            return "Item(noteId=" + this.noteId + ", size=" + this.size + ')';
        }

        public Item(@NotNull String noteId, long j) {
            Intrinsics.checkNotNullParameter(noteId, "noteId");
            this.noteId = noteId;
            this.size = j;
        }

        public /* synthetic */ Item(String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j);
        }
    }

    public OnyxNoteSummaryReportBean(@NotNull List<Item> items, long j, int i, @NotNull String uid, @NotNull String udid, long j2, @NotNull List<Integer> identities) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(udid, "udid");
        Intrinsics.checkNotNullParameter(identities, "identities");
        this.items = items;
        this.totalSize = j;
        this.totalCount = i;
        this.uid = uid;
        this.udid = udid;
        this.eventAt = j2;
        this.identities = identities;
    }

    public final long getEventAt() {
        return this.eventAt;
    }

    @NotNull
    public final List<Integer> getIdentities() {
        return this.identities;
    }

    @NotNull
    public final List<Item> getItems() {
        return this.items;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public final long getTotalSize() {
        return this.totalSize;
    }

    @NotNull
    public final String getUdid() {
        return this.udid;
    }

    @NotNull
    public final String getUid() {
        return this.uid;
    }

    public final void setEventAt(long j) {
        this.eventAt = j;
    }

    public final void setIdentities(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.identities = list;
    }

    public final void setItems(@NotNull List<Item> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.items = list;
    }

    public final void setTotalCount(int i) {
        this.totalCount = i;
    }

    public final void setTotalSize(long j) {
        this.totalSize = j;
    }

    public final void setUdid(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.udid = str;
    }

    public final void setUid(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uid = str;
    }

    public /* synthetic */ OnyxNoteSummaryReportBean(List list, long j, int i, String str, String str2, long j2, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? 0L : j, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? "" : str, (i2 & 16) != 0 ? "" : str2, (i2 & 32) != 0 ? 0L : j2, list2);
    }
}
