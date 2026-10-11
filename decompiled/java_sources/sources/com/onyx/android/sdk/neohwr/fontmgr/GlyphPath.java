package com.onyx.android.sdk.neohwr.fontmgr;

import android.graphics.PointF;
import android.graphics.RectF;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u0007\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019J&\u0010\u0012\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u0019R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;", "", "()V", "advance", "Landroid/graphics/PointF;", "getAdvance", "()Landroid/graphics/PointF;", "setAdvance", "(Landroid/graphics/PointF;)V", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;", "getPoints", "()Ljava/util/List;", "rect", "Landroid/graphics/RectF;", "getRect", "()Landroid/graphics/RectF;", "setRect", "(Landroid/graphics/RectF;)V", "addPoint", "", "type", "", "x", "", "y", "close", "", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "Companion", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GlyphPath {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private final List<GlyphPoint> points = new ArrayList();

    @NotNull
    private RectF rect = new RectF();

    @NotNull
    private PointF advance = new PointF();

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final GlyphPath create() {
            return new GlyphPath();
        }

        private Companion() {
        }
    }

    @JvmStatic
    @NotNull
    public static final GlyphPath create() {
        return INSTANCE.create();
    }

    public final void addPoint(int type, float x, float y, boolean close) {
        this.points.add(new GlyphPoint(type, x, y, close));
    }

    @NotNull
    public final PointF getAdvance() {
        return this.advance;
    }

    @NotNull
    public final List<GlyphPoint> getPoints() {
        return this.points;
    }

    @NotNull
    public final RectF getRect() {
        return this.rect;
    }

    public final void setAdvance(@NotNull PointF pointF) {
        Intrinsics.checkNotNullParameter(pointF, "<set-?>");
        this.advance = pointF;
    }

    public final void setRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.rect = rectF;
    }

    public final void setAdvance(float x, float y) {
        this.advance = new PointF(x, y);
    }

    public final void setRect(float left, float top, float right, float bottom) {
        this.rect = new RectF(left, top, right, bottom);
    }
}
