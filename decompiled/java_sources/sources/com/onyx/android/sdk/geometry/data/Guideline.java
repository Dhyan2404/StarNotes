package com.onyx.android.sdk.geometry.data;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\u0013\u0010\u0019\u001a\u00020\u000e2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\b\u0010\u001c\u001a\u00020\u0003H\u0016R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\nR\u001a\u0010\u0013\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R\u001a\u0010\u0016\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000f\"\u0004\b\u0018\u0010\u0011¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/Guideline;", "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "shapeId", "", gon.f71290o0, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "end", "id", "(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "isShapeGuideLine", "", Constants.BOOLEAN_VALUE_SIG, "setShapeGuideLine", "(Z)V", "getShapeId", "supportHorizontalAlignment", "getSupportHorizontalAlignment", "setSupportHorizontalAlignment", "supportVerticalAlignment", "getSupportVerticalAlignment", "setSupportVerticalAlignment", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "toString", "Companion", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGuideLine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuideLine.kt\ncom/onyx/android/sdk/geometry/data/Guideline\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,133:1\n32#2,5:134\n*S KotlinDebug\n*F\n+ 1 GuideLine.kt\ncom/onyx/android/sdk/geometry/data/Guideline\n*L\n40#1:134,5\n*E\n"})
/* loaded from: classes7.dex */
public final class Guideline extends TouchPointPair {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final Guideline Empty;

    @NotNull
    private String id;
    private boolean isShapeGuideLine;

    @NotNull
    private final String shapeId;
    private boolean supportHorizontalAlignment;
    private boolean supportVerticalAlignment;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/Guideline$Companion;", "", "()V", "Empty", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "getEmpty", "()Lcom/onyx/android/sdk/geometry/data/Guideline;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Guideline getEmpty() {
            return Guideline.Empty;
        }

        private Companion() {
        }
    }

    static {
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        Empty = new Guideline("", companion.getEmpty(), companion.getEmpty(), "");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ Guideline(java.lang.String r1, com.onyx.android.sdk.base.data.TouchPoint r2, com.onyx.android.sdk.base.data.TouchPoint r3, java.lang.String r4, int r5, kotlin.jvm.internal.DefaultConstructorMarker r6) {
        /*
            r0 = this;
            r5 = r5 & 8
            if (r5 == 0) goto L11
            java.util.UUID r4 = java.util.UUID.randomUUID()
            java.lang.String r4 = r4.toString()
            java.lang.String r5 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
        L11:
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.geometry.data.Guideline.<init>(java.lang.String, com.onyx.android.sdk.base.data.TouchPoint, com.onyx.android.sdk.base.data.TouchPoint, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public boolean equals(@Nullable Object other) {
        Guideline guideline = other instanceof Guideline ? (Guideline) other : null;
        if (guideline == null) {
            return false;
        }
        return Intrinsics.areEqual(this.id, guideline.id);
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final String getShapeId() {
        return this.shapeId;
    }

    public final boolean getSupportHorizontalAlignment() {
        return this.supportHorizontalAlignment;
    }

    public final boolean getSupportVerticalAlignment() {
        return this.supportVerticalAlignment;
    }

    /* renamed from: isShapeGuideLine, reason: from getter */
    public final boolean getIsShapeGuideLine() {
        return this.isShapeGuideLine;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setShapeGuideLine(boolean z) {
        this.isShapeGuideLine = z;
    }

    public final void setSupportHorizontalAlignment(boolean z) {
        this.supportHorizontalAlignment = z;
    }

    public final void setSupportVerticalAlignment(boolean z) {
        this.supportVerticalAlignment = z;
    }

    @Override // com.onyx.android.sdk.geometry.data.TouchPointPair
    @NotNull
    public String toString() {
        return getP1().getX() + "->" + getP2().getX() + ' ' + getP1().getY() + "->" + getP2().getY();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Guideline(@NotNull String shapeId, @NotNull TouchPoint start, @NotNull TouchPoint end, @NotNull String id) {
        super(start, end);
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(id, "id");
        this.shapeId = shapeId;
        this.id = id;
        this.isShapeGuideLine = true;
        this.supportHorizontalAlignment = true;
        this.supportVerticalAlignment = true;
    }
}
