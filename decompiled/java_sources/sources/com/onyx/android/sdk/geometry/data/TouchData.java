package com.onyx.android.sdk.geometry.data;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0006HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010\"\u001a\u00020\u000bHÆ\u0003J\u0006\u0010#\u001a\u00020\u0000J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003JI\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0006\u0010$\u001a\u00020\tJ\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\u0006\u0010)\u001a\u00020&J\u0006\u0010*\u001a\u00020&J\u0006\u0010+\u001a\u00020&J\u0006\u0010,\u001a\u00020&J\u0006\u0010-\u001a\u00020&J\u0006\u0010.\u001a\u00020&J\u0006\u0010/\u001a\u00020&J\u0006\u00100\u001a\u00020&J\t\u00101\u001a\u000202HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0018¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/TouchData;", "", "action", "", "toolType", "touchPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "predictPoint", "boxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", CouchFieldKey.KEY_GROUP_ID, "", "(IILcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;J)V", "getAction", "()I", "getBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "getGroupId", "()J", "setGroupId", "(J)V", "getPredictPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setPredictPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "getToolType", "getTouchPoint", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "ensureBoxInfo", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "isEnabledHitTestPadding", "isFingerToolType", "isStylusToolType", "isTouchCancel", "isTouchDone", "isTouchDown", "isTouchMove", "isTouchUp", "toString", "", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class TouchData {
    private final int action;

    @Nullable
    private BoxInfo boxInfo;
    private long groupId;

    @Nullable
    private TouchPoint predictPoint;
    private final int toolType;

    @NotNull
    private final TouchPoint touchPoint;

    public TouchData(int i, int i2, @NotNull TouchPoint touchPoint, @Nullable TouchPoint touchPoint2, @Nullable BoxInfo boxInfo, long j) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.action = i;
        this.toolType = i2;
        this.touchPoint = touchPoint;
        this.predictPoint = touchPoint2;
        this.boxInfo = boxInfo;
        this.groupId = j;
    }

    public static /* synthetic */ TouchData copy$default(TouchData touchData, int i, int i2, TouchPoint touchPoint, TouchPoint touchPoint2, BoxInfo boxInfo, long j, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = touchData.action;
        }
        if ((i3 & 2) != 0) {
            i2 = touchData.toolType;
        }
        int i4 = i2;
        if ((i3 & 4) != 0) {
            touchPoint = touchData.touchPoint;
        }
        TouchPoint touchPoint3 = touchPoint;
        if ((i3 & 8) != 0) {
            touchPoint2 = touchData.predictPoint;
        }
        TouchPoint touchPoint4 = touchPoint2;
        if ((i3 & 16) != 0) {
            boxInfo = touchData.boxInfo;
        }
        BoxInfo boxInfo2 = boxInfo;
        if ((i3 & 32) != 0) {
            j = touchData.groupId;
        }
        return touchData.copy(i, i4, touchPoint3, touchPoint4, boxInfo2, j);
    }

    /* renamed from: component1, reason: from getter */
    public final int getAction() {
        return this.action;
    }

    /* renamed from: component2, reason: from getter */
    public final int getToolType() {
        return this.toolType;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final TouchPoint getPredictPoint() {
        return this.predictPoint;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final BoxInfo getBoxInfo() {
        return this.boxInfo;
    }

    /* renamed from: component6, reason: from getter */
    public final long getGroupId() {
        return this.groupId;
    }

    @NotNull
    public final TouchData copy(int action, int toolType, @NotNull TouchPoint touchPoint, @Nullable TouchPoint predictPoint, @Nullable BoxInfo boxInfo, long groupId) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        return new TouchData(action, toolType, touchPoint, predictPoint, boxInfo, groupId);
    }

    @NotNull
    public final BoxInfo ensureBoxInfo() {
        BoxInfo boxInfo = this.boxInfo;
        return boxInfo == null ? new BoxInfo() : boxInfo;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TouchData)) {
            return false;
        }
        TouchData touchData = (TouchData) other;
        return this.action == touchData.action && this.toolType == touchData.toolType && Intrinsics.areEqual(this.touchPoint, touchData.touchPoint) && Intrinsics.areEqual(this.predictPoint, touchData.predictPoint) && Intrinsics.areEqual(this.boxInfo, touchData.boxInfo) && this.groupId == touchData.groupId;
    }

    public final int getAction() {
        return this.action;
    }

    @Nullable
    public final BoxInfo getBoxInfo() {
        return this.boxInfo;
    }

    public final long getGroupId() {
        return this.groupId;
    }

    @Nullable
    public final TouchPoint getPredictPoint() {
        return this.predictPoint;
    }

    public final int getToolType() {
        return this.toolType;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    public int hashCode() {
        int hashCode = ((((Integer.hashCode(this.action) * 31) + Integer.hashCode(this.toolType)) * 31) + this.touchPoint.hashCode()) * 31;
        TouchPoint touchPoint = this.predictPoint;
        int hashCode2 = (hashCode + (touchPoint == null ? 0 : touchPoint.hashCode())) * 31;
        BoxInfo boxInfo = this.boxInfo;
        return ((hashCode2 + (boxInfo != null ? boxInfo.hashCode() : 0)) * 31) + Long.hashCode(this.groupId);
    }

    public final boolean isEnabledHitTestPadding() {
        int i = this.toolType;
        return i == 1 || i == 2;
    }

    public final boolean isFingerToolType() {
        return MotionEventKt.isToolTypeFinger(this.toolType);
    }

    public final boolean isStylusToolType() {
        return this.toolType == 2;
    }

    public final boolean isTouchCancel() {
        return this.action == 3;
    }

    public final boolean isTouchDone() {
        return isTouchUp() || isTouchCancel();
    }

    public final boolean isTouchDown() {
        return this.action == 0;
    }

    public final boolean isTouchMove() {
        return this.action == 2;
    }

    public final boolean isTouchUp() {
        return this.action == 1;
    }

    public final void setBoxInfo(@Nullable BoxInfo boxInfo) {
        this.boxInfo = boxInfo;
    }

    public final void setGroupId(long j) {
        this.groupId = j;
    }

    public final void setPredictPoint(@Nullable TouchPoint touchPoint) {
        this.predictPoint = touchPoint;
    }

    @NotNull
    public String toString() {
        return "TouchData(action=" + this.action + ", toolType=" + this.toolType + ", touchPoint=" + this.touchPoint + ", predictPoint=" + this.predictPoint + ", boxInfo=" + this.boxInfo + ", groupId=" + this.groupId + ')';
    }

    @NotNull
    public final TouchData copy() {
        return copy(this.action);
    }

    @NotNull
    public final TouchData copy(int action) {
        int i = this.toolType;
        TouchPoint copy = this.touchPoint.copy();
        TouchPoint touchPoint = this.predictPoint;
        TouchPoint copy2 = touchPoint != null ? touchPoint.copy() : null;
        BoxInfo boxInfo = this.boxInfo;
        return new TouchData(action, i, copy, copy2, boxInfo != null ? boxInfo.copy() : null, this.groupId);
    }

    public /* synthetic */ TouchData(int i, int i2, TouchPoint touchPoint, TouchPoint touchPoint2, BoxInfo boxInfo, long j, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i3 & 2) != 0 ? 2 : i2, touchPoint, (i3 & 8) != 0 ? null : touchPoint2, (i3 & 16) != 0 ? null : boxInfo, (i3 & 32) != 0 ? 0L : j);
    }
}
