package com.onyx.android.sdk.replicator.note.data.point;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.base.data.TinyPoint;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\nJ\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u0019\u001a\u00020\u00002\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;", "", "()V", "attrA", "", "attrB", "length", "", TypedValues.CycleType.S_WAVE_OFFSET, "shapeUniqueId", "", "tinyPointList", "", "Lcom/onyx/android/sdk/base/data/TinyPoint;", "getAttrA", "getAttrB", "getLength", "getOffset", "getShapeUniqueId", "getTinyPointList", "setAttrA", "setAttrB", "setLength", "setOffset", "setShapeUniqueId", "setTinyPointList", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeRepo {
    private short attrA;
    private short attrB;
    private int length;
    private int offset;
    private String shapeUniqueId;

    @Nullable
    private List<TinyPoint> tinyPointList;

    public final short getAttrA() {
        return this.attrA;
    }

    public final short getAttrB() {
        return this.attrB;
    }

    public final int getLength() {
        return this.length;
    }

    public final int getOffset() {
        return this.offset;
    }

    @NotNull
    public final String getShapeUniqueId() {
        String str = this.shapeUniqueId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("shapeUniqueId");
        return null;
    }

    @Nullable
    public final List<TinyPoint> getTinyPointList() {
        return this.tinyPointList;
    }

    @NotNull
    public final ShapeRepo setAttrA(short attrA) {
        this.attrA = attrA;
        return this;
    }

    @NotNull
    public final ShapeRepo setAttrB(short attrB) {
        this.attrB = attrB;
        return this;
    }

    @NotNull
    public final ShapeRepo setLength(int length) {
        this.length = length;
        return this;
    }

    @NotNull
    public final ShapeRepo setOffset(int offset) {
        this.offset = offset;
        return this;
    }

    @NotNull
    public final ShapeRepo setShapeUniqueId(@NotNull String shapeUniqueId) {
        Intrinsics.checkNotNullParameter(shapeUniqueId, "shapeUniqueId");
        this.shapeUniqueId = shapeUniqueId;
        return this;
    }

    @NotNull
    public final ShapeRepo setTinyPointList(@Nullable List<TinyPoint> tinyPointList) {
        this.tinyPointList = tinyPointList;
        return this;
    }
}
