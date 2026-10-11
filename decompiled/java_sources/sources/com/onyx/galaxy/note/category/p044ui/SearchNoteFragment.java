package com.onyx.galaxy.note.category.p044ui;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.RectF;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.fastjson2.TypeReference;
import com.blankj.utilcode.util.KeyboardUtils;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.NoteCreateFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.account.event.ActivationStateChangedEvent;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.widgets.TintChipView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentUrisEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageUrisEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.OpenNoteAction;
import com.onyx.galaxy.note.category.event.OpenSearchResultEvent;
import com.onyx.galaxy.note.category.p044ui.SearchNoteFragment;
import com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel;
import com.onyx.galaxy.note.common.action.TextChangeDebounceAction;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.FragmentSearchNoteBinding;
import com.onyx.galaxy.note.databinding.LayoutSearchScopeBinding;
import com.onyx.galaxy.note.editor.event.SearchScopeChangedEvent;
import com.onyx.galaxy.note.p048ui.view.TextSwitchButton;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.p047ui.SettingsActivity;
import com.onyx.galaxy.note.utils.FunctionPermissions;
import com.onyx.galaxy.note.utils.Navigator;
import com.onyx.galaxy.note.utils.SearchActions;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
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

@Metadata(m61527d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 d2\u00020\u0001:\u0001dB\u0007¢\u0006\u0004\bb\u0010cJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\u0016\u0010\u000f\u001a\u00020\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0018\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\u0002H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J\b\u0010\"\u001a\u00020\u0002H\u0002J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$H\u0002J\b\u0010'\u001a\u00020\u0002H\u0002J\u0010\u0010)\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\u001fH\u0002J\b\u0010*\u001a\u00020\u0002H\u0002J\u0012\u0010-\u001a\u00020\u00022\b\u0010,\u001a\u0004\u0018\u00010+H\u0016J$\u00103\u001a\u0002022\u0006\u0010/\u001a\u00020.2\b\u00101\u001a\u0004\u0018\u0001002\b\u0010,\u001a\u0004\u0018\u00010+H\u0016J\u001a\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u0002022\b\u0010,\u001a\u0004\u0018\u00010+H\u0016J\u0010\u00108\u001a\u00020\u00022\u0006\u00107\u001a\u000206H\u0016J\u0010\u0010:\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020?H\u0007J\u0010\u0010B\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020AH\u0007R\u001b\u0010G\u001a\u00020C8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010D\u001a\u0004\bE\u0010FR'\u0010L\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0I0H8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010D\u001a\u0004\bJ\u0010KR\u001b\u0010O\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010D\u001a\u0004\bM\u0010NR\u001b\u0010S\u001a\u00020P8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010D\u001a\u0004\bQ\u0010RR\u001b\u0010W\u001a\u00020T8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010D\u001a\u0004\bU\u0010VR\u001b\u0010[\u001a\u00020X8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010D\u001a\u0004\bY\u0010ZR\u0018\u0010^\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010]R\u0014\u0010a\u001a\u00020_8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010`¨\u0006e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "g1", "d1", "", NotificationCompat.CATEGORY_EVENT, "I0", "k1", "L0", "j1", "l1", "", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "resultList", "K0", "a1", "M0", "W0", "z0", "x0", "S0", "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;", "entity", "J0", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "openDocArgs", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "model", "f1", "U0", "", "keyword", "y0", "B0", "h1", "", Constants.ATTRNAME_PERCENT, "m1", "A0", "eventId", "i1", "e1", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;", "onOpenSearchResultEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;", "onImportDocumentUrisEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;", "onImportImageUrisEvent", "Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;", "onActivationStateChangedEvent", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", "onLoginAccountChanged", "Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;", "Lkotlin/Lazy;", "D0", "()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;", "binding", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Ljava/util/LinkedList;", "G0", "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "searchHistoryOp", "E0", "()I", "limitCount", "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;", "C0", "()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;", "adapter", "Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;", "H0", "()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;", "searchViewModel", "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "F0", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "noteViewModel", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/disposables/Disposable;", "searchDisposable", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchNoteFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteFragment.kt\ncom/onyx/galaxy/note/category/ui/SearchNoteFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,576:1\n277#2,2:577\n277#2,2:579\n277#2,2:581\n277#2,2:583\n326#2,4:585\n1855#3,2:589\n*S KotlinDebug\n*F\n+ 1 SearchNoteFragment.kt\ncom/onyx/galaxy/note/category/ui/SearchNoteFragment\n*L\n281#1:577,2\n282#1:579,2\n283#1:581,2\n284#1:583,2\n285#1:585,4\n501#1:589,2\n*E\n"})
/* loaded from: classes17.dex */
public final class SearchNoteFragment extends BaseFragment {

