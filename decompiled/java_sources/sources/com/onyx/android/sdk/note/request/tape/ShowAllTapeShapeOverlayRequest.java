package com.onyx.android.sdk.note.request.tape;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.TapeStrokeStyle;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.note.request.tape.ShowAllTapeShapeOverlayRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "show", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Z)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShowAllTapeShapeOverlayRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowAllTapeShapeOverlayRequest.kt\ncom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1549#2:36\n1620#2,3:37\n*S KotlinDebug\n*F\n+ 1 ShowAllTapeShapeOverlayRequest.kt\ncom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest\n*L\n27#1:36\n27#1:37,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ShowAllTapeShapeOverlayRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean show;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShowAllTapeShapeOverlayRequest(@NotNull NoteBundle noteBundle, boolean z) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        this.show = z;
    }

    /* renamed from: i */
    public static final Stream m34204i(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Stream) tmp0.invoke(obj);
    }

    /* renamed from: j */
    public static final boolean m34205j(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* renamed from: k */
    public static final void m34206k(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull final NoteBundle noteBundle) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        final TapeStrokeStyle tapeStrokeStyle = this.show ? TapeStrokeStyle.STRIPES_FILL : TapeStrokeStyle.STROKE;
        Collection<NotePage> values = noteBundle.getNoteDoc().getPageDataMap().values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        Collection<NotePage> collection = values;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NotePage) it2.next()).getShapeList());
        }
        Stream stream = arrayList.stream();
        final ShowAllTapeShapeOverlayRequest$execute$2 showAllTapeShapeOverlayRequest$execute$2 = new Function1<List<Shape>, Stream<? extends Shape>>() { // from class: com.onyx.android.sdk.note.request.tape.ShowAllTapeShapeOverlayRequest$execute$2
            @Override // kotlin.jvm.functions.Function1
            public final Stream<? extends Shape> invoke(List<Shape> list) {
                return list.stream();
            }
        };
        Stream flatMap = stream.flatMap(new Function() { // from class: com.sunia.HTREnginev2.jpm
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream m34204i;
                m34204i = ShowAllTapeShapeOverlayRequest.m34204i(Function1.this, obj);
                return m34204i;
            }
        });
        final ShowAllTapeShapeOverlayRequest$execute$3 showAllTapeShapeOverlayRequest$execute$3 = new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.request.tape.ShowAllTapeShapeOverlayRequest$execute$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(Shape shape) {
                Intrinsics.checkNotNull(shape);
                return Boolean.valueOf(ShapeKt.isTapeShape(shape));
            }
        };
        Stream filter = flatMap.filter(new Predicate() { // from class: com.sunia.HTREnginev2.kpm
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m34205j;
                m34205j = ShowAllTapeShapeOverlayRequest.m34205j(Function1.this, obj);
                return m34205j;
            }
        });
        final Function1<Shape, Unit> function1 = new Function1<Shape, Unit>() { // from class: com.onyx.android.sdk.note.request.tape.ShowAllTapeShapeOverlayRequest$execute$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Shape shape) {
                invoke2(shape);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Shape shape) {
                NoteBundle noteBundle2 = NoteBundle.this;
                Intrinsics.checkNotNull(shape);
                new UpdateTapeShapeStrokeStyleRequest(noteBundle2, shape, tapeStrokeStyle).execute2();
            }
        };
        filter.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.lpm
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ShowAllTapeShapeOverlayRequest.m34206k(Function1.this, obj);
            }
        });
    }
}
