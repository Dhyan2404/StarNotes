package com.onyx.android.sdk.note.request.excerpt;

import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.excerpt.SaveExcerptCollectionArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.extension.NoteBundleKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u0003H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "noteBundle", "Lcom/onyx/android/sdk/note/NoteBundle;", "(Lcom/onyx/android/sdk/note/NoteBundle;)V", "args", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "setArgs", "(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "execute", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SaveExcerptCollectionRequest extends BaseRxNoteRequest {
    public SaveExcerptCollectionArgs args;
    public Shape shape;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveExcerptCollectionRequest(@NotNull NoteBundle noteBundle) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        List<ExcerptCollectionModel> listOf;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        ExcerptCollectionModel excerptCollectionModel = new ExcerptCollectionModel();
        excerptCollectionModel.setUniqueId(UUIDUtils.INSTANCE.rawUUID());
        excerptCollectionModel.setSourceDocId(getArgs().getSourceDocId());
        excerptCollectionModel.setSourceShapeId(getArgs().getSourceShapeId());
        excerptCollectionModel.setQuoteDocId(noteBundle.getNoteDoc().getDocumentUniqueId());
        excerptCollectionModel.setQuoteShapeId(getShape().getShapeUniqueId());
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        Shape shape = getShape();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(excerptCollectionModel);
        shapeOptions.setExcerptCollectionList(shape, listOf);
        NoteBundleKt.getExcerptCollectionProvider(noteBundle).saveExcerptCollection(excerptCollectionModel);
    }

    @NotNull
    public final SaveExcerptCollectionArgs getArgs() {
        SaveExcerptCollectionArgs saveExcerptCollectionArgs = this.args;
        if (saveExcerptCollectionArgs != null) {
            return saveExcerptCollectionArgs;
        }
        Intrinsics.throwUninitializedPropertyAccessException("args");
        return null;
    }

    @NotNull
    public final Shape getShape() {
        Shape shape = this.shape;
        if (shape != null) {
            return shape;
        }
        Intrinsics.throwUninitializedPropertyAccessException("shape");
        return null;
    }

    public final void setArgs(@NotNull SaveExcerptCollectionArgs saveExcerptCollectionArgs) {
        Intrinsics.checkNotNullParameter(saveExcerptCollectionArgs, "<set-?>");
        this.args = saveExcerptCollectionArgs;
    }

    public final void setShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.shape = shape;
    }
}
