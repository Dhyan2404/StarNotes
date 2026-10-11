package com.onyx.android.sdk.note.request.page;

import android.graphics.Matrix;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.extension.PaintKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", C6998g.f39679a, "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "sliceInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/List;", "shapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPrepareRenderNotePageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrepareRenderNotePageRequest.kt\ncom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,45:1\n1855#2,2:46\n*S KotlinDebug\n*F\n+ 1 PrepareRenderNotePageRequest.kt\ncom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest\n*L\n36#1:46,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PrepareRenderNotePageRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final SliceInfo sliceInfo;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PrepareRenderNotePageRequest(@NotNull NoteBundle noteBundle, @NotNull SliceInfo sliceInfo, @NotNull List<? extends Shape> shapeList) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(sliceInfo, "sliceInfo");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.sliceInfo = sliceInfo;
        this.shapeList = shapeList;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Matrix matrix = new Matrix();
        float actualScale = this.sliceInfo.getBoxInfo().getActualScale();
        matrix.setScale(actualScale, actualScale);
        PageInfo pageInfo = noteBundle.getNoteDoc().getNotePageInfo().getPageInfo(this.sliceInfo.getBoxInfo().getId());
        final RenderContext renderContext = new RenderContext(PaintKt.createShapeDrawingPaint(), new Matrix());
        renderContext.setShapeShaderManager(noteBundle.getShapeShaderManager());
        renderContext.setMatrix(matrix);
        renderContext.updatePageInfo(pageInfo);
        for (Shape shape : this.shapeList) {
            if (getAbort()) {
                return;
            } else {
                AnyKt.runCatching(shape, true, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.request.page.PrepareRenderNotePageRequest$execute$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull Shape runCatching) {
                        Intrinsics.checkNotNullParameter(runCatching, "$this$runCatching");
                        return Boolean.valueOf(runCatching.prepareRender(RenderContext.this));
                    }
                });
            }
        }
    }
}
