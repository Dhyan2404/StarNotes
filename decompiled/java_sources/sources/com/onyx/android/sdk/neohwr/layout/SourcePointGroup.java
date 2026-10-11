package com.onyx.android.sdk.neohwr.layout;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B3\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nJ\u0006\u0010\u0017\u001a\u00020\u0000R\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0016\u0010\u000e¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "", "id", "", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", ApiBroadCastReceiver.ARGS_STROKE_COLOR, "", CouchFieldKey.KEY_FILL_COLOR, "(Ljava/lang/String;Ljava/util/List;II)V", "getFillColor", "()I", "setFillColor", "(I)V", "getId", "()Ljava/lang/String;", "getPoints", "()Ljava/util/List;", "setPoints", "(Ljava/util/List;)V", "getStrokeColor", "setStrokeColor", "copy", "Companion", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SourcePointGroup {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int fillColor;

    @NotNull
    private final String id;

    @NotNull
    private List<TouchPoint> points;
    private int strokeColor;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\b\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;", "", "()V", "getMostUsedFillColor", "", "", "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "getMostUsedStrokeColor", "merge", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nSourcePointGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourcePointGroup.kt\ncom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1360#2:47\n1446#2,5:48\n1549#2:53\n1620#2,3:54\n1549#2:57\n1620#2,3:58\n*S KotlinDebug\n*F\n+ 1 SourcePointGroup.kt\ncom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion\n*L\n27#1:47\n27#1:48,5\n39#1:53\n39#1:54,3\n43#1:57\n43#1:58,3\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getMostUsedFillColor(@NotNull Collection<SourcePointGroup> collection) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(collection, "<this>");
            Collection<SourcePointGroup> collection2 = collection;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = collection2.iterator();
            while (it2.hasNext()) {
                arrayList.add(Integer.valueOf(((SourcePointGroup) it2.next()).getFillColor()));
            }
            Integer num = (Integer) CollectionKt.getMostUsedItem(arrayList);
            if (num != null) {
                return num.intValue();
            }
            return 0;
        }

        public final int getMostUsedStrokeColor(@NotNull Collection<SourcePointGroup> collection) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(collection, "<this>");
            Collection<SourcePointGroup> collection2 = collection;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = collection2.iterator();
            while (it2.hasNext()) {
                arrayList.add(Integer.valueOf(((SourcePointGroup) it2.next()).getStrokeColor()));
            }
            Integer num = (Integer) CollectionKt.getMostUsedItem(arrayList);
            if (num != null) {
                return num.intValue();
            }
            return -16777216;
        }

        @NotNull
        public final SourcePointGroup merge(@NotNull Collection<SourcePointGroup> collection) {
            Intrinsics.checkNotNullParameter(collection, "<this>");
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = collection.iterator();
            while (it2.hasNext()) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, ((SourcePointGroup) it2.next()).getPoints());
            }
            return new SourcePointGroup(null, arrayList, getMostUsedStrokeColor(collection), getMostUsedFillColor(collection), 1, null);
        }

        private Companion() {
        }
    }

    public SourcePointGroup() {
        this(null, null, 0, 0, 15, null);
    }

    @NotNull
    public final SourcePointGroup copy() {
        List<TouchPoint> copy = GeometryUtils.INSTANCE.copy(this.points);
        int i = this.strokeColor;
        return new SourcePointGroup(null, copy, i, i, 1, null);
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final List<TouchPoint> getPoints() {
        return this.points;
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    public final void setFillColor(int i) {
        this.fillColor = i;
    }

    public final void setPoints(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.points = list;
    }

    public final void setStrokeColor(int i) {
        this.strokeColor = i;
    }

    public SourcePointGroup(@NotNull String id, @NotNull List<TouchPoint> points, int i, int i2) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(points, "points");
        this.id = id;
        this.points = points;
        this.strokeColor = i;
        this.fillColor = i2;
    }

    public /* synthetic */ SourcePointGroup(String str, List list, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? UUIDUtils.INSTANCE.shortUUID() : str, (i3 & 2) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }
}
