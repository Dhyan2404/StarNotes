package com.onyx.galaxy.note.category.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.FolderCreateFrom;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.event.StatisticsCreateFolderEvent;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.android.sdk.replicator.note.data.style.StyleAttr;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTreeNodes;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnCreateFolderEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
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

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B3\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0010\u0010\u0015\u001a\f\u0012\u0004\u0012\u00020\u00110\u0010j\u0002`\u0012\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001a¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001e\u0010\u0015\u001a\f\u0012\u0004\u0012\u00020\u00110\u0010j\u0002`\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/CreateFolderAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "syncNoteModel", "", "m", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "l", "", C6998g.f39679a, Constants.STRING_SIG, "folderName", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TreeNode;", "parentNode", "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "i", "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "styleAttr", "Lcom/onyx/android/sdk/data/FolderCreateFrom;", "j", "Lcom/onyx/android/sdk/data/FolderCreateFrom;", "folderCreateFrom", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/FolderCreateFrom;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateFolderAction.kt\ncom/onyx/galaxy/note/category/action/CreateFolderAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"})
/* loaded from: classes9.dex */
public final class CreateFolderAction extends BaseNoteManagementAction<SyncNoteModel> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String folderName;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteModelBean> parentNode;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final StyleAttr styleAttr;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final FolderCreateFrom folderCreateFrom;

    /* renamed from: com.onyx.galaxy.note.category.action.CreateFolderAction$a */
    /* loaded from: classes9.dex */
    public static final class C10779a<T, R> implements Function {
        public C10779a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteModel apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateFolderAction.this.m42164l(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CreateFolderAction$b */
    /* loaded from: classes9.dex */
    public static final class C10780b<T, R> implements Function {
        public C10780b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SyncNoteModel> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateFolderAction.this.m42166n(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CreateFolderAction$c */
    /* loaded from: classes9.dex */
    public static final class C10781c<T> implements Consumer {
        public C10781c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateFolderAction.this.m42165m(it2);
        }
    }

    @SourceDebugExtension({"SMAP\nCreateFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateFolderAction.kt\ncom/onyx/galaxy/note/category/action/CreateFolderAction$updateParentNode$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1549#2:96\n1620#2,3:97\n*S KotlinDebug\n*F\n+ 1 CreateFolderAction.kt\ncom/onyx/galaxy/note/category/action/CreateFolderAction$updateParentNode$2\n*L\n74#1:96\n74#1:97,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.action.CreateFolderAction$d */
    /* loaded from: classes9.dex */
    public static final class C10782d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ NoteModelBeanList f53665e;

        public C10782d(NoteModelBeanList noteModelBeanList) {
            this.f53665e = noteModelBeanList;
        }

        /* renamed from: a */
        public final void m42170a(boolean z) {
            int collectionSizeOrDefault;
            KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
            NoteModelBeanList noteModelBeanList = this.f53665e;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModelBeanList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getUniqueId());
            }
            kSyncBundle.post(new SyncChangedNoteTreeEvent(arrayList));
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42170a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CreateFolderAction$e */
    /* loaded from: classes9.dex */
    public static final class C10783e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ SyncNoteModel f53666e;

        public C10783e(SyncNoteModel syncNoteModel) {
            this.f53666e = syncNoteModel;
        }

        @NotNull
        /* renamed from: a */
        public final SyncNoteModel m42171a(boolean z) {
            return this.f53666e;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42171a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ CreateFolderAction(java.lang.String r1, com.onyx.android.sdk.base.data.TreeNode r2, com.onyx.android.sdk.replicator.note.data.style.StyleAttr r3, com.onyx.android.sdk.data.FolderCreateFrom r4, int r5, kotlin.jvm.internal.DefaultConstructorMarker r6) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.action.CreateFolderAction.<init>(java.lang.String, com.onyx.android.sdk.base.data.TreeNode, com.onyx.android.sdk.replicator.note.data.style.StyleAttr, com.onyx.android.sdk.data.FolderCreateFrom, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SyncNoteModel> create() {
        Observable<SyncNoteModel> observeOn = createNoteProviderObservable().map(new C10779a()).flatMap(new C10780b()).doOnNext(new C10781c()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final SyncNoteModel m42164l(NoteProvider provider) {
        boolean isBlank;
        String str = this.folderName;
        if (str.length() > ResManager.INSTANCE.getInteger(C10651R.integer.folder_name_max_input_length) || NoteTreeNodes.INSTANCE.checkNoteNameRepeat(this.parentNode, str)) {
            return new SyncNoteModel();
        }
        String uniqueId = this.parentNode.getData().getUniqueId();
        isBlank = StringsKt__StringsJVMKt.isBlank(uniqueId);
        if (isBlank) {
            uniqueId = null;
        }
        SyncNoteModel createFolderModel = SyncNoteModel.INSTANCE.createFolderModel(str, uniqueId, this.styleAttr);
        NoteModelProviderKt.saveNote(provider, createFolderModel);
        Debug.INSTANCE.m32035d(CreateFolderAction.class, "create folder SyncNoteModel:" + JSONUtils.INSTANCE.toJson(createFolderModel) + ' ', new Object[0]);
        return createFolderModel;
    }

    /* renamed from: m */
    public final void m42165m(SyncNoteModel syncNoteModel) {
        if (StringKt.isNotBlank(syncNoteModel.getUniqueId())) {
            DocCollectionBundle.INSTANCE.postEvent(new OnCreateFolderEvent(syncNoteModel));
            StatisticsBundle.INSTANCE.postEvent(new StatisticsCreateFolderEvent(this.folderCreateFrom));
        }
    }

    /* renamed from: n */
    public final Observable<SyncNoteModel> m42166n(SyncNoteModel syncNoteModel) {
        if (StringKt.isEmpty(syncNoteModel.getUniqueId())) {
            Observable<SyncNoteModel> just = Observable.just(syncNoteModel);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        this.parentNode.createChild(new NoteModelBean(syncNoteModel), syncNoteModel.getUniqueId());
        NoteTreeNodes noteTreeNodes = NoteTreeNodes.INSTANCE;
        noteTreeNodes.reorderFolderChildren(this.parentNode);
        final NoteModelBeanList loadNotSavedList = noteTreeNodes.loadNotSavedList(this.parentNode);
        if (!this.parentNode.isRootNode()) {
            this.parentNode.getData().beforeSave();
            loadNotSavedList.add(this.parentNode.getData());
        }
        noteTreeNodes.setSaved(this.parentNode, new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.action.CreateFolderAction$updateParentNode$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(NoteModelBeanList.this.contains((Object) it2.getData()));
            }
        });
        Observable map = new UpdateNoteAction(loadNotSavedList, false, false, 2, null).build().doOnNext(new C10782d(loadNotSavedList)).map(new C10783e(syncNoteModel));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public CreateFolderAction(@NotNull String folderName, @NotNull TreeNode<NoteModelBean> parentNode, @NotNull StyleAttr styleAttr, @NotNull FolderCreateFrom folderCreateFrom) {
        Intrinsics.checkNotNullParameter(folderName, "folderName");
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(styleAttr, "styleAttr");
        Intrinsics.checkNotNullParameter(folderCreateFrom, "folderCreateFrom");
        this.folderName = folderName;
        this.parentNode = parentNode;
        this.styleAttr = styleAttr;
        this.folderCreateFrom = folderCreateFrom;
    }
}
