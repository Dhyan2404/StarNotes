package com.onyx.galaxy.note.category.action;

import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0001B\u0005¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0007H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LoadTagTreeAction extends BaseNoteManagementAction<TreeNode<NoteTagBean>> {

    /* renamed from: com.onyx.galaxy.note.category.action.LoadTagTreeAction$a */
    /* loaded from: classes9.dex */
    public static final class C10900a<T, R> implements Function {

        /* renamed from: e */
        public static final C10900a<T, R> f53873e = new C10900a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TreeNode<NoteTagBean> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteTagProviderKt.loadDocTagTreeNode(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadTagTreeAction$b */
    /* loaded from: classes9.dex */
    public static final class C10901b<T> implements Consumer {

        /* renamed from: e */
        public static final C10901b<T> f53874e = new C10901b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteTagBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTreeBundle.INSTANCE.setTagRootNode(it2);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TreeNode<NoteTagBean>> create() {
        Observable<TreeNode<NoteTagBean>> doOnNext = createNoteProviderObservable().map(C10900a.f53873e).observeOn(AndroidSchedulers.mainThread()).doOnNext(C10901b.f53874e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
