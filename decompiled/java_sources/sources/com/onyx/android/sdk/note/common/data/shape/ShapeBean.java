package com.onyx.android.sdk.note.common.data.shape;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u0000 92\u00020\u0001:\u00019B\u0007¢\u0006\u0004\b7\u00108J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rJ\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\b\u0010\u0012\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u0004\u0010\u001aR$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u0015\u0010\u001fR$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b\u0007\u0010$R$\u0010,\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b\n\u00101R\"\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b\u000f\u00106¨\u0006:"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "shapeModel", "setShapeModel", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "resourceModel", "setResourceModel", "", "layerId", "setLayerId", "", "isLayerValid", "", "fileLastModified", "setFileLastModified", "", "getResourceLocalPath", "getResourceId", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "setShape", "a", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "getShapeModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V", "b", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "c", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "getResourceModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)V", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "d", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "getAudioInfoBean", "()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "setAudioInfoBean", "(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V", "audioInfoBean", "e", "I", "getLayerId", "()I", "(I)V", C6997f.f39671c, "J", "getFileLastModified", "()J", "(J)V", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShapeBean {
    public static final int NOTE_SHAPE_LAYER_ID_INVALID = -1;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public ShapeModel shapeModel;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Shape shape;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public ResourceModel resourceModel;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public AudioInfoBean audioInfoBean;

    /* renamed from: e, reason: from kotlin metadata */
    public int layerId = -1;

    /* renamed from: f, reason: from kotlin metadata */
    public long fileLastModified;

    @Nullable
    public final AudioInfoBean getAudioInfoBean() {
        return this.audioInfoBean;
    }

    public final long getFileLastModified() {
        return this.fileLastModified;
    }

    public final int getLayerId() {
        return this.layerId;
    }

    @Nullable
    public final String getResourceId() {
        ResourceModel resourceModel = this.resourceModel;
        if (resourceModel == null) {
            return null;
        }
        Intrinsics.checkNotNull(resourceModel);
        return resourceModel.getUniqueId();
    }

    @Nullable
    public final String getResourceLocalPath() {
        ResourceModel resourceModel = this.resourceModel;
        if (resourceModel == null) {
            return "";
        }
        Intrinsics.checkNotNull(resourceModel);
        return resourceModel.getPath();
    }

    @Nullable
    public final ResourceModel getResourceModel() {
        return this.resourceModel;
    }

    @Nullable
    public final Shape getShape() {
        return this.shape;
    }

    @Nullable
    public final ShapeModel getShapeModel() {
        return this.shapeModel;
    }

    public final boolean isLayerValid() {
        return this.layerId >= 0;
    }

    public final void setAudioInfoBean(@Nullable AudioInfoBean audioInfoBean) {
        this.audioInfoBean = audioInfoBean;
    }

    /* renamed from: setFileLastModified, reason: collision with other method in class */
    public final void m72305setFileLastModified(long j) {
        this.fileLastModified = j;
    }

    /* renamed from: setLayerId, reason: collision with other method in class */
    public final void m72306setLayerId(int i) {
        this.layerId = i;
    }

    /* renamed from: setResourceModel, reason: collision with other method in class */
    public final void m72307setResourceModel(@Nullable ResourceModel resourceModel) {
        this.resourceModel = resourceModel;
    }

    /* renamed from: setShape, reason: collision with other method in class */
    public final void m72308setShape(@Nullable Shape shape) {
        this.shape = shape;
    }

    /* renamed from: setShapeModel, reason: collision with other method in class */
    public final void m72309setShapeModel(@Nullable ShapeModel shapeModel) {
        this.shapeModel = shapeModel;
    }

    @NotNull
    public final ShapeBean setFileLastModified(long fileLastModified) {
        this.fileLastModified = fileLastModified;
        return this;
    }

    @NotNull
    public final ShapeBean setLayerId(int layerId) {
        this.layerId = layerId;
        return this;
    }

    @NotNull
    public final ShapeBean setResourceModel(@Nullable ResourceModel resourceModel) {
        this.resourceModel = resourceModel;
        return this;
    }

    @NotNull
    public final ShapeBean setShape(@Nullable Shape shape) {
        this.shape = shape;
        return this;
    }

    @NotNull
    public final ShapeBean setShapeModel(@Nullable ShapeModel shapeModel) {
        this.shapeModel = shapeModel;
        return this;
    }
}
