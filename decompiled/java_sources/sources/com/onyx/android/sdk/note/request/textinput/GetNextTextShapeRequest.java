package com.onyx.android.sdk.note.request.textinput;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.note.request.textinput.GetNextTextShapeRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u000b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002J\u0016\u0010\r\u001a\u00020\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\nH\u0002R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u000eR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000fR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/textinput/GetNextTextShapeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getNextShape", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "", C6998g.f39679a, "textShapes", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "currentShape", "i", "nextShape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GetNextTextShapeRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public NotePage notePage;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Shape currentShape;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Shape nextShape;

    public /* synthetic */ GetNextTextShapeRequest(NoteBundle noteBundle, NotePage notePage, Shape shape, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(noteBundle, notePage, (i & 4) != 0 ? null : shape);
    }

    /* renamed from: i */
    public static final int m34214i(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        int indexOf;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        if (this.currentShape == null) {
            return;
        }
        List<Shape> m34215g = m34215g(this.notePage);
        if (m34215g.size() <= 1) {
            return;
        }
        m34216h(m34215g);
        indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends Shape>) ((List<? extends Object>) m34215g), this.currentShape);
        int i = indexOf + 1;
        if (i >= m34215g.size()) {
            i = 0;
        }
        this.nextShape = m34215g.get(i);
    }

    /* renamed from: g */
    public final List<Shape> m34215g(NotePage notePage) {
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Shape shape : shapeList) {
            if (shape.getType() == 16 && ShapeUtils.INSTANCE.isShapeOnCurrentLayer(notePage, shape)) {
                arrayList.add(shape);
            }
        }
        return arrayList;
    }

    @Nullable
    public final Shape getNextShape() {
        return this.nextShape;
    }

    /* renamed from: h */
    public final void m34216h(List<? extends Shape> textShapes) {
        List mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) textShapes);
        final GetNextTextShapeRequest$sortShapesByPosition$1 getNextTextShapeRequest$sortShapesByPosition$1 = new Function2<Shape, Shape, Integer>() { // from class: com.onyx.android.sdk.note.request.textinput.GetNextTextShapeRequest$sortShapesByPosition$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(@NotNull Shape o1, @NotNull Shape o2) {
                Intrinsics.checkNotNullParameter(o1, "o1");
                Intrinsics.checkNotNullParameter(o2, "o2");
                RectF boundingRect = o1.getBoundingRect();
                RectF boundingRect2 = o2.getBoundingRect();
                int i = (int) (boundingRect.top - boundingRect2.top);
                if (i != 0) {
                    return Integer.valueOf(i);
                }
                return Integer.valueOf((int) (boundingRect.left - boundingRect2.left));
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: com.sunia.HTREnginev2.m2h
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m34214i;
                m34214i = GetNextTextShapeRequest.m34214i(Function2.this, obj, obj2);
                return m34214i;
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetNextTextShapeRequest(@NotNull NoteBundle noteBundle, @NotNull NotePage notePage, @Nullable Shape shape) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        this.notePage = notePage;
        this.currentShape = shape;
    }
}
