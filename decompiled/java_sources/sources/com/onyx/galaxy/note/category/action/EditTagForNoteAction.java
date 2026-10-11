package com.onyx.galaxy.note.category.action;

import android.content.Context;
import android.content.DialogInterface;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.TagAddFrom;
import com.onyx.android.sdk.data.TagAddType;
import com.onyx.android.sdk.event.StatisticsTagAddEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.galaxy.note.category.action.EditTagForNoteAction;
import com.onyx.galaxy.note.category.p044ui.NoteListFragment;
import com.onyx.galaxy.note.category.view.dialog.EditTagForNoteDialog;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.data.EditTagForNoteContext;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.editor.view.toolbar.NoteTagLayout;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0006\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b$\u0010%J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u001a\u0010\u000b\u001a\u00020\n2\u0010\u0010\t\u001a\f\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\bH\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0002H\u0002J\u0016\u0010\u0011\u001a\u00020\n2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\b\u0010\u0012\u001a\u00020\nH\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R*\u0010#\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C4921e.f26528e, "s", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "rootNode", "", "m", "", "p", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "tags", GoogleApiAvailabilityLight.f29016b, "r", "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;", C6998g.f39679a, "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;", "editTagForNoteContext", "", C6999h.f39688c, Constants.STRING_SIG, "from", "Ljava/lang/ref/WeakReference;", "Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;", "i", "Ljava/lang/ref/WeakReference;", "getDialog", "()Ljava/lang/ref/WeakReference;", "setDialog", "(Ljava/lang/ref/WeakReference;)V", "dialog", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditTagForNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTagForNoteAction.kt\ncom/onyx/galaxy/note/category/action/EditTagForNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1855#2,2:128\n1549#2:130\n1620#2,3:131\n*S KotlinDebug\n*F\n+ 1 EditTagForNoteAction.kt\ncom/onyx/galaxy/note/category/action/EditTagForNoteAction\n*L\n82#1:128,2\n103#1:130\n103#1:131,3\n*E\n"})
/* loaded from: classes9.dex */
public final class EditTagForNoteAction extends BaseNoteManagementAction<EditTagForNoteAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditTagForNoteContext editTagForNoteContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String from;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public WeakReference<EditTagForNoteDialog> dialog;

    /* renamed from: com.onyx.galaxy.note.category.action.EditTagForNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C10848a<T, R> implements Function {
        public C10848a() {
        }

        /* renamed from: a */
        public final void m42293a(@NotNull TreeNode<NoteTagBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditTagForNoteAction.this.m42287m(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42293a((TreeNode) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditTagForNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C10849b<T, R> implements Function {
        public C10849b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditTagForNoteAction.this.m42290p();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditTagForNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C10850c<T, R> implements Function {
        public C10850c() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends EditTagForNoteAction> m42295a(boolean z) {
            return EditTagForNoteAction.this.m42289o();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42295a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditTagForNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C10851d<T, R> implements Function {
        public C10851d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditTagForNoteAction apply(@NotNull EditTagForNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditTagForNoteAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditTagForNoteAction$e */
    /* loaded from: classes9.dex */
    public static final class C10852e<T> implements Consumer {
        public C10852e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull EditTagForNoteAction it2) {
            EditTagForNoteDialog editTagForNoteDialog;
            Intrinsics.checkNotNullParameter(it2, "it");
            WeakReference<EditTagForNoteDialog> dialog = EditTagForNoteAction.this.getDialog();
            if (dialog == null || (editTagForNoteDialog = dialog.get()) == null) {
                return;
            }
            editTagForNoteDialog.dismiss();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditTagForNoteAction$f */
    /* loaded from: classes9.dex */
    public static final class C10853f<T, R> implements Function {
        public C10853f() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends EditTagForNoteAction> m42298a(boolean z) {
            return EditTagForNoteAction.this.m42292s();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42298a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditTagForNoteAction$g */
    /* loaded from: classes9.dex */
    public static final class C10854g<T> implements Consumer {
        public C10854g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull EditTagForNoteAction it2) {
            EditTagForNoteDialog editTagForNoteDialog;
            Intrinsics.checkNotNullParameter(it2, "it");
            WeakReference<EditTagForNoteDialog> dialog = EditTagForNoteAction.this.getDialog();
            if (dialog == null || (editTagForNoteDialog = dialog.get()) == null) {
                return;
            }
            editTagForNoteDialog.dismiss();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditTagForNoteAction$h */
    /* loaded from: classes9.dex */
    public static final class C10855h<T, R> implements Function {
        public C10855h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditTagForNoteAction apply(@NotNull EditTagForNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditTagForNoteAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditTagForNoteAction$i */
    /* loaded from: classes9.dex */
    public static final class C10856i<T, R> implements Function {
        public C10856i() {
        }

        @NotNull
        /* renamed from: a */
        public final EditTagForNoteAction m42301a(boolean z) {
            return EditTagForNoteAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42301a(((Boolean) obj).booleanValue());
        }
    }

    public EditTagForNoteAction(@NotNull EditTagForNoteContext editTagForNoteContext, @NotNull String from) {
        Intrinsics.checkNotNullParameter(editTagForNoteContext, "editTagForNoteContext");
        Intrinsics.checkNotNullParameter(from, "from");
        this.editTagForNoteContext = editTagForNoteContext;
        this.from = from;
    }

    /* renamed from: q */
    public static final void m42286q(PublishSubject subject, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        subject.onComplete();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<EditTagForNoteAction> create() {
        Observable<EditTagForNoteAction> map = new LoadTagTreeAction().build().observeOn(getObserveOn()).map(new C10848a()).observeOn(getMainUIScheduler()).flatMap(new C10849b()).observeOn(getObserveOn()).flatMap(new C10850c()).observeOn(getMainUIScheduler()).map(new C10851d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final WeakReference<EditTagForNoteDialog> getDialog() {
        return this.dialog;
    }

    /* renamed from: m */
    public final void m42287m(TreeNode<NoteTagBean> rootNode) {
        Iterator<T> it2 = rootNode.findChildrenNodes().iterator();
        while (it2.hasNext()) {
            TreeNode treeNode = (TreeNode) it2.next();
            treeNode.setExpand(treeNode.hasChild());
        }
        this.editTagForNoteContext.setRootNode(rootNode);
    }

    /* renamed from: n */
    public final void m42288n(List<? extends SyncTagModel> tags) {
        int collectionSizeOrDefault;
        Object last;
        if (!tags.isEmpty()) {
            List<? extends SyncTagModel> list = tags;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(((SyncTagModel) it2.next()).getUniqueId());
            }
            RxBaseAction.execute$default(new UpdateTagExpandStatusAction(arrayList, 1), null, null, null, 7, null);
            List<String> selectTagIds = this.editTagForNoteContext.getSelectTagIds();
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) tags);
            selectTagIds.add(((SyncTagModel) last).getUniqueId());
        }
    }

    /* renamed from: o */
    public final Observable<EditTagForNoteAction> m42289o() {
        List mutableListOf;
        NoteModelBean noteModelBean = this.editTagForNoteContext.getNoteModelBean();
        m42291r();
        if (noteModelBean == null) {
            Observable<EditTagForNoteAction> doOnNext = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10852e());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        noteModelBean.setTagIdList(this.editTagForNoteContext.getSelectTagIds());
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(noteModelBean);
        Observable<EditTagForNoteAction> map = new UpdateNoteAction(mutableListOf, false, false, 6, null).build().flatMap(new C10853f()).observeOn(getMainUIScheduler()).doOnNext(new C10854g()).map(new C10855h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final Observable<Boolean> m42290p() {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditTagForNoteDialog editTagForNoteDialog = new EditTagForNoteDialog(activityContext, this.editTagForNoteContext, new EditTagForNoteAction$showDialog$editTagForNoteDialog$1(this), this.from);
        final PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.dialog = new WeakReference<>(editTagForNoteDialog);
        editTagForNoteDialog.setPublishSubject(create);
        editTagForNoteDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.ulf
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                EditTagForNoteAction.m42286q(PublishSubject.this, dialogInterface);
            }
        });
        editTagForNoteDialog.show();
        return create;
    }

    /* renamed from: r */
    public final void m42291r() {
        TagAddFrom tagAddFrom;
        String str = this.from;
        int hashCode = str.hashCode();
        if (hashCode == -1703550515) {
            if (str.equals(ShapeToolViewAuto.TAG)) {
                tagAddFrom = TagAddFrom.NOTE_TOOLBAR_TAG;
            }
            tagAddFrom = null;
        } else if (hashCode != -1389003918) {
            if (hashCode == 181233216 && str.equals(NoteListFragment.TAG)) {
                tagAddFrom = TagAddFrom.NOTE_OPTION;
            }
            tagAddFrom = null;
        } else {
            if (str.equals(NoteTagLayout.TAG)) {
                tagAddFrom = TagAddFrom.EDIT_NOTE_SETTING_NOTE_TAG;
            }
            tagAddFrom = null;
        }
        if (tagAddFrom != null) {
            StatisticsBundle.INSTANCE.postEvent(new StatisticsTagAddEvent(tagAddFrom, TagAddType.NOTE));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.reactivex.rxjava3.core.Observable<com.onyx.galaxy.note.category.action.EditTagForNoteAction> m42292s() {
        /*
            r2 = this;
            com.onyx.galaxy.note.common.data.EditTagForNoteContext r0 = r2.editTagForNoteContext
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r0 = r0.getNoteModelBean()
            if (r0 == 0) goto Ld
            java.lang.String r0 = r0.getParentUniqueId()
            goto Le
        Ld:
            r0 = 0
        Le:
            if (r0 == 0) goto L19
            boolean r1 = kotlin.text.StringsKt.isBlank(r0)
            if (r1 == 0) goto L17
            goto L19
        L17:
            r1 = 0
            goto L1a
        L19:
            r1 = 1
        L1a:
            if (r1 == 0) goto L26
            io.reactivex.rxjava3.core.Observable r2 = io.reactivex.rxjava3.core.Observable.just(r2)
            java.lang.String r0 = "just(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            return r2
        L26:
            com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction r1 = new com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction
            java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
            r1.<init>(r0)
            io.reactivex.rxjava3.core.Observable r0 = r1.build()
            com.onyx.galaxy.note.category.action.EditTagForNoteAction$i r1 = new com.onyx.galaxy.note.category.action.EditTagForNoteAction$i
            r1.<init>()
            io.reactivex.rxjava3.core.Observable r2 = r0.map(r1)
            java.lang.String r0 = "map(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.action.EditTagForNoteAction.m42292s():io.reactivex.rxjava3.core.Observable");
    }

    public final void setDialog(@Nullable WeakReference<EditTagForNoteDialog> weakReference) {
        this.dialog = weakReference;
    }
}
