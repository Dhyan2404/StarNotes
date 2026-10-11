package com.onyx.galaxy.note.editor.p046ui;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.google.common.base.Strings;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.theme.widgets.DynamicImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.ConfigurationChangedEvent;
import com.onyx.android.sdk.universal.common.events.EditDoneEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.page.LoadVirtualPageModelListAction;
import com.onyx.android.sdk.universal.editor.events.app.DeleteBookmarkEvent;
import com.onyx.android.sdk.universal.editor.events.app.GotoPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.AllDataSelectedEvent;
import com.onyx.android.sdk.universal.editor.events.note.EnterSelectionModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitSelectionModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectAllDataEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver;
import com.onyx.galaxy.note.databinding.FragmentDocBookmarkBinding;
import com.onyx.galaxy.note.databinding.LayoutDocSearchBinding;
import com.onyx.galaxy.note.editor.p046ui.DocBookmarkFragment;
import com.onyx.galaxy.note.editor.p046ui.DocBookmarkFragment$checkEmptyDataObserver$2;
import com.onyx.galaxy.note.editor.view.adapter.DocBookmarkListAdapter;
import com.onyx.galaxy.note.editor.view.popup.DocBookmarkActionPopup;
import com.onyx.galaxy.note.editor.viewmodel.DocBookmarkViewModel;
import com.onyx.galaxy.note.utils.DocOutlineSearchUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
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

