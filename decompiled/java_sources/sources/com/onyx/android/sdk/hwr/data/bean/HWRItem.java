package com.onyx.android.sdk.hwr.data.bean;

import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson2.annotation.JSONField;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.time.TimeZones;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\u0007\n\u0002\b\u0017\u0018\u0000 =2\u00020\u0001:\u0001=B\u0007¢\u0006\u0004\b;\u0010<J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0007J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0006J\b\u0010\r\u001a\u00020\fH\u0016R$\u0010\u0014\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R$\u0010\u001b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u000f\u001a\u0004\b\u0005\u0010\u0011\"\u0004\b\u001a\u0010\u0013R$\u0010\"\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R$\u0010&\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001d\u001a\u0004\b$\u0010\u001f\"\u0004\b%\u0010!R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u00102\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010)\u001a\u0004\b0\u0010+\"\u0004\b1\u0010-R\"\u00106\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010)\u001a\u0004\b4\u0010+\"\u0004\b5\u0010-R\"\u0010:\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010)\u001a\u0004\b8\u0010+\"\u0004\b9\u0010-¨\u0006>"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRItem;", "", "", "isStroke", "", "getTimestamp", "", "x", "", "setXArray", "y", "setYArray", "", "toString", "a", Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "id", "b", "getType", "setType", "type", "c", "setTimestamp", NotificationCompat.CarExtender.f4980p, "d", "[F", "getX", "()[F", "setX", "([F)V", "X", "e", "getY", "setY", "Y", "", C6997f.f39671c, "F", "getStartX", "()F", "setStartX", "(F)V", "startX", C6998g.f39679a, "getStartY", "setStartY", "startY", C6999h.f39688c, "getEndX", "setEndX", "endX", "i", "getEndY", "setEndY", "endY", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRItem {

    @NotNull
    public static final String TYPE_ARC = "arc";

    @NotNull
    public static final String TYPE_GLYPH = "glyph";

    @NotNull
    public static final String TYPE_LINE = "line";

    @NotNull
    public static final String TYPE_NONE = "none";

    @NotNull
    public static final String TYPE_STROKE = "stroke";

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String id;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String type = "none";

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String timestamp;

    /* renamed from: d, reason: from kotlin metadata */
    @JSONField(serialize = false)
    @Nullable
    public float[] X;

    /* renamed from: e, reason: from kotlin metadata */
    @JSONField(serialize = false)
    @Nullable
    public float[] Y;

    /* renamed from: f, reason: from kotlin metadata */
    public float startX;

    /* renamed from: g, reason: from kotlin metadata */
    public float startY;

    /* renamed from: h, reason: from kotlin metadata */
    public float endX;

    /* renamed from: i, reason: from kotlin metadata */
    public float endY;

    public final float getEndX() {
        return this.endX;
    }

    public final float getEndY() {
        return this.endY;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    public final float getStartX() {
        return this.startX;
    }

    public final float getStartY() {
        return this.startY;
    }

    @Nullable
    public final String getTimestamp() {
        return this.timestamp;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    @Nullable
    public final float[] getX() {
        return this.X;
    }

    @Nullable
    public final float[] getY() {
        return this.Y;
    }

    public final boolean isStroke() {
        return Intrinsics.areEqual(this.type, "stroke");
    }

    public final void setEndX(float f) {
        this.endX = f;
    }

    public final void setEndY(float f) {
        this.endY = f;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setStartX(float f) {
        this.startX = f;
    }

    public final void setStartY(float f) {
        this.startY = f;
    }

    public final void setTimestamp(@Nullable String str) {
        this.timestamp = str;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    public final void setX(@Nullable float[] fArr) {
        this.X = fArr;
    }

    public final void setXArray(@NotNull float[] x) {
        Intrinsics.checkNotNullParameter(x, "x");
        this.X = x;
        this.startX = x[0];
        this.endX = x[x.length - 1];
    }

    public final void setY(@Nullable float[] fArr) {
        this.Y = fArr;
    }

    public final void setYArray(@NotNull float[] y) {
        Intrinsics.checkNotNullParameter(y, "y");
        this.Y = y;
        this.startY = y[0];
        this.endY = y[y.length - 1];
    }

    @NotNull
    public String toString() {
        return JSONUtils.INSTANCE.toPrettyJson(this);
    }

    @JSONField(serialize = false)
    public final long getTimestamp() {
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        String str = this.timestamp;
        Intrinsics.checkNotNull(str);
        return dateTimeUtil.parse(str, dateTimeUtil.getSimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSSSSS"), TimeZones.GMT_ID);
    }
}
