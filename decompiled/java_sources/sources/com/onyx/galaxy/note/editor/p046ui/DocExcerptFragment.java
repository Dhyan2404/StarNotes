package com.onyx.galaxy.note.editor.p046ui;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.google.common.base.Strings;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.widgets.DynamicImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.ConfigurationChangedEvent;
import com.onyx.android.sdk.universal.common.events.EditDoneEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.excerpt.LoadQuoteNoteModeListAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptOrderedListAction;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.AllDataSelectedEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteExcerptByModelEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteExcerptResultEvent;
import com.onyx.android.sdk.universal.editor.events.note.EnterSelectionModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ExcerptInsertedEvent;
import com.onyx.android.sdk.universal.editor.events.note.GotoExcerptShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitSelectionModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectAllDataEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateExcerptResultEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver;
import com.onyx.galaxy.note.databinding.FragmentDocExcerptBinding;
import com.onyx.galaxy.note.databinding.LayoutDocSearchBinding;
import com.onyx.galaxy.note.editor.event.EditExcerptCommentArgs;
import com.onyx.galaxy.note.editor.event.EditExcerptCommentEvent;
import com.onyx.galaxy.note.editor.p046ui.DocExcerptFragment;
import com.onyx.galaxy.note.editor.p046ui.DocExcerptFragment$checkEmptyDataObserver$2;
import com.onyx.galaxy.note.editor.view.adapter.DocExcerptListAdapter;
import com.onyx.galaxy.note.editor.view.popup.DocExcerptActionPopup;
import com.onyx.galaxy.note.editor.viewmodel.DocExcerptViewModel;
import com.onyx.galaxy.note.utils.DocOutlineSearchUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000É\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f*\u0001b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bt\u0010uJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\u0016\u0010\u000f\u001a\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\rH\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0002H\u0002J\u001e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\b\u0010\u001e\u001a\u00020\u0004H\u0002J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH\u0002J\b\u0010\"\u001a\u00020\u0004H\u0002J\b\u0010#\u001a\u00020\u0004H\u0002J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u001fH\u0002J\b\u0010&\u001a\u00020\u0004H\u0002J\u0010\u0010(\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\u0010H\u0002J\u000e\u0010+\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)J\u000e\u0010-\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0002J\u0010\u0010/\u001a\u00020\u00042\b\u0010.\u001a\u0004\u0018\u00010\u001aJ\u0014\u00102\u001a\u00020\u00042\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u000400J$\u0010:\u001a\u0002092\u0006\u00104\u001a\u0002032\b\u00106\u001a\u0004\u0018\u0001052\b\u00108\u001a\u0004\u0018\u000107H\u0016J\u001a\u0010<\u001a\u00020\u00042\u0006\u0010;\u001a\u0002092\b\u00108\u001a\u0004\u0018\u000107H\u0016J\b\u0010=\u001a\u00020\u0004H\u0016J\b\u0010>\u001a\u00020\u0004H\u0016J\b\u0010?\u001a\u00020\u0004H\u0016J\u0010\u0010B\u001a\u00020\u00042\u0006\u0010A\u001a\u00020@H\u0016J\u0010\u0010E\u001a\u00020\u00042\u0006\u0010D\u001a\u00020CH\u0007J\u0010\u0010G\u001a\u00020\u00042\u0006\u0010D\u001a\u00020FH\u0007J\u0010\u0010I\u001a\u00020\u00042\u0006\u0010D\u001a\u00020HH\u0007J\u0010\u0010K\u001a\u00020\u00042\u0006\u0010D\u001a\u00020JH\u0007J\u0010\u0010M\u001a\u00020\u00042\u0006\u0010D\u001a\u00020LH\u0007J\u0010\u0010O\u001a\u00020\u00042\u0006\u0010D\u001a\u00020NH\u0007J\u0010\u0010Q\u001a\u00020\u00042\u0006\u0010D\u001a\u00020PH\u0007J\u0010\u0010S\u001a\u00020\u00042\u0006\u0010D\u001a\u00020RH\u0007J\u0010\u0010U\u001a\u00020\u00042\u0006\u0010D\u001a\u00020TH\u0007J\u0010\u0010W\u001a\u00020\u00042\u0006\u0010D\u001a\u00020VH\u0007R\u001b\u0010]\u001a\u00020X8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R\u0016\u0010a\u001a\u00020^8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b_\u0010`R\u001b\u0010f\u001a\u00020b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bc\u0010Z\u001a\u0004\bd\u0010eR\u001b\u0010k\u001a\u00020g8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bh\u0010Z\u001a\u0004\bi\u0010jR\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bl\u0010mR\u0016\u0010,\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0018\u0010.\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u001c\u00101\u001a\b\u0012\u0004\u0012\u00020\u0004008\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\br\u0010s¨\u0006v"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "F0", "", "B0", "z0", "fullscreen", "R0", "A0", "x0", "I0", "", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "list", "G0", "", "pos", "K0", "t0", "item", "Q0", "s0", "V0", "enable", "M0", "Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;", "args", FirebaseAnalytics.Param.ITEMS, "S0", "O0", "", "eventId", "N0", "T0", "P0", "data", "L0", "r0", "count", "U0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditBundle", "selectable", "setSelectable", "editExcerptCommentArgs", "setEditExcerptCommentArgs", "Lkotlin/Function0;", "closeOnSelect", "setCloseOnSelect", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroyView", "onResume", "onPause", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;", NotificationCompat.CATEGORY_EVENT, "onEnterSelectionModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;", "onQuitSelectionModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultEvent;", "onUpdateExcerptResultEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectAllDataEvent;", "onSelectAllDataEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ExcerptInsertedEvent;", "onExcerptInsertedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;", "onDeleteExcerptResultEvent", "Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentEvent;", "onEditExcerptCommentEvent", "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;", "onConfigurationChangedEvent", "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;", "onEditDoneEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", "onVirtualDocViewInfoEvent", "Lcom/onyx/galaxy/note/databinding/FragmentDocExcerptBinding;", "d1", "Lkotlin/Lazy;", "u0", "()Lcom/onyx/galaxy/note/databinding/FragmentDocExcerptBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;", "e1", "Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;", "adapter", "com/onyx/galaxy/note/editor/ui/DocExcerptFragment$checkEmptyDataObserver$2$1", "f1", "v0", "()Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$checkEmptyDataObserver$2$1;", "checkEmptyDataObserver", "Lcom/onyx/galaxy/note/editor/viewmodel/DocExcerptViewModel;", "g1", "w0", "()Lcom/onyx/galaxy/note/editor/viewmodel/DocExcerptViewModel;", "viewmodel", "h1", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "i1", Constants.HASIDCALL_INDEX_SIG, "j1", "Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;", "k1", "Lkotlin/jvm/functions/Function0;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocExcerptFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocExcerptFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocExcerptFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,492:1\n310#2:493\n326#2,4:494\n311#2:498\n310#2:499\n326#2,4:500\n311#2:504\n256#2,2:522\n256#2,2:524\n378#3,7:505\n1864#3,3:512\n350#3,7:515\n*S KotlinDebug\n*F\n+ 1 DocExcerptFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocExcerptFragment\n*L\n204#1:493\n204#1:494,4\n204#1:498\n208#1:499\n208#1:500,4\n208#1:504\n485#1:522,2\n486#1:524,2\n372#1:505,7\n377#1:512,3\n408#1:515,7\n*E\n"})
/* loaded from: classes9.dex */
public final class DocExcerptFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    public DocExcerptListAdapter adapter;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy checkEmptyDataObserver;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewmodel;

    /* renamed from: h1, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: i1, reason: from kotlin metadata */
    public boolean selectable;

    /* renamed from: j1, reason: from kotlin metadata */
    @Nullable
    public EditExcerptCommentArgs editExcerptCommentArgs;

    /* renamed from: k1, reason: from kotlin metadata */
    public Function0<Unit> closeOnSelect;

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12145a<T, R> implements Function {

        /* renamed from: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$a$a */
        /* loaded from: classes9.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ DocExcerptFragment f58997e;

            /* renamed from: f */
            public final /* synthetic */ ExcerptInfoBean f58998f;

            /* renamed from: g */
            public final /* synthetic */ LoadQuoteNoteModeListAction f58999g;

            public a(DocExcerptFragment docExcerptFragment, ExcerptInfoBean excerptInfoBean, LoadQuoteNoteModeListAction loadQuoteNoteModeListAction) {
                this.f58997e = docExcerptFragment;
                this.f58998f = excerptInfoBean;
                this.f58999g = loadQuoteNoteModeListAction;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DocExcerptListAdapter docExcerptListAdapter = this.f58997e.adapter;
                if (docExcerptListAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docExcerptListAdapter = null;
                }
                docExcerptListAdapter.setExcerptCollection(this.f58998f.getUniqueId(), this.f58999g.getExcerptCollectionList());
            }
        }

        /* renamed from: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$a$b */
        /* loaded from: classes9.dex */
        public static final class b<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ DocExcerptFragment f59000e;

            public b(DocExcerptFragment docExcerptFragment) {
                this.f59000e = docExcerptFragment;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DocExcerptListAdapter docExcerptListAdapter = this.f59000e.adapter;
                if (docExcerptListAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docExcerptListAdapter = null;
                }
                docExcerptListAdapter.setQuoteNote(it2);
            }
        }

        public C12145a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<SyncNoteModel>> apply(@NotNull ExcerptInfoBean excerpt) {
            Intrinsics.checkNotNullParameter(excerpt, "excerpt");
            EditorBundle editorBundle = DocExcerptFragment.this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            LoadQuoteNoteModeListAction loadQuoteNoteModeListAction = new LoadQuoteNoteModeListAction(editorBundle, excerpt.getUniqueId());
            return loadQuoteNoteModeListAction.build().doOnNext(new a(DocExcerptFragment.this, excerpt, loadQuoteNoteModeListAction)).doOnNext(new b(DocExcerptFragment.this));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12146b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f59001a;

        public C12146b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f59001a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final kotlin.Function<?> getFunctionDelegate() {
            return this.f59001a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f59001a.invoke(obj);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$c */
    /* loaded from: classes9.dex */
    public static final class C12147c<T> implements Consumer {
        public C12147c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveExcerptOrderedListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocExcerptListAdapter docExcerptListAdapter = DocExcerptFragment.this.adapter;
            if (docExcerptListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docExcerptListAdapter = null;
            }
            docExcerptListAdapter.resetItemsState();
        }
    }

    public DocExcerptFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentDocExcerptBinding>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentDocExcerptBinding invoke() {
                FragmentDocExcerptBinding inflate = FragmentDocExcerptBinding.inflate(LayoutInflater.from(DocExcerptFragment.this.getContext()));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<DocExcerptFragment$checkEmptyDataObserver$2.C121481>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$checkEmptyDataObserver$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.editor.ui.DocExcerptFragment$checkEmptyDataObserver$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C121481 invoke() {
                final DocExcerptFragment docExcerptFragment = DocExcerptFragment.this;
                return new AdapterDataModifiedObserver() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$checkEmptyDataObserver$2.1
                    @Override // com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver
                    public void onDataChanged() {
                        DocExcerptFragment.this.m46541r0();
                    }
                };
            }
        });
        this.checkEmptyDataObserver = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<DocExcerptViewModel>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$viewmodel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DocExcerptViewModel invoke() {
                return (DocExcerptViewModel) new ViewModelProvider(DocExcerptFragment.this).get(DocExcerptViewModel.class);
            }
        });
        this.viewmodel = lazy3;
    }

    /* renamed from: C0 */
    public static final void m46512C0(DocExcerptFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46543t0();
    }

    /* renamed from: D0 */
    public static final void m46513D0(DocExcerptFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46542s0();
    }

    /* renamed from: E0 */
    public static final void m46514E0(DocExcerptFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m46529K0(i);
    }

    /* renamed from: H0 */
    public static final void m46515H0(DocExcerptFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DocExcerptListAdapter docExcerptListAdapter = this$0.adapter;
        if (docExcerptListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        }
        docExcerptListAdapter.notifyDataSetChanged();
    }

    /* renamed from: J0 */
    public static final void m46516J0(DocExcerptFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DocExcerptListAdapter docExcerptListAdapter = this$0.adapter;
        if (docExcerptListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        }
        docExcerptListAdapter.requireRecyclerViewSafety(new DocExcerptFragment$onExcerptInsertedEvent$2$1(i));
    }

    /* renamed from: y0 */
    public static final void m46523y0(final DocExcerptFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.requireActivitySafety$default(this$0, null, new Function1<Activity, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$initData$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Activity activity) {
                invoke2(activity);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Activity it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DocExcerptFragment.this.m46528I0();
            }
        }, 1, null);
    }

    /* renamed from: A0 */
    public final void m46524A0() {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46544u0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        DocOutlineSearchUtils.initLayout$default(docOutlineSearchUtils, layoutSearch, this.selectable, false, new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$initInputLayout$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DocExcerptFragment.this.m46530L0(it2);
            }
        }, 2, null);
    }

    /* renamed from: B0 */
    public final void m46525B0() {
        DocExcerptListAdapter docExcerptListAdapter;
        final EditorBundle editorBundle = this.editorBundle;
        DocExcerptListAdapter docExcerptListAdapter2 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        final boolean z = this.selectable;
        this.adapter = new DocExcerptListAdapter(editorBundle, z) { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$initView$1
            @Override // com.onyx.galaxy.note.editor.view.adapter.DocExcerptListAdapter
            public void onItemMoved(int fromPos, int toPos) {
                super.onItemMoved(fromPos, toPos);
                DocExcerptListAdapter docExcerptListAdapter3 = DocExcerptFragment.this.adapter;
                DocExcerptListAdapter docExcerptListAdapter4 = null;
                if (docExcerptListAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docExcerptListAdapter3 = null;
                }
                docExcerptListAdapter3.getItems().get(fromPos).resetOrderIndex();
                DocExcerptListAdapter docExcerptListAdapter5 = DocExcerptFragment.this.adapter;
                if (docExcerptListAdapter5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docExcerptListAdapter4 = docExcerptListAdapter5;
                }
                docExcerptListAdapter4.getItems().get(toPos).resetOrderIndex();
                DocExcerptFragment.this.m46534P0();
            }
        };
        m46544u0().edit.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.b7f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocExcerptFragment.m46512C0(DocExcerptFragment.this, view);
            }
        });
        m46544u0().delete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.c7f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocExcerptFragment.m46513D0(DocExcerptFragment.this, view);
            }
        });
        DocExcerptListAdapter docExcerptListAdapter3 = this.adapter;
        if (docExcerptListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter3 = null;
        }
        docExcerptListAdapter3.setShowQuoteCount(this.selectable);
        DocExcerptListAdapter docExcerptListAdapter4 = this.adapter;
        if (docExcerptListAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        } else {
            docExcerptListAdapter = docExcerptListAdapter4;
        }
        ItemClickUtilsKt.setOnDebouncedItemClick$default(docExcerptListAdapter, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.d7f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DocExcerptFragment.m46514E0(DocExcerptFragment.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        AutoFitRecycleView autoFitRecycleView = m46544u0().recyclerViewContainer.getAutoFitRecycleView();
        DocExcerptListAdapter docExcerptListAdapter5 = this.adapter;
        if (docExcerptListAdapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docExcerptListAdapter2 = docExcerptListAdapter5;
        }
        autoFitRecycleView.setAdapter(docExcerptListAdapter2);
        ViewKt.setClearEditFocusTouchListener(m46544u0().recyclerViewContainer.getAutoFitRecycleView(), new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$initView$5
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                DocExcerptListAdapter docExcerptListAdapter6 = DocExcerptFragment.this.adapter;
                if (docExcerptListAdapter6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docExcerptListAdapter6 = null;
                }
                docExcerptListAdapter6.quitEditAndSave();
            }
        });
        m46536R0(this.selectable);
        m46548z0();
        m46524A0();
    }

    /* renamed from: F0 */
    public final boolean m46526F0() {
        return (this.editorBundle == null || this.closeOnSelect == null) ? false : true;
    }

    /* renamed from: G0 */
    public final void m46527G0(List<ExcerptInfoBean> list) {
        Observable.fromIterable(list).flatMap(new C12145a()).takeLast(1).doFinally(new Action() { // from class: com.sunia.HTREnginev2.a7f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocExcerptFragment.m46515H0(DocExcerptFragment.this);
            }
        }).subscribe();
    }

    /* renamed from: I0 */
    public final void m46528I0() {
        m46546w0().getExcerptData().observe(getViewLifecycleOwner(), new C12146b(new Function1<List<? extends ExcerptInfoBean>, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$observeExcerptData$1

            /* renamed from: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$observeExcerptData$1$a */
            /* loaded from: classes9.dex */
            public static final class C12149a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ DocExcerptFragment f59005e;

                public C12149a(DocExcerptFragment docExcerptFragment) {
                    this.f59005e = docExcerptFragment;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull List<ExcerptInfoBean> it2) {
                    EditExcerptCommentArgs editExcerptCommentArgs;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    editExcerptCommentArgs = this.f59005e.editExcerptCommentArgs;
                    if (editExcerptCommentArgs != null) {
                        DocExcerptFragment docExcerptFragment = this.f59005e;
                        DocExcerptListAdapter docExcerptListAdapter = docExcerptFragment.adapter;
                        if (docExcerptListAdapter == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            docExcerptListAdapter = null;
                        }
                        docExcerptFragment.m46537S0(editExcerptCommentArgs, docExcerptListAdapter.getItems());
                    }
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$observeExcerptData$1$b */
            /* loaded from: classes9.dex */
            public static final class C12150b<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ DocExcerptFragment f59006e;

                public C12150b(DocExcerptFragment docExcerptFragment) {
                    this.f59006e = docExcerptFragment;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull List<ExcerptInfoBean> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f59006e.m46527G0(it2);
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends ExcerptInfoBean> list) {
                invoke2((List<ExcerptInfoBean>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<ExcerptInfoBean> list) {
                DocExcerptViewModel m46546w0;
                DocExcerptListAdapter docExcerptListAdapter = DocExcerptFragment.this.adapter;
                DocExcerptListAdapter docExcerptListAdapter2 = null;
                if (docExcerptListAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docExcerptListAdapter = null;
                }
                m46546w0 = DocExcerptFragment.this.m46546w0();
                docExcerptListAdapter.setKeyword(m46546w0.m72422getSearchKey());
                DocExcerptListAdapter docExcerptListAdapter3 = DocExcerptFragment.this.adapter;
                if (docExcerptListAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docExcerptListAdapter2 = docExcerptListAdapter3;
                }
                Intrinsics.checkNotNull(list);
                BaseQuickAdapterKt.createSubmitListObservable(docExcerptListAdapter2, list).doOnNext(new C12149a(DocExcerptFragment.this)).doOnNext(new C12150b(DocExcerptFragment.this)).subscribe();
            }
        }));
        m46546w0().getMatchingData().observe(getViewLifecycleOwner(), new C12146b(new DocExcerptFragment$observeExcerptData$2(this)));
    }

    /* renamed from: K0 */
    public final void m46529K0(int pos) {
        DocExcerptListAdapter docExcerptListAdapter = this.adapter;
        Function0<Unit> function0 = null;
        DocExcerptListAdapter docExcerptListAdapter2 = null;
        if (docExcerptListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        }
        docExcerptListAdapter.selectIndex(pos);
        DocExcerptListAdapter docExcerptListAdapter3 = this.adapter;
        if (docExcerptListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter3 = null;
        }
        ExcerptInfoBean item = docExcerptListAdapter3.getItem(pos);
        if (item == null) {
            return;
        }
        DocExcerptListAdapter docExcerptListAdapter4 = this.adapter;
        if (docExcerptListAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter4 = null;
        }
        if (!docExcerptListAdapter4.getSelectionMode()) {
            EditorBundle editorBundle = this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.postEvent(editorBundle, new GotoExcerptShapeEvent(item));
            if (this.selectable) {
                Function0<Unit> function02 = this.closeOnSelect;
                if (function02 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("closeOnSelect");
                } else {
                    function0 = function02;
                }
                function0.invoke();
                return;
            }
            return;
        }
        DocExcerptListAdapter docExcerptListAdapter5 = this.adapter;
        if (docExcerptListAdapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter5 = null;
        }
        docExcerptListAdapter5.toggleSelectItem(item);
        m46540V0();
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle2 = null;
        }
        DocExcerptListAdapter docExcerptListAdapter6 = this.adapter;
        if (docExcerptListAdapter6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docExcerptListAdapter2 = docExcerptListAdapter6;
        }
        EditorBundleKt.postEvent(editorBundle2, new AllDataSelectedEvent(docExcerptListAdapter2.isAllItemSelected()));
    }

    /* renamed from: L0 */
    public final void m46530L0(String data) {
        CharSequence trim;
        m46544u0().layoutSearch.searchResult.setText("");
        trim = StringsKt__StringsKt.trim((CharSequence) data);
        String nullToEmpty = Strings.nullToEmpty(trim.toString());
        DocExcerptViewModel m46546w0 = m46546w0();
        Intrinsics.checkNotNull(nullToEmpty);
        m46546w0.onSearch(nullToEmpty);
        DocExcerptListAdapter docExcerptListAdapter = this.adapter;
        if (docExcerptListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        }
        docExcerptListAdapter.setKeyword(nullToEmpty);
    }

    /* renamed from: M0 */
    public final void m46531M0(boolean enable) {
        if (isResumed()) {
            DocExcerptListAdapter docExcerptListAdapter = null;
            if (enable) {
                DocExcerptListAdapter docExcerptListAdapter2 = this.adapter;
                if (docExcerptListAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docExcerptListAdapter = docExcerptListAdapter2;
                }
                docExcerptListAdapter.enterSelectionMode();
            } else {
                DocExcerptListAdapter docExcerptListAdapter3 = this.adapter;
                if (docExcerptListAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docExcerptListAdapter = docExcerptListAdapter3;
                }
                docExcerptListAdapter.quitSelectionMode();
            }
            ViewKt.setViewVisibleOrGone(m46544u0().selectionActionLayout, enable);
            m46540V0();
        }
    }

    /* renamed from: N0 */
    public final void m46532N0(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: O0 */
    public final void m46533O0() {
        m46532N0(this.selectable ? OnyxStatisticConstant.ID_VIEW_EXCERPT_FULL : OnyxStatisticConstant.ID_VIEW_EXCERPT);
    }

    /* renamed from: P0 */
    public final void m46534P0() {
        DocExcerptListAdapter docExcerptListAdapter = this.adapter;
        if (docExcerptListAdapter != null) {
            DocExcerptListAdapter docExcerptListAdapter2 = null;
            if (docExcerptListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docExcerptListAdapter = null;
            }
            if (docExcerptListAdapter.getItemsDirty()) {
                EditorBundle editorBundle = this.editorBundle;
                if (editorBundle == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle = null;
                }
                DocExcerptListAdapter docExcerptListAdapter3 = this.adapter;
                if (docExcerptListAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docExcerptListAdapter2 = docExcerptListAdapter3;
                }
                Observable<SaveExcerptOrderedListAction> doOnNext = new SaveExcerptOrderedListAction(editorBundle, docExcerptListAdapter2.getItems()).build().doOnNext(new C12147c());
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
            }
        }
    }

    /* renamed from: Q0 */
    public final void m46535Q0(ExcerptInfoBean item) {
        EditorBundle editorBundle = this.editorBundle;
        DocExcerptListAdapter docExcerptListAdapter = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, new QuitSelectionModeEvent());
        DocExcerptListAdapter docExcerptListAdapter2 = this.adapter;
        if (docExcerptListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter2 = null;
        }
        DocExcerptListAdapter docExcerptListAdapter3 = this.adapter;
        if (docExcerptListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docExcerptListAdapter = docExcerptListAdapter3;
        }
        docExcerptListAdapter2.enterEditMode(docExcerptListAdapter.itemIndexOfFirst(item));
    }

    /* renamed from: R0 */
    public final void m46536R0(boolean fullscreen) {
        m46544u0().recyclerViewContainer.getAutoFitRecycleView().setDisplayType(fullscreen ? NoteDisplayType.DISPLAY_GRID : NoteDisplayType.DISPLAY_LIST);
        ViewGroup.LayoutParams layoutParams = m46544u0().recyclerViewContainer.getAutoFitRecycleView().getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = fullscreen ? ResManager.INSTANCE.getDimens(C7384R.dimen.dp_12) : 0;
    }

    /* renamed from: S0 */
    public final void m46537S0(EditExcerptCommentArgs args, List<ExcerptInfoBean> items) {
        Iterator<ExcerptInfoBean> it2 = items.iterator();
        final int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(it2.next().getUniqueId(), args.getHitTestShape().getShapeUniqueId())) {
                break;
            } else {
                i++;
            }
        }
        ViewKt.postSelf(m46544u0().recyclerViewContainer.getAutoFitRecycleView(), new Function1<AutoFitRecycleView, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$updateEditCommentItem$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AutoFitRecycleView autoFitRecycleView) {
                invoke2(autoFitRecycleView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull AutoFitRecycleView it3) {
                FragmentDocExcerptBinding m46544u0;
                FragmentDocExcerptBinding m46544u02;
                Intrinsics.checkNotNullParameter(it3, "it");
                m46544u0 = DocExcerptFragment.this.m46544u0();
                RecyclerView.LayoutManager layoutManager = m46544u0.recyclerViewContainer.getAutoFitRecycleView().getLayoutManager();
                if (layoutManager != null) {
                    layoutManager.scrollToPosition(i);
                }
                m46544u02 = DocExcerptFragment.this.m46544u0();
                AutoFitRecycleView autoFitRecycleView = m46544u02.recyclerViewContainer.getAutoFitRecycleView();
                long j = ResManager.INSTANCE.getLong(C10651R.integer.doc_excerpt_open_comment_delay_time);
                final DocExcerptFragment docExcerptFragment = DocExcerptFragment.this;
                final int i2 = i;
                androidx.core.view.ViewKt.postOnAnimationDelayed(autoFitRecycleView, j, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$updateEditCommentItem$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        DocExcerptListAdapter docExcerptListAdapter = DocExcerptFragment.this.adapter;
                        if (docExcerptListAdapter == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            docExcerptListAdapter = null;
                        }
                        ExcerptInfoBean item = docExcerptListAdapter.getItem(i2);
                        if (item != null) {
                            DocExcerptFragment.this.m46535Q0(item);
                        }
                    }
                });
            }
        });
        this.editExcerptCommentArgs = null;
    }

    /* renamed from: T0 */
    public final void m46538T0() {
        ViewKt.postSelfDelayed(m46544u0().recyclerViewContainer.getAutoFitRecycleView(), new Function1<AutoFitRecycleView, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$updateListAreaRect$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AutoFitRecycleView autoFitRecycleView) {
                invoke2(autoFitRecycleView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull AutoFitRecycleView it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DocExcerptListAdapter docExcerptListAdapter = DocExcerptFragment.this.adapter;
                if (docExcerptListAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docExcerptListAdapter = null;
                }
                docExcerptListAdapter.setListAreaRect(ViewKt.windowVisibleRect(it2));
            }
        }, 600L);
    }

    /* renamed from: U0 */
    public final void m46539U0(int count) {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        TintTextView searchResult = m46544u0().layoutSearch.searchResult;
        Intrinsics.checkNotNullExpressionValue(searchResult, "searchResult");
        docOutlineSearchUtils.setSearchMatchingData(searchResult, count, m46546w0().isSearchMode());
    }

    /* renamed from: V0 */
    public final void m46540V0() {
        DocExcerptListAdapter docExcerptListAdapter = this.adapter;
        if (docExcerptListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        }
        int size = CollectionKt.getSize(docExcerptListAdapter.getSelectedItems());
        m46544u0().delete.setEnabled(size > 0);
        m46544u0().edit.setEnabled(size == 1);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        m46538T0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onConfigurationChangedEvent(@NotNull ConfigurationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46536R0(this.selectable);
        ViewKt.postSelf(m46544u0().recyclerViewContainer.getAutoFitRecycleView(), new Function1<AutoFitRecycleView, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$onConfigurationChangedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AutoFitRecycleView autoFitRecycleView) {
                invoke2(autoFitRecycleView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull AutoFitRecycleView it2) {
                FragmentDocExcerptBinding m46544u0;
                Intrinsics.checkNotNullParameter(it2, "it");
                m46544u0 = DocExcerptFragment.this.m46544u0();
                AutoFitRecycleView autoFitRecycleView = m46544u0.recyclerViewContainer.getAutoFitRecycleView();
                DocExcerptListAdapter docExcerptListAdapter = DocExcerptFragment.this.adapter;
                if (docExcerptListAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docExcerptListAdapter = null;
                }
                autoFitRecycleView.setAdapter(docExcerptListAdapter);
            }
        });
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m46544u0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteExcerptResultEvent(@NotNull DeleteExcerptResultEvent event) {
        final String uniqueId;
        Intrinsics.checkNotNullParameter(event, "event");
        ExcerptInfoBean excerptInfoBean = event.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String().getExcerptInfoBean();
        if (excerptInfoBean == null || (uniqueId = excerptInfoBean.getUniqueId()) == null) {
            return;
        }
        DocExcerptListAdapter docExcerptListAdapter = this.adapter;
        if (docExcerptListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        }
        BaseQuickAdapterKt.removeIf(docExcerptListAdapter, new Function1<ExcerptInfoBean, Boolean>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$onDeleteExcerptResultEvent$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ExcerptInfoBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getUniqueId(), uniqueId));
            }
        });
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EditorBundle editorBundle = this.editorBundle;
        DocExcerptListAdapter docExcerptListAdapter = null;
        if (editorBundle != null) {
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.unregister(editorBundle, this);
        }
        DocExcerptListAdapter docExcerptListAdapter2 = this.adapter;
        if (docExcerptListAdapter2 != null) {
            if (docExcerptListAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                docExcerptListAdapter = docExcerptListAdapter2;
            }
            docExcerptListAdapter.unregisterAdapterDataObserver(m46545v0());
        }
        GlobalBundle.INSTANCE.unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditDoneEvent(@NotNull EditDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        DocExcerptListAdapter docExcerptListAdapter = this.adapter;
        if (docExcerptListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        }
        docExcerptListAdapter.commitTitleEdit();
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46544u0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.clearInputFocus(layoutSearch);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditExcerptCommentEvent(@NotNull EditExcerptCommentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isVisible() && isResumed()) {
            DocExcerptListAdapter docExcerptListAdapter = this.adapter;
            DocExcerptListAdapter docExcerptListAdapter2 = null;
            if (docExcerptListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docExcerptListAdapter = null;
            }
            if (!docExcerptListAdapter.getItems().isEmpty()) {
                EditExcerptCommentArgs args = event.getArgs();
                DocExcerptListAdapter docExcerptListAdapter3 = this.adapter;
                if (docExcerptListAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docExcerptListAdapter2 = docExcerptListAdapter3;
                }
                m46537S0(args, docExcerptListAdapter2.getItems());
                return;
            }
        }
        this.editExcerptCommentArgs = event.getArgs();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnterSelectionModeEvent(@NotNull EnterSelectionModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46531M0(true);
        m46532N0(OnyxStatisticConstant.ID_CLICK_EXCERPT_SELECT_FULL);
        m46532N0(OnyxStatisticConstant.ID_VIEW_EXCERPT_BATCH_FULL);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onExcerptInsertedEvent(@NotNull ExcerptInsertedEvent event) {
        List mutableList;
        final int size;
        int i;
        Intrinsics.checkNotNullParameter(event, "event");
        DocExcerptListAdapter docExcerptListAdapter = this.adapter;
        DocExcerptListAdapter docExcerptListAdapter2 = null;
        if (docExcerptListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) docExcerptListAdapter.getItems());
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        int i2 = 0;
        if (EditorBundleKt.getUiFeature(editorBundle).supportMultiPage()) {
            ListIterator listIterator = mutableList.listIterator(mutableList.size());
            while (true) {
                if (listIterator.hasPrevious()) {
                    if (((ExcerptInfoBean) listIterator.previous()).getPageIndex() <= event.getExcerptInfoBean().getPageIndex()) {
                        i = listIterator.nextIndex();
                        break;
                    }
                } else {
                    i = -1;
                    break;
                }
            }
            size = i + 1;
        } else {
            size = mutableList.size();
        }
        CollectionKt.safeAdd(mutableList, size, event.getExcerptInfoBean());
        for (Object obj : mutableList) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ExcerptInfoBean excerptInfoBean = (ExcerptInfoBean) obj;
            if (size < i2) {
                excerptInfoBean.resetOrderIndex();
            }
            i2 = i3;
        }
        DocExcerptListAdapter docExcerptListAdapter3 = this.adapter;
        if (docExcerptListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter3 = null;
        }
        docExcerptListAdapter3.submitList(mutableList, new Runnable() { // from class: com.sunia.HTREnginev2.y6f
            @Override // java.lang.Runnable
            public final void run() {
                DocExcerptFragment.m46516J0(DocExcerptFragment.this, size);
            }
        });
        DocExcerptListAdapter docExcerptListAdapter4 = this.adapter;
        if (docExcerptListAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docExcerptListAdapter2 = docExcerptListAdapter4;
        }
        docExcerptListAdapter2.makeItemsDirty();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        m46534P0();
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46544u0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.clearInput(layoutSearch);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitSelectionModeEvent(@NotNull QuitSelectionModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46531M0(false);
        m46532N0(OnyxStatisticConstant.ID_VIEW_EXCERPT_BATCH_COMPLETE_FULL);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (m46526F0()) {
            m46546w0().loadExcerptData();
            m46538T0();
            m46533O0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectAllDataEvent(@NotNull SelectAllDataEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isResumed()) {
            DocExcerptListAdapter docExcerptListAdapter = this.adapter;
            if (docExcerptListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docExcerptListAdapter = null;
            }
            docExcerptListAdapter.selectAll(event.getSelect());
            m46540V0();
            m46532N0(OnyxStatisticConstant.ID_VIEW_EXCERPT_BATCH_ALLSELECT_FULL);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateExcerptResultEvent(@NotNull UpdateExcerptResultEvent event) {
        ExcerptInfoBean excerptInfoBean;
        Intrinsics.checkNotNullParameter(event, "event");
        if (!isVisible() || (excerptInfoBean = ShapePersistOptionsKt.getExcerptInfoBean(event.getArgs().getShape())) == null) {
            return;
        }
        DocExcerptListAdapter docExcerptListAdapter = this.adapter;
        if (docExcerptListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        }
        docExcerptListAdapter.updateExcerpt(excerptInfoBean);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (m46526F0()) {
            m46525B0();
            m46547x0();
            EditorBundle editorBundle = this.editorBundle;
            DocExcerptListAdapter docExcerptListAdapter = null;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.register(editorBundle, this);
            DocExcerptListAdapter docExcerptListAdapter2 = this.adapter;
            if (docExcerptListAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                docExcerptListAdapter = docExcerptListAdapter2;
            }
            docExcerptListAdapter.registerAdapterDataObserver(m46545v0());
        }
        GlobalBundle.INSTANCE.register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.isScrolling()) {
            return;
        }
        int lastPageCount = m46546w0().getLastPageCount();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        if (lastPageCount != EditorBundleKt.pageCount(editorBundle)) {
            m46546w0().loadExcerptData();
        }
    }

    /* renamed from: r0 */
    public final void m46541r0() {
        DocExcerptListAdapter docExcerptListAdapter = this.adapter;
        if (docExcerptListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        }
        boolean isEmpty = docExcerptListAdapter.getItems().isEmpty();
        CommonEmptyView emptyView = m46544u0().emptyView;
        Intrinsics.checkNotNullExpressionValue(emptyView, "emptyView");
        emptyView.setVisibility(isEmpty && !m46546w0().isSearchMode() ? 0 : 8);
        CommonEmptyView searchEmptyView = m46544u0().searchEmptyView;
        Intrinsics.checkNotNullExpressionValue(searchEmptyView, "searchEmptyView");
        searchEmptyView.setVisibility(isEmpty && m46546w0().isSearchMode() ? 0 : 8);
    }

    /* renamed from: s0 */
    public final void m46542s0() {
        DocExcerptListAdapter docExcerptListAdapter = this.adapter;
        if (docExcerptListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        }
        final List<ExcerptInfoBean> selectedItems = docExcerptListAdapter.getSelectedItems();
        if (CollectionKt.isNullOrEmpty(selectedItems)) {
            return;
        }
        DocExcerptActionPopup.Companion companion = DocExcerptActionPopup.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        companion.delete(requireContext, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$delete$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                EditorBundle editorBundle = DocExcerptFragment.this.editorBundle;
                DocExcerptListAdapter docExcerptListAdapter2 = null;
                if (editorBundle == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle = null;
                }
                EditorBundleKt.postEvent(editorBundle, new DeleteExcerptByModelEvent(selectedItems));
                DocExcerptListAdapter docExcerptListAdapter3 = DocExcerptFragment.this.adapter;
                if (docExcerptListAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docExcerptListAdapter3 = null;
                }
                docExcerptListAdapter3.remove((List) selectedItems);
                DocExcerptListAdapter docExcerptListAdapter4 = DocExcerptFragment.this.adapter;
                if (docExcerptListAdapter4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docExcerptListAdapter2 = docExcerptListAdapter4;
                }
                docExcerptListAdapter2.getSelectedItems().clear();
                DocExcerptFragment.this.m46540V0();
                DocExcerptFragment.this.m46532N0(OnyxStatisticConstant.ID_CLICK_EXCERPT_DELETE_CONFIRM_BATCH_FULL);
            }
        }, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocExcerptFragment$delete$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                DocExcerptFragment.this.m46532N0(OnyxStatisticConstant.ID_CLICK_EXCERPT_DELETE_CANCEL_BATCH_FULL);
            }
        });
        m46532N0(OnyxStatisticConstant.ID_CLICK_EXCERPT_DELETE_BATCH_FULL);
        m46532N0(OnyxStatisticConstant.ID_VIEW_EXCERPT_DELETE_BATCH_FULL);
    }

    public final void setCloseOnSelect(@NotNull Function0<Unit> closeOnSelect) {
        Intrinsics.checkNotNullParameter(closeOnSelect, "closeOnSelect");
        this.closeOnSelect = closeOnSelect;
    }

    public final void setEditBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setEditExcerptCommentArgs(@Nullable EditExcerptCommentArgs editExcerptCommentArgs) {
        this.editExcerptCommentArgs = editExcerptCommentArgs;
    }

    public final void setSelectable(boolean selectable) {
        this.selectable = selectable;
    }

    /* renamed from: t0 */
    public final void m46543t0() {
        Object firstOrNull;
        DocExcerptListAdapter docExcerptListAdapter = this.adapter;
        if (docExcerptListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docExcerptListAdapter = null;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) docExcerptListAdapter.getSelectedItems());
        ExcerptInfoBean excerptInfoBean = (ExcerptInfoBean) firstOrNull;
        if (excerptInfoBean == null) {
            return;
        }
        m46535Q0(excerptInfoBean);
        m46532N0(OnyxStatisticConstant.ID_CLICK_EXCERPT_EDIT_BATCH_FULL);
    }

    /* renamed from: u0 */
    public final FragmentDocExcerptBinding m46544u0() {
        return (FragmentDocExcerptBinding) this.binding.getValue();
    }

    /* renamed from: v0 */
    public final DocExcerptFragment$checkEmptyDataObserver$2.C121481 m46545v0() {
        return (DocExcerptFragment$checkEmptyDataObserver$2.C121481) this.checkEmptyDataObserver.getValue();
    }

    /* renamed from: w0 */
    public final DocExcerptViewModel m46546w0() {
        return (DocExcerptViewModel) this.viewmodel.getValue();
    }

    /* renamed from: x0 */
    public final void m46547x0() {
        DocExcerptViewModel m46546w0 = m46546w0();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        m46546w0.setEditorBundle(editorBundle);
        m46544u0().getRoot().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.z6f
            @Override // java.lang.Runnable
            public final void run() {
                DocExcerptFragment.m46523y0(DocExcerptFragment.this);
            }
        }, 500L);
    }

    /* renamed from: z0 */
    public final void m46548z0() {
        List<Integer> listOf;
        List<String> listOf2;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(C10651R.drawable.icon_note_empty_view_excerpt_sub_title));
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C10651R.string.note_empty_view_excerpt_sub_title_prefix);
        Intrinsics.checkNotNull(string);
        String string2 = resManager.getString(C10651R.string.note_empty_view_excerpt_sub_title_suffix);
        Intrinsics.checkNotNull(string2);
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{string, string2});
        if (!this.selectable) {
            DynamicImageView imageView = m46544u0().emptyView.getImageView();
            Intrinsics.checkNotNullExpressionValue(imageView, "<get-imageView>(...)");
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams.width = resManager.getDimens(C7384R.dimen.dp_148);
            layoutParams.height = resManager.getDimens(C7384R.dimen.dp_148);
            imageView.setLayoutParams(layoutParams);
            DynamicImageView imageView2 = m46544u0().searchEmptyView.getImageView();
            Intrinsics.checkNotNullExpressionValue(imageView2, "<get-imageView>(...)");
            ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams2.width = resManager.getDimens(C7384R.dimen.dp_148);
            layoutParams2.height = resManager.getDimens(C7384R.dimen.dp_148);
            imageView2.setLayoutParams(layoutParams2);
        }
        m46544u0().emptyView.updateSubDrawableTitle(listOf2, listOf);
    }
}
