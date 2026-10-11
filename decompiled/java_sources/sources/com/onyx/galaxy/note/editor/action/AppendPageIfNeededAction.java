package com.onyx.galaxy.note.editor.action;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.EditTextShape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.InsertPageAfterSpecifiedPageAction;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B\u001d\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\f\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002R\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/AppendPageIfNeededAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "l", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "shapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAppendPageIfNeededAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppendPageIfNeededAction.kt\ncom/onyx/galaxy/note/editor/action/AppendPageIfNeededAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,56:1\n1963#2,14:57\n1247#3,2:71\n*S KotlinDebug\n*F\n+ 1 AppendPageIfNeededAction.kt\ncom/onyx/galaxy/note/editor/action/AppendPageIfNeededAction\n*L\n42#1:57,14\n48#1:71,2\n*E\n"})
/* loaded from: classes9.dex */
public final class AppendPageIfNeededAction extends RxBaseAppAction<AppendPageIfNeededAction> {

    /* renamed from: i */
    public static final double f58118i = 0.75d;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: com.onyx.galaxy.note.editor.action.AppendPageIfNeededAction$a */
    /* loaded from: classes9.dex */
    public static final class C11791a<T, R> implements Function {
        public C11791a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull AppendPageIfNeededAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(AppendPageIfNeededAction.this.m45613m());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AppendPageIfNeededAction$b */
    /* loaded from: classes9.dex */
    public static final class C11792b<T, R> implements Function {
        public C11792b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AppendPageIfNeededAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AppendPageIfNeededAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AppendPageIfNeededAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> shapes) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.shapes = shapes;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AppendPageIfNeededAction> create() {
        Observable map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C11791a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable map2 = RxjavaKt.flatMapIf(map, new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.AppendPageIfNeededAction$create$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.action.AppendPageIfNeededAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it2) {
                Observable<? extends Object> m45612l;
                Intrinsics.checkNotNullParameter(it2, "it");
                m45612l = AppendPageIfNeededAction.this.m45612l();
                return m45612l;
            }
        }).map(new C11792b());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    @NotNull
    public final List<Shape> getShapes() {
        return this.shapes;
    }

    /* renamed from: l */
    public final Observable<?> m45612l() {
        return new InsertPageAfterSpecifiedPageAction(getEditorBundle(), EditorBundleKt.pageCount(getEditorBundle()) - 1, false).build();
    }

    /* renamed from: m */
    public final boolean m45613m() {
        Object obj;
        Sequence asSequence;
        Sequence filter;
        Iterator<T> it2 = EditorBundleKt.visibleBoxList(getEditorBundle()).iterator();
        if (it2.hasNext()) {
            Object next = it2.next();
            if (it2.hasNext()) {
                EditorBundle editorBundle = getEditorBundle();
                BoxInfo noteInfo = ((BoxInfo) next).getNoteInfo();
                int pageIndex = noteInfo == null ? -1 : EditorBundleKt.pageIndex(editorBundle, noteInfo);
                do {
                    Object next2 = it2.next();
                    EditorBundle editorBundle2 = getEditorBundle();
                    BoxInfo noteInfo2 = ((BoxInfo) next2).getNoteInfo();
                    int pageIndex2 = noteInfo2 == null ? -1 : EditorBundleKt.pageIndex(editorBundle2, noteInfo2);
                    if (pageIndex < pageIndex2) {
                        next = next2;
                        pageIndex = pageIndex2;
                    }
                } while (it2.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        final BoxInfo boxInfo = (BoxInfo) obj;
        if (boxInfo == null) {
            return false;
        }
        double d = boxInfo.getOriginRectFWithMargin().bottom * 0.75d;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.shapes);
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Shape, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.AppendPageIfNeededAction$shouldAppendPage$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it3.getPageUniqueId(), BoxInfo.this.getId()) && (ShapeTypes.INSTANCE.isPenShape(it3) || ((it3 instanceof EditTextShape) && StringKt.isNotEmpty(it3.getText()))));
            }
        });
        Iterator it3 = filter.iterator();
        while (it3.hasNext()) {
            if (((double) ((Shape) it3.next()).getBoundingRect().bottom) > d) {
                return true;
            }
        }
        return false;
    }
}
