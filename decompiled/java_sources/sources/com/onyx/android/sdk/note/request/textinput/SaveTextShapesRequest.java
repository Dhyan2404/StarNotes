package com.onyx.android.sdk.note.request.textinput;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.font.CJKCompat;
import com.onyx.android.sdk.base.utils.HtmlUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001c\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/textinput/SaveTextShapesRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/List;", "shapes", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveTextShapesRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final NotePage notePage;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final List<Shape> shapes;

    public /* synthetic */ SaveTextShapesRequest(NoteBundle noteBundle, NotePage notePage, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(noteBundle, notePage, (i & 4) != 0 ? null : list);
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        List<? extends Shape> mutableList;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        List<Shape> list = this.shapes;
        if (list == null) {
            return;
        }
        for (Shape shape : list) {
            shape.setText(CJKCompat.INSTANCE.CJKToStandard(HtmlUtils.INSTANCE.getHtmlTextContent(shape.getRichText())));
            shape.postConcat(ShapeOptions.INSTANCE.getTransformingMatrix(shape));
            TextRenderUtil.INSTANCE.clearCache(shape);
        }
        NotePageShape.addShapeList$default(NotePageShape.INSTANCE, this.notePage, this.shapes, 0, 2, null);
        this.notePage.sortShapeList();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.shapes);
        noteBundle.postAddShapeEvent(mutableList);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SaveTextShapesRequest(@NotNull NoteBundle noteBundle, @NotNull NotePage notePage, @Nullable List<? extends Shape> list) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        this.notePage = notePage;
        this.shapes = list;
    }
}
