package com.onyx.android.sdk.replicator.note.p035db.model;

import android.graphics.RectF;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b \u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0015\"\u0004\b#\u0010\u0017R\u001a\u0010$\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001a\u0010'\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\u001c\u0010*\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0015\"\u0004\b,\u0010\u0017R\u001c\u0010-\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0015\"\u0004\b/\u0010\u0017R\u001c\u00100\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0015\"\u0004\b2\u0010\u0017R\u001a\u00103\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0006\"\u0004\b5\u0010\bR\u001c\u00106\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0015\"\u0004\b8\u0010\u0017R\u001a\u00109\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u0006\"\u0004\b;\u0010\b¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "colorTransformMode", "", "getColorTransformMode", "()I", "setColorTransformMode", "(I)V", CouchFieldKey.KEY_FILL_COLOR, "getFillColor", "setFillColor", CouchFieldKey.KEY_ORDER_INDEX, "", "getOrderIndex", "()F", "setOrderIndex", "(F)V", "relativePath", "", "getRelativePath", "()Ljava/lang/String;", "setRelativePath", "(Ljava/lang/String;)V", "resName", "getResName", "setResName", "resRect", "Landroid/graphics/RectF;", "getResRect", "()Landroid/graphics/RectF;", "setResRect", "(Landroid/graphics/RectF;)V", "resourceType", "getResourceType", "setResourceType", "source", "getSource", "setSource", ApiBroadCastReceiver.ARGS_STROKE_COLOR, "getStrokeColor", "setStrokeColor", "thumbnailRelativePath", "getThumbnailRelativePath", "setThumbnailRelativePath", "thumbnailResName", "getThumbnailResName", "setThumbnailResName", "thumbnailUri", "getThumbnailUri", "setThumbnailUri", "type", "getType", "setType", "uri", "getUri", "setUri", "version", "getVersion", "setVersion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TemplateResourceModel extends BaseReplicatorModel {
    private int colorTransformMode;
    private int fillColor;

    @Nullable
    private String relativePath;

    @Nullable
    private String resName;

    @Nullable
    private RectF resRect;
    private int source;
    private int strokeColor;

    @Nullable
    private String thumbnailRelativePath;

    @Nullable
    private String thumbnailResName;

    @Nullable
    private String thumbnailUri;
    private int type;

    @Nullable
    private String uri;
    private int version;

    @NotNull
    private String resourceType = TemplateResourceConstant.TYPE_PICTURE;
    private float orderIndex = -1.0f;

    public final int getColorTransformMode() {
        return this.colorTransformMode;
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    public final float getOrderIndex() {
        return this.orderIndex;
    }

    @Nullable
    public final String getRelativePath() {
        return this.relativePath;
    }

    @Nullable
    public final String getResName() {
        return this.resName;
    }

    @Nullable
    public final RectF getResRect() {
        return this.resRect;
    }

    @NotNull
    public final String getResourceType() {
        return this.resourceType;
    }

    public final int getSource() {
        return this.source;
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    @Nullable
    public final String getThumbnailRelativePath() {
        return this.thumbnailRelativePath;
    }

    @Nullable
    public final String getThumbnailResName() {
        return this.thumbnailResName;
    }

    @Nullable
    public final String getThumbnailUri() {
        return this.thumbnailUri;
    }

    public final int getType() {
        return this.type;
    }

    @Nullable
    public final String getUri() {
        return this.uri;
    }

    public final int getVersion() {
        return this.version;
    }

    public final void setColorTransformMode(int i) {
        this.colorTransformMode = i;
    }

    public final void setFillColor(int i) {
        this.fillColor = i;
    }

    public final void setOrderIndex(float f) {
        this.orderIndex = f;
    }

    public final void setRelativePath(@Nullable String str) {
        this.relativePath = str;
    }

    public final void setResName(@Nullable String str) {
        this.resName = str;
    }

    public final void setResRect(@Nullable RectF rectF) {
        this.resRect = rectF;
    }

    public final void setResourceType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.resourceType = str;
    }

    public final void setSource(int i) {
        this.source = i;
    }

    public final void setStrokeColor(int i) {
        this.strokeColor = i;
    }

    public final void setThumbnailRelativePath(@Nullable String str) {
        this.thumbnailRelativePath = str;
    }

    public final void setThumbnailResName(@Nullable String str) {
        this.thumbnailResName = str;
    }

    public final void setThumbnailUri(@Nullable String str) {
        this.thumbnailUri = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setUri(@Nullable String str) {
        this.uri = str;
    }

    public final void setVersion(int i) {
        this.version = i;
    }
}
