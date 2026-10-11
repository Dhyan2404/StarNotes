package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.TagCreateFrom;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.event.StatisticsCreateTagEvent;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBeanList;
import com.onyx.android.sdk.replicator.note.data.style.StyleAttr;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTagNodes;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnCreateTagEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B3\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0010\u0010\u0014\u001a\f\u0012\u0004\u0012\u00020\u00100\u000fj\u0002`\u0011\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0015\u0012\u0006\u0010\u001c\u001a\u00020\u0019¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001e\u0010\u0014\u001a\f\u0012\u0004\u0012\u00020\u00100\u000fj\u0002`\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/CreateTagAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "tag", "", "m", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "l", "", C6998g.f39679a, Constants.STRING_SIG, "tagName", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TreeNode;", "parentNode", "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "i", "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "styleAttr", "Lcom/onyx/android/sdk/data/TagCreateFrom;", "j", "Lcom/onyx/android/sdk/data/TagCreateFrom;", "tagCreateFrom", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/TagCreateFrom;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTagAction.kt\ncom/onyx/galaxy/note/category/action/CreateTagAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1#2:79\n1855#3,2:80\n1549#3:82\n1620#3,3:83\n*S KotlinDebug\n*F\n+ 1 CreateTagAction.kt\ncom/onyx/galaxy/note/category/action/CreateTagAction\n*L\n67#1:80,2\n71#1:82\n71#1:83,3\n*E\n"})
/* loaded from: classes9.dex */
public final class CreateTagAction extends BaseNoteManagementAction<SyncTagModel> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String tagName;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteTagBean> parentNode;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final StyleAttr styleAttr;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final TagCreateFrom tagCreateFrom;

    /* renamed from: com.onyx.galaxy.note.category.action.CreateTagAction$a */
    /* loaded from: classes9.dex */
    public static final class C10790a<T, R> implements Function {
        public C10790a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncTagModel apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateTagAction.this.m42184l(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CreateTagAction$b */
    /* loaded from: classes9.dex */
    public static final class C10791b<T> implements Consumer {
        public C10791b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncTagModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateTagAction.this.m42185m(it2);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ CreateTagAction(java.lang.String r1, com.onyx.android.sdk.base.data.TreeNode r2, com.onyx.android.sdk.replicator.note.data.style.StyleAttr r3, com.onyx.android.sdk.data.TagCreateFrom r4, int r5, kotlin.jvm.internal.DefaultConstructorMarker r6) {
        /*
            r0 = this;
            r5 = r5 & 4
            if (r5 == 0) goto L14
            com.onyx.android.sdk.replicator.note.data.style.StyleAttr r3 = new com.onyx.android.sdk.replicator.note.data.style.StyleAttr
            r3.<init>()
            com.onyx.android.sdk.base.utils.ResManager r5 = com.onyx.android.sdk.base.utils.ResManager.INSTANCE
            int r6 = com.onyx.galaxy.note.C10651R.color.tag_face_default_yellow_color
            int r5 = r5.getColor(r6)
            r3.setColor(r5)
        L14:
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.action.CreateTagAction.<init>(java.lang.String, com.onyx.android.sdk.base.data.TreeNode, com.onyx.android.sdk.replicator.note.data.style.StyleAttr, com.onyx.android.sdk.data.TagCreateFrom, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SyncTagModel> create() {
        Observable<SyncTagModel> observeOn = createNoteProviderObservable().map(new C10790a()).doOnNext(new C10791b()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final SyncTagModel m42184l(NoteProvider provider) {
        boolean isBlank;
        int collectionSizeOrDefault;
        String str = this.tagName;
        if (str.length() <= ResManager.INSTANCE.getInteger(C10651R.integer.tag_name_max_input_length)) {
            NoteTagNodes noteTagNodes = NoteTagNodes.INSTANCE;
            if (!noteTagNodes.checkTagContentRepeat(this.parentNode, str)) {
                String uniqueId = this.parentNode.getData().getUniqueId();
                isBlank = StringsKt__StringsJVMKt.isBlank(uniqueId);
                if (isBlank) {
                    uniqueId = null;
                }
                SyncTagModel createModel = SyncTagModel.INSTANCE.createModel(str, uniqueId, this.styleAttr);
                this.parentNode.createChild(new NoteTagBean(createModel), createModel.getUniqueId());
                noteTagNodes.reorderTagChildren(this.parentNode);
                final NoteTagBeanList loadNotSavedList = noteTagNodes.loadNotSavedList(this.parentNode);
                Iterator<NoteTagBean> it2 = loadNotSavedList.iterator();
                while (it2.hasNext()) {
                    it2.next().resetRevisionId();
                }
                NoteTagProviderKt.saveTagList(provider, loadNotSavedList);
                NoteTagNodes.INSTANCE.setSaved(this.parentNode, new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.action.CreateTagAction$createTag$2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return Boolean.valueOf(NoteTagBeanList.this.contains((Object) it3.getData()));
                    }
                });
                KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadNotSavedList, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<NoteTagBean> it3 = loadNotSavedList.iterator();
                while (it3.hasNext()) {
                    arrayList.add(it3.next().getUniqueId());
                }
                kSyncBundle.post(new SyncChangedNoteTreeEvent(arrayList));
                DocCollectionBundle.INSTANCE.postEvent(new OnCreateTagEvent(createModel));
                Debug.INSTANCE.m32035d(CreateTagAction.class, "create tag SyncTagModel:" + JSONUtils.INSTANCE.toJson(createModel) + ' ', new Object[0]);
                return createModel;
            }
        }
        return new SyncTagModel();
    }

    /* renamed from: m */
    public final void m42185m(SyncTagModel tag) {
        if (StringKt.isEmpty(tag.getUniqueId())) {
            return;
        }
        StatisticsBundle.INSTANCE.onStatisticsEvent(new StatisticsCreateTagEvent(this.tagCreateFrom));
    }

    public CreateTagAction(@NotNull String tagName, @NotNull TreeNode<NoteTagBean> parentNode, @NotNull StyleAttr styleAttr, @NotNull TagCreateFrom tagCreateFrom) {
        Intrinsics.checkNotNullParameter(tagName, "tagName");
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(styleAttr, "styleAttr");
        Intrinsics.checkNotNullParameter(tagCreateFrom, "tagCreateFrom");
        this.tagName = tagName;
        this.parentNode = parentNode;
        this.styleAttr = styleAttr;
        this.tagCreateFrom = tagCreateFrom;
    }
}
