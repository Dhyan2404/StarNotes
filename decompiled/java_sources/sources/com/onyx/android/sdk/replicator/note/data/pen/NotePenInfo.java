package com.onyx.android.sdk.replicator.note.data.pen;

import com.alibaba.fastjson2.annotation.JSONCreator;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import java.util.HashMap;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0010\u0007\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007\b\u0017¢\u0006\u0002\u0010\u0002B\u001b\b\u0016\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\u0006\u0010+\u001a\u00020&J\n\u0010,\u001a\u0004\u0018\u00010 H\u0007J\u0016\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u0006J\u0012\u00101\u001a\u00020.2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0007R\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\fR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\n\"\u0004\b\u0015\u0010\fR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u0007R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001a\u0010%\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;", "", "()V", "penWithMap", "", "", "", "(Ljava/util/Map;)V", CouchFieldKey.KEY_FILL_COLOR, "getFillColor", "()I", "setFillColor", "(I)V", "graphicsShapeColor", "getGraphicsShapeColor", "setGraphicsShapeColor", "graphicsShapeType", "getGraphicsShapeType", "setGraphicsShapeType", "normalPenShapeType", "getNormalPenShapeType", "setNormalPenShapeType", "penAttrs", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;", "getPenAttrs", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;", "setPenAttrs", "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V", "getPenWithMap", "()Ljava/util/Map;", "setPenWithMap", "pencilBox", "Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;", "getPencilBox", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;", "setPencilBox", "(Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V", "shapeLineStyle", "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "getShapeLineStyle", "()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "setShapeLineStyle", "(Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)V", "cloneShapeLineStyle", "getQuickPenList", "setPenWidth", "", "shapeType", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "setQuickPenList", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NotePenInfo {
    private int fillColor;
    private int graphicsShapeColor;
    private int graphicsShapeType;
    private int normalPenShapeType;

    @Nullable
    private PenAttrs penAttrs;

    @Nullable
    private Map<Integer, Float> penWithMap;

    @Nullable
    private PencilBox pencilBox;

    @NotNull
    private ShapeLineStyle shapeLineStyle;

    @JSONCreator
    public NotePenInfo() {
        this.penWithMap = new HashMap();
        this.normalPenShapeType = 5;
        this.graphicsShapeType = 7;
        this.graphicsShapeColor = -16777216;
        this.fillColor = -16777216;
        this.shapeLineStyle = new ShapeLineStyle();
    }

    @NotNull
    public final ShapeLineStyle cloneShapeLineStyle() {
        return this.shapeLineStyle.m72355clone();
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    public final int getGraphicsShapeColor() {
        return this.graphicsShapeColor;
    }

    public final int getGraphicsShapeType() {
        return this.graphicsShapeType;
    }

    public final int getNormalPenShapeType() {
        return this.normalPenShapeType;
    }

    @Nullable
    public final PenAttrs getPenAttrs() {
        return this.penAttrs;
    }

    @Nullable
    public final Map<Integer, Float> getPenWithMap() {
        return this.penWithMap;
    }

    @Nullable
    public final PencilBox getPencilBox() {
        return this.pencilBox;
    }

    @Deprecated(message = "Don't remove, this is to maintain compatibility", replaceWith = @ReplaceWith(expression = "this.pencilBox", imports = {}))
    @JSONField(deserialize = false, serialize = true)
    @Nullable
    public final PencilBox getQuickPenList() {
        return this.pencilBox;
    }

    @NotNull
    public final ShapeLineStyle getShapeLineStyle() {
        return this.shapeLineStyle;
    }

    public final void setFillColor(int i) {
        this.fillColor = i;
    }

    public final void setGraphicsShapeColor(int i) {
        this.graphicsShapeColor = i;
    }

    public final void setGraphicsShapeType(int i) {
        this.graphicsShapeType = i;
    }

    public final void setNormalPenShapeType(int i) {
        this.normalPenShapeType = i;
    }

    public final void setPenAttrs(@Nullable PenAttrs penAttrs) {
        this.penAttrs = penAttrs;
    }

    public final void setPenWidth(int shapeType, float strokeWidth) {
        if (this.penWithMap != null) {
            Integer valueOf = Integer.valueOf(shapeType);
            Float valueOf2 = Float.valueOf(strokeWidth);
            Map<Integer, Float> map = this.penWithMap;
            Intrinsics.checkNotNull(map);
            map.put(valueOf, valueOf2);
        }
    }

    public final void setPenWithMap(@Nullable Map<Integer, Float> map) {
        this.penWithMap = map;
    }

    public final void setPencilBox(@Nullable PencilBox pencilBox) {
        this.pencilBox = pencilBox;
    }

    @Deprecated(message = "Don't remove, this is to maintain compatibility", replaceWith = @ReplaceWith(expression = "this.pencilBox", imports = {}))
    @JSONField(deserialize = false, serialize = true)
    public final void setQuickPenList(@Nullable PencilBox pencilBox) {
        this.pencilBox = pencilBox;
    }

    public final void setShapeLineStyle(@NotNull ShapeLineStyle shapeLineStyle) {
        Intrinsics.checkNotNullParameter(shapeLineStyle, "<set-?>");
        this.shapeLineStyle = shapeLineStyle;
    }

    public NotePenInfo(@NotNull Map<Integer, Float> penWithMap) {
        Intrinsics.checkNotNullParameter(penWithMap, "penWithMap");
        this.penWithMap = new HashMap();
        this.normalPenShapeType = 5;
        this.graphicsShapeType = 7;
        this.graphicsShapeColor = -16777216;
        this.fillColor = -16777216;
        this.shapeLineStyle = new ShapeLineStyle();
        this.penWithMap = penWithMap;
    }
}
