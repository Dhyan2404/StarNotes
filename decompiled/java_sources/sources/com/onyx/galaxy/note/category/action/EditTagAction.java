package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnEditTagEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0010\u0010\u0011\u001a\f\u0012\u0004\u0012\u00020\r0\fj\u0002`\u000e¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001e\u0010\u0011\u001a\f\u0012\u0004\u0012\u00020\r0\fj\u0002`\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/EditTagAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "l", "", C6998g.f39679a, Constants.STRING_SIG, "tagName", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TreeNode;", "node", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTagAction.kt\ncom/onyx/galaxy/note/category/action/EditTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1747#2,3:52\n*S KotlinDebug\n*F\n+ 1 EditTagAction.kt\ncom/onyx/galaxy/note/category/action/EditTagAction\n*L\n34#1:52,3\n*E\n"})
/* loaded from: classes9.dex */
public final class EditTagAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String tagName;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteTagBean> node;

    /* renamed from: com.onyx.galaxy.note.category.action.EditTagAction$a */
    /* loaded from: classes9.dex */
    public static final class C10847a<T, R> implements Function {
        public C10847a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(EditTagAction.this.m42283l(it2));
        }
    }

    public EditTagAction(@NotNull String tagName, @NotNull TreeNode<NoteTagBean> node) {
        Intrinsics.checkNotNullParameter(tagName, "tagName");
        Intrinsics.checkNotNullParameter(node, "node");
        this.tagName = tagName;
        this.node = node;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = createNoteProviderObservable().map(new C10847a()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final boolean m42283l(NoteProvider provider) {
        boolean z;
        List mutableListOf;
        List listOf;
        String str = this.tagName;
        int integer = ResManager.INSTANCE.getInteger(C10651R.integer.tag_name_max_input_length);
        NoteTagBean data = this.node.getData();
        List<TreeNode<NoteTagBean>> findChildren = this.node.getParent().findChildren();
        if (!(findChildren instanceof Collection) || !findChildren.isEmpty()) {
            Iterator<T> it2 = findChildren.iterator();
            while (it2.hasNext()) {
                TreeNode treeNode = (TreeNode) it2.next();
                if (Intrinsics.areEqual(((NoteTagBean) treeNode.getData()).getContent(), str) && !Intrinsics.areEqual(((NoteTagBean) treeNode.getData()).getUniqueId(), this.node.getData().getUniqueId())) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (str.length() > integer || z) {
            return false;
        }
        data.setContent(str);
        data.beforeSave();
        data.resetRevisionId();
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(data);
        NoteTagProviderKt.saveTagList(provider, mutableListOf);
        DocCollectionBundle.INSTANCE.postEvent(new OnEditTagEvent(data));
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(data.getUniqueId());
        kSyncBundle.post(new SyncChangedNoteTreeEvent(listOf));
        Debug.INSTANCE.m32035d(EditTagAction.class, "edit tag SyncTagModel:" + JSONUtils.INSTANCE.toJson(data) + ' ', new Object[0]);
        return true;
    }
}
