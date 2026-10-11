package com.onyx.android.sdk.universal.editor.action.tape;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/tape/ClearCurrentPageTapeShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "m", "shapes", "l", "", C6999h.f39688c, "I", "getPageIndex", "()I", "pageIndex", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ClearCurrentPageTapeShapeAction extends RxBaseAppAction<ClearCurrentPageTapeShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final int pageIndex;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tape.ClearCurrentPageTapeShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10211a<T, R> implements Function {
        public C10211a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClearCurrentPageTapeShapeAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearCurrentPageTapeShapeAction.this.m40425l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tape.ClearCurrentPageTapeShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10212b<T, R> implements Function {
        public C10212b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClearCurrentPageTapeShapeAction apply(@NotNull ClearCurrentPageTapeShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearCurrentPageTapeShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tape.ClearCurrentPageTapeShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C10213c<T, R> implements Function {

        /* renamed from: e */
        public static final C10213c<T, R> f51100e = new C10213c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.mergeShapeList(true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tape.ClearCurrentPageTapeShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C10214d<T, R> implements Function {
        public C10214d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DeleteShapesAction(ClearCurrentPageTapeShapeAction.this.getEditorBundle(), it2, false, false, 12, null).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tape.ClearCurrentPageTapeShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C10215e<T, R> implements Function {
        public C10215e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClearCurrentPageTapeShapeAction apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearCurrentPageTapeShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClearCurrentPageTapeShapeAction(@NotNull EditorBundle editorBundle, int i) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.pageIndex = i;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ClearCurrentPageTapeShapeAction> create() {
        Observable<ClearCurrentPageTapeShapeAction> map = DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, List<? extends Shape>>() { // from class: com.onyx.android.sdk.universal.editor.action.tape.ClearCurrentPageTapeShapeAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<Shape> invoke(@NotNull NoteBundle it2) {
                List<Shape> m40426m;
                Intrinsics.checkNotNullParameter(it2, "it");
                m40426m = ClearCurrentPageTapeShapeAction.this.m40426m();
                return m40426m;
            }
        }).flatMap(new C10211a()).map(new C10212b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    /* renamed from: l */
    public final Observable<ClearCurrentPageTapeShapeAction> m40425l(List<? extends Shape> shapes) {
        if (shapes.isEmpty()) {
            Observable<ClearCurrentPageTapeShapeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<ClearCurrentPageTapeShapeAction> map = new GetReferenceShapeAction(getEditorBundle(), shapes).build().map(C10213c.f51100e).flatMap(new C10214d()).map(new C10215e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final List<Shape> m40426m() {
        List<Shape> emptyList;
        VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(this.pageIndex);
        if (virtualPage == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return NotePageShape.INSTANCE.getTapeShapes(getEditorBundle().getWorkBundle().getVirtualPolicy().ensureNotePage(virtualPage));
    }
}
