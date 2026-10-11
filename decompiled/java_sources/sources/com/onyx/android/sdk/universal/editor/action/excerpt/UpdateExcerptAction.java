package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocShape;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002J\u001e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateExcerptAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "l", "", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "beanList", "m", C6999h.f39688c, "Ljava/util/List;", "excerptInfoBeanList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateExcerptAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateExcerptAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/UpdateExcerptAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1549#2:70\n1620#2,3:71\n1477#2:74\n1502#2,3:75\n1505#2,3:85\n1855#2,2:89\n766#2:92\n857#2,2:93\n372#3,7:78\n215#4:88\n216#4:91\n1#5:95\n*S KotlinDebug\n*F\n+ 1 UpdateExcerptAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/UpdateExcerptAction\n*L\n37#1:70\n37#1:71,3\n38#1:74\n38#1:75,3\n38#1:85,3\n41#1:89,2\n46#1:92\n46#1:93,2\n38#1:78,7\n39#1:88\n39#1:91\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateExcerptAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptInfoBean> excerptInfoBeanList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateExcerptAction(@NotNull EditorBundle editorBundle, @NotNull List<ExcerptInfoBean> excerptInfoBeanList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(excerptInfoBeanList, "excerptInfoBeanList");
        this.excerptInfoBeanList = excerptInfoBeanList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        return DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateExcerptAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NoteBundle it2) {
                boolean m37964n;
                Intrinsics.checkNotNullParameter(it2, "it");
                m37964n = UpdateExcerptAction.this.m37964n(it2);
                return Boolean.valueOf(m37964n);
            }
        });
    }

    /* renamed from: l */
    public final void m37962l(NoteBundle noteBundle, Shape shape) {
        Object obj;
        List<? extends Shape> mutableListOf;
        List<? extends Shape> mutableListOf2;
        Iterator<T> it2 = this.excerptInfoBeanList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (Intrinsics.areEqual(((ExcerptInfoBean) obj).getUniqueId(), shape.getShapeUniqueId())) {
                    break;
                }
            }
        }
        ExcerptInfoBean excerptInfoBean = (ExcerptInfoBean) obj;
        if (excerptInfoBean != null) {
            ShapePersistOptionsKt.setExcerptInfoBean(shape, excerptInfoBean);
            if (ShapeOptions.INSTANCE.isSaved(shape)) {
                return;
            }
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(shape);
            noteBundle.postRemoveShapeEvent(mutableListOf);
            mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(shape);
            noteBundle.postAddShapeEvent(mutableListOf2);
        }
    }

    /* renamed from: m */
    public final void m37963m(NoteBundle noteBundle, List<ExcerptInfoBean> beanList) {
        NoteExcerptProviderKt.updateExcerptShapeModelInCB(noteBundle.getNoteDoc(), beanList);
    }

    /* renamed from: n */
    public final boolean m37964n(NoteBundle noteBundle) {
        int collectionSizeOrDefault;
        Set<String> set;
        NoteDocShape noteDocShape = NoteDocShape.INSTANCE;
        NoteDocument noteDoc = noteBundle.getNoteDoc();
        List<ExcerptInfoBean> list = this.excerptInfoBeanList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ExcerptInfoBean) it2.next()).getUniqueId());
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList);
        List<Shape> loadShapeListById = noteDocShape.loadShapeListById(noteDoc, set);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : loadShapeListById) {
            String pageUniqueId = ((Shape) obj).getPageUniqueId();
            Object obj2 = linkedHashMap.get(pageUniqueId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageUniqueId, obj2);
            }
            ((List) obj2).add(obj);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            List<Shape> list2 = (List) entry.getValue();
            NotePage ensureNotePage = NoteDocNotePage.INSTANCE.ensureNotePage(noteBundle.getNoteDoc(), str);
            for (Shape shape : list2) {
                m37962l(noteBundle, shape);
                NotePageShape.INSTANCE.saveShape(ensureNotePage, shape);
            }
        }
        List copy = CollectionKt.copy(this.excerptInfoBeanList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj3 : copy) {
            final ExcerptInfoBean excerptInfoBean = (ExcerptInfoBean) obj3;
            if (true ^ CollectionKt.contains(loadShapeListById, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateExcerptAction$updateExcerpt$beanList$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull Shape it3) {
                    Intrinsics.checkNotNullParameter(it3, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(ExcerptInfoBean.this.getUniqueId(), it3.getShapeUniqueId()));
                }
            })) {
                arrayList2.add(obj3);
            }
        }
        m37963m(noteBundle, arrayList2);
        return true;
    }
}
