package com.onyx.galaxy.note.category.action;

import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTreeProviderKt;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0001B\u0005¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0007H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadNoteFolderTreeAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LoadNoteFolderTreeAction extends BaseNoteManagementAction<TreeNode<NoteModelBean>> {

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteFolderTreeAction$a */
    /* loaded from: classes9.dex */
    public static final class C10871a<T, R> implements Function {

        /* renamed from: e */
        public static final C10871a<T, R> f53821e = new C10871a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TreeNode<NoteModelBean> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CBQueryArgs folderTreeArgs$default = NoteConfigKt.getFolderTreeArgs$default(null, 1, null);
            folderTreeArgs$default.m72251setLimit(Integer.MAX_VALUE);
            return NoteTreeProviderKt.loadNoteFolderTree(it2, folderTreeArgs$default);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteFolderTreeAction$b */
    /* loaded from: classes9.dex */
    public static final class C10872b<T> implements Consumer {

        /* renamed from: e */
        public static final C10872b<T> f53822e = new C10872b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteModelBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTreeBundle.INSTANCE.setFolderRootNode(it2);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TreeNode<NoteModelBean>> create() {
        Observable<TreeNode<NoteModelBean>> doOnNext = createNoteProviderObservable().map(C10871a.f53821e).observeOn(AndroidSchedulers.mainThread()).doOnNext(C10872b.f53822e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
