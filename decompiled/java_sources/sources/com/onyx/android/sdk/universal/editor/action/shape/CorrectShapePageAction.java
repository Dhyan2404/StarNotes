package com.onyx.android.sdk.universal.editor.action.shape;

import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001a\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/CorrectShapePageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "l", "m", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCorrectShapePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CorrectShapePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/CorrectShapePageAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,66:1\n766#2:67\n857#2,2:68\n1549#2:70\n1620#2,2:71\n766#2:74\n857#2,2:75\n1622#2:77\n337#3:73\n*S KotlinDebug\n*F\n+ 1 CorrectShapePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/CorrectShapePageAction\n*L\n56#1:67\n56#1:68,2\n57#1:70\n57#1:71,2\n61#1:74\n61#1:75,2\n57#1:77\n58#1:73\n*E\n"})
/* loaded from: classes8.dex */
public final class CorrectShapePageAction extends RxBaseAppAction<CorrectShapePageAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.CorrectShapePageAction$a */
    /* loaded from: classes8.dex */
    public static final class C10043a<T, R> implements Function {
        public C10043a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull CorrectShapePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CorrectShapePageAction.this.m40143m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.CorrectShapePageAction$b */
    /* loaded from: classes8.dex */
    public static final class C10044b<T, R> implements Function {
        public C10044b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CorrectShapePageAction.this.m40142l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.CorrectShapePageAction$c */
    /* loaded from: classes8.dex */
    public static final class C10045c<T, R> implements Function {
        public C10045c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CorrectShapePageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CorrectShapePageAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CorrectShapePageAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CorrectShapePageAction> create() {
        Observable<CorrectShapePageAction> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C10043a()).flatMap(new C10044b()).map(new C10045c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<?> m40142l(List<? extends Shape> shapes) {
        Debug.INSTANCE.m32052i(CorrectShapePageAction.class, "correct page shapes:" + shapes.size(), new Object[0]);
        if (CollectionKt.isNullOrEmpty(shapes)) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        BoxInfo currentVisibleBoxInfo = EditorBundleKt.currentVisibleBoxInfo(getEditorBundle());
        RenderContext renderContext = new RenderContext();
        ShapeTransformBean shapeTransformBean = new ShapeTransformBean();
        shapeTransformBean.setTransformShapes(shapes);
        return new QuitTransformAction(getEditorBundle(), renderContext, currentVisibleBoxInfo, shapeTransformBean).build();
    }

    /* renamed from: m */
    public final List<Shape> m40143m() {
        int collectionSizeOrDefault;
        List<Shape> flatten;
        List<NotePage> loadedNotePages = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getLoadedNotePages();
        ArrayList<NotePage> arrayList = new ArrayList();
        Iterator<T> it2 = loadedNotePages.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((NotePage) next).getShapeCount() > 0) {
                arrayList.add(next);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (NotePage notePage : arrayList) {
            RectF rectF = new RectF(notePage.getPageInfo().getPageRect());
            List<Shape> filterNormalShapes = ShapeTypes.INSTANCE.filterNormalShapes(notePage.getShapeList());
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : filterNormalShapes) {
                if (!RectF.intersects(ShapeRectUtils.INSTANCE.getBoundingRectWithWidth((Shape) obj), rectF)) {
                    arrayList3.add(obj);
                }
            }
            NotePage.removeShapeList$default(notePage, arrayList3, false, 2, null);
            arrayList2.add(arrayList3);
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList2);
        return flatten;
    }
}
