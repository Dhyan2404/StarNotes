package com.onyx.galaxy.note.category.action;

import android.content.Context;
import android.content.DialogInterface;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.MoveToSelectTagAction;
import com.onyx.galaxy.note.category.view.dialog.SelectTagDialog;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\u001a\u0010\t\u001a\u00020\b2\u0010\u0010\u0007\u001a\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u0002H\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR*\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "rootNode", "", "m", "", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", C6998g.f39679a, "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "manageTagContext", "Ljava/lang/ref/WeakReference;", "Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;", C6999h.f39688c, "Ljava/lang/ref/WeakReference;", "getDialog", "()Ljava/lang/ref/WeakReference;", "setDialog", "(Ljava/lang/ref/WeakReference;)V", "dialog", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMoveToSelectTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveToSelectTagAction.kt\ncom/onyx/galaxy/note/category/action/MoveToSelectTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1855#2,2:82\n*S KotlinDebug\n*F\n+ 1 MoveToSelectTagAction.kt\ncom/onyx/galaxy/note/category/action/MoveToSelectTagAction\n*L\n34#1:82,2\n*E\n"})
/* loaded from: classes9.dex */
public final class MoveToSelectTagAction extends BaseNoteManagementAction<MoveToSelectTagAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ManageTagContext manageTagContext;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public WeakReference<SelectTagDialog> dialog;

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectTagAction$a */
    /* loaded from: classes9.dex */
    public static final class C10943a<T, R> implements Function {
        public C10943a() {
        }

        /* renamed from: a */
        public final void m42466a(@NotNull TreeNode<NoteTagBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveToSelectTagAction.this.m42463m(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42466a((TreeNode) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectTagAction$b */
    /* loaded from: classes9.dex */
    public static final class C10944b<T, R> implements Function {
        public C10944b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MoveToSelectTagAction.this.m42465o();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectTagAction$c */
    /* loaded from: classes9.dex */
    public static final class C10945c<T, R> implements Function {
        public C10945c() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends MoveToSelectTagAction> m42468a(boolean z) {
            return MoveToSelectTagAction.this.m42464n();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42468a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectTagAction$d */
    /* loaded from: classes9.dex */
    public static final class C10946d<T, R> implements Function {
        public C10946d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MoveToSelectTagAction apply(@NotNull MoveToSelectTagAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MoveToSelectTagAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectTagAction$e */
    /* loaded from: classes9.dex */
    public static final class C10947e<T> implements Consumer {
        public C10947e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull MoveToSelectTagAction it2) {
            SelectTagDialog selectTagDialog;
            Intrinsics.checkNotNullParameter(it2, "it");
            WeakReference<SelectTagDialog> dialog = MoveToSelectTagAction.this.getDialog();
            if (dialog == null || (selectTagDialog = dialog.get()) == null) {
                return;
            }
            selectTagDialog.dismiss();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectTagAction$f */
    /* loaded from: classes9.dex */
    public static final class C10948f<T> implements Consumer {
        public C10948f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            SelectTagDialog selectTagDialog;
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_move_tag_deleted, false, 2, (Object) null);
            WeakReference<SelectTagDialog> dialog = MoveToSelectTagAction.this.getDialog();
            if (dialog == null || (selectTagDialog = dialog.get()) == null) {
                return;
            }
            selectTagDialog.dismiss();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectTagAction$g */
    /* loaded from: classes9.dex */
    public static final class C10949g<T> implements Consumer {
        public C10949g() {
        }

        /* renamed from: a */
        public final void m42472a(boolean z) {
            SelectTagDialog selectTagDialog;
            if (!z) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.move_tag_conflicted, false, 2, (Object) null);
                return;
            }
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_move_success, false, 2, (Object) null);
            WeakReference<SelectTagDialog> dialog = MoveToSelectTagAction.this.getDialog();
            if (dialog == null || (selectTagDialog = dialog.get()) == null) {
                return;
            }
            selectTagDialog.dismiss();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42472a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectTagAction$h */
    /* loaded from: classes9.dex */
    public static final class C10950h<T, R> implements Function {
        public C10950h() {
        }

        @NotNull
        /* renamed from: a */
        public final MoveToSelectTagAction m42473a(boolean z) {
            return MoveToSelectTagAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42473a(((Boolean) obj).booleanValue());
        }
    }

    public MoveToSelectTagAction(@NotNull ManageTagContext manageTagContext) {
        Intrinsics.checkNotNullParameter(manageTagContext, "manageTagContext");
        this.manageTagContext = manageTagContext;
    }

    /* renamed from: p */
    public static final void m42462p(PublishSubject subject, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        subject.onComplete();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<MoveToSelectTagAction> create() {
        Observable<MoveToSelectTagAction> map = new LoadTagTreeAction().build().observeOn(getObserveOn()).map(new C10943a()).observeOn(getMainUIScheduler()).flatMap(new C10944b()).observeOn(getObserveOn()).flatMap(new C10945c()).observeOn(getMainUIScheduler()).map(new C10946d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final WeakReference<SelectTagDialog> getDialog() {
        return this.dialog;
    }

    /* renamed from: m */
    public final void m42463m(TreeNode<NoteTagBean> rootNode) {
        Iterator<T> it2 = rootNode.findChildrenNodes().iterator();
        while (it2.hasNext()) {
            TreeNode treeNode = (TreeNode) it2.next();
            treeNode.setExpand(treeNode.hasChild());
        }
        this.manageTagContext.setRootNode(rootNode);
    }

    /* renamed from: n */
    public final Observable<MoveToSelectTagAction> m42464n() {
        TreeNode<NoteTagBean> selectedTagNode = this.manageTagContext.getSelectedTagNode();
        if (this.manageTagContext.getMoveTagList().isEmpty() || selectedTagNode == null) {
            Observable<MoveToSelectTagAction> doOnNext = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10947e());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        Observable map = new MoveTagAction(this.manageTagContext.getMoveTagList(), selectedTagNode).build().observeOn(getMainUIScheduler()).doOnError(new C10948f()).doOnNext(new C10949g()).map(new C10950h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<Boolean> m42465o() {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        SelectTagDialog selectTagDialog = new SelectTagDialog(activityContext, this.manageTagContext);
        final PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.dialog = new WeakReference<>(selectTagDialog);
        selectTagDialog.setApplySubject(create);
        selectTagDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.ipj
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MoveToSelectTagAction.m42462p(PublishSubject.this, dialogInterface);
            }
        });
        selectTagDialog.show();
        return create;
    }

    public final void setDialog(@Nullable WeakReference<SelectTagDialog> weakReference) {
        this.dialog = weakReference;
    }
}
