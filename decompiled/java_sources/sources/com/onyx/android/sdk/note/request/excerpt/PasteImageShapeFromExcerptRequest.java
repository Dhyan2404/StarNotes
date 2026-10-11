package com.onyx.android.sdk.note.request.excerpt;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.ImageManager;
import com.onyx.android.sdk.note.extension.ResourceModelKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\n\u0012\u0006\u0010\u001c\u001a\u00020\u0015¢\u0006\u0004\b-\u0010.J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0002R\"\u0010\u0014\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR(\u0010$\u001a\b\u0012\u0004\u0012\u00020\b0\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/base/data/Size;", "imageSize", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6997f.f39671c, "", CouchFieldKey.KEY_LOCAL_PATH, "documentId", "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", C6998g.f39679a, Constants.STRING_SIG, "getImageFilePath", "()Ljava/lang/String;", "setImageFilePath", "(Ljava/lang/String;)V", "imageFilePath", "Lcom/onyx/android/sdk/base/data/TouchPoint;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getDownPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setDownPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "downPoint", "", "i", "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", "Landroid/graphics/RectF;", "j", "Landroid/graphics/RectF;", "getSourceRectF", "()Landroid/graphics/RectF;", "setSourceRectF", "(Landroid/graphics/RectF;)V", "sourceRectF", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PasteImageShapeFromExcerptRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String imageFilePath;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public TouchPoint downPoint;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<Shape> shapeList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public RectF sourceRectF;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PasteImageShapeFromExcerptRequest(@NotNull NoteBundle noteBundle, @NotNull String imageFilePath, @NotNull TouchPoint downPoint) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(imageFilePath, "imageFilePath");
        Intrinsics.checkNotNullParameter(downPoint, "downPoint");
        this.imageFilePath = imageFilePath;
        this.downPoint = downPoint;
        this.shapeList = new ArrayList();
        this.sourceRectF = new RectF();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Size decodeSize = ImageManager.INSTANCE.decodeSize(this.imageFilePath);
        Debug.INSTANCE.m32035d(PasteImageShapeFromExcerptRequest.class, this.imageFilePath + ", imgSize = " + decodeSize.toRectF(), new Object[0]);
        if (decodeSize.isEmpty()) {
            return;
        }
        this.shapeList.add(m34162f(decodeSize));
    }

    /* renamed from: f */
    public final Shape m34162f(Size imageSize) {
        Shape create = ShapeFactory.INSTANCE.create(ImageManager.INSTANCE.getShapeType(this.imageFilePath));
        RectF rectF = (this.sourceRectF.isEmpty() || (((this.sourceRectF.width() * this.sourceRectF.height()) > ((float) (imageSize.getWidth() * imageSize.getHeight())) ? 1 : ((this.sourceRectF.width() * this.sourceRectF.height()) == ((float) (imageSize.getWidth() * imageSize.getHeight())) ? 0 : -1)) > 0)) ? imageSize.toRectF() : this.sourceRectF;
        float width = rectF.width();
        float height = rectF.height();
        TouchPoint copy = this.downPoint.copy();
        float x = copy.getX();
        ResManager resManager = ResManager.INSTANCE;
        copy.setX(x - (resManager.getFloat(C7485R.dimen.paste_single_image_by_drop_left_width_percent) * width));
        copy.setY(copy.getY() - (resManager.getFloat(C7485R.dimen.paste_single_image_by_drop_top_height_percent) * height));
        create.onDown(copy, copy);
        TouchPoint copy2 = copy.copy();
        copy2.setX(copy2.getX() + width);
        copy2.setY(copy2.getY() + height);
        create.onUp(copy2, copy2);
        create.ensureShapeUniqueId();
        create.updateShapeRect();
        ShapeOptions.INSTANCE.setResource(create, m34163g(this.imageFilePath, getNoteBundle().getNoteDoc().getDocumentUniqueId()));
        ShapePersistOptionsKt.setBottom(create, true);
        Debug.INSTANCE.m32035d(PasteImageShapeFromExcerptRequest.class, "originRect = " + create.getOriginRect() + ", boundingRect = " + create.getBoundingRect(), new Object[0]);
        return create;
    }

    /* renamed from: g */
    public final ShapeResource m34163g(String localPath, String documentId) {
        return ResourceModels.INSTANCE.toShapeResource(ResourceModelKt.loadAndSaveResource(getNoteBundle().getNoteDoc(), localPath, documentId));
    }

    @NotNull
    public final TouchPoint getDownPoint() {
        return this.downPoint;
    }

    @NotNull
    public final String getImageFilePath() {
        return this.imageFilePath;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    @NotNull
    public final RectF getSourceRectF() {
        return this.sourceRectF;
    }

    public final void setDownPoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.downPoint = touchPoint;
    }

    public final void setImageFilePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imageFilePath = str;
    }

    public final void setShapeList(@NotNull List<Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }

    public final void setSourceRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.sourceRectF = rectF;
    }
}
