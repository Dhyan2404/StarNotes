package com.onyx.android.sdk.note.request.excerpt;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocShape;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR$\u0010\u0014\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6997f.f39671c, "", C6998g.f39679a, Constants.STRING_SIG, "getShapeId", "()Ljava/lang/String;", "shapeId", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "shape", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadShapeRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String shapeId;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Shape shape;

    public /* synthetic */ LoadShapeRequest(NoteBundle noteBundle, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(noteBundle, (i & 2) != 0 ? "" : str);
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        String str = this.shapeId;
        if (str == null || str.length() == 0) {
            return;
        }
        Shape loadShapeById = NoteDocShape.INSTANCE.loadShapeById(noteBundle.getNoteDoc(), this.shapeId);
        this.shape = loadShapeById;
        if (loadShapeById == null) {
            this.shape = m34161f(noteBundle);
        }
    }

    /* renamed from: f */
    public final Shape m34161f(NoteBundle noteBundle) {
        Object first;
        List<ShapeModel> loadShapeList = noteBundle.getNoteDoc().getProviderHolder().getNoteShapeProvider().loadShapeList(ShapeQueryArgsExtKt.loadShapeModelQuery$default(this.shapeId, 0, 2, null));
        if (loadShapeList.isEmpty()) {
            return null;
        }
        Debug.INSTANCE.m32035d(LoadShapeRequest.class, "size = " + loadShapeList.size(), new Object[0]);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) loadShapeList);
        NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(noteBundle.getNoteDoc(), ((ShapeModel) first).getPageUniqueId());
        if (pageByUniqueId == null) {
            return null;
        }
        return NotePageShape.INSTANCE.getShapeById(pageByUniqueId, this.shapeId);
    }

    @Nullable
    public final Shape getShape() {
        return this.shape;
    }

    @NotNull
    public final String getShapeId() {
        return this.shapeId;
    }

    public final void setShape(@Nullable Shape shape) {
        this.shape = shape;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadShapeRequest(@NotNull NoteBundle noteBundle, @NotNull String shapeId) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        this.shapeId = shapeId;
    }
}
