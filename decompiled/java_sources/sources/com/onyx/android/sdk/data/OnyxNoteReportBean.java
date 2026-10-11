package com.onyx.android.sdk.data;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \t2\u00020\u0001:\u0002\t\nB\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/OnyxNoteReportBean;", "", FirebaseAnalytics.Param.ITEMS, "", "Lcom/onyx/android/sdk/data/OnyxNoteReportBean$Item;", "(Ljava/util/List;)V", "getItems", "()Ljava/util/List;", "setItems", "Companion", "Item", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OnyxNoteReportBean {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private List<Item> items;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/OnyxNoteReportBean$Companion;", "", "()V", "createOnyxNoteReportBean", "Lcom/onyx/android/sdk/data/OnyxNoteReportBean;", "list", "", "Lcom/onyx/android/sdk/data/OnyxNoteModel;", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nOnyxNoteReportBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxNoteReportBean.kt\ncom/onyx/android/sdk/data/OnyxNoteReportBean$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,29:1\n1549#2:30\n1620#2,3:31\n*S KotlinDebug\n*F\n+ 1 OnyxNoteReportBean.kt\ncom/onyx/android/sdk/data/OnyxNoteReportBean$Companion\n*L\n17#1:30\n17#1:31,3\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final OnyxNoteReportBean createOnyxNoteReportBean(@NotNull List<OnyxNoteModel> list) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(list, "list");
            List<OnyxNoteModel> list2 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (OnyxNoteModel onyxNoteModel : list2) {
                arrayList.add(new Item(onyxNoteModel.getNoteId(), onyxNoteModel.getSize(), onyxNoteModel.getEventAt(), onyxNoteModel.getUid(), onyxNoteModel.getUdid()));
            }
            return new OnyxNoteReportBean(arrayList);
        }

        private Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J;\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/data/OnyxNoteReportBean$Item;", "", "noteId", "", "size", "", "eventAt", CouchFieldKey.KEY_UID, "udid", "(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V", "getEventAt", "()J", "setEventAt", "(J)V", "getNoteId", "()Ljava/lang/String;", "setNoteId", "(Ljava/lang/String;)V", "getSize", "setSize", "getUdid", "setUdid", "getUid", "setUid", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final /* data */ class Item {
        private long eventAt;

        @NotNull
        private String noteId;
        private long size;

        @NotNull
        private String udid;

        @NotNull
        private String uid;

        public Item() {
            this(null, 0L, 0L, null, null, 31, null);
        }

        public static /* synthetic */ Item copy$default(Item item, String str, long j, long j2, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = item.noteId;
            }
            if ((i & 2) != 0) {
                j = item.size;
            }
            long j3 = j;
            if ((i & 4) != 0) {
                j2 = item.eventAt;
            }
            long j4 = j2;
            if ((i & 8) != 0) {
                str2 = item.uid;
            }
            String str4 = str2;
            if ((i & 16) != 0) {
                str3 = item.udid;
            }
            return item.copy(str, j3, j4, str4, str3);
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

        /* renamed from: component3, reason: from getter */
        public final long getEventAt() {
            return this.eventAt;
        }

        @NotNull
        /* renamed from: component4, reason: from getter */
        public final String getUid() {
            return this.uid;
        }

        @NotNull
        /* renamed from: component5, reason: from getter */
        public final String getUdid() {
            return this.udid;
        }

        @NotNull
        public final Item copy(@NotNull String noteId, long size, long eventAt, @NotNull String uid, @NotNull String udid) {
            Intrinsics.checkNotNullParameter(noteId, "noteId");
            Intrinsics.checkNotNullParameter(uid, "uid");
            Intrinsics.checkNotNullParameter(udid, "udid");
            return new Item(noteId, size, eventAt, uid, udid);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Item)) {
                return false;
            }
            Item item = (Item) other;
            return Intrinsics.areEqual(this.noteId, item.noteId) && this.size == item.size && this.eventAt == item.eventAt && Intrinsics.areEqual(this.uid, item.uid) && Intrinsics.areEqual(this.udid, item.udid);
        }

        public final long getEventAt() {
            return this.eventAt;
        }

        @NotNull
        public final String getNoteId() {
            return this.noteId;
        }

        public final long getSize() {
            return this.size;
        }

        @NotNull
        public final String getUdid() {
            return this.udid;
        }

        @NotNull
        public final String getUid() {
            return this.uid;
        }

        public int hashCode() {
            return (((((((this.noteId.hashCode() * 31) + Long.hashCode(this.size)) * 31) + Long.hashCode(this.eventAt)) * 31) + this.uid.hashCode()) * 31) + this.udid.hashCode();
        }

        public final void setEventAt(long j) {
            this.eventAt = j;
        }

        public final void setNoteId(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.noteId = str;
        }

        public final void setSize(long j) {
            this.size = j;
        }

        public final void setUdid(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.udid = str;
        }

        public final void setUid(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.uid = str;
        }

        @NotNull
        public String toString() {
            return "Item(noteId=" + this.noteId + ", size=" + this.size + ", eventAt=" + this.eventAt + ", uid=" + this.uid + ", udid=" + this.udid + ')';
        }

        public Item(@NotNull String noteId, long j, long j2, @NotNull String uid, @NotNull String udid) {
            Intrinsics.checkNotNullParameter(noteId, "noteId");
            Intrinsics.checkNotNullParameter(uid, "uid");
            Intrinsics.checkNotNullParameter(udid, "udid");
            this.noteId = noteId;
            this.size = j;
            this.eventAt = j2;
            this.uid = uid;
            this.udid = udid;
        }

        public /* synthetic */ Item(String str, long j, long j2, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? 0L : j2, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? "" : str3);
        }
    }

    public OnyxNoteReportBean(@NotNull List<Item> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
    }

    @NotNull
    public final List<Item> getItems() {
        return this.items;
    }

    public final void setItems(@NotNull List<Item> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.items = list;
    }
}
