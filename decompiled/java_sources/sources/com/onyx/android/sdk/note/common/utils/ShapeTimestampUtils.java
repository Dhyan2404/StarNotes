package com.onyx.android.sdk.note.common.utils;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderMeasure;
import com.onyx.android.sdk.note.common.data.timestamp.ShapeTimestampBean;
import com.onyx.android.sdk.note.common.data.timestamp.TimestampBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\"\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0007J\u0018\u0010\u0012\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u0013J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeTimestampUtils;", "", "()V", "timestampHeight", "", "getTimestampHeight", "()I", "calculateTimestampWidth", "title", "", "renderMeasure", "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;", "createTimestampBitmap", "Landroid/graphics/Bitmap;", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "width", "height", "getBackgroundBitmap", "", "getFormatStr", "shapeTimestampBean", "Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;", "getShapeTimestampBean", "updateShapeTimestamp", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeTimestampUtils {

    @NotNull
    public static final ShapeTimestampUtils INSTANCE = new ShapeTimestampUtils();

    public final int calculateTimestampWidth(@Nullable String title, @Nullable RenderMeasure renderMeasure) {
        int coerceAtMost;
        TextPaint textPaint = new TextPaint();
        ResManager resManager = ResManager.INSTANCE;
        textPaint.setTextSize(resManager.getDimens(C7485R.dimen.timestamp_name_text_size));
        int ceil = ((int) Math.ceil(textPaint.measureText(title))) + (resManager.getDimens(C7485R.dimen.timestamp_padding) * 2);
        if (renderMeasure == null) {
            return ceil;
        }
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(ceil, (int) ((renderMeasure.getViewPortRect().width() * 2) / 3.0f));
        return coerceAtMost;
    }

    @SuppressLint({"InflateParams"})
    @Nullable
    public final Bitmap createTimestampBitmap(@NotNull Shape shape, int width, int height) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        ShapeTimestampBean shapeTimestampBean = getShapeTimestampBean(shape);
        if (shapeTimestampBean == null) {
            return null;
        }
        String formatStr = getFormatStr(shapeTimestampBean);
        View inflate = LayoutInflater.from(ResManager.INSTANCE.getAppContext()).inflate(C7485R.layout.layout_timestamp_shape, (ViewGroup) null);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        View findViewById = inflate.findViewById(C7485R.id.timestamp);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        TextView textView = (TextView) findViewById;
        if (!shapeTimestampBean.getIsNoFrame()) {
            textView.setBackgroundResource(C7485R.drawable.timestamp_box_bg);
        }
        textView.setText(formatStr);
        inflate.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(height, 1073741824));
        inflate.layout(0, 0, inflate.getMeasuredWidth(), inflate.getMeasuredHeight());
        return ViewKt.loadBitmap(inflate);
    }

    @Nullable
    public final Bitmap getBackgroundBitmap(float width, float height) {
        return BitmapUtils.INSTANCE.getBitmapFromVectorDrawable(ResManager.INSTANCE.getAppContext(), C7485R.drawable.timestamp_box_bg, (int) width, (int) height);
    }

    @Nullable
    public final String getFormatStr(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return getFormatStr(getShapeTimestampBean(shape));
    }

    @Nullable
    public final ShapeTimestampBean getShapeTimestampBean(@NotNull Shape shape) {
        ShapeTimestampBean shapeTimestampBean;
        TimestampBean timestampBean;
        Intrinsics.checkNotNullParameter(shape, "shape");
        String text = shape.getText();
        if (StringUtils.isBlank(text) || (shapeTimestampBean = (ShapeTimestampBean) JSONUtils.INSTANCE.parseObject(text, ShapeTimestampBean.class)) == null || (timestampBean = shapeTimestampBean.getTimestampBean()) == null || StringUtils.isBlank(timestampBean.getFormattedStr())) {
            return null;
        }
        return shapeTimestampBean;
    }

    public final int getTimestampHeight() {
        return ResManager.INSTANCE.getDimens(C7485R.dimen.timestamp_shape_height);
    }

    public final boolean updateShapeTimestamp(@NotNull Shape shape) {
        TimestampBean timestampBean;
        Intrinsics.checkNotNullParameter(shape, "shape");
        String text = shape.getText();
        if (StringUtils.isBlank(text)) {
            return false;
        }
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        ShapeTimestampBean shapeTimestampBean = (ShapeTimestampBean) jSONUtils.parseObject(text, ShapeTimestampBean.class);
        if (shapeTimestampBean == null || !shapeTimestampBean.getIsAutoUpdate() || (timestampBean = shapeTimestampBean.getTimestampBean()) == null) {
            return false;
        }
        if (StringUtils.isBlank(timestampBean.update())) {
            Debug.INSTANCE.m32044e(ShapeTimestampUtils.class, "formattedStr is null or empty.", new Object[0]);
            return false;
        }
        Debug.INSTANCE.m32035d(ShapeTimestampUtils.class, "update shape time: " + shape.getShapeUniqueId(), new Object[0]);
        shape.setText(jSONUtils.toJson(shapeTimestampBean));
        return true;
    }

    @Nullable
    public final String getFormatStr(@Nullable ShapeTimestampBean shapeTimestampBean) {
        TimestampBean timestampBean;
        if (shapeTimestampBean == null || (timestampBean = shapeTimestampBean.getTimestampBean()) == null) {
            return null;
        }
        return timestampBean.getFormattedStr();
    }
}
