package com.onyx.android.sdk.note.request.tape;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.TapeStrokeStyle;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.note.request.GetReferenceShapesRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/tape/UpdateTapeShapeStrokeStyleRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;", "tapeStrokeStyle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateTapeShapeStrokeStyleRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TapeStrokeStyle tapeStrokeStyle;

    public /* synthetic */ UpdateTapeShapeStrokeStyleRequest(NoteBundle noteBundle, Shape shape, TapeStrokeStyle tapeStrokeStyle, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(noteBundle, shape, (i & 4) != 0 ? TapeStrokeStyle.INSTANCE.getDefaultTapeStrokeStyle() : tapeStrokeStyle);
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        List listOf;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Shape targetShape = ShapeTypes.INSTANCE.getTargetShape(this.shape);
        if (ShapeKt.isTapeShape(targetShape)) {
            ShapeOptions.INSTANCE.setTapeStrokeStyle(targetShape, this.tapeStrokeStyle);
            listOf = CollectionsKt__CollectionsJVMKt.listOf(targetShape);
            GetReferenceShapesRequest getReferenceShapesRequest = new GetReferenceShapesRequest(noteBundle, listOf);
            getReferenceShapesRequest.execute2();
            List<Shape> referenceShapeList = getReferenceShapesRequest.getReferenceShapeList();
            ArrayList arrayList = new ArrayList();
            CollectionKt.safeAdd(arrayList, targetShape);
            CollectionKt.safeAddAll(arrayList, referenceShapeList);
            noteBundle.postShapeAddChangedEvent(arrayList);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateTapeShapeStrokeStyleRequest(@NotNull NoteBundle noteBundle, @NotNull Shape shape, @NotNull TapeStrokeStyle tapeStrokeStyle) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(tapeStrokeStyle, "tapeStrokeStyle");
        this.shape = shape;
        this.tapeStrokeStyle = tapeStrokeStyle;
    }
}
