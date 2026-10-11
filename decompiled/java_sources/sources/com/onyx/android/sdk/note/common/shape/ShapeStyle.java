package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0003H\u0016J\b\u0010\u0016\u001a\u00020\u0014H\u0016J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0003H\u0016R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0005\"\u0004\b\n\u0010\u0007R\u0018\u0010\u000b\u001a\u00020\fX¦\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;", "", CouchFieldKey.KEY_FILL_COLOR, "", "getFillColor", "()I", "setFillColor", "(I)V", ApiBroadCastReceiver.ARGS_STROKE_COLOR, "getStrokeColor", "setStrokeColor", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", "getStrokeWidth", "()F", "setStrokeWidth", "(F)V", "enableFillColor", "", "enabled", "", "getLineStyle", "isFillColorEnabled", "setLineStyle", "type", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapeStyle {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static void enableFillColor(@NotNull ShapeStyle shapeStyle, boolean z) {
        }

        public static int getLineStyle(@NotNull ShapeStyle shapeStyle) {
            return 0;
        }

        public static boolean isFillColorEnabled(@NotNull ShapeStyle shapeStyle) {
            return false;
        }

        public static void setLineStyle(@NotNull ShapeStyle shapeStyle, int i) {
        }
    }

    void enableFillColor(boolean enabled);

    int getFillColor();

    int getLineStyle();

    int getStrokeColor();

    float getStrokeWidth();

    boolean isFillColorEnabled();

    void setFillColor(int i);

    void setLineStyle(int type);

    void setStrokeColor(int i);

    void setStrokeWidth(float f);
}
