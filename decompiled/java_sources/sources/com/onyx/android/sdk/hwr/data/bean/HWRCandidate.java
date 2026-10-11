package com.onyx.android.sdk.hwr.data.bean;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 -2\u00020\u0001:\u0001-B\u0007¢\u0006\u0004\b+\u0010,J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0005\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0005\u001a\u0004\b\u0010\u0010\u0007\"\u0004\b\u0011\u0010\tR\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0005\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\"\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0005\u001a\u0004\b\u0018\u0010\u0007\"\u0004\b\u0019\u0010\tR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;", "", "", "toString", "a", Constants.STRING_SIG, "getContentType", "()Ljava/lang/String;", "setContentType", "(Ljava/lang/String;)V", CouchFieldKey.KEY_CONTENT_TYPE, "b", "getShapeType", "setShapeType", "shapeType", "c", "getGestureType", "setGestureType", "gestureType", "d", "getText", "setText", "text", "e", "getData", "setData", "data", "", C6997f.f39671c, "I", "getScroe", "()I", "setScroe", "(I)V", "scroe", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", C6998g.f39679a, "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "getShapeArgs", "()Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "setShapeArgs", "(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V", "shapeArgs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRCandidate {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final float OVAL_TO_CIRCLE_THRESHOLD_RATIO = 1.2f;

    /* renamed from: f, reason: from kotlin metadata */
    public int scroe;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String contentType = "Text";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String shapeType = "Any";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String gestureType = "Any";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String text = "";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String data = "";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public GeometryArgs shapeArgs = GeometryArgs.INSTANCE.getEmpty();

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0007J\u0016\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\f\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;", "", "()V", "OVAL_TO_CIRCLE_THRESHOLD_RATIO", "", "gesture", "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, CouchFieldKey.KEY_CONTENT_TYPE, "data", "shape", "text", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final HWRCandidate gesture(@NotNull String gesture) {
            Intrinsics.checkNotNullParameter(gesture, "gesture");
            HWRCandidate hWRCandidate = new HWRCandidate();
            hWRCandidate.setContentType(HWRValues.PART_TYPE_GESTURE);
            hWRCandidate.setGestureType(gesture);
            return hWRCandidate;
        }

        @NotNull
        public final HWRCandidate other(@NotNull String contentType, @NotNull String data) {
            Intrinsics.checkNotNullParameter(contentType, "contentType");
            Intrinsics.checkNotNullParameter(data, "data");
            HWRCandidate hWRCandidate = new HWRCandidate();
            hWRCandidate.setContentType(contentType);
            hWRCandidate.setData(data);
            return hWRCandidate;
        }

        @NotNull
        public final HWRCandidate shape(@NotNull String shape) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            HWRCandidate hWRCandidate = new HWRCandidate();
            hWRCandidate.setContentType(HWRValues.PART_TYPE_SHAPE);
            hWRCandidate.setShapeType(shape);
            return hWRCandidate;
        }

        @NotNull
        public final HWRCandidate text(@NotNull String text) {
            Intrinsics.checkNotNullParameter(text, "text");
            HWRCandidate hWRCandidate = new HWRCandidate();
            hWRCandidate.setContentType("Text");
            hWRCandidate.setText(text);
            return hWRCandidate;
        }

        public Companion() {
        }
    }

    @NotNull
    public final String getContentType() {
        return this.contentType;
    }

    @NotNull
    public final String getData() {
        return this.data;
    }

    @NotNull
    public final String getGestureType() {
        return this.gestureType;
    }

    public final int getScroe() {
        return this.scroe;
    }

    @NotNull
    public final GeometryArgs getShapeArgs() {
        return this.shapeArgs;
    }

    @NotNull
    public final String getShapeType() {
        return this.shapeType;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public final void setContentType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentType = str;
    }

    public final void setData(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.data = str;
    }

    public final void setGestureType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gestureType = str;
    }

    public final void setScroe(int i) {
        this.scroe = i;
    }

    public final void setShapeArgs(@NotNull GeometryArgs geometryArgs) {
        Intrinsics.checkNotNullParameter(geometryArgs, "<set-?>");
        this.shapeArgs = geometryArgs;
    }

    public final void setShapeType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.shapeType = str;
    }

    public final void setText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }

    @NotNull
    public String toString() {
        if (Intrinsics.areEqual(this.contentType, "Text")) {
            return this.text;
        }
        if (Intrinsics.areEqual(this.contentType, HWRValues.PART_TYPE_SHAPE)) {
            return this.shapeType;
        }
        if (Intrinsics.areEqual(this.contentType, HWRValues.PART_TYPE_GESTURE)) {
            return this.gestureType;
        }
        return this.contentType + "::" + this.data;
    }
}
