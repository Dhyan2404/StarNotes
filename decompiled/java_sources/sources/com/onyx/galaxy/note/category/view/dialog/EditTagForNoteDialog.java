package com.onyx.galaxy.note.category.view.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.TagCreateFrom;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBeanList;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.category.action.LoadTagTreeAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnCreateMultipleSubTagEvent;
import com.onyx.galaxy.note.category.event.OnCreateTagEvent;
import com.onyx.galaxy.note.category.event.OnDeleteTagEvent;
import com.onyx.galaxy.note.category.event.OnSaveTagEvent;
import com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment;
import com.onyx.galaxy.note.category.view.CreateTagInputFilter;
import com.onyx.galaxy.note.category.view.adapter.EditTagForNoteAdapter;
import com.onyx.galaxy.note.category.view.adapter.EditTagForNoteSearchAdapter;
import com.onyx.galaxy.note.category.view.dialog.EditTagForNoteDialog;
import com.onyx.galaxy.note.category.view.dialog.EditTagForNoteDialog$checkEmptyDataObserver$2;
import com.onyx.galaxy.note.common.data.EditTagForNoteContext;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver;
import com.onyx.galaxy.note.databinding.DialogEditTagForNoteBinding;
import com.onyx.galaxy.note.editor.view.popup.LongPressPopup;
import com.onyx.galaxy.note.editor.view.toolbar.NoteTagLayout;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto;
import com.onyx.galaxy.note.p048ui.ext.EditextExtKt;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000©\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0007*\u0001Q\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010%\u001a\u00020#\u0012\u0006\u0010)\u001a\u00020&\u0012\u001a\u0010/\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020,0+\u0012\u0004\u0012\u00020\u0002\u0018\u00010*\u0012\u0006\u00102\u001a\u00020\u0006¢\u0006\u0004\bU\u0010VJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0003J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0003J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u0002H\u0003J\b\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\u0012\u0010\u0018\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0014J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0007J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001dH\u0007J\u0010\u0010 \u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001fH\u0007J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020!H\u0007R\u0014\u0010%\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R(\u0010/\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020,0+\u0012\u0004\u0012\u00020\u0002\u0018\u00010*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00102\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R*\u0010:\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u0001038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001a\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00060;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010<R\u001b\u0010A\u001a\u00020>8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010?\u001a\u0004\b'\u0010@R\u001b\u0010D\u001a\u00020B8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010?\u001a\u0004\b4\u0010CR\u001b\u0010H\u001a\u00020E8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bF\u0010?\u001a\u0004\b-\u0010GR\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u0014\u0010P\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR\u001b\u0010T\u001a\u00020Q8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bR\u0010?\u001a\u0004\b0\u0010S¨\u0006W"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "", "m", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "", "title", "w", "", "isSearch", "y", "t", "z", CouchFieldKey.KEY_TAG_ID, "x", "Lcom/onyx/android/sdk/data/TagCreateFrom;", C6999h.f39688c, C6998g.f39679a, "eventId", "v", "u", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "dismiss", "Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;", NotificationCompat.CATEGORY_EVENT, "onSaveTagEvent", "Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;", "onCreateTagEvent", "Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;", "onCreateMultipleSubTagEvent", "Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;", "onDeleteTagEvent", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;", "i", "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;", "editTagForNoteContext", "Lkotlin/Function1;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "j", "Lkotlin/jvm/functions/Function1;", "onCreateTag", C4921e.f26537n, Constants.STRING_SIG, "from", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "l", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "getPublishSubject", "()Lio/reactivex/rxjava3/subjects/PublishSubject;", "setPublishSubject", "(Lio/reactivex/rxjava3/subjects/PublishSubject;)V", "publishSubject", "", "Ljava/util/List;", "recordSelectTagIds", "Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;", "adapter", "Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;", "()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;", "searchAdapter", "Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;", "p", "()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;", "binding", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "q", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;", "r", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;", "matchList", "com/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$checkEmptyDataObserver$2$1", "s", "()Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$checkEmptyDataObserver$2$1;", "checkEmptyDataObserver", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditTagForNoteDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTagForNoteDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,263:1\n1549#2:264\n1620#2,3:265\n766#2:287\n857#2,2:288\n65#3,16:268\n93#3,3:284\n256#4,2:290\n256#4,2:292\n*S KotlinDebug\n*F\n+ 1 EditTagForNoteDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog\n*L\n130#1:264\n130#1:265,3\n180#1:287\n180#1:288,2\n159#1:268,16\n159#1:284,3\n187#1:290,2\n188#1:292,2\n*E\n"})
/* loaded from: classes17.dex */
public final class EditTagForNoteDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final EditTagForNoteContext editTagForNoteContext;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public final Function1<List<? extends SyncTagModel>, Unit> onCreateTag;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final String from;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public PublishSubject<Boolean> publishSubject;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final List<String> recordSelectTagIds;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Lazy searchAdapter;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final NoteTagBeanList matchList;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy checkEmptyDataObserver;

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.EditTagForNoteDialog$a */
    /* loaded from: classes9.dex */
    public static final class C11439a<T> implements Consumer {
        public C11439a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteTagBean> rootNode) {
            Intrinsics.checkNotNullParameter(rootNode, "rootNode");
            rootNode.expandChildren();
            EditTagForNoteDialog.this.editTagForNoteContext.setRootNode(rootNode);
            EditTagForNoteDialog.this.m44391m();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public EditTagForNoteDialog(@NotNull Context context, @NotNull EditTagForNoteContext editTagForNoteContext, @Nullable Function1<? super List<? extends SyncTagModel>, Unit> function1, @NotNull String from) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editTagForNoteContext, "editTagForNoteContext");
        Intrinsics.checkNotNullParameter(from, "from");
        this.context = context;
        this.editTagForNoteContext = editTagForNoteContext;
        this.onCreateTag = function1;
        this.from = from;
        this.recordSelectTagIds = new ArrayList();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<EditTagForNoteAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.EditTagForNoteDialog$adapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EditTagForNoteAdapter invoke() {
                return new EditTagForNoteAdapter(EditTagForNoteDialog.this.editTagForNoteContext);
            }
        });
        this.adapter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<EditTagForNoteSearchAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.EditTagForNoteDialog$searchAdapter$2

            @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* renamed from: com.onyx.galaxy.note.category.view.dialog.EditTagForNoteDialog$searchAdapter$2$1 */
            /* loaded from: classes9.dex */
            public /* synthetic */ class C114411 extends FunctionReferenceImpl implements Function0<Unit> {
                public C114411(Object obj) {
                    super(0, obj, EditTagForNoteDialog.class, "onUpdateSelectId", "onUpdateSelectId()V", 0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ((EditTagForNoteDialog) this.receiver).m44394t();
                }
            }

            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EditTagForNoteSearchAdapter invoke() {
                return new EditTagForNoteSearchAdapter(EditTagForNoteDialog.this.editTagForNoteContext, new C114411(EditTagForNoteDialog.this));
            }
        });
        this.searchAdapter = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<DialogEditTagForNoteBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.EditTagForNoteDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogEditTagForNoteBinding invoke() {
                Context context2;
                context2 = EditTagForNoteDialog.this.context;
                return DialogEditTagForNoteBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy3;
        this.compositeDisposable = new CompositeDisposable();
        this.matchList = new NoteTagBeanList();
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<EditTagForNoteDialog$checkEmptyDataObserver$2.C114401>() { // from class: com.onyx.galaxy.note.category.view.dialog.EditTagForNoteDialog$checkEmptyDataObserver$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.category.view.dialog.EditTagForNoteDialog$checkEmptyDataObserver$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C114401 invoke() {
                final EditTagForNoteDialog editTagForNoteDialog = EditTagForNoteDialog.this;
                return new AdapterDataModifiedObserver() { // from class: com.onyx.galaxy.note.category.view.dialog.EditTagForNoteDialog$checkEmptyDataObserver$2.1
                    @Override // com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver
                    public void onDataChanged() {
                        DialogEditTagForNoteBinding m44388j;
                        EditTagForNoteAdapter m44387i;
                        m44388j = EditTagForNoteDialog.this.m44388j();
                        TintConstraintLayout root = m44388j.includeEmptyView.getRoot();
                        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
                        m44387i = EditTagForNoteDialog.this.m44387i();
                        root.setVisibility(m44387i.getItems().isEmpty() ? 0 : 8);
                    }
                };
            }
        });
        this.checkEmptyDataObserver = lazy4;
    }

    /* renamed from: p */
    public static final void m44381p(EditTagForNoteDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44395u();
        PublishSubject<Boolean> publishSubject = this$0.publishSubject;
        if (publishSubject != null) {
            publishSubject.onNext(Boolean.TRUE);
        }
    }

    /* renamed from: q */
    public static final void m44382q(EditTagForNoteDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.editTagForNoteContext.getSelectTagIds().clear();
        this$0.editTagForNoteContext.getSelectTagIds().addAll(this$0.recordSelectTagIds);
        this$0.m44396v(OnyxStatisticConstant.ID_TAG_ADD_MANAGE_DIALOG_CANCEL_CLICK);
        this$0.dismiss();
    }

    /* renamed from: r */
    public static final void m44383r(EditTagForNoteDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new CreateTagDialog(this$0.context, NoteTreeBundle.INSTANCE.getTagRootNote(), this$0.m44385g()).show();
    }

    /* renamed from: s */
    public static final void m44384s(EditTagForNoteDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44396v(OnyxStatisticConstant.ID_TAG_ADD_MANAGE_DIALOG_MANAGE_CLICK);
        ManageTagContext manageTagContext = new ManageTagContext();
        manageTagContext.setRootNode(this$0.editTagForNoteContext.getRootNode());
        new ManageTagDialog(this$0.context, manageTagContext, this$0.m44386h()).show();
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.compositeDisposable.clear();
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
        m44387i().unregisterAdapterDataObserver(m44389k());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    /* renamed from: g */
    public final TagCreateFrom m44385g() {
        String str = this.from;
        switch (str.hashCode()) {
            case -1802923547:
                if (str.equals(LongPressPopup.TAG)) {
                    return TagCreateFrom.EDIT_NOTE_POPUP_MENU_CREATE;
                }
                return TagCreateFrom.HOME_LIST_ITEM_TAG_EDIT_CREATE;
            case -1703550515:
                if (str.equals(ShapeToolViewAuto.TAG)) {
                    return TagCreateFrom.EDIT_NOTE_TOOL_EDIT_TAG_CREATE;
                }
                return TagCreateFrom.HOME_LIST_ITEM_TAG_EDIT_CREATE;
            case -1389003918:
                if (str.equals(NoteTagLayout.TAG)) {
                    return TagCreateFrom.EDIT_NOTE_SETTINGS_MENU_TAG_EDIT_CREATE;
                }
                return TagCreateFrom.HOME_LIST_ITEM_TAG_EDIT_CREATE;
            case 484179228:
                if (str.equals(NoteTemplateFragment.TAG)) {
                    return TagCreateFrom.NEW_NOTE_CREATE;
                }
                return TagCreateFrom.HOME_LIST_ITEM_TAG_EDIT_CREATE;
            default:
                return TagCreateFrom.HOME_LIST_ITEM_TAG_EDIT_CREATE;
        }
    }

    @Nullable
    public final PublishSubject<Boolean> getPublishSubject() {
        return this.publishSubject;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    /* renamed from: h */
    public final TagCreateFrom m44386h() {
        String str = this.from;
        switch (str.hashCode()) {
            case -1802923547:
                if (str.equals(LongPressPopup.TAG)) {
                    return TagCreateFrom.EDIT_NOTE_POPUP_MENU_MANAGE_CREATE;
                }
                return TagCreateFrom.HOME_LIST_ITEM_TAG_EDIT_MANGE_CREATE;
            case -1703550515:
                if (str.equals(ShapeToolViewAuto.TAG)) {
                    return TagCreateFrom.EDIT_NOTE_TOOL_EDIT_TAG_MANAGE_CREATE;
                }
                return TagCreateFrom.HOME_LIST_ITEM_TAG_EDIT_MANGE_CREATE;
            case -1389003918:
                if (str.equals(NoteTagLayout.TAG)) {
                    return TagCreateFrom.EDIT_NOTE_SETTINGS_MENU_TAG_EDIT_MANAGE_CREATE;
                }
                return TagCreateFrom.HOME_LIST_ITEM_TAG_EDIT_MANGE_CREATE;
            case 484179228:
                if (str.equals(NoteTemplateFragment.TAG)) {
                    return TagCreateFrom.NEW_NOTE_MANAGE_CREATE;
                }
                return TagCreateFrom.HOME_LIST_ITEM_TAG_EDIT_MANGE_CREATE;
            default:
                return TagCreateFrom.HOME_LIST_ITEM_TAG_EDIT_MANGE_CREATE;
        }
    }

    /* renamed from: i */
    public final EditTagForNoteAdapter m44387i() {
        return (EditTagForNoteAdapter) this.adapter.getValue();
    }

    /* renamed from: j */
    public final DialogEditTagForNoteBinding m44388j() {
        return (DialogEditTagForNoteBinding) this.binding.getValue();
    }

    /* renamed from: k */
    public final EditTagForNoteDialog$checkEmptyDataObserver$2.C114401 m44389k() {
        return (EditTagForNoteDialog$checkEmptyDataObserver$2.C114401) this.checkEmptyDataObserver.getValue();
    }

    /* renamed from: l */
    public final EditTagForNoteSearchAdapter m44390l() {
        return (EditTagForNoteSearchAdapter) this.searchAdapter.getValue();
    }

    /* renamed from: m */
    public final void m44391m() {
        m44392n();
        m44387i().initList();
    }

    /* renamed from: n */
    public final void m44392n() {
        int collectionSizeOrDefault;
        this.matchList.clear();
        List<TreeNode<NoteTagBean>> findChildrenNodes = this.editTagForNoteContext.getRootNode().findChildrenNodes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findChildrenNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = findChildrenNodes.iterator();
        while (it2.hasNext()) {
            arrayList.add((NoteTagBean) ((TreeNode) it2.next()).getData());
        }
        this.matchList.addAll(arrayList);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: o */
    public final void m44393o() {
        m44387i().registerAdapterDataObserver(m44389k());
        m44388j().f56392rv.setAdapter(m44387i());
        m44388j().rvSearch.setAdapter(m44390l());
        MediumTextView tvOk = m44388j().tvOk;
        Intrinsics.checkNotNullExpressionValue(tvOk, "tvOk");
        ViewKt.click$default(tvOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xlf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTagForNoteDialog.m44381p(EditTagForNoteDialog.this, view);
            }
        }, 1, null);
        TintTextView tvCancel = m44388j().tvCancel;
        Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
        ViewKt.click$default(tvCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ylf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTagForNoteDialog.m44382q(EditTagForNoteDialog.this, view);
            }
        }, 1, null);
        TintTextView tvCreateTag = m44388j().tvCreateTag;
        Intrinsics.checkNotNullExpressionValue(tvCreateTag, "tvCreateTag");
        ViewKt.click$default(tvCreateTag, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zlf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTagForNoteDialog.m44383r(EditTagForNoteDialog.this, view);
            }
        }, 1, null);
        TouchModeMaxLengthInputTextEdit touchModeMaxLengthInputTextEdit = m44388j().tieName;
        Intrinsics.checkNotNull(touchModeMaxLengthInputTextEdit);
        EditextExtKt.addInputFilter(touchModeMaxLengthInputTextEdit, new CreateTagInputFilter());
        touchModeMaxLengthInputTextEdit.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.category.view.dialog.EditTagForNoteDialog$initView$lambda$5$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
                EditTagForNoteDialog.this.m44397w(String.valueOf(text));
            }
        });
        m44388j().tvManagerTag.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.amf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTagForNoteDialog.m44384s(EditTagForNoteDialog.this, view);
            }
        });
        this.recordSelectTagIds.addAll(this.editTagForNoteContext.getSelectTagIds());
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063305, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateMultipleSubTagEvent(@NotNull OnCreateMultipleSubTagEvent event) {
        Object last;
        Intrinsics.checkNotNullParameter(event, "event");
        Function1<List<? extends SyncTagModel>, Unit> function1 = this.onCreateTag;
        if (function1 != null) {
            function1.invoke(event.getNodes());
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) event.getNodes());
        m44398x(((SyncTagModel) last).getUniqueId());
        m44400z();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateTagEvent(@NotNull OnCreateTagEvent event) {
        List<? extends SyncTagModel> listOf;
        Intrinsics.checkNotNullParameter(event, "event");
        Function1<List<? extends SyncTagModel>, Unit> function1 = this.onCreateTag;
        if (function1 != null) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(event.getNode());
            function1.invoke(listOf);
        }
        m44398x(event.getNode().getUniqueId());
        m44400z();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteTagEvent(@NotNull OnDeleteTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44400z();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveTagEvent(@NotNull OnSaveTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44400z();
    }

    public final void setPublishSubject(@Nullable PublishSubject<Boolean> publishSubject) {
        this.publishSubject = publishSubject;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: t */
    public final void m44394t() {
        m44387i().notifyDataSetChanged();
    }

    /* renamed from: u */
    public final void m44395u() {
        Map<String, ? extends Object> mutableMapOf;
        Object firstOrNull;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(OnyxStatisticConstant.INSTANCE.getTriggerFromByTagCreateFrom(m44385g()))));
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.editTagForNoteContext.getSelectTagIds());
        String str = (String) firstOrNull;
        if (str == null) {
            str = "";
        }
        mutableMapOf.put(OnyxStatisticConstant.KEY_TAG_ID, str);
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_TAG_ADD_MANAGE_DIALOG_DONE_VIEW, mutableMapOf);
    }

    /* renamed from: v */
    public final void m44396v(String eventId) {
        Map<String, ? extends Object> mapOf;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(OnyxStatisticConstant.INSTANCE.getTriggerFromByTagCreateFrom(m44385g()))));
        statisticsBundle.reportEvent(eventId, mapOf);
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: w */
    public final void m44397w(String title) {
        boolean contains;
        if (title.length() == 0) {
            m44399y(false);
            return;
        }
        NoteTagBeanList noteTagBeanList = this.matchList;
        ArrayList arrayList = new ArrayList();
        for (NoteTagBean noteTagBean : noteTagBeanList) {
            contains = StringsKt__StringsKt.contains((CharSequence) noteTagBean.getContent(), (CharSequence) title, true);
            if (contains) {
                arrayList.add(noteTagBean);
            }
        }
        m44390l().submitList(arrayList);
        m44399y(true);
    }

    /* renamed from: x */
    public final void m44398x(String tagId) {
        if (this.editTagForNoteContext.getSelectTagIds().contains(tagId)) {
            return;
        }
        this.editTagForNoteContext.getSelectTagIds().add(tagId);
    }

    /* renamed from: y */
    public final void m44399y(boolean isSearch) {
        Group groupList = m44388j().groupList;
        Intrinsics.checkNotNullExpressionValue(groupList, "groupList");
        groupList.setVisibility(isSearch ^ true ? 0 : 8);
        Group groupSearchList = m44388j().groupSearchList;
        Intrinsics.checkNotNullExpressionValue(groupSearchList, "groupSearchList");
        groupSearchList.setVisibility(isSearch ? 0 : 8);
    }

    /* renamed from: z */
    public final void m44400z() {
        Disposable subscribe = new LoadTagTreeAction().build().subscribe(new C11439a());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }
}
