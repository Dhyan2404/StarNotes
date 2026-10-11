package com.onyx.android.sdk.hwr.service.predictor;

import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003J#\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;", "", "", "component1", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "component2", "shape", PointConstant.POINT_FILE_END, "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getShape", "()Ljava/lang/String;", "b", "Ljava/util/List;", "getPoints", "()Ljava/util/List;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/util/List;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class VerificationResult {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String shape;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<HWRPointerEvent> points;

    public VerificationResult(@NotNull String shape, @NotNull List<HWRPointerEvent> points) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(points, "points");
        this.shape = shape;
        this.points = points;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VerificationResult copy$default(VerificationResult verificationResult, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = verificationResult.shape;
        }
        if ((i & 2) != 0) {
            list = verificationResult.points;
        }
        return verificationResult.copy(str, list);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getShape() {
        return this.shape;
    }

    @NotNull
    public final List<HWRPointerEvent> component2() {
        return this.points;
    }

    @NotNull
    public final VerificationResult copy(@NotNull String shape, @NotNull List<HWRPointerEvent> points) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(points, "points");
        return new VerificationResult(shape, points);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VerificationResult)) {
            return false;
        }
        VerificationResult verificationResult = (VerificationResult) other;
        return Intrinsics.areEqual(this.shape, verificationResult.shape) && Intrinsics.areEqual(this.points, verificationResult.points);
    }

    @NotNull
    public final List<HWRPointerEvent> getPoints() {
        return this.points;
    }

    @NotNull
    public final String getShape() {
        return this.shape;
    }

    public int hashCode() {
        return (this.shape.hashCode() * 31) + this.points.hashCode();
    }

    @NotNull
    public String toString() {
        return "VerificationResult(shape=" + this.shape + ", points=" + this.points + ')';
    }
}
