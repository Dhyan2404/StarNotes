package com.onyx.android.sdk.geometry.data;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\bJ\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003JI\u0010\u0012\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0006\u0010\u0017\u001a\u00020\u0015J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\u0006\u0010\u001a\u001a\u00020\u0004J\u0006\u0010\u001b\u001a\u00020\u0004J\u0006\u0010\u001c\u001a\u00020\u0004J\u0006\u0010\u001d\u001a\u00020\u0004J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/BoundCollision;", "", "leftJoins", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "rightJoins", "topJoins", "bottomJoins", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getBottomJoins", "()Ljava/util/List;", "getLeftJoins", "getRightJoins", "getTopJoins", "component1", "component2", "component3", "component4", "copy", "distinctCollision", "equals", "", Constants.ATTRVAL_OTHER, "hasDisjointEdge", "hashCode", "", "singleBottom", "singleLeft", "singleRight", "singleTop", "toString", "", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class BoundCollision {

    @NotNull
    private final List<TouchPoint> bottomJoins;

    @NotNull
    private final List<TouchPoint> leftJoins;

    @NotNull
    private final List<TouchPoint> rightJoins;

    @NotNull
    private final List<TouchPoint> topJoins;

    public BoundCollision(@NotNull List<TouchPoint> leftJoins, @NotNull List<TouchPoint> rightJoins, @NotNull List<TouchPoint> topJoins, @NotNull List<TouchPoint> bottomJoins) {
        Intrinsics.checkNotNullParameter(leftJoins, "leftJoins");
        Intrinsics.checkNotNullParameter(rightJoins, "rightJoins");
        Intrinsics.checkNotNullParameter(topJoins, "topJoins");
        Intrinsics.checkNotNullParameter(bottomJoins, "bottomJoins");
        this.leftJoins = leftJoins;
        this.rightJoins = rightJoins;
        this.topJoins = topJoins;
        this.bottomJoins = bottomJoins;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BoundCollision copy$default(BoundCollision boundCollision, List list, List list2, List list3, List list4, int i, Object obj) {
        if ((i & 1) != 0) {
            list = boundCollision.leftJoins;
        }
        if ((i & 2) != 0) {
            list2 = boundCollision.rightJoins;
        }
        if ((i & 4) != 0) {
            list3 = boundCollision.topJoins;
        }
        if ((i & 8) != 0) {
            list4 = boundCollision.bottomJoins;
        }
        return boundCollision.copy(list, list2, list3, list4);
    }

    @NotNull
    public final List<TouchPoint> component1() {
        return this.leftJoins;
    }

    @NotNull
    public final List<TouchPoint> component2() {
        return this.rightJoins;
    }

    @NotNull
    public final List<TouchPoint> component3() {
        return this.topJoins;
    }

    @NotNull
    public final List<TouchPoint> component4() {
        return this.bottomJoins;
    }

    @NotNull
    public final BoundCollision copy(@NotNull List<TouchPoint> leftJoins, @NotNull List<TouchPoint> rightJoins, @NotNull List<TouchPoint> topJoins, @NotNull List<TouchPoint> bottomJoins) {
        Intrinsics.checkNotNullParameter(leftJoins, "leftJoins");
        Intrinsics.checkNotNullParameter(rightJoins, "rightJoins");
        Intrinsics.checkNotNullParameter(topJoins, "topJoins");
        Intrinsics.checkNotNullParameter(bottomJoins, "bottomJoins");
        return new BoundCollision(leftJoins, rightJoins, topJoins, bottomJoins);
    }

    @NotNull
    public final List<TouchPoint> distinctCollision() {
        List<TouchPoint> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{singleLeft(), singleTop(), singleRight(), singleBottom()});
        return listOf;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BoundCollision)) {
            return false;
        }
        BoundCollision boundCollision = (BoundCollision) other;
        return Intrinsics.areEqual(this.leftJoins, boundCollision.leftJoins) && Intrinsics.areEqual(this.rightJoins, boundCollision.rightJoins) && Intrinsics.areEqual(this.topJoins, boundCollision.topJoins) && Intrinsics.areEqual(this.bottomJoins, boundCollision.bottomJoins);
    }

    @NotNull
    public final List<TouchPoint> getBottomJoins() {
        return this.bottomJoins;
    }

    @NotNull
    public final List<TouchPoint> getLeftJoins() {
        return this.leftJoins;
    }

    @NotNull
    public final List<TouchPoint> getRightJoins() {
        return this.rightJoins;
    }

    @NotNull
    public final List<TouchPoint> getTopJoins() {
        return this.topJoins;
    }

    public final boolean hasDisjointEdge() {
        return this.leftJoins.isEmpty() || this.rightJoins.isEmpty() || this.topJoins.isEmpty() || this.bottomJoins.isEmpty();
    }

    public int hashCode() {
        return (((((this.leftJoins.hashCode() * 31) + this.rightJoins.hashCode()) * 31) + this.topJoins.hashCode()) * 31) + this.bottomJoins.hashCode();
    }

    @NotNull
    public final TouchPoint singleBottom() {
        return this.bottomJoins.get(0);
    }

    @NotNull
    public final TouchPoint singleLeft() {
        return this.leftJoins.get(0);
    }

    @NotNull
    public final TouchPoint singleRight() {
        return this.rightJoins.get(0);
    }

    @NotNull
    public final TouchPoint singleTop() {
        return this.topJoins.get(0);
    }

    @NotNull
    public String toString() {
        return "BoundCollision(leftJoins=" + this.leftJoins + ", rightJoins=" + this.rightJoins + ", topJoins=" + this.topJoins + ", bottomJoins=" + this.bottomJoins + ')';
    }
}
