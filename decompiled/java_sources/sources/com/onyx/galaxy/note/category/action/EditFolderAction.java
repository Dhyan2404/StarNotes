package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnEditFolderEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0010\u0010\u0012\u001a\f\u0012\u0004\u0012\u00020\u00060\u000ej\u0002`\u000f¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001e\u0010\u0012\u001a\f\u0012\u0004\u0012\u00020\u00060\u000ej\u0002`\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/EditFolderAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "model", "", "m", "", C6998g.f39679a, Constants.STRING_SIG, "folderName", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TreeNode;", "node", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditFolderAction.kt\ncom/onyx/galaxy/note/category/action/EditFolderAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n1747#2,3:54\n*S KotlinDebug\n*F\n+ 1 EditFolderAction.kt\ncom/onyx/galaxy/note/category/action/EditFolderAction\n*L\n32#1:54,3\n*E\n"})
/* loaded from: classes9.dex */
public final class EditFolderAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String folderName;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteModelBean> node;

    /* renamed from: com.onyx.galaxy.note.category.action.EditFolderAction$a */
    /* loaded from: classes9.dex */
    public static final class C10837a<T, R> implements Function {
        public C10837a() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42269a(boolean z) {
            return EditFolderAction.this.m42267l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42269a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditFolderAction$b */
    /* loaded from: classes9.dex */
    public static final class C10838b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ NoteModelBean f53770f;

        public C10838b(NoteModelBean noteModelBean) {
            this.f53770f = noteModelBean;
        }

        /* renamed from: a */
        public final void m42270a(boolean z) {
            EditFolderAction.this.m42268m(this.f53770f);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42270a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditFolderAction$c */
    /* loaded from: classes9.dex */
    public static final class C10839c<T, R> implements Function {

        /* renamed from: e */
        public static final C10839c<T, R> f53771e = new C10839c<>();

        @NotNull
        /* renamed from: a */
        public final Boolean m42271a(boolean z) {
            return Boolean.TRUE;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42271a(((Boolean) obj).booleanValue());
        }
    }

    public EditFolderAction(@NotNull String folderName, @NotNull TreeNode<NoteModelBean> node) {
        Intrinsics.checkNotNullParameter(folderName, "folderName");
        Intrinsics.checkNotNullParameter(node, "node");
        this.folderName = folderName;
        this.node = node;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = Observable.just(Boolean.TRUE).flatMap(new C10837a()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final Observable<Boolean> m42267l() {
        boolean z;
        List listOf;
        String str = this.folderName;
        int integer = ResManager.INSTANCE.getInteger(C10651R.integer.folder_name_max_input_length);
        NoteModelBean data = this.node.getData();
        List<TreeNode<NoteModelBean>> findChildren = this.node.getParent().findChildren();
        if (!(findChildren instanceof Collection) || !findChildren.isEmpty()) {
            Iterator<T> it2 = findChildren.iterator();
            while (it2.hasNext()) {
                TreeNode treeNode = (TreeNode) it2.next();
                z = true;
                if (Intrinsics.areEqual(((NoteModelBean) treeNode.getData()).getTitle(), str) && !Intrinsics.areEqual(((NoteModelBean) treeNode.getData()).getUniqueId(), this.node.getData().getUniqueId())) {
                    break;
                }
            }
        }
        z = false;
        if (str.length() > integer || z) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        data.setTitle(str);
        data.beforeSave();
        Debug.INSTANCE.m32035d(EditFolderAction.class, "edit folder SyncNoteModel:" + JSONUtils.INSTANCE.toJson(data) + ' ', new Object[0]);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(data);
        Observable map = new UpdateNoteAction(listOf, false, false, 6, null).build().doOnNext(new C10838b(data)).map(C10839c.f53771e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final void m42268m(NoteModelBean model) {
        List listOf;
        DocCollectionBundle.INSTANCE.postEvent(new OnEditFolderEvent(model));
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(model.getUniqueId());
        kSyncBundle.post(new SyncChangedNoteTreeEvent(listOf));
    }
}
