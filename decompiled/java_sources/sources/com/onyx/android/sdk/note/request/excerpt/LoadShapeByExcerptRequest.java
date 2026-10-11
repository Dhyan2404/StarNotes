package com.onyx.android.sdk.note.request.excerpt;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeByExcerptRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "getModel", "()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "model", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "shape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadShapeByExcerptRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadShapeByExcerptRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/LoadShapeByExcerptRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,35:1\n766#2:36\n857#2,2:37\n1#3:39\n*S KotlinDebug\n*F\n+ 1 LoadShapeByExcerptRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/LoadShapeByExcerptRequest\n*L\n30#1:36\n30#1:37,2\n*E\n"})
/* loaded from: classes8.dex */
public final class LoadShapeByExcerptRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ExcerptInfoBean model;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Shape shape;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadShapeByExcerptRequest(@NotNull NoteBundle noteBundle, @NotNull ExcerptInfoBean model) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(model, "model");
        this.model = model;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Object obj;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        List<Shape> shapeList = NoteDocNotePage.INSTANCE.ensureNotePage(noteBundle.getNoteDoc(), this.model.getPageUniqueId()).getShapeList();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = shapeList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            Shape shape = (Shape) next;
            if (shape.getType() == 41 || shape.getType() == 44) {
                arrayList.add(next);
            }
        }
        Iterator it3 = CollectionKt.ensureList(arrayList).iterator();
        while (true) {
            if (!it3.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it3.next();
                if (Intrinsics.areEqual(((Shape) obj).getShapeUniqueId(), this.model.getUniqueId())) {
                    break;
                }
            }
        }
        this.shape = (Shape) obj;
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("may found the match excerpt shape:");
        Shape shape2 = this.shape;
        sb.append(shape2 != null ? shape2.getShapeUniqueId() : null);
        debug.m32035d(LoadShapeByExcerptRequest.class, sb.toString(), new Object[0]);
    }

    @NotNull
    public final ExcerptInfoBean getModel() {
        return this.model;
    }

    @Nullable
    public final Shape getShape() {
        return this.shape;
    }

    public final void setShape(@Nullable Shape shape) {
        this.shape = shape;
    }
}
