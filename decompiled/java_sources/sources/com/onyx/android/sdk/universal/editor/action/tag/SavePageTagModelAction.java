package com.onyx.android.sdk.universal.editor.action.tag;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001f\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J \u0010\f\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", CouchFieldKey.KEY_TOC_PAGE_ID, "m", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", CouchFieldKey.KEY_TAG_ID, "l", C6999h.f39688c, Constants.STRING_SIG, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "i", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "tagBean", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSavePageTagModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavePageTagModelAction.kt\ncom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1549#2:63\n1620#2,3:64\n1855#2,2:67\n766#2:69\n857#2,2:70\n2634#2:72\n1#3:73\n1#3:74\n*S KotlinDebug\n*F\n+ 1 SavePageTagModelAction.kt\ncom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction\n*L\n39#1:63\n39#1:64,3\n40#1:67,2\n45#1:69\n45#1:70,2\n46#1:72\n46#1:73\n*E\n"})
/* loaded from: classes8.dex */
public final class SavePageTagModelAction extends RxBaseAppAction<List<? extends PageTagModel>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ShapeTagBean tagBean;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.SavePageTagModelAction$a */
    /* loaded from: classes8.dex */
    public static final class C10191a<T, R> implements Function {
        public C10191a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<PageTagModel> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SavePageTagModelAction.this.m40391m(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SavePageTagModelAction(@NotNull EditorBundle editorBundle, @NotNull String pageId, @NotNull ShapeTagBean tagBean) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(tagBean, "tagBean");
        this.pageId = pageId;
        this.tagBean = tagBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<PageTagModel>> create() {
        Observable<List<PageTagModel>> map = Observable.just(this.pageId).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C10191a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final PageTagModel m40390l(NoteProvider noteProvider, final String pageId, final String tagId) {
        final String docId = EditorBundleKt.docId(getEditorBundle());
        return (PageTagModel) AnyKt.getOrElse(NotePageTagProviderKt.loadPageTagModel(noteProvider, docId, pageId, tagId), new Function0<PageTagModel>() { // from class: com.onyx.android.sdk.universal.editor.action.tag.SavePageTagModelAction$getPageTagModel$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PageTagModel invoke() {
                return PageTagModel.INSTANCE.create(docId, pageId, tagId);
            }
        });
    }

    /* renamed from: m */
    public final List<PageTagModel> m40391m(String pageId) {
        int collectionSizeOrDefault;
        NoteProvider userNoteProvider = KSyncBundle.INSTANCE.getUserNoteProvider();
        VirtualDocPolicy virtualPolicy = getEditorBundle().getWorkBundle().getVirtualPolicy();
        List<SyncTagModel> tagList = this.tagBean.getTagList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tagList, 10);
        ArrayList<PageTagModel> arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = tagList.iterator();
        while (it2.hasNext()) {
            arrayList.add(m40390l(userNoteProvider, pageId, ((SyncTagModel) it2.next()).getUniqueId()));
        }
        for (PageTagModel pageTagModel : arrayList) {
            pageTagModel.setPageIndex(virtualPolicy.getVirtualPageIndex(pageTagModel.getPageUniqueId()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((PageTagModel) obj).getUniqueId().length() == 0) {
                arrayList2.add(obj);
            }
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            ((PageTagModel) it3.next()).resetRevisionId();
        }
        NotePageTagProviderKt.savePageTagModels(userNoteProvider, arrayList2);
        return arrayList;
    }
}
