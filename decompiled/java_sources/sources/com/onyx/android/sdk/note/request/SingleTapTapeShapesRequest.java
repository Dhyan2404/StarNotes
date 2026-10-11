package com.onyx.android.sdk.note.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.shape.SingleTapTapeShapeArgs;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.request.tape.ToggleTapeShapeStrokeStyleRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\n¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002R\"\u0010\u0010\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR(\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", C6997f.f39671c, C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;", "Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;", "setArgs", "(Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;)V", "args", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/List;", "getHitTestTapeShapeList", "()Ljava/util/List;", "setHitTestTapeShapeList", "(Ljava/util/List;)V", "hitTestTapeShapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSingleTapTapeShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleTapTapeShapesRequest.kt\ncom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n766#2:65\n857#2,2:66\n1855#2,2:68\n*S KotlinDebug\n*F\n+ 1 SingleTapTapeShapesRequest.kt\ncom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest\n*L\n44#1:65\n44#1:66,2\n59#1:68,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SingleTapTapeShapesRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public SingleTapTapeShapeArgs args;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<Shape> hitTestTapeShapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleTapTapeShapesRequest(@NotNull NoteBundle noteBundle, @NotNull SingleTapTapeShapeArgs args) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.hitTestTapeShapeList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(noteBundle.getNoteDoc(), this.args.getPageUniqueId());
        if (pageByUniqueId == null) {
            return;
        }
        m34150f(pageByUniqueId);
        if (CollectionKt.isNonBlank(this.hitTestTapeShapeList)) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "onSingleTap, hit test tapeShape, toggle tape shapes", new Object[0]);
            m34151g();
        }
    }

    /* renamed from: f */
    public final void m34150f(NotePage notePage) {
        List mutableList;
        TouchPoint pointInDocument = this.args.getPointInDocument();
        List<Shape> tapeShapes = NotePageShape.INSTANCE.getTapeShapes(notePage);
        ArrayList arrayList = new ArrayList();
        for (Object obj : tapeShapes) {
            Shape shape = (Shape) obj;
            if (ShapeUtils.INSTANCE.isShapeOnCurrentLayer(notePage, shape) && shape.hitTest(pointInDocument.getX(), pointInDocument.getY(), this.args.getHitTestRadius())) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        CollectionKt.safeAddAll(this.hitTestTapeShapeList, mutableList);
    }

    /* renamed from: g */
    public final void m34151g() {
        if (this.hitTestTapeShapeList.isEmpty()) {
            return;
        }
        Iterator<T> it2 = this.hitTestTapeShapeList.iterator();
        while (it2.hasNext()) {
            new ToggleTapeShapeStrokeStyleRequest(getNoteBundle(), ShapeTypes.INSTANCE.getTargetShape((Shape) it2.next())).execute2();
        }
    }

    @NotNull
    public final SingleTapTapeShapeArgs getArgs() {
        return this.args;
    }

    @NotNull
    public final List<Shape> getHitTestTapeShapeList() {
        return this.hitTestTapeShapeList;
    }

    public final void setArgs(@NotNull SingleTapTapeShapeArgs singleTapTapeShapeArgs) {
        Intrinsics.checkNotNullParameter(singleTapTapeShapeArgs, "<set-?>");
        this.args = singleTapTapeShapeArgs;
    }

    public final void setHitTestTapeShapeList(@NotNull List<Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.hitTestTapeShapeList = list;
    }
}
