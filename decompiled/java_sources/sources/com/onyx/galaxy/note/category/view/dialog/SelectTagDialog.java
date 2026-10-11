package com.onyx.galaxy.note.category.view.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.TagCreateFrom;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.category.action.LoadTagTreeAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnCreateMultipleSubTagEvent;
import com.onyx.galaxy.note.category.event.OnCreateTagEvent;
import com.onyx.galaxy.note.category.event.OnDeleteTagEvent;
import com.onyx.galaxy.note.category.event.OnSaveTagEvent;
import com.onyx.galaxy.note.category.view.adapter.SelectTagAdapter;
import com.onyx.galaxy.note.category.view.dialog.SelectTagDialog;
import com.onyx.galaxy.note.category.view.dialog.SelectTagDialog$checkEmptyDataObserver$2;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver;
import com.onyx.galaxy.note.databinding.DialogSelectTagBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000u\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0007*\u00014\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001b¢\u0006\u0004\b8\u00109J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\fH\u0007J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u000eH\u0007J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR*\u0010&\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001b\u0010+\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010(\u001a\u0004\b)\u0010*R\u001b\u0010/\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010(\u001a\u0004\b\u0018\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u001b\u00107\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010(\u001a\u0004\b\u001c\u00106¨\u0006:"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;", NotificationCompat.CATEGORY_EVENT, "onSaveTagEvent", "Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;", "onCreateTagEvent", "Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;", "onCreateMultipleSubTagEvent", "Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;", "onDeleteTagEvent", "j", C4921e.f26537n, "r", "", "eventId", "q", "p", "Landroid/content/Context;", C6999h.f39688c, "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "i", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "manageTagContext", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "getApplySubject", "()Lio/reactivex/rxjava3/subjects/PublishSubject;", "setApplySubject", "(Lio/reactivex/rxjava3/subjects/PublishSubject;)V", "applySubject", "Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;", "Lkotlin/Lazy;", C6998g.f39679a, "()Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;", "adapter", "Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;", "l", "()Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;", "binding", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "m", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "com/onyx/galaxy/note/category/view/dialog/SelectTagDialog$checkEmptyDataObserver$2$1", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$checkEmptyDataObserver$2$1;", "checkEmptyDataObserver", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class SelectTagDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ManageTagContext manageTagContext;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public PublishSubject<Boolean> applySubject;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Lazy checkEmptyDataObserver;

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.SelectTagDialog$a */
    /* loaded from: classes9.dex */
    public static final class C11459a<T> implements Consumer {
        public C11459a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteTagBean> rootNode) {
            Intrinsics.checkNotNullParameter(rootNode, "rootNode");
            rootNode.expandChildren();
            SelectTagDialog.this.manageTagContext.setRootNode(rootNode);
            SelectTagDialog.this.m44568j();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectTagDialog(@NotNull Context context, @NotNull ManageTagContext manageTagContext) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(manageTagContext, "manageTagContext");
        this.context = context;
        this.manageTagContext = manageTagContext;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SelectTagAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectTagDialog$adapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SelectTagAdapter invoke() {
                return new SelectTagAdapter(SelectTagDialog.this.manageTagContext);
            }
        });
        this.adapter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<DialogSelectTagBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectTagDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogSelectTagBinding invoke() {
                Context context2;
                context2 = SelectTagDialog.this.context;
                return DialogSelectTagBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy2;
        this.compositeDisposable = new CompositeDisposable();
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<SelectTagDialog$checkEmptyDataObserver$2.C114601>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectTagDialog$checkEmptyDataObserver$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.category.view.dialog.SelectTagDialog$checkEmptyDataObserver$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C114601 invoke() {
                final SelectTagDialog selectTagDialog = SelectTagDialog.this;
                return new AdapterDataModifiedObserver() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectTagDialog$checkEmptyDataObserver$2.1
                    @Override // com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver
                    public void onDataChanged() {
                        DialogSelectTagBinding m44566h;
                        SelectTagAdapter m44565g;
                        m44566h = SelectTagDialog.this.m44566h();
                        TintConstraintLayout root = m44566h.includeEmptyView.getRoot();
                        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
                        m44565g = SelectTagDialog.this.m44565g();
                        root.setVisibility(m44565g.getItems().isEmpty() ? 0 : 8);
                    }
                };
            }
        });
        this.checkEmptyDataObserver = lazy3;
    }

    /* renamed from: l */
    public static final void m44561l(SelectTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44570p();
        PublishSubject<Boolean> publishSubject = this$0.applySubject;
        if (publishSubject != null) {
            publishSubject.onNext(Boolean.TRUE);
        }
    }

    /* renamed from: m */
    public static final void m44562m(SelectTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44571q(OnyxStatisticConstant.ID_TAG_MOVE_DIALOG_CANCEL_CLICK);
        this$0.dismiss();
    }

    /* renamed from: n */
    public static final void m44563n(SelectTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44571q(OnyxStatisticConstant.ID_TAG_MOVE_DIALOG_MANAGE_CLICK);
        new ManageTagDialog(this$0.context, this$0.manageTagContext, TagCreateFrom.HOME_FUNC_TAG_MOVE_MANGE_CREATE).show();
    }

    /* renamed from: o */
    public static final void m44564o(SelectTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new CreateTagDialog(this$0.context, NoteTreeBundle.INSTANCE.getTagRootNote(), TagCreateFrom.HOME_FUNC_TAG_MOVE_CREATE).show();
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.compositeDisposable.clear();
        m44565g().unregisterAdapterDataObserver(m44567i());
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
    }

    /* renamed from: g */
    public final SelectTagAdapter m44565g() {
        return (SelectTagAdapter) this.adapter.getValue();
    }

    @Nullable
    public final PublishSubject<Boolean> getApplySubject() {
        return this.applySubject;
    }

    /* renamed from: h */
    public final DialogSelectTagBinding m44566h() {
        return (DialogSelectTagBinding) this.binding.getValue();
    }

    /* renamed from: i */
    public final SelectTagDialog$checkEmptyDataObserver$2.C114601 m44567i() {
        return (SelectTagDialog$checkEmptyDataObserver$2.C114601) this.checkEmptyDataObserver.getValue();
    }

    /* renamed from: j */
    public final void m44568j() {
        m44565g().initList();
    }

    /* renamed from: k */
    public final void m44569k() {
        m44565g().registerAdapterDataObserver(m44567i());
        m44566h().f56532rv.setAdapter(m44565g());
        TintTextView tvOk = m44566h().tvOk;
        Intrinsics.checkNotNullExpressionValue(tvOk, "tvOk");
        ViewKt.click$default(tvOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cgm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectTagDialog.m44561l(SelectTagDialog.this, view);
            }
        }, 1, null);
        TintTextView tvCancel = m44566h().tvCancel;
        Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
        ViewKt.click$default(tvCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dgm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectTagDialog.m44562m(SelectTagDialog.this, view);
            }
        }, 1, null);
        TintTextView tvManagerTag = m44566h().tvManagerTag;
        Intrinsics.checkNotNullExpressionValue(tvManagerTag, "tvManagerTag");
        ViewKt.click$default(tvManagerTag, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.egm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectTagDialog.m44563n(SelectTagDialog.this, view);
            }
        }, 1, null);
        TintTextView tvCreateTag = m44566h().tvCreateTag;
        Intrinsics.checkNotNullExpressionValue(tvCreateTag, "tvCreateTag");
        ViewKt.click$default(tvCreateTag, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fgm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectTagDialog.m44564o(SelectTagDialog.this, view);
            }
        }, 1, null);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063295, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateMultipleSubTagEvent(@NotNull OnCreateMultipleSubTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44572r();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateTagEvent(@NotNull OnCreateTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44572r();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteTagEvent(@NotNull OnDeleteTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44572r();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveTagEvent(@NotNull OnSaveTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44572r();
    }

    /* renamed from: p */
    public final void m44570p() {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, 1010));
        String selectTagId = this.manageTagContext.getSelectTagId();
        if (selectTagId == null) {
            selectTagId = "";
        }
        mutableMapOf.put(OnyxStatisticConstant.KEY_TAG_ID, selectTagId);
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_TAG_MOVE_DIALOG_DONE_CLICK, mutableMapOf);
    }

    /* renamed from: q */
    public final void m44571q(String eventId) {
        Map<String, ? extends Object> mapOf;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, 1010));
        statisticsBundle.reportEvent(eventId, mapOf);
    }

    /* renamed from: r */
    public final void m44572r() {
        Disposable subscribe = new LoadTagTreeAction().build().subscribe(new C11459a());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    public final void setApplySubject(@Nullable PublishSubject<Boolean> publishSubject) {
        this.applySubject = publishSubject;
    }
}