@Metadata(m61527d1 = {"\u0000\u0095\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r*\u0001I\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bY\u0010ZJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\nH\u0002J\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dJ\u000e\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0002J\u0014\u0010$\u001a\u00020\u00042\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00040\"J$\u0010,\u001a\u00020+2\u0006\u0010&\u001a\u00020%2\b\u0010(\u001a\u0004\u0018\u00010'2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016J\u001a\u0010.\u001a\u00020\u00042\u0006\u0010-\u001a\u00020+2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016J\b\u0010/\u001a\u00020\u0004H\u0016J\b\u00100\u001a\u00020\u0004H\u0016J\b\u00101\u001a\u00020\u0004H\u0016J\u0010\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u000202H\u0007J\u0010\u00106\u001a\u00020\u00042\u0006\u00103\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00042\u0006\u00103\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u00042\u0006\u00103\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00042\u0006\u00103\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00042\u0006\u00103\u001a\u00020=H\u0007R\u001b\u0010D\u001a\u00020?8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010CR\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bF\u0010GR\u001b\u0010M\u001a\u00020I8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010A\u001a\u0004\bK\u0010LR\u001b\u0010R\u001a\u00020N8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bO\u0010A\u001a\u0004\bP\u0010QR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010 \u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00040\"8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bW\u0010X¨\u0006["}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "B0", "", "x0", "w0", "v0", "C0", "I0", "", "pos", "D0", "r0", "q0", "p0", "L0", "enable", "F0", "H0", "", "eventId", "G0", "J0", "data", "E0", "o0", "count", "K0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditBundle", "fullscreen", "setFullScreen", "Lkotlin/Function0;", "closeOnSelect", "setCloseOnSelect", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroyView", "onResume", "onPause", "Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;", NotificationCompat.CATEGORY_EVENT, "onEnterSelectionModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;", "onQuitSelectionModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectAllDataEvent;", "onSelectAllDataEvent", "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;", "onEditDoneEvent", "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;", "onConfigurationChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", "onVirtualDocViewInfoEvent", "Lcom/onyx/galaxy/note/databinding/FragmentDocBookmarkBinding;", "d1", "Lkotlin/Lazy;", "s0", "()Lcom/onyx/galaxy/note/databinding/FragmentDocBookmarkBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;", "e1", "Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;", "adapter", "com/onyx/galaxy/note/editor/ui/DocBookmarkFragment$checkEmptyDataObserver$2$1", "f1", "t0", "()Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$checkEmptyDataObserver$2$1;", "checkEmptyDataObserver", "Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;", "g1", "u0", "()Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;", "viewmodel", "h1", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "i1", Constants.HASIDCALL_INDEX_SIG, "j1", "Lkotlin/jvm/functions/Function0;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocBookmarkFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocBookmarkFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocBookmarkFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,344:1\n310#2:345\n326#2,4:346\n311#2:350\n310#2:351\n326#2,4:352\n311#2:356\n256#2,2:364\n256#2,2:366\n350#3,7:357\n*S KotlinDebug\n*F\n+ 1 DocBookmarkFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocBookmarkFragment\n*L\n157#1:345\n157#1:346,4\n157#1:350\n161#1:351\n161#1:352,4\n161#1:356\n337#1:364,2\n338#1:366,2\n195#1:357,7\n*E\n"})
/* loaded from: classes9.dex */
public final class DocBookmarkFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    public DocBookmarkListAdapter adapter;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy checkEmptyDataObserver;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewmodel;

    /* renamed from: h1, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: i1, reason: from kotlin metadata */
    public boolean fullscreen;

    /* renamed from: j1, reason: from kotlin metadata */
    public Function0<Unit> closeOnSelect;

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocBookmarkFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12142a<T> implements Consumer {
        public C12142a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<VirtualPageModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocBookmarkListAdapter docBookmarkListAdapter = DocBookmarkFragment.this.adapter;
            if (docBookmarkListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docBookmarkListAdapter = null;
            }
            docBookmarkListAdapter.setVirtualPageList(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocBookmarkFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12143b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f58986a;

        public C12143b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f58986a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f58986a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f58986a.invoke(obj);
        }
    }

    public DocBookmarkFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentDocBookmarkBinding>() { // from class: com.onyx.galaxy.note.editor.ui.DocBookmarkFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentDocBookmarkBinding invoke() {
                FragmentDocBookmarkBinding inflate = FragmentDocBookmarkBinding.inflate(LayoutInflater.from(DocBookmarkFragment.this.getContext()));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<DocBookmarkFragment$checkEmptyDataObserver$2.C121441>() { // from class: com.onyx.galaxy.note.editor.ui.DocBookmarkFragment$checkEmptyDataObserver$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.editor.ui.DocBookmarkFragment$checkEmptyDataObserver$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C121441 invoke() {
                final DocBookmarkFragment docBookmarkFragment = DocBookmarkFragment.this;
                return new AdapterDataModifiedObserver() { // from class: com.onyx.galaxy.note.editor.ui.DocBookmarkFragment$checkEmptyDataObserver$2.1
                    @Override // com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver
                    public void onDataChanged() {
                        DocBookmarkFragment.this.m46500o0();
                    }
                };
            }
        });
        this.checkEmptyDataObserver = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<DocBookmarkViewModel>() { // from class: com.onyx.galaxy.note.editor.ui.DocBookmarkFragment$viewmodel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DocBookmarkViewModel invoke() {
                return (DocBookmarkViewModel) new ViewModelProvider(DocBookmarkFragment.this).get(DocBookmarkViewModel.class);
            }
        });
        this.viewmodel = lazy3;
    }

    /* renamed from: A0 */
    public static final void m46483A0(DocBookmarkFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m46491D0(i);
    }

    /* renamed from: y0 */
    public static final void m46487y0(DocBookmarkFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46503r0();
    }

    /* renamed from: z0 */
    public static final void m46488z0(DocBookmarkFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46502q0();
    }

    /* renamed from: B0 */
    public final boolean m46489B0() {
        return (this.editorBundle == null || this.closeOnSelect == null) ? false : true;
    }

    /* renamed from: C0 */
    public final void m46490C0() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        new LoadVirtualPageModelListAction(editorBundle).build().doOnNext(new C12142a()).subscribe();
        m46506u0().loadBookmarkData();
    }

    /* renamed from: D0 */
    public final void m46491D0(int pos) {
        DocBookmarkListAdapter docBookmarkListAdapter = this.adapter;
        Function0<Unit> function0 = null;
        DocBookmarkListAdapter docBookmarkListAdapter2 = null;
        if (docBookmarkListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter = null;
        }
        VirtualBookmarkModel item = docBookmarkListAdapter.getItem(pos);
        if (item == null) {
            return;
        }
        DocBookmarkListAdapter docBookmarkListAdapter3 = this.adapter;
        if (docBookmarkListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter3 = null;
        }
        docBookmarkListAdapter3.clearLastFocus(pos);
        DocBookmarkListAdapter docBookmarkListAdapter4 = this.adapter;
        if (docBookmarkListAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter4 = null;
        }
        if (docBookmarkListAdapter4.getSelectionMode()) {
            DocBookmarkListAdapter docBookmarkListAdapter5 = this.adapter;
            if (docBookmarkListAdapter5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docBookmarkListAdapter5 = null;
            }
            docBookmarkListAdapter5.toggleSelectItem(item);
            m46499L0();
            EditorBundle editorBundle = this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            DocBookmarkListAdapter docBookmarkListAdapter6 = this.adapter;
            if (docBookmarkListAdapter6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                docBookmarkListAdapter2 = docBookmarkListAdapter6;
            }
            EditorBundleKt.postEvent(editorBundle, new AllDataSelectedEvent(docBookmarkListAdapter2.isAllItemSelected()));
            return;
        }
        DocBookmarkListAdapter docBookmarkListAdapter7 = this.adapter;
        if (docBookmarkListAdapter7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter7 = null;
        }
        docBookmarkListAdapter7.setCurrentIndex(pos);
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle2 = null;
        }
        EditorBundleKt.postEvent(editorBundle2, new GotoPageEvent(item.getPageIndex()));
        if (this.fullscreen) {
            Function0<Unit> function02 = this.closeOnSelect;
            if (function02 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("closeOnSelect");
            } else {
                function0 = function02;
            }
            function0.invoke();
        }
    }

    /* renamed from: E0 */
    public final void m46492E0(String data) {
        CharSequence trim;
        m46504s0().layoutSearch.searchResult.setText("");
        trim = StringsKt__StringsKt.trim((CharSequence) data);
        String nullToEmpty = Strings.nullToEmpty(trim.toString());
        DocBookmarkViewModel m46506u0 = m46506u0();
        Intrinsics.checkNotNull(nullToEmpty);
        m46506u0.onSearch(nullToEmpty);
    }

    /* renamed from: F0 */
    public final void m46493F0(boolean enable) {
        if (isResumed()) {
            DocBookmarkListAdapter docBookmarkListAdapter = null;
            if (enable) {
                DocBookmarkListAdapter docBookmarkListAdapter2 = this.adapter;
                if (docBookmarkListAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docBookmarkListAdapter = docBookmarkListAdapter2;
                }
                docBookmarkListAdapter.enterSelectionMode();
            } else {
                DocBookmarkListAdapter docBookmarkListAdapter3 = this.adapter;
                if (docBookmarkListAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docBookmarkListAdapter = docBookmarkListAdapter3;
                }
                docBookmarkListAdapter.quitSelectionMode();
            }
            ViewKt.setViewVisibleOrGone(m46504s0().selectionActionLayout, enable);
            m46499L0();
        }
    }

    /* renamed from: G0 */
    public final void m46494G0(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: H0 */
    public final void m46495H0() {
        m46494G0(this.fullscreen ? OnyxStatisticConstant.ID_VIEW_BOOKMARK_FULL : OnyxStatisticConstant.ID_VIEW_BOOKMARK);
    }

    /* renamed from: I0 */
    public final void m46496I0() {
        EditorBundle editorBundle = this.editorBundle;
        DocBookmarkListAdapter docBookmarkListAdapter = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        int currentPageIndex = EditorBundleKt.currentPageIndex(editorBundle);
        DocBookmarkListAdapter docBookmarkListAdapter2 = this.adapter;
        if (docBookmarkListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter2 = null;
        }
        Iterator<VirtualBookmarkModel> it2 = docBookmarkListAdapter2.getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else {
                if (it2.next().getPageIndex() == currentPageIndex) {
                    break;
                } else {
                    i++;
                }
            }
        }
        DocBookmarkListAdapter docBookmarkListAdapter3 = this.adapter;
        if (docBookmarkListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docBookmarkListAdapter = docBookmarkListAdapter3;
        }
        docBookmarkListAdapter.setCurrentIndex(i);
    }

    /* renamed from: J0 */
    public final void m46497J0() {
        ViewKt.postSelfDelayed(m46504s0().recyclerViewContainer.getAutoFitRecycleView(), new Function1<AutoFitRecycleView, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocBookmarkFragment$updateListAreaRect$1
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
                DocBookmarkListAdapter docBookmarkListAdapter = DocBookmarkFragment.this.adapter;
                if (docBookmarkListAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docBookmarkListAdapter = null;
                }
                docBookmarkListAdapter.setListAreaRect(ViewKt.windowVisibleRect(it2));
            }
        }, 600L);
    }

    /* renamed from: K0 */
    public final void m46498K0(int count) {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        TintTextView searchResult = m46504s0().layoutSearch.searchResult;
        Intrinsics.checkNotNullExpressionValue(searchResult, "searchResult");
        docOutlineSearchUtils.setSearchMatchingData(searchResult, count, m46506u0().isSearchMode());
    }

    /* renamed from: L0 */
    public final void m46499L0() {
        DocBookmarkListAdapter docBookmarkListAdapter = this.adapter;
        if (docBookmarkListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter = null;
        }
        int size = CollectionKt.getSize(docBookmarkListAdapter.getSelectedItems());
        m46504s0().delete.setEnabled(size > 0);
        m46504s0().edit.setEnabled(size == 1);
    }

    /* renamed from: o0 */
    public final void m46500o0() {
        DocBookmarkListAdapter docBookmarkListAdapter = this.adapter;
        if (docBookmarkListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter = null;
        }
        boolean isEmpty = docBookmarkListAdapter.getItems().isEmpty();
        CommonEmptyView emptyView = m46504s0().emptyView;
        Intrinsics.checkNotNullExpressionValue(emptyView, "emptyView");
        emptyView.setVisibility(isEmpty && !m46506u0().isSearchMode() ? 0 : 8);
        CommonEmptyView searchEmptyView = m46504s0().searchEmptyView;
        Intrinsics.checkNotNullExpressionValue(searchEmptyView, "searchEmptyView");
        searchEmptyView.setVisibility(isEmpty && m46506u0().isSearchMode() ? 0 : 8);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onConfigurationChangedEvent(@NotNull ConfigurationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ViewKt.postSelf(m46504s0().recyclerViewContainer.getAutoFitRecycleView(), new Function1<AutoFitRecycleView, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocBookmarkFragment$onConfigurationChangedEvent$1
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
                FragmentDocBookmarkBinding m46504s0;
                Intrinsics.checkNotNullParameter(it2, "it");
                m46504s0 = DocBookmarkFragment.this.m46504s0();
                AutoFitRecycleView autoFitRecycleView = m46504s0.recyclerViewContainer.getAutoFitRecycleView();
                DocBookmarkListAdapter docBookmarkListAdapter = DocBookmarkFragment.this.adapter;
                if (docBookmarkListAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docBookmarkListAdapter = null;
                }
                autoFitRecycleView.setAdapter(docBookmarkListAdapter);
            }
        });
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m46504s0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EditorBundle editorBundle = this.editorBundle;
        DocBookmarkListAdapter docBookmarkListAdapter = null;
        if (editorBundle != null) {
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.unregister(editorBundle, this);
        }
        GlobalBundle.INSTANCE.unregister(this);
        DocBookmarkListAdapter docBookmarkListAdapter2 = this.adapter;
        if (docBookmarkListAdapter2 != null) {
            if (docBookmarkListAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                docBookmarkListAdapter = docBookmarkListAdapter2;
            }
            docBookmarkListAdapter.unregisterAdapterDataObserver(m46505t0());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditDoneEvent(@NotNull EditDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        DocBookmarkListAdapter docBookmarkListAdapter = this.adapter;
        if (docBookmarkListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter = null;
        }
        docBookmarkListAdapter.commitTitleEdit();
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46504s0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.clearInputFocus(layoutSearch);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnterSelectionModeEvent(@NotNull EnterSelectionModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46493F0(true);
        m46494G0(OnyxStatisticConstant.ID_CLICK_BOOKMARK_SELECT_FULL);
        m46494G0(OnyxStatisticConstant.ID_VIEW_BOOKMARK_BATCH_FULL);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46504s0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.clearInput(layoutSearch);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitSelectionModeEvent(@NotNull QuitSelectionModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46493F0(false);
        m46494G0(OnyxStatisticConstant.ID_CLICK_BOOKMARK_BATCH_COMPLETE_FULL);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (m46489B0()) {
            m46490C0();
            m46497J0();
            m46495H0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectAllDataEvent(@NotNull SelectAllDataEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isResumed()) {
            DocBookmarkListAdapter docBookmarkListAdapter = this.adapter;
            if (docBookmarkListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docBookmarkListAdapter = null;
            }
            docBookmarkListAdapter.selectAll(event.getSelect());
            m46499L0();
            m46494G0(OnyxStatisticConstant.ID_CLICK_BOOKMARK_BATCH_ALLSELECT_FULL);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (m46489B0()) {
            m46509x0();
            m46507v0();
            EditorBundle editorBundle = this.editorBundle;
            EditorBundle editorBundle2 = null;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.register(editorBundle, this);
            DocBookmarkListAdapter docBookmarkListAdapter = this.adapter;
            if (docBookmarkListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docBookmarkListAdapter = null;
            }
            docBookmarkListAdapter.registerAdapterDataObserver(m46505t0());
            DocBookmarkViewModel m46506u0 = m46506u0();
            EditorBundle editorBundle3 = this.editorBundle;
            if (editorBundle3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            } else {
                editorBundle2 = editorBundle3;
            }
            m46506u0.setEditorBundle(editorBundle2);
        }
        GlobalBundle.INSTANCE.register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.isScrolling()) {
            return;
        }
        int lastPageCount = m46506u0().getLastPageCount();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        if (lastPageCount != EditorBundleKt.pageCount(editorBundle)) {
            m46490C0();
        }
    }

    /* renamed from: p0 */
    public final void m46501p0() {
        DocBookmarkListAdapter docBookmarkListAdapter = this.adapter;
        if (docBookmarkListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter = null;
        }
        docBookmarkListAdapter.clearSelectedItems();
        m46499L0();
    }

    /* renamed from: q0 */
    public final void m46502q0() {
        DocBookmarkListAdapter docBookmarkListAdapter = this.adapter;
        if (docBookmarkListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter = null;
        }
        final List<VirtualBookmarkModel> selectedItems = docBookmarkListAdapter.getSelectedItems();
        if (CollectionKt.isNullOrEmpty(selectedItems)) {
            return;
        }
        m46494G0(OnyxStatisticConstant.ID_CLICK_BOOKMARK_DELETE_BATCH_FULL);
        DocBookmarkActionPopup.Companion companion = DocBookmarkActionPopup.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        DocBookmarkActionPopup.Companion.delete$default(companion, requireContext, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocBookmarkFragment$delete$1
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
                EditorBundle editorBundle;
                DocBookmarkListAdapter docBookmarkListAdapter2 = DocBookmarkFragment.this.adapter;
                if (docBookmarkListAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docBookmarkListAdapter2 = null;
                }
                docBookmarkListAdapter2.remove((List) selectedItems);
                List<VirtualBookmarkModel> list = selectedItems;
                DocBookmarkFragment docBookmarkFragment = DocBookmarkFragment.this;
                for (VirtualBookmarkModel virtualBookmarkModel : list) {
                    editorBundle = docBookmarkFragment.editorBundle;
                    if (editorBundle == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                        editorBundle = null;
                    }
                    EditorBundleKt.postEvent(editorBundle, new DeleteBookmarkEvent(virtualBookmarkModel));
                }
                DocBookmarkFragment.this.m46501p0();
            }
        }, null, 4, null);
    }

    /* renamed from: r0 */
    public final void m46503r0() {
        Object firstOrNull;
        DocBookmarkListAdapter docBookmarkListAdapter = this.adapter;
        DocBookmarkListAdapter docBookmarkListAdapter2 = null;
        if (docBookmarkListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter = null;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) docBookmarkListAdapter.getSelectedItems());
        VirtualBookmarkModel virtualBookmarkModel = (VirtualBookmarkModel) firstOrNull;
        if (virtualBookmarkModel == null) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, new QuitSelectionModeEvent());
        DocBookmarkListAdapter docBookmarkListAdapter3 = this.adapter;
        if (docBookmarkListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter3 = null;
        }
        DocBookmarkListAdapter docBookmarkListAdapter4 = this.adapter;
        if (docBookmarkListAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docBookmarkListAdapter2 = docBookmarkListAdapter4;
        }
        docBookmarkListAdapter3.enterEditMode(docBookmarkListAdapter2.itemIndexOfFirst(virtualBookmarkModel));
        m46494G0(OnyxStatisticConstant.ID_CLICK_BOOKMARK_EDIT_BATCH_FULL);
    }

    /* renamed from: s0 */
    public final FragmentDocBookmarkBinding m46504s0() {
        return (FragmentDocBookmarkBinding) this.binding.getValue();
    }

    public final void setCloseOnSelect(@NotNull Function0<Unit> closeOnSelect) {
        Intrinsics.checkNotNullParameter(closeOnSelect, "closeOnSelect");
        this.closeOnSelect = closeOnSelect;
    }

    public final void setEditBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setFullScreen(boolean fullscreen) {
        this.fullscreen = fullscreen;
    }

    /* renamed from: t0 */
    public final DocBookmarkFragment$checkEmptyDataObserver$2.C121441 m46505t0() {
        return (DocBookmarkFragment$checkEmptyDataObserver$2.C121441) this.checkEmptyDataObserver.getValue();
    }

    /* renamed from: u0 */
    public final DocBookmarkViewModel m46506u0() {
        return (DocBookmarkViewModel) this.viewmodel.getValue();
    }

    /* renamed from: v0 */
    public final void m46507v0() {
        m46506u0().getBookmarkData().observe(getViewLifecycleOwner(), new C12143b(new DocBookmarkFragment$initData$1(this)));
        m46506u0().getMatchingData().observe(getViewLifecycleOwner(), new C12143b(new DocBookmarkFragment$initData$2(this)));
    }

    /* renamed from: w0 */
    public final void m46508w0() {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46504s0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        DocOutlineSearchUtils.initLayout$default(docOutlineSearchUtils, layoutSearch, this.fullscreen, false, new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocBookmarkFragment$initInputLayout$1
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
                DocBookmarkFragment.this.m46492E0(it2);
            }
        }, 2, null);
    }

    /* renamed from: x0 */
    public final void m46509x0() {
        DocBookmarkListAdapter docBookmarkListAdapter;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        this.adapter = new DocBookmarkListAdapter(editorBundle, this.fullscreen);
        m46504s0().edit.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.f6f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocBookmarkFragment.m46487y0(DocBookmarkFragment.this, view);
            }
        });
        m46504s0().delete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.g6f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocBookmarkFragment.m46488z0(DocBookmarkFragment.this, view);
            }
        });
        DocBookmarkListAdapter docBookmarkListAdapter2 = this.adapter;
        if (docBookmarkListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter = null;
        } else {
            docBookmarkListAdapter = docBookmarkListAdapter2;
        }
        ItemClickUtilsKt.setOnDebouncedItemClick$default(docBookmarkListAdapter, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.h6f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DocBookmarkFragment.m46483A0(DocBookmarkFragment.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        m46504s0().recyclerViewContainer.getAutoFitRecycleView().setDisplayType(NoteDisplayType.DISPLAY_LIST);
        AutoFitRecycleView autoFitRecycleView = m46504s0().recyclerViewContainer.getAutoFitRecycleView();
        DocBookmarkListAdapter docBookmarkListAdapter3 = this.adapter;
        if (docBookmarkListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter3 = null;
        }
        autoFitRecycleView.setAdapter(docBookmarkListAdapter3);
        ViewKt.setClearEditFocusTouchListener$default(m46504s0().recyclerViewContainer.getAutoFitRecycleView(), null, 1, null);
        if (!this.fullscreen) {
            DynamicImageView imageView = m46504s0().emptyView.getImageView();
            Intrinsics.checkNotNullExpressionValue(imageView, "<get-imageView>(...)");
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            ResManager resManager = ResManager.INSTANCE;
            layoutParams.width = resManager.getDimens(C7384R.dimen.dp_148);
            layoutParams.height = resManager.getDimens(C7384R.dimen.dp_148);
            imageView.setLayoutParams(layoutParams);
            DynamicImageView imageView2 = m46504s0().searchEmptyView.getImageView();
            Intrinsics.checkNotNullExpressionValue(imageView2, "<get-imageView>(...)");
            ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams2.width = resManager.getDimens(C7384R.dimen.dp_148);
            layoutParams2.height = resManager.getDimens(C7384R.dimen.dp_148);
            imageView2.setLayoutParams(layoutParams2);
        }
        m46508w0();
    }
}
