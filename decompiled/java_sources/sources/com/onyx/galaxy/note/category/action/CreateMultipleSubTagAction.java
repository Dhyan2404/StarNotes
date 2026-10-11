package com.onyx.galaxy.note.category.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.TagCreateFrom;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.event.StatisticsCreateTagEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBeanList;
import com.onyx.android.sdk.replicator.note.data.style.StyleAttr;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTagNodes;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnCreateMultipleSubTagEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B9\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000f\u0012\u0010\u0010\u0018\u001a\f\u0012\u0004\u0012\u00020\u00140\u0013j\u0002`\u0015\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0019\u0012\u0006\u0010 \u001a\u00020\u001d¢\u0006\u0004\b!\u0010\"J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0016J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\fH\u0002R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0018\u001a\f\u0012\u0004\u0012\u00020\u00140\u0013j\u0002`\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "m", "tags", "", GoogleApiAvailabilityLight.f29016b, "", "title", "l", "", C6998g.f39679a, "Ljava/util/List;", "tagNames", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TreeNode;", "parentNode", "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "i", "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "styleAttr", "Lcom/onyx/android/sdk/data/TagCreateFrom;", "j", "Lcom/onyx/android/sdk/data/TagCreateFrom;", "tagCreateFrom", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/TagCreateFrom;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateMultipleSubTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateMultipleSubTagAction.kt\ncom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1855#2,2:85\n1549#2:87\n1620#2,3:88\n1855#2,2:91\n1855#2,2:93\n*S KotlinDebug\n*F\n+ 1 CreateMultipleSubTagAction.kt\ncom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction\n*L\n45#1:85,2\n55#1:87\n55#1:88,3\n56#1:91,2\n67#1:93,2\n*E\n"})
/* loaded from: classes9.dex */
public final class CreateMultipleSubTagAction extends BaseNoteManagementAction<List<SyncTagModel>> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> tagNames;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteTagBean> parentNode;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final StyleAttr styleAttr;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final TagCreateFrom tagCreateFrom;

    /* renamed from: com.onyx.galaxy.note.category.action.CreateMultipleSubTagAction$a */
    /* loaded from: classes9.dex */
    public static final class C10784a<T, R> implements Function {
        public C10784a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncTagModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateMultipleSubTagAction.this.m42173m(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CreateMultipleSubTagAction$b */
    /* loaded from: classes9.dex */
    public static final class C10785b<T> implements Consumer {
        public C10785b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<SyncTagModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateMultipleSubTagAction.this.m42174n(it2);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ CreateMultipleSubTagAction(java.util.List r1, com.onyx.android.sdk.base.data.TreeNode r2, com.onyx.android.sdk.replicator.note.data.style.StyleAttr r3, com.onyx.android.sdk.data.TagCreateFrom r4, int r5, kotlin.jvm.internal.DefaultConstructorMarker r6) {
        /*
            r0 = this;
            r5 = r5 & 4
            if (r5 == 0) goto L14
            com.onyx.android.sdk.replicator.note.data.style.StyleAttr r3 = new com.onyx.android.sdk.replicator.note.data.style.StyleAttr
            r3.<init>()
            com.onyx.android.sdk.base.utils.ResManager r5 = com.onyx.android.sdk.base.utils.ResManager.INSTANCE
            int r6 = com.onyx.galaxy.note.C10651R.color.folder_face_default_color
            int r5 = r5.getColor(r6)
            r3.setColor(r5)
        L14:
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.action.CreateMultipleSubTagAction.<init>(java.util.List, com.onyx.android.sdk.base.data.TreeNode, com.onyx.android.sdk.replicator.note.data.style.StyleAttr, com.onyx.android.sdk.data.TagCreateFrom, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<SyncTagModel>> create() {
        Observable<List<SyncTagModel>> observeOn = createNoteProviderObservable().map(new C10784a()).doOnNext(new C10785b()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final SyncTagModel m42172l(String title) {
        SyncTagModel syncTagModel = new SyncTagModel();
        syncTagModel.setContent(title);
        syncTagModel.setType(2);
        syncTagModel.setStatus(0);
        syncTagModel.ensureUniqueIdExist();
        syncTagModel.beforeSave();
        syncTagModel.setStyle(this.styleAttr);
        syncTagModel.setOrderIndex(-1.0f);
        return syncTagModel;
    }

    /* renamed from: m */
    public final List<SyncTagModel> m42173m(NoteProvider provider) {
        int collectionSizeOrDefault;
        ArrayList arrayList = new ArrayList();
        TreeNode<NoteTagBean> treeNode = this.parentNode;
        Iterator<T> it2 = this.tagNames.iterator();
        while (it2.hasNext()) {
            SyncTagModel m42172l = m42172l((String) it2.next());
            arrayList.add(m42172l);
            m42172l.setParentId(treeNode.getData().getUniqueId());
            treeNode = treeNode.createChild(new NoteTagBean(m42172l), m42172l.getUniqueId());
        }
        NoteTagNodes noteTagNodes = NoteTagNodes.INSTANCE;
        noteTagNodes.reorderTagChildren(this.parentNode);
        final NoteTagBeanList loadNotSavedList = noteTagNodes.loadNotSavedList(this.parentNode);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList2.add(new NoteTagBean((SyncTagModel) it3.next()));
        }
        loadNotSavedList.addAll(arrayList2);
        Iterator<NoteTagBean> it4 = loadNotSavedList.iterator();
        while (it4.hasNext()) {
            it4.next().resetRevisionId();
        }
        NoteTagProviderKt.saveTagList(provider, loadNotSavedList);
        NoteTagNodes.INSTANCE.setSaved(this.parentNode, new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.action.CreateMultipleSubTagAction$createMultipleSubTag$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it5) {
                Intrinsics.checkNotNullParameter(it5, "it");
                return Boolean.valueOf(NoteTagBeanList.this.contains((Object) it5.getData()));
            }
        });
        DocCollectionBundle.INSTANCE.postEvent(new OnCreateMultipleSubTagEvent(arrayList));
        Debug.INSTANCE.m32035d(CreateMultipleSubTagAction.class, "create multiple tag SyncTagModel:" + JSONUtils.INSTANCE.toJson(arrayList) + ' ', new Object[0]);
        return arrayList;
    }

    /* renamed from: n */
    public final void m42174n(List<SyncTagModel> tags) {
        for (SyncTagModel syncTagModel : tags) {
            StatisticsBundle.INSTANCE.postEvent(new StatisticsCreateTagEvent(this.tagCreateFrom));
        }
    }

    public CreateMultipleSubTagAction(@NotNull List<String> tagNames, @NotNull TreeNode<NoteTagBean> parentNode, @NotNull StyleAttr styleAttr, @NotNull TagCreateFrom tagCreateFrom) {
        Intrinsics.checkNotNullParameter(tagNames, "tagNames");
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(styleAttr, "styleAttr");
        Intrinsics.checkNotNullParameter(tagCreateFrom, "tagCreateFrom");
        this.tagNames = tagNames;
        this.parentNode = parentNode;
        this.styleAttr = styleAttr;
        this.tagCreateFrom = tagCreateFrom;
    }
}
