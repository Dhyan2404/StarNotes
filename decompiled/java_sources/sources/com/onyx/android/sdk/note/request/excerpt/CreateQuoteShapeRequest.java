package com.onyx.android.sdk.note.request.excerpt;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.excerpt.SaveExcerptCollectionArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.extension.ResourceModelKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u000f¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0002R\"\u0010\u0015\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\b0\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/base/data/Size;", "imageSize", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6997f.f39671c, "", CouchFieldKey.KEY_LOCAL_PATH, "documentId", "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "setArgs", "(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V", "args", "", C6999h.f39688c, "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreateQuoteShapeRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public SaveExcerptCollectionArgs args;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<Shape> shapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateQuoteShapeRequest(@NotNull NoteBundle noteBundle, @NotNull SaveExcerptCollectionArgs args) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.shapeList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        String sourceImgPath = this.args.getSourceImgPath();
        Size size = new Size(0, 0, 3, null);
        BitmapUtils.INSTANCE.decodeBitmapSizeSupportExif(sourceImgPath, size);
        Debug.INSTANCE.m32035d(CreateQuoteShapeRequest.class, sourceImgPath + ", imgSize = " + size.toRectF(), new Object[0]);
        if (size.isEmpty()) {
            return;
        }
        this.shapeList.add(m34152f(size));
    }

    /* renamed from: f */
    public final Shape m34152f(Size imageSize) {
        String sourceImgPath = this.args.getSourceImgPath();
        RectF copy = RectFKt.copy(this.args.getSourceExcerptQuoteIndicatorAnchorRect());
        Shape create = ShapeFactory.INSTANCE.create(42);
        int width = imageSize.getWidth();
        int height = imageSize.getHeight();
        TouchPoint copy2 = this.args.getDownPoint().copy();
        float x = copy2.getX();
        float f = width;
        ResManager resManager = ResManager.INSTANCE;
        copy2.setX(x - (resManager.getFloat(C7485R.dimen.paste_single_image_by_drop_left_width_percent) * f));
        float f2 = height;
        copy2.setY(copy2.getY() - (resManager.getFloat(C7485R.dimen.paste_single_image_by_drop_top_height_percent) * f2));
        create.onDown(copy2, copy2);
        TouchPoint copy3 = copy2.copy();
        copy3.setX(copy3.getX() + f);
        copy3.setY(copy3.getY() + f2);
        create.onUp(copy3, copy3);
        create.ensureShapeUniqueId();
        create.updateShapeRect();
        ShapeOptions.INSTANCE.setResource(create, m34153g(sourceImgPath, getNoteBundle().getNoteDoc().getDocumentUniqueId()));
        create.setText(this.args.getSourceExcerptQuote());
        ShapePersistOptionsKt.setQuoteIndicatorAnchorRect(create, copy);
        ShapePersistOptionsKt.setBottom(create, true);
        Debug.INSTANCE.m32035d(CreateQuoteShapeRequest.class, "originRect = " + create.getOriginRect() + ", boundingRect = " + create.getBoundingRect(), new Object[0]);
        return create;
    }

    /* renamed from: g */
    public final ShapeResource m34153g(String localPath, String documentId) {
        return ResourceModels.INSTANCE.toShapeResource(ResourceModelKt.loadAndSaveResource(getNoteBundle().getNoteDoc(), localPath, documentId));
    }

    @NotNull
    public final SaveExcerptCollectionArgs getArgs() {
        return this.args;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    public final void setArgs(@NotNull SaveExcerptCollectionArgs saveExcerptCollectionArgs) {
        Intrinsics.checkNotNullParameter(saveExcerptCollectionArgs, "<set-?>");
        this.args = saveExcerptCollectionArgs;
    }

    public final void setShapeList(@NotNull List<Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }
}
