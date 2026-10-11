package com.onyx.android.sdk.universal.editor.action.link;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\n¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/link/CreateShapeLinkBeanAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "m", "", C6999h.f39688c, "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "shapeList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateShapeLinkBeanAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateShapeLinkBeanAction.kt\ncom/onyx/android/sdk/universal/editor/action/link/CreateShapeLinkBeanAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1549#2:65\n1620#2,3:66\n*S KotlinDebug\n*F\n+ 1 CreateShapeLinkBeanAction.kt\ncom/onyx/android/sdk/universal/editor/action/link/CreateShapeLinkBeanAction\n*L\n44#1:65\n44#1:66,3\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateShapeLinkBeanAction extends RxBaseAppAction<ShapeLinkBean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreateShapeLinkBeanAction$a */
    /* loaded from: classes8.dex */
    public static final class C9627a<T, R> implements Function {
        public C9627a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ShapeLinkBean apply(@NotNull CreateShapeLinkBeanAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateShapeLinkBeanAction.this.m39394l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CreateShapeLinkBeanAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> shapeList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.shapeList = shapeList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ShapeLinkBean> create() {
        Observable<ShapeLinkBean> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C9627a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: l */
    public final ShapeLinkBean m39394l() {
        Object first;
        int collectionSizeOrDefault;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.shapeList);
        Shape shape = (Shape) first;
        NoteDocument noteDoc = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc();
        LinkDocBean linkDocBean = new LinkDocBean(null, null, 0, null, null, 31, null);
        linkDocBean.setDocumentId(noteDoc.getDocumentUniqueId());
        linkDocBean.setPageId(shape.getPageUniqueId());
        linkDocBean.setPageIndex(getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageIndex(shape.getPageUniqueId()));
        linkDocBean.setTitle(noteDoc.getNoteModel().getTitle() + StringKt.safelyGetStr(m39395m(shape)));
        List<Shape> list = this.shapeList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Shape) it2.next()).getShapeUniqueId());
        }
        linkDocBean.setShapeIdList(arrayList);
        ShapeLinkBean shapeLinkBean = new ShapeLinkBean();
        shapeLinkBean.setDocBean(linkDocBean);
        shapeLinkBean.setKey("NOTE");
        shapeLinkBean.setDisplayStyle(ShapeLinkBean.DisplayStyle.INSTANCE.getICON_TITLE_BOX());
        return shapeLinkBean;
    }

    /* renamed from: m */
    public final String m39395m(Shape shape) {
        return shape.getType() == 19 ? ResManager.INSTANCE.getString(C8045R.string.shape_link_type_image) : ResManager.INSTANCE.getString(C8045R.string.shape_link_type_scribble);
    }
}
