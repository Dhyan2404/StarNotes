package com.onyx.android.sdk.universal.editor.helper;

import android.graphics.Canvas;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J6\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH&¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/AnglePainter;", "", "draw", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "shape", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", "showRightAngle", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface AnglePainter {
    void draw(@NotNull Canvas canvas, @NotNull UniversalShape shape, @NotNull List<TouchPoint> points, float strokeWidth, boolean showRightAngle);
}
