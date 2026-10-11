package com.onyx.android.sdk.note.request.tape;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.TapeStrokeStyle;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/tape/ToggleTapeShapeStrokeStyleRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ToggleTapeShapeStrokeStyleRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToggleTapeShapeStrokeStyleRequest(@NotNull NoteBundle noteBundle, @NotNull Shape shape) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shape = shape;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        new UpdateTapeShapeStrokeStyleRequest(noteBundle, this.shape, ShapeOptions.INSTANCE.isTapeStrokeStyle(this.shape) ? TapeStrokeStyle.STRIPES_FILL : TapeStrokeStyle.STROKE).execute2();
    }
}
