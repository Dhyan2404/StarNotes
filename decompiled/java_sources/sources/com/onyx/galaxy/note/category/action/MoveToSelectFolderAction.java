package com.onyx.galaxy.note.category.action;

import android.content.Context;
import android.content.DialogInterface;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.MoveToSelectFolderAction;
import com.onyx.galaxy.note.category.view.dialog.SelectFolderDialog;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\u001a\u0010\t\u001a\u00020\b2\u0010\u0010\u0007\u001a\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006H\u0002J\b\u0010\n\u001a\u00020\bH\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002H\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "rootNode", "", "r", "q", "", "x", "s", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", C6998g.f39679a, "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "manageFolderContext", "", C6999h.f39688c, Constants.STRING_SIG, "from", "Ljava/lang/ref/WeakReference;", "Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;", "i", "Ljava/lang/ref/WeakReference;", "dialog", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "j", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMoveToSelectFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveToSelectFolderAction.kt\ncom/onyx/galaxy/note/category/action/MoveToSelectFolderAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n1855#2,2:111\n1747#2,3:113\n766#2:116\n857#2,2:117\n766#2:119\n857#2,2:120\n766#2:122\n857#2,2:123\n*S KotlinDebug\n*F\n+ 1 MoveToSelectFolderAction.kt\ncom/onyx/galaxy/note/category/action/MoveToSelectFolderAction\n*L\n44#1:111,2\n52#1:113,3\n70#1:116\n70#1:117,2\n78#1:119\n78#1:120,2\n79#1:122\n79#1:123,2\n*E\n"})
/* loaded from: classes9.dex */
public final class MoveToSelectFolderAction extends BaseNoteManagementAction<MoveToSelectFolderAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ManageFolderContext manageFolderContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String from;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public WeakReference<SelectFolderDialog> dialog;

    /* renamed from: j, reason: from kotlin metadata */
    public NoteProvider provider;

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$a */
    /* loaded from: classes9.dex */
    public static final class C10932a<T, R> implements Function {
        public C10932a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull MoveToSelectFolderAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MoveToSelectFolderAction.this.createNoteProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$b */
    /* loaded from: classes9.dex */
    public static final class C10933b<T> implements Consumer {
        public C10933b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveToSelectFolderAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$c */
    /* loaded from: classes9.dex */
    public static final class C10934c<T, R> implements Function {
        public C10934c() {
        }

        /* renamed from: a */
        public final void m42452a(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveToSelectFolderAction.this.m42446q();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42452a((NoteProvider) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$d */
    /* loaded from: classes9.dex */
    public static final class C10935d<T, R> implements Function {

        /* renamed from: e */
        public static final C10935d<T, R> f53925e = new C10935d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TreeNode<NoteModelBean>> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadNoteFolderTreeAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$e */
    /* loaded from: classes9.dex */
    public static final class C10936e<T, R> implements Function {
        public C10936e() {
        }

        /* renamed from: a */
        public final void m42454a(@NotNull TreeNode<NoteModelBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveToSelectFolderAction.this.m42447r(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42454a((TreeNode) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$f */
    /* loaded from: classes9.dex */
    public static final class C10937f<T, R> implements Function {
        public C10937f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MoveToSelectFolderAction.this.m42449x();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$g */
    /* loaded from: classes9.dex */
    public static final class C10938g<T, R> implements Function {
        public C10938g() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends MoveToSelectFolderAction> m42456a(boolean z) {
            return MoveToSelectFolderAction.this.m42448s();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42456a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$h */
    /* loaded from: classes9.dex */
    public static final class C10939h<T, R> implements Function {
        public C10939h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MoveToSelectFolderAction apply(@NotNull MoveToSelectFolderAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MoveToSelectFolderAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$i */
    /* loaded from: classes9.dex */
    public static final class C10940i<T, R> implements Function {
        public C10940i() {
        }

        @NotNull
        /* renamed from: a */
        public final MoveToSelectFolderAction m42458a(boolean z) {
            return MoveToSelectFolderAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42458a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$j */
    /* loaded from: classes9.dex */
    public static final class C10941j<T> implements Consumer {
        public C10941j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull MoveToSelectFolderAction it2) {
            SelectFolderDialog selectFolderDialog;
            Intrinsics.checkNotNullParameter(it2, "it");
            WeakReference weakReference = MoveToSelectFolderAction.this.dialog;
            if (weakReference == null || (selectFolderDialog = (SelectFolderDialog) weakReference.get()) == null) {
                return;
            }
            selectFolderDialog.dismiss();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$k */
    /* loaded from: classes9.dex */
    public static final class C10942k<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ int f53932e;

        /* renamed from: f */
        public final /* synthetic */ int f53933f;

        /* renamed from: g */
        public final /* synthetic */ MoveToSelectFolderAction f53934g;

        public C10942k(int i, int i2, MoveToSelectFolderAction moveToSelectFolderAction) {
            this.f53932e = i;
            this.f53933f = i2;
            this.f53934g = moveToSelectFolderAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            SelectFolderDialog selectFolderDialog;
            Intrinsics.checkNotNullParameter(it2, "it");
            int i = this.f53932e;
            if (i > 0 && this.f53933f > 0) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_move_folder_note_deleted, false, 2, (Object) null);
            } else if (i != 0 || this.f53933f <= 0) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_move_folder_deleted, false, 2, (Object) null);
            } else {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_move_note_deleted, false, 2, (Object) null);
            }
            WeakReference weakReference = this.f53934g.dialog;
            if (weakReference == null || (selectFolderDialog = (SelectFolderDialog) weakReference.get()) == null) {
                return;
            }
            selectFolderDialog.dismiss();
        }
    }

    public MoveToSelectFolderAction(@NotNull ManageFolderContext manageFolderContext, @NotNull String from) {
        Intrinsics.checkNotNullParameter(manageFolderContext, "manageFolderContext");
        Intrinsics.checkNotNullParameter(from, "from");
        this.manageFolderContext = manageFolderContext;
        this.from = from;
    }

    /* renamed from: t */
    public static final void m42441t(MoveToSelectFolderAction this$0, boolean z) {
        SelectFolderDialog selectFolderDialog;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_move_success, false, 2, (Object) null);
        WeakReference<SelectFolderDialog> weakReference = this$0.dialog;
        if (weakReference == null || (selectFolderDialog = weakReference.get()) == null) {
            return;
        }
        selectFolderDialog.dismiss();
    }

    /* renamed from: u */
    public static final void m42442u(boolean z) {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.move_folder_note_conflicted, false, 2, (Object) null);
    }

    /* renamed from: v */
    public static final void m42443v(boolean z) {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.move_note_conflicted, false, 2, (Object) null);
    }

    /* renamed from: w */
    public static final void m42444w(boolean z) {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.move_folder_conflicted, false, 2, (Object) null);
    }

    /* renamed from: y */
    public static final void m42445y(PublishSubject subject, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        subject.onComplete();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<MoveToSelectFolderAction> create() {
        Observable<MoveToSelectFolderAction> map = Observable.just(this).flatMap(new C10932a()).doOnNext(new C10933b()).observeOn(getObserveOn()).map(new C10934c()).flatMap(C10935d.f53925e).observeOn(getObserveOn()).map(new C10936e()).observeOn(getMainUIScheduler()).flatMap(new C10937f()).observeOn(getObserveOn()).flatMap(new C10938g()).observeOn(getMainUIScheduler()).map(new C10939h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final void m42446q() {
        ManageFolderContext manageFolderContext = this.manageFolderContext;
        NoteProvider noteProvider = this.provider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider = null;
        }
        List<SyncNoteModel> loadNoteList = NoteModelProviderKt.loadNoteList(noteProvider, this.manageFolderContext.getOpNoteIds());
        boolean z = false;
        if (!(loadNoteList instanceof Collection) || !loadNoteList.isEmpty()) {
            Iterator<T> it2 = loadNoteList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (((SyncNoteModel) it2.next()).isLibrary()) {
                    z = true;
                    break;
                }
            }
        }
        manageFolderContext.setHasFolder(z);
    }

    /* renamed from: r */
    public final void m42447r(TreeNode<NoteModelBean> rootNode) {
        Iterator<T> it2 = rootNode.findChildrenNodes().iterator();
        while (it2.hasNext()) {
            TreeNode treeNode = (TreeNode) it2.next();
            treeNode.setExpand(treeNode.hasChild());
        }
        this.manageFolderContext.setRootNode(rootNode);
    }

    /* renamed from: s */
    public final Observable<MoveToSelectFolderAction> m42448s() {
        TreeNode<NoteModelBean> selectedFolderNode = this.manageFolderContext.getSelectedFolderNode();
        NoteModelBeanList moveNoteList = this.manageFolderContext.getMoveNoteList();
        ArrayList arrayList = new ArrayList();
        for (NoteModelBean noteModelBean : moveNoteList) {
            if (!Intrinsics.areEqual(noteModelBean.getParentUniqueId(), selectedFolderNode != null ? selectedFolderNode.getId() : null)) {
                arrayList.add(noteModelBean);
            }
        }
        if (this.manageFolderContext.getMoveNoteList().isEmpty() || selectedFolderNode == null || arrayList.isEmpty()) {
            Observable<MoveToSelectFolderAction> doOnNext = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10941j());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((NoteModelBean) obj).isLibrary()) {
                arrayList2.add(obj);
            }
        }
        final int size = arrayList2.size();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (((NoteModelBean) obj2).isDocument()) {
                arrayList3.add(obj2);
            }
        }
        final int size2 = arrayList3.size();
        Observable<Boolean> observeOn = new MoveNoteAction(arrayList, selectedFolderNode).build().doOnError(new C10942k(size, size2, this)).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<MoveToSelectFolderAction> map = RxjavaKt.doOnNextIf(RxjavaKt.doOnNextIf(RxjavaKt.doOnNextIf(RxjavaKt.doOnNextIfTrue(observeOn, new Consumer() { // from class: com.sunia.HTREnginev2.epj
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj3) {
                MoveToSelectFolderAction.m42441t(MoveToSelectFolderAction.this, ((Boolean) obj3).booleanValue());
            }
        }), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$moveNoteList$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(!z && size > 0 && size2 > 0);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.fpj
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj3) {
                MoveToSelectFolderAction.m42442u(((Boolean) obj3).booleanValue());
            }
        }), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$moveNoteList$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(!z && size == 0 && size2 > 0);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.gpj
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj3) {
                MoveToSelectFolderAction.m42443v(((Boolean) obj3).booleanValue());
            }
        }), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.category.action.MoveToSelectFolderAction$moveNoteList$8
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(!z && size > 0 && size2 == 0);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.hpj
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj3) {
                MoveToSelectFolderAction.m42444w(((Boolean) obj3).booleanValue());
            }
        }).map(new C10940i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: x */
    public final Observable<Boolean> m42449x() {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        SelectFolderDialog selectFolderDialog = new SelectFolderDialog(activityContext, this.manageFolderContext, this.from);
        final PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.dialog = new WeakReference<>(selectFolderDialog);
        selectFolderDialog.setPublishSubject(create);
        selectFolderDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.dpj
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MoveToSelectFolderAction.m42445y(PublishSubject.this, dialogInterface);
            }
        });
        selectFolderDialog.show();
        return create;
    }
}