    /* renamed from: l1 */
    @NotNull
    public static final String f54929l1 = "SEARCH_NOTE_HISTORY";

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy searchHistoryOp;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy limitCount;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public final Lazy searchViewModel;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteViewModel;

    /* renamed from: j1, reason: from kotlin metadata */
    @Nullable
    public Disposable searchDisposable;

    /* renamed from: k1, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: com.onyx.galaxy.note.category.ui.SearchNoteFragment$a */
    /* loaded from: classes9.dex */
    public static final class C11345a<T> implements Consumer {
        public C11345a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchNoteFragment.this.m43844k1();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.SearchNoteFragment$b */
    /* loaded from: classes9.dex */
    public static final class C11346b<T> implements Consumer {
        public C11346b() {
        }

        /* renamed from: a */
        public final void m43851a(boolean z) {
            SearchNoteFragment.this.m43820A0();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43851a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.SearchNoteFragment$c */
    /* loaded from: classes9.dex */
    public static final class C11347c implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f54940a;

        public C11347c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f54940a = function;
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
            return this.f54940a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f54940a.invoke(obj);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.SearchNoteFragment$d */
    /* loaded from: classes9.dex */
    public static final class C11348d<T> implements Consumer {
        public C11348d() {
        }

        /* renamed from: a */
        public final void m43852a(boolean z) {
            SearchNoteFragment.this.m43838e1();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43852a(((Boolean) obj).booleanValue());
        }
    }

    public SearchNoteFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentSearchNoteBinding>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentSearchNoteBinding invoke() {
                return FragmentSearchNoteBinding.inflate(SearchNoteFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<LinkedList<String>>>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$searchHistoryOp$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final JSONObjectOption<LinkedList<String>> invoke() {
                return new JSONObjectOption<>(MMKVUtils.INSTANCE.get(), SearchNoteFragment.f54929l1, new TypeReference<LinkedList<String>>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$searchHistoryOp$2.1
                }, new Function0<LinkedList<String>>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$searchHistoryOp$2.2
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final LinkedList<String> invoke() {
                        return new LinkedList<>();
                    }
                });
            }
        });
        this.searchHistoryOp = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$limitCount$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(SearchNoteFragment.this.requireContext().getResources().getInteger(C10651R.integer.search_note_history_limit_count));
            }
        });
        this.limitCount = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<SearchNoteAdapter>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$adapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SearchNoteAdapter invoke() {
                return new SearchNoteAdapter();
            }
        });
        this.adapter = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<SearchNoteViewModel>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$searchViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SearchNoteViewModel invoke() {
                return (SearchNoteViewModel) FragmentKt.getViewModel(SearchNoteFragment.this, SearchNoteViewModel.class);
            }
        });
        this.searchViewModel = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListViewModel>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$noteViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteListViewModel invoke() {
                FragmentActivity requireActivity = SearchNoteFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NoteListViewModel) FragmentActivityKt.getViewModel(requireActivity, NoteListViewModel.class);
            }
        });
        this.noteViewModel = lazy6;
        this.compositeDisposable = new CompositeDisposable();
    }

    /* renamed from: N0 */
    public static final void m43796N0(SearchNoteFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.compositeDisposable.clear();
    }

    /* renamed from: O0 */
    public static final void m43797O0(SearchNoteFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43849z0();
        this$0.m43842i1(OnyxStatisticConstant.ID_SEARCH_PAGE_CANCEL_VIEW);
    }

    /* renamed from: P0 */
    public static final void m43798P0(SearchNoteFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43821B0();
    }

    /* renamed from: Q0 */
    public static final void m43799Q0(SearchNoteFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startActivity(new Intent(this$0.requireContext(), (Class<?>) SettingsActivity.class));
    }

    /* renamed from: R0 */
    public static final void m43800R0(View view) {
        Navigator.navigateToDataRepository$default(Navigator.INSTANCE, null, 1, null);
    }

    /* renamed from: T0 */
    public static final void m43801T0(SearchNoteFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        SearchNoteAdapter.SearchNoteEntity item = this$0.m43822C0().getItem(i);
        if (item == null) {
            return;
        }
        int type = item.getType();
        if (type == 2 || type == 3 || type == 4) {
            this$0.m43829J0(item);
        }
    }

    /* renamed from: V0 */
    public static final void m43802V0(SearchNoteFragment this$0, String keyword, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(keyword, "$keyword");
        this$0.m43823D0().textInputEditTextViewName.setText(keyword);
        this$0.m43827H0().isInputting().setValue(Boolean.TRUE);
        this$0.m43841h1(keyword);
    }

    /* renamed from: X0 */
    public static final boolean m43803X0(SearchNoteFragment this$0, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 3) {
            return true;
        }
        String obj = textView.getText().toString();
        if (StringKt.isNotBlank(obj)) {
            this$0.m43848y0(obj);
            this$0.m43841h1(obj);
        } else {
            this$0.m43847x0();
        }
        ViewKt.hideInputKeyboard(this$0.m43823D0().textInputEditTextViewName);
        return true;
    }

    /* renamed from: Y0 */
    public static final void m43804Y0(SearchNoteFragment this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.m43827H0().isInputting().setValue(Boolean.TRUE);
            this$0.m43842i1(OnyxStatisticConstant.ID_SEARCH_PAGE_EDIT_FOCUS_VIEW);
        }
    }

    /* renamed from: Z0 */
    public static final void m43805Z0(SearchNoteFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43827H0().clearList();
        Editable text = this$0.m43823D0().textInputEditTextViewName.getText();
        if (text != null) {
            text.clear();
        }
    }

    /* renamed from: b1 */
    public static final void m43806b1(SearchNoteFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43825F0().toggleSideExpand();
    }

    /* renamed from: c1 */
    public static final void m43807c1(SearchNoteFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SearchActions searchActions = SearchActions.INSTANCE;
        TextSwitchButton hwrSwitchButton = this$0.m43823D0().hwrSwitchButton;
        Intrinsics.checkNotNullExpressionValue(hwrSwitchButton, "hwrSwitchButton");
        searchActions.toggleHwrSearch(hwrSwitchButton, OnyxStatisticConstant.TRIGGER_AI_SEARCH_FROM_HOME);
    }

    /* renamed from: A0 */
    public final void m43820A0() {
        this.compositeDisposable.clear();
    }

    /* renamed from: B0 */
    public final void m43821B0() {
        m43826G0().put(new LinkedList<>());
        m43834U0();
        m43844k1();
    }

    /* renamed from: C0 */
    public final SearchNoteAdapter m43822C0() {
        return (SearchNoteAdapter) this.adapter.getValue();
    }

    /* renamed from: D0 */
    public final FragmentSearchNoteBinding m43823D0() {
        return (FragmentSearchNoteBinding) this.binding.getValue();
    }

    /* renamed from: E0 */
    public final int m43824E0() {
        return ((Number) this.limitCount.getValue()).intValue();
    }

    /* renamed from: F0 */
    public final NoteListViewModel m43825F0() {
        return (NoteListViewModel) this.noteViewModel.getValue();
    }

    /* renamed from: G0 */
    public final JSONObjectOption<LinkedList<String>> m43826G0() {
        return (JSONObjectOption) this.searchHistoryOp.getValue();
    }

    /* renamed from: H0 */
    public final SearchNoteViewModel m43827H0() {
        return (SearchNoteViewModel) this.searchViewModel.getValue();
    }

    /* renamed from: I0 */
    public final void m43828I0(Object event) {
        if (event instanceof SearchScopeChangedEvent) {
            Editable text = m43823D0().textInputEditTextViewName.getText();
            String obj = text != null ? text.toString() : null;
            if (obj == null) {
                obj = "";
            }
            if (obj.length() > 0) {
                m43841h1(obj);
            }
        }
    }

    /* renamed from: J0 */
    public final void m43829J0(SearchNoteAdapter.SearchNoteEntity entity) {
        OpenDocArgs.Companion companion = OpenDocArgs.INSTANCE;
        SyncNoteModel model = entity.getModel();
        Intrinsics.checkNotNull(model);
        OpenDocArgs createFrom = companion.createFrom(model);
        String pageId = entity.getPageId();
        if (pageId == null) {
            pageId = "";
        }
        createFrom.setPageId(pageId);
        m43839f1(createFrom, entity.getModel());
    }

    /* renamed from: K0 */
    public final void m43830K0(List<NoteSearchBean> resultList) {
        m43822C0().addTitleEntities(resultList);
        m43822C0().addTextEntities(resultList);
        m43822C0().addHWREntities(resultList);
    }

    /* renamed from: L0 */
    public final void m43831L0() {
        m43823D0().hwrSwitchButton.setChecked(FunctionPermissions.INSTANCE.isAiSearchEnabled());
        m43843j1();
    }

    /* renamed from: M0 */
    public final void m43832M0() {
        TintTextView btnCancel = m43823D0().btnCancel;
        Intrinsics.checkNotNullExpressionValue(btnCancel, "btnCancel");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.k7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteFragment.m43797O0(SearchNoteFragment.this, view);
            }
        }, 1, null);
        TintTextView btnClear = m43823D0().btnClear;
        Intrinsics.checkNotNullExpressionValue(btnClear, "btnClear");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnClear, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.l7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteFragment.m43798P0(SearchNoteFragment.this, view);
            }
        }, 1, null);
        TintImageView ivSetting = m43823D0().ivSetting;
        Intrinsics.checkNotNullExpressionValue(ivSetting, "ivSetting");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivSetting, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteFragment.m43799Q0(SearchNoteFragment.this, view);
            }
        }, 1, null);
        TintImageView ivLibrary = m43823D0().ivLibrary;
        Intrinsics.checkNotNullExpressionValue(ivLibrary, "ivLibrary");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivLibrary, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteFragment.m43800R0(view);
            }
        }, 1, null);
        TintImageView closeSearchButton = m43823D0().closeSearchButton;
        Intrinsics.checkNotNullExpressionValue(closeSearchButton, "closeSearchButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(closeSearchButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteFragment.m43796N0(SearchNoteFragment.this, view);
            }
        }, 1, null);
        SearchNoteViewModel m43827H0 = m43827H0();
        LayoutSearchScopeBinding searchScopeBinding = m43823D0().searchScopeBinding;
        Intrinsics.checkNotNullExpressionValue(searchScopeBinding, "searchScopeBinding");
        m43827H0.addSearchScopeEvents(searchScopeBinding);
    }

    /* renamed from: S0 */
    public final void m43833S0() {
        m43822C0().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.p7m
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SearchNoteFragment.m43801T0(SearchNoteFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43823D0().rvSearch.setAdapter(m43822C0());
        final RecyclerView.LayoutManager layoutManager = m43823D0().rvSearch.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            ((GridLayoutManager) layoutManager).setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$initList$2
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int position) {
                    SearchNoteAdapter m43822C0;
                    SearchNoteAdapter m43822C02;
                    m43822C0 = SearchNoteFragment.this.m43822C0();
                    if (m43822C0.getItems().isEmpty()) {
                        return ((GridLayoutManager) layoutManager).getSpanCount();
                    }
                    m43822C02 = SearchNoteFragment.this.m43822C0();
                    SearchNoteAdapter.SearchNoteEntity item = m43822C02.getItem(position);
                    Intrinsics.checkNotNull(item);
                    if (item.getType() != 2) {
                        return ((GridLayoutManager) layoutManager).getSpanCount();
                    }
                    return 1;
                }
            });
        }
    }

    /* renamed from: U0 */
    public final void m43834U0() {
        m43823D0().cgHistory.removeAllViews();
        for (final String str : m43826G0().get()) {
            View inflate = LayoutInflater.from(requireContext()).inflate(C10651R.layout.chip_search_note_layout, (ViewGroup) m43823D0().cgHistory, false);
            Intrinsics.checkNotNull(inflate, "null cannot be cast to non-null type com.onyx.android.sdk.theme.widgets.TintChipView");
            TintChipView tintChipView = (TintChipView) inflate;
            tintChipView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j7m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchNoteFragment.m43802V0(SearchNoteFragment.this, str, view);
                }
            });
            tintChipView.setText(str);
            m43823D0().cgHistory.addView(tintChipView);
        }
    }

    /* renamed from: W0 */
    public final void m43835W0() {
        m43823D0().textInputEditTextViewName.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.e7m
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m43803X0;
                m43803X0 = SearchNoteFragment.m43803X0(SearchNoteFragment.this, textView, i, keyEvent);
                return m43803X0;
            }
        });
        m43823D0().textInputEditTextViewName.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.h7m
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                SearchNoteFragment.m43804Y0(SearchNoteFragment.this, view, z);
            }
        });
        m43823D0().textInputLayoutName.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.i7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteFragment.m43805Z0(SearchNoteFragment.this, view);
            }
        });
        Disposable disposable = this.searchDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        TintTextInputEditTextView textInputEditTextViewName = m43823D0().textInputEditTextViewName;
        Intrinsics.checkNotNullExpressionValue(textInputEditTextViewName, "textInputEditTextViewName");
        this.searchDisposable = new TextChangeDebounceAction(textInputEditTextViewName, 0L, 2, null).build().doOnNext(new C11345a()).subscribe();
    }

    /* renamed from: a1 */
    public final void m43836a1() {
        m43834U0();
        TintImageView ivExpand = m43823D0().ivExpand;
        Intrinsics.checkNotNullExpressionValue(ivExpand, "ivExpand");
        com.onyx.android.sdk.extension.ViewKt.click(ivExpand, 1000L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.f7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteFragment.m43806b1(SearchNoteFragment.this, view);
            }
        });
        TextSwitchButton hwrSwitchButton = m43823D0().hwrSwitchButton;
        Intrinsics.checkNotNullExpressionValue(hwrSwitchButton, "hwrSwitchButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(hwrSwitchButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.g7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteFragment.m43807c1(SearchNoteFragment.this, view);
            }
        }, 1, null);
        m43833S0();
        m43835W0();
        m43844k1();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        if ((requireActivity instanceof AppCompatActivity) && Activity.INSTANCE.isFront((AppCompatActivity) requireActivity)) {
            ViewKt.postSelf(m43823D0().textInputEditTextViewName, new Function1<TintTextInputEditTextView, Unit>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$initView$3
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TintTextInputEditTextView tintTextInputEditTextView) {
                    invoke2(tintTextInputEditTextView);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull TintTextInputEditTextView it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    KeyboardUtils.showSoftInput(it2);
                }
            });
        }
    }

    /* renamed from: d1 */
    public final void m43837d1() {
        m43827H0().getListData().observe(getViewLifecycleOwner(), new C11347c(new Function1<List<NoteSearchBean>, Unit>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$initViewModel$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<NoteSearchBean> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<NoteSearchBean> list) {
                SearchNoteFragment searchNoteFragment = SearchNoteFragment.this;
                Intrinsics.checkNotNull(list);
                searchNoteFragment.m43830K0(list);
            }
        }));
        m43827H0().isInputting().observe(getViewLifecycleOwner(), new C11347c(new SearchNoteFragment$initViewModel$2(this)));
        m43827H0().getExecutingAction().observe(getViewLifecycleOwner(), new C11347c(new SearchNoteFragment$initViewModel$3(this)));
        MutableLiveData<Integer> searchProgressPercent = m43827H0().getSearchProgressPercent();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        DataBindingKt.observeOnce(searchProgressPercent, viewLifecycleOwner, new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$initViewModel$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke2(num);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Integer num) {
                SearchNoteFragment searchNoteFragment = SearchNoteFragment.this;
                Intrinsics.checkNotNull(num);
                searchNoteFragment.m43846m1(num.intValue());
            }
        });
        m43825F0().isShowSlideMenu().observe(getViewLifecycleOwner(), new C11347c(new SearchNoteFragment$initViewModel$5(this)));
        DataBindingKt.observeOnce(m43827H0().getEvent(), this, new SearchNoteFragment$initViewModel$6(this));
        m43827H0().loadSavedSearchScope();
    }

    /* renamed from: e1 */
    public final void m43838e1() {
        if (m43822C0().getItems().isEmpty()) {
            m43842i1(OnyxStatisticConstant.ID_SEARCH_PAGE_EMPTY_VIEW);
        } else {
            m43842i1(OnyxStatisticConstant.ID_SEARCH_PAGE_RESULT_VIEW);
        }
    }

    /* renamed from: f1 */
    public final void m43839f1(OpenDocArgs openDocArgs, SyncNoteModel model) {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        Disposable subscribe = new OpenNoteAction(requireActivity, model, openDocArgs).build().subscribe(new C11346b());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: g1 */
    public final void m43840g1() {
        TintLinearLayout folderConditionLayout = m43823D0().searchScopeBinding.folderConditionLayout;
        Intrinsics.checkNotNullExpressionValue(folderConditionLayout, "folderConditionLayout");
        ViewKt.setLayoutParams(folderConditionLayout, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$relayout$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                invoke2(layoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                setLayoutParams.width = (int) ResManager.INSTANCE.getDimension(C10651R.dimen.search_condition_folder_width);
            }
        });
        TintLinearLayout tagConditionLayout = m43823D0().searchScopeBinding.tagConditionLayout;
        Intrinsics.checkNotNullExpressionValue(tagConditionLayout, "tagConditionLayout");
        ViewKt.setLayoutParams(tagConditionLayout, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.galaxy.note.category.ui.SearchNoteFragment$relayout$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                invoke2(layoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                setLayoutParams.width = (int) ResManager.INSTANCE.getDimension(C10651R.dimen.search_condition_tag_width);
            }
        });
        float integer = ResManager.INSTANCE.getInteger(C10651R.integer.search_condition_child_weight);
        TintLinearLayout folderConditionLayout2 = m43823D0().searchScopeBinding.folderConditionLayout;
        Intrinsics.checkNotNullExpressionValue(folderConditionLayout2, "folderConditionLayout");
        ViewKt.setLayoutWeight(folderConditionLayout2, integer);
        TintLinearLayout tagConditionLayout2 = m43823D0().searchScopeBinding.tagConditionLayout;
        Intrinsics.checkNotNullExpressionValue(tagConditionLayout2, "tagConditionLayout");
        ViewKt.setLayoutWeight(tagConditionLayout2, integer);
        TintLinearLayout scopePreviewLayout = m43823D0().searchScopeBinding.scopePreviewLayout;
        Intrinsics.checkNotNullExpressionValue(scopePreviewLayout, "scopePreviewLayout");
        ViewKt.setLayoutWeight(scopePreviewLayout, integer);
    }

    /* renamed from: h1 */
    public final void m43841h1(String keyword) {
        CharSequence trim;
        trim = StringsKt__StringsKt.trim((CharSequence) keyword);
        String obj = trim.toString();
        m43827H0().getExecutingAction().setValue(Boolean.TRUE);
        m43847x0();
        m43822C0().setKeyword(obj);
        Disposable subscribe = m43827H0().search(obj).subscribe(new C11348d());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: i1 */
    public final void m43842i1(String eventId) {
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, null, 2, null));
    }

    /* renamed from: j1 */
    public final void m43843j1() {
        ConstraintSet constraintSet = m43823D0().cls.getConstraintSet(C10651R.id.start);
        ConstraintSet constraintSet2 = m43823D0().cls.getConstraintSet(C10651R.id.end);
        int i = !NoteConfigManager.INSTANCE.isAiSearchFeatureEnabled() || (m43827H0().m72419isInputting() && StringKt.isNotBlank(m43823D0().textInputEditTextViewName.getText())) ? 4 : 0;
        constraintSet.setVisibility(C10651R.id.hwr_switch_button, i);
        constraintSet2.setVisibility(C10651R.id.hwr_switch_button, i);
    }

    /* renamed from: k1 */
    public final void m43844k1() {
        Boolean value = m43825F0().isShowSlideMenu().getValue();
        if (value == null) {
            value = Boolean.valueOf(m43825F0().getSlideExpandOp().get());
        }
        boolean booleanValue = value.booleanValue();
        boolean z = m43826G0().get().size() > 0;
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(booleanValue ? C7384R.dimen.dp_28 : C7384R.dimen.dp_16);
        ViewKt.setViewVisibleOrGone(m43823D0().llOps, !booleanValue);
        TintTextView tvHistoryTitle = m43823D0().tvHistoryTitle;
        Intrinsics.checkNotNullExpressionValue(tvHistoryTitle, "tvHistoryTitle");
        tvHistoryTitle.setVisibility(z ^ true ? 4 : 0);
        ScrollView svHistory = m43823D0().svHistory;
        Intrinsics.checkNotNullExpressionValue(svHistory, "svHistory");
        svHistory.setVisibility(z ^ true ? 4 : 0);
        TintTextView btnClear = m43823D0().btnClear;
        Intrinsics.checkNotNullExpressionValue(btnClear, "btnClear");
        btnClear.setVisibility(z ^ true ? 4 : 0);
        TintTextView vDivider = m43823D0().vDivider;
        Intrinsics.checkNotNullExpressionValue(vDivider, "vDivider");
        vDivider.setVisibility(z ^ true ? 4 : 0);
        TintTextView tvTitle = m43823D0().tvTitle;
        Intrinsics.checkNotNullExpressionValue(tvTitle, "tvTitle");
        ViewGroup.LayoutParams layoutParams = tvTitle.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.topMargin = dimens;
        tvTitle.setLayoutParams(marginLayoutParams);
        ConstraintSet constraintSet = m43823D0().cls.getConstraintSet(C10651R.id.start);
        if (constraintSet != null) {
            int i = booleanValue ? 8 : 0;
            int i2 = z ? 0 : 4;
            constraintSet.setTranslationY(C10651R.id.ll_ops, 0.0f);
            constraintSet.setVisibility(C10651R.id.ll_ops, i);
            constraintSet.setVisibility(C10651R.id.tv_history_title, i2);
            constraintSet.setVisibility(C10651R.id.sv_history, i2);
            constraintSet.setVisibility(C10651R.id.btn_clear, i2);
            constraintSet.setVisibility(C10651R.id.v_divider, i2);
            constraintSet.setMargin(C10651R.id.tv_title, 3, dimens);
        }
        ConstraintSet constraintSet2 = m43823D0().cls.getConstraintSet(C10651R.id.end);
        if (constraintSet2 != null) {
            constraintSet2.setMargin(C10651R.id.tv_title, 3, dimens);
            constraintSet2.setMargin(C10651R.id.ll_ops, 3, 0 - resManager.getDimens(booleanValue ? C7384R.dimen.dp_108 : C7384R.dimen.dp_96));
        }
        if (Intrinsics.areEqual(m43827H0().isInputting().getValue(), Boolean.TRUE)) {
            m43823D0().cls.transitionToEnd();
        } else {
            m43823D0().cls.transitionToStart();
        }
        m43831L0();
    }

    /* renamed from: l1 */
    public final void m43845l1() {
        ConstraintSet constraintSet = m43823D0().cls.getConstraintSet(C10651R.id.start);
        ConstraintSet constraintSet2 = m43823D0().cls.getConstraintSet(C10651R.id.end);
        boolean areEqual = Intrinsics.areEqual(m43827H0().getExecutingAction().getValue(), Boolean.TRUE);
        int i = areEqual ? 0 : 8;
        constraintSet.setVisibility(C10651R.id.loadingLayout, i);
        constraintSet2.setVisibility(C10651R.id.loadingLayout, i);
        m43823D0().loadingLayout.setVisibility(i);
        Drawable background = m43823D0().loadingView.getBackground();
        AnimationDrawable animationDrawable = background instanceof AnimationDrawable ? (AnimationDrawable) background : null;
        if (areEqual) {
            if (animationDrawable != null) {
                animationDrawable.start();
            }
        } else if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    /* renamed from: m1 */
    public final void m43846m1(int percent) {
        String formatString = ResManager.INSTANCE.getFormatString(C10651R.string.search_progress_global, m43827H0().getCurrentNoteTitle(), Integer.valueOf(percent));
        String searchCountProgress = m43827H0().getSearchCountProgress();
        m43823D0().progressText.setText(formatString);
        m43823D0().countText.setText(searchCountProgress);
        m43823D0().loadingLayout.requestLayout();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivationStateChangedEvent(@NotNull ActivationStateChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43831L0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        m43823D0().rvSearch.setAdapter(m43822C0());
        m43840g1();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063315, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m43823D0().setLifecycleOwner(getViewLifecycleOwner());
        m43823D0().setNoteViewModel(m43825F0());
        m43823D0().setSearchViewModel(m43827H0());
        View root = m43823D0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportDocumentUrisEvent(@NotNull ImportDocumentUrisEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        m43820A0();
        m43825F0().importDocuments(activity, event.getUriList(), event.getImportSelectedContext());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportImageUrisEvent(@NotNull ImportImageUrisEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        NoteListViewModel.importImages$default(m43825F0(), event.getUriList(), NoteCreateFrom.IMPORT_FILE, null, 4, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLoginAccountChanged(@NotNull LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43827H0().clear();
        m43823D0().btnCancel.performClick();
        m43823D0().btnClear.performClick();
        SearchNoteViewModel m43827H0 = m43827H0();
        LayoutSearchScopeBinding searchScopeBinding = m43823D0().searchScopeBinding;
        Intrinsics.checkNotNullExpressionValue(searchScopeBinding, "searchScopeBinding");
        SearchNoteViewModel.checkAndUpdateSearchScope$default(m43827H0, searchScopeBinding, null, 2, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onOpenSearchResultEvent(@NotNull OpenSearchResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        OpenDocArgs.Companion companion = OpenDocArgs.INSTANCE;
        SyncNoteModel model = event.getModel();
        Intrinsics.checkNotNull(model);
        OpenDocArgs createFrom = companion.createFrom(model);
        NoteSearchBean searchBean = event.getSearchBean();
        RectF findFirstHighlightRect = searchBean != null ? NoteSearchBean.INSTANCE.findFirstHighlightRect(searchBean) : null;
        NoteSearchBean searchBean2 = event.getSearchBean();
        RectF pageDisplayRect = searchBean2 != null ? searchBean2.getPageDisplayRect() : null;
        if (findFirstHighlightRect == null) {
            findFirstHighlightRect = pageDisplayRect;
        }
        NoteSearchBean searchBean3 = event.getSearchBean();
        String pageId = searchBean3 != null ? searchBean3.getPageId() : null;
        if (pageId == null) {
            pageId = "";
        }
        createFrom.setPageId(pageId);
        createFrom.setSearchText(m43822C0().getKeyword());
        createFrom.setSearchRectList(CollectionKt.asList(findFirstHighlightRect));
        createFrom.setSearchType(event.getSearchType());
        m43839f1(createFrom, event.getModel());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m43837d1();
        m43836a1();
        m43832M0();
    }

    /* renamed from: x0 */
    public final void m43847x0() {
        m43820A0();
        m43827H0().clearList();
        m43822C0().submitList(null);
    }

    /* renamed from: y0 */
    public final void m43848y0(String keyword) {
        LinkedList<String> linkedList = m43826G0().get();
        if (linkedList.contains(keyword)) {
            linkedList.remove(keyword);
        }
        if (linkedList.size() == m43824E0()) {
            CollectionsKt__MutableCollectionsKt.removeLast(linkedList);
        }
        linkedList.add(0, keyword);
        m43826G0().put(linkedList);
        m43834U0();
    }

    /* renamed from: z0 */
    public final void m43849z0() {
        m43822C0().submitList(new ArrayList());
        Editable text = m43823D0().textInputEditTextViewName.getText();
        if (text != null) {
            text.clear();
        }
        m43823D0().textInputEditTextViewName.clearFocus();
        ViewKt.hideInputKeyboard(m43823D0().textInputEditTextViewName);
        m43847x0();
        m43827H0().isInputting().setValue(Boolean.FALSE);
    }
}
