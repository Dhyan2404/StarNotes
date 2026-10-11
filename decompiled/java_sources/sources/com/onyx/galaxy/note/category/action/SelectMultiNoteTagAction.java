package com.onyx.galaxy.note.category.action;

import android.content.Context;
import android.content.DialogInterface;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.galaxy.note.category.action.SelectMultiNoteTagAction;
import com.onyx.galaxy.note.category.view.dialog.SelectMultiTagDialog;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.data.ManageTagContext;
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

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u001a\u0010\n\u001a\u00020\t2\u0010\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/SelectMultiNoteTagAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "rootNode", "", C4921e.f26528e, "m", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", C6998g.f39679a, "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "manageTagContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectMultiNoteTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectMultiNoteTagAction.kt\ncom/onyx/galaxy/note/category/action/SelectMultiNoteTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1855#2,2:40\n*S KotlinDebug\n*F\n+ 1 SelectMultiNoteTagAction.kt\ncom/onyx/galaxy/note/category/action/SelectMultiNoteTagAction\n*L\n25#1:40,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SelectMultiNoteTagAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ManageTagContext manageTagContext;

    /* renamed from: com.onyx.galaxy.note.category.action.SelectMultiNoteTagAction$a */
    /* loaded from: classes9.dex */
    public static final class C10987a<T, R> implements Function {

        /* renamed from: e */
        public static final C10987a<T, R> f54017e = new C10987a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TreeNode<NoteTagBean>> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadTagTreeAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SelectMultiNoteTagAction$b */
    /* loaded from: classes9.dex */
    public static final class C10988b<T> implements Consumer {
        public C10988b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteTagBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectMultiNoteTagAction.this.m42555o(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SelectMultiNoteTagAction$c */
    /* loaded from: classes9.dex */
    public static final class C10989c<T, R> implements Function {
        public C10989c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull TreeNode<NoteTagBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectMultiNoteTagAction.this.m42554m();
        }
    }

    public SelectMultiNoteTagAction(@NotNull ManageTagContext manageTagContext) {
        Intrinsics.checkNotNullParameter(manageTagContext, "manageTagContext");
        this.manageTagContext = manageTagContext;
    }

    /* renamed from: n */
    public static final void m42553n(PublishSubject subject, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        subject.onComplete();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> flatMap = Observable.just(Unit.INSTANCE).flatMap(C10987a.f54017e).observeOn(getObserveOn()).doOnNext(new C10988b()).observeOn(getMainUIScheduler()).flatMap(new C10989c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: m */
    public final Observable<Boolean> m42554m() {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        SelectMultiTagDialog selectMultiTagDialog = new SelectMultiTagDialog(activityContext, this.manageTagContext);
        selectMultiTagDialog.setCanceledOnTouchOutside(false);
        final PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        selectMultiTagDialog.setPublisher(create);
        selectMultiTagDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.bfm
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SelectMultiNoteTagAction.m42553n(PublishSubject.this, dialogInterface);
            }
        });
        selectMultiTagDialog.show();
        return create;
    }

    /* renamed from: o */
    public final void m42555o(TreeNode<NoteTagBean> rootNode) {
        Iterator<T> it2 = rootNode.findChildrenNodes().iterator();
        while (it2.hasNext()) {
            ((TreeNode) it2.next()).setExpand(true);
        }
        this.manageTagContext.setRootNode(rootNode);
    }
}
