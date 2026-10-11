package com.onyx.galaxy.note.category.action;

import android.content.Context;
import android.content.DialogInterface;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.galaxy.note.category.action.SelectMultiNoteFolderAction;
import com.onyx.galaxy.note.category.view.dialog.SelectMultiFolderDialog;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u001a\u0010\n\u001a\u00020\t2\u0010\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/SelectMultiNoteFolderAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "rootNode", "", C4921e.f26528e, "m", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", C6998g.f39679a, "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "manageFolderContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectMultiNoteFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectMultiNoteFolderAction.kt\ncom/onyx/galaxy/note/category/action/SelectMultiNoteFolderAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1855#2,2:40\n*S KotlinDebug\n*F\n+ 1 SelectMultiNoteFolderAction.kt\ncom/onyx/galaxy/note/category/action/SelectMultiNoteFolderAction\n*L\n25#1:40,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SelectMultiNoteFolderAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ManageFolderContext manageFolderContext;

    /* renamed from: com.onyx.galaxy.note.category.action.SelectMultiNoteFolderAction$a */
    /* loaded from: classes9.dex */
    public static final class C10984a<T, R> implements Function {

        /* renamed from: e */
        public static final C10984a<T, R> f54013e = new C10984a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TreeNode<NoteModelBean>> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadNoteFolderTreeAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SelectMultiNoteFolderAction$b */
    /* loaded from: classes9.dex */
    public static final class C10985b<T> implements Consumer {
        public C10985b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteModelBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectMultiNoteFolderAction.this.m42548o(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SelectMultiNoteFolderAction$c */
    /* loaded from: classes9.dex */
    public static final class C10986c<T, R> implements Function {
        public C10986c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull TreeNode<NoteModelBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectMultiNoteFolderAction.this.m42547m();
        }
    }

    public SelectMultiNoteFolderAction(@NotNull ManageFolderContext manageFolderContext) {
        Intrinsics.checkNotNullParameter(manageFolderContext, "manageFolderContext");
        this.manageFolderContext = manageFolderContext;
    }

    /* renamed from: n */
    public static final void m42546n(PublishSubject subject, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        subject.onComplete();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> flatMap = Observable.just(Unit.INSTANCE).flatMap(C10984a.f54013e).observeOn(getObserveOn()).doOnNext(new C10985b()).observeOn(getMainUIScheduler()).flatMap(new C10986c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: m */
    public final Observable<Boolean> m42547m() {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        SelectMultiFolderDialog selectMultiFolderDialog = new SelectMultiFolderDialog(activityContext, this.manageFolderContext);
        selectMultiFolderDialog.setCanceledOnTouchOutside(false);
        final PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        selectMultiFolderDialog.setPublisher(create);
        selectMultiFolderDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.afm
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SelectMultiNoteFolderAction.m42546n(PublishSubject.this, dialogInterface);
            }
        });
        selectMultiFolderDialog.show();
        return create;
    }

    /* renamed from: o */
    public final void m42548o(TreeNode<NoteModelBean> rootNode) {
        Iterator<T> it2 = rootNode.findChildrenNodes().iterator();
        while (it2.hasNext()) {
            ((TreeNode) it2.next()).setExpand(true);
        }
        this.manageFolderContext.setRootNode(rootNode);
    }
}
