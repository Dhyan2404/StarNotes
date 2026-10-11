package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\n\u001a\u00020\u0004H\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016R\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0017\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u000e\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;", "Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "", "onTouchDown", "onTouchMove", "onTouchDone", "composeRealPath", "composePredictPath", Constants.RESET, "resetPredict", "Landroid/graphics/Path;", "c", "Landroid/graphics/Path;", "getPath", "()Landroid/graphics/Path;", "setPath", "(Landroid/graphics/Path;)V", "path", "d", "getPredictPath", "setPredictPath", "predictPath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class PathBezierArgs extends BezierArgs {

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Path path = new Path();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public Path predictPath = new Path();

    public void composePredictPath(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        resetPredict();
        TouchPoint predictPoint = touchData.getPredictPoint();
        if (predictPoint != null) {
            this.predictPath.moveTo(PathKt.getQuadToEndPos$default(getLastPoint().getX(), getCurrentPoint().getX(), 0.0f, 4, null), PathKt.getQuadToEndPos$default(getLastPoint().getY(), getCurrentPoint().getY(), 0.0f, 4, null));
            this.predictPath.quadTo(getCurrentPoint().getX(), getCurrentPoint().getY(), predictPoint.getX(), predictPoint.getY());
        }
    }

    public void composeRealPath(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        PathKt.averageQuadTo(this.path, getLastPoint().getX(), getLastPoint().getY(), getCurrentPoint().getX(), getCurrentPoint().getY());
    }

    @NotNull
    public final Path getPath() {
        return this.path;
    }

    @NotNull
    public final Path getPredictPath() {
        return this.predictPath;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BezierArgs
    public void onTouchDone(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        super.onTouchDone(touchData);
        resetPredict();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BezierArgs
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        super.onTouchDown(touchData);
        Path path = new Path();
        path.moveTo(getCurrentPoint().getX(), getCurrentPoint().getY());
        this.path = path;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BezierArgs
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        super.onTouchMove(touchData);
        composeRealPath(touchData);
        composePredictPath(touchData);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BezierArgs
    public void reset() {
        this.path.rewind();
        this.path.moveTo(getLastPoint().getX(), getLastPoint().getY());
        super.reset();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BezierArgs
    public void resetPredict() {
        this.predictPath.reset();
    }

    public final void setPath(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<set-?>");
        this.path = path;
    }

    public final void setPredictPath(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<set-?>");
        this.predictPath = path;
    }
}
