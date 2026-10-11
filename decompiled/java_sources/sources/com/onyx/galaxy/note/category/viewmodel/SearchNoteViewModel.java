package com.onyx.galaxy.note.category.viewmodel;

import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.font.CJKCompat;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.SearchProgressResult;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.HWRArgs;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.onyx.android.sdk.universal.editor.events.note.UpdateSearchProgressEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.SearchNoteAction;
import com.onyx.galaxy.note.category.action.SearchNoteByScopeAction;
import com.onyx.galaxy.note.category.action.SelectMultiNoteFolderAction;
import com.onyx.galaxy.note.category.action.SelectMultiNoteTagAction;
import com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction;
import com.onyx.galaxy.note.category.data.SearchScope;
import com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.LayoutSearchScopeBinding;
import com.onyx.galaxy.note.editor.event.SearchScopeChangedEvent;
import com.onyx.galaxy.note.editor.view.popup.SearchScopePreviewPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.SearchActions;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 L2\u00020\u0001:\u0001LB\u0007¢\u0006\u0004\bJ\u0010KJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000e\u001a\u00020\fH\u0002J\u0016\u0010\u0012\u001a\u00020\u00042\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0006\u0010\u0013\u001a\u00020\u0004J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0014\u001a\u00020\fJ\u0006\u0010\u0018\u001a\u00020\u0004J\u0006\u0010\u0019\u001a\u00020\u0016J\u0006\u0010\u001a\u001a\u00020\fJ\u0006\u0010\u001b\u001a\u00020\fJ\u0006\u0010\u001c\u001a\u00020\u0004J\u0006\u0010\u001d\u001a\u00020\u0004J\u0006\u0010\u001f\u001a\u00020\u001eJ\u0006\u0010!\u001a\u00020 J\u000e\u0010\"\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007J\u001e\u0010&\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u000e\b\u0002\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#J\u000e\u0010'\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007J\u0010\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(H\u0007R\u001d\u0010)\u001a\b\u0012\u0004\u0012\u00020,0+8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R#\u00104\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0010010+8\u0006¢\u0006\f\n\u0004\b2\u0010.\u001a\u0004\b3\u00100R%\u0010\u0019\u001a\u0010\u0012\f\u0012\n 5*\u0004\u0018\u00010\u00160\u00160+8\u0006¢\u0006\f\n\u0004\b6\u0010.\u001a\u0004\b\u0019\u00100R%\u00109\u001a\u0010\u0012\f\u0012\n 5*\u0004\u0018\u00010\u00160\u00160+8\u0006¢\u0006\f\n\u0004\b7\u0010.\u001a\u0004\b8\u00100R%\u0010=\u001a\u0010\u0012\f\u0012\n 5*\u0004\u0018\u00010:0:0+8\u0006¢\u0006\f\n\u0004\b;\u0010.\u001a\u0004\b<\u00100R\"\u0010E\u001a\u00020>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u0016\u0010I\u001a\u00020F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010H¨\u0006M"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lcom/onyx/galaxy/note/category/action/SearchNoteAction;", "action", "", "A", "w", "Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;", "binding", "y", "z", "v", "", "t", "u", "", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "list", "r", Constants.CLEAR_ATTRIBUTES, "keyword", "Lio/reactivex/rxjava3/core/Observable;", "", "search", "clearList", "isInputting", "getCurrentNoteTitle", "getSearchCountProgress", "saveSearchScope", "loadSavedSearchScope", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "createManageFolderContext", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "createManageTagContext", "updateSearchScope", "Lio/reactivex/rxjava3/functions/Consumer;", "Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;", "onNext", "checkAndUpdateSearchScope", "addSearchScopeEvents", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;", NotificationCompat.CATEGORY_EVENT, "onUpdateSearchProgressEvent", "Landroidx/lifecycle/MutableLiveData;", "", "i", "Landroidx/lifecycle/MutableLiveData;", "getEvent", "()Landroidx/lifecycle/MutableLiveData;", "", "j", "getListData", "listData", "kotlin.jvm.PlatformType", C4921e.f26537n, "l", "getExecutingAction", "executingAction", "", "m", "getSearchProgressPercent", "searchProgressPercent", "Lcom/onyx/galaxy/note/category/data/SearchScope;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/category/data/SearchScope;", "getSearchScope", "()Lcom/onyx/galaxy/note/category/data/SearchScope;", "setSearchScope", "(Lcom/onyx/galaxy/note/category/data/SearchScope;)V", "searchScope", "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;", C4921e.f26528e, "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;", "searchProgressResult", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SearchNoteViewModel extends BaseViewModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Object> event = new MutableLiveData<>(Unit.INSTANCE);

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<NoteSearchBean>> listData = new MutableLiveData<>(new ArrayList());

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isInputting;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> executingAction;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> searchProgressPercent;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public SearchScope searchScope;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public SearchProgressResult searchProgressResult;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;", "", "()V", "createSearchArgs", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "searchTypes", "", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "keyword", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final NoteSearchArgs createSearchArgs(@NotNull List<? extends TextSearchType> searchTypes, @NotNull String keyword) {
            Intrinsics.checkNotNullParameter(searchTypes, "searchTypes");
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            NoteSearchArgs noteSearchArgs = new NoteSearchArgs();
            HWRArgs hwrArgs = noteSearchArgs.getHwrArgs();
            HWREngineManager hWREngineManager = HWREngineManager.INSTANCE;
            hwrArgs.setLang(hWREngineManager.getDefaultLangByFunction(FunctionKey.HWR_SEARCH));
            noteSearchArgs.getHwrArgs().setRecognizer(hWREngineManager.getRecognizerTypeByFunction(FunctionKey.HWR_SEARCH));
            noteSearchArgs.getHwrArgs().setSegmentation(hWREngineManager.shouldEnableSegmentFeature(HWRRecognizerTypeKt.getEngineType(noteSearchArgs.getHwrArgs().getRecognizer())));
            noteSearchArgs.setSearchTypes(searchTypes);
            String lowerCase = StringKt.replaceBreakLine$default(CJKCompat.INSTANCE.CJKToStandard(keyword), null, 1, null).toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            noteSearchArgs.setKeyword(lowerCase);
            return noteSearchArgs;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C11554a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ LayoutSearchScopeBinding f55874f;

        public C11554a(LayoutSearchScopeBinding layoutSearchScopeBinding) {
            this.f55874f = layoutSearchScopeBinding;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateExpiredSearchScopeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchNoteViewModel.this.updateSearchScope(this.f55874f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C11555b<T, R> implements Function {
        public C11555b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<SyncNoteModel>> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SearchNoteByScopeAction(SearchNoteViewModel.this.getSearchScope()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C11556c<T> implements Predicate {

        /* renamed from: e */
        public static final C11556c<T> f55876e = new C11556c<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C11557d<T> implements Consumer {
        public C11557d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            SyncNoteModel syncNoteModel = (SyncNoteModel) first;
            SearchNoteViewModel.this.searchProgressResult.setMaxSearchCount(it2.size());
            SearchNoteViewModel.this.searchProgressResult.setCurrentSearchId(syncNoteModel.getUniqueId());
            SearchProgressResult searchProgressResult = SearchNoteViewModel.this.searchProgressResult;
            String title = syncNoteModel.getTitle();
            if (title == null) {
                title = "";
            }
            searchProgressResult.setCurrentSearchName(title);
            SearchNoteViewModel.this.getSearchProgressPercent().setValue(0);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C11558e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f55878e;

        /* renamed from: f */
        public final /* synthetic */ NoteSearchArgs f55879f;

        /* renamed from: g */
        public final /* synthetic */ SearchNoteViewModel f55880g;

        /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$e$a */
        /* loaded from: classes9.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ SearchNoteViewModel f55881e;

            /* renamed from: f */
            public final /* synthetic */ SearchNoteAction f55882f;

            public a(SearchNoteViewModel searchNoteViewModel, SearchNoteAction searchNoteAction) {
                this.f55881e = searchNoteViewModel;
                this.f55882f = searchNoteAction;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<NoteSearchBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f55881e.m44866A(this.f55882f);
            }
        }

        public C11558e(EditorBundle editorBundle, NoteSearchArgs noteSearchArgs, SearchNoteViewModel searchNoteViewModel) {
            this.f55878e = editorBundle;
            this.f55879f = noteSearchArgs;
            this.f55880g = searchNoteViewModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NoteSearchBean>> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchNoteAction searchNoteAction = new SearchNoteAction(this.f55878e, it2, this.f55879f);
            return searchNoteAction.build().doOnNext(new a(this.f55880g, searchNoteAction));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$f */
    /* loaded from: classes9.dex */
    public static final class C11559f<T> implements Consumer {
        public C11559f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchNoteViewModel.this.getExecutingAction().postValue(Boolean.TRUE);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$g */
    /* loaded from: classes9.dex */
    public static final class C11560g<T> implements Consumer {
        public C11560g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<List<NoteSearchBean>> it2) {
            List flatten;
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchNoteViewModel searchNoteViewModel = SearchNoteViewModel.this;
            flatten = CollectionsKt__IterablesKt.flatten(it2);
            searchNoteViewModel.m44867r(flatten);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$h */
    /* loaded from: classes9.dex */
    public static final class C11561h<T, R> implements Function {

        /* renamed from: e */
        public static final C11561h<T, R> f55885e = new C11561h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull List<List<NoteSearchBean>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$i */
    /* loaded from: classes9.dex */
    public static final class C11562i<T> implements Predicate {

        /* renamed from: e */
        public static final C11562i<T> f55886e = new C11562i<>();

        /* renamed from: a */
        public final boolean m44883a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m44883a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$j */
    /* loaded from: classes9.dex */
    public static final class C11563j<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ManageFolderContext f55888f;

        /* renamed from: g */
        public final /* synthetic */ LayoutSearchScopeBinding f55889g;

        public C11563j(ManageFolderContext manageFolderContext, LayoutSearchScopeBinding layoutSearchScopeBinding) {
            this.f55888f = manageFolderContext;
            this.f55889g = layoutSearchScopeBinding;
        }

        /* renamed from: a */
        public final void m44884a(boolean z) {
            SearchNoteViewModel.this.getSearchScope().setSelectAllFolder(this.f55888f.getSelectAll());
            SearchNoteViewModel.this.getSearchScope().setFolderIds(this.f55888f.getSelectedFolderIds());
            SearchNoteViewModel.this.getSearchScope().setFolderNames(this.f55888f.getSelectedFolderNames());
            SearchNoteViewModel.this.saveSearchScope();
            SearchNoteViewModel.this.updateSearchScope(this.f55889g);
            SearchNoteViewModel.this.getEvent().setValue(new SearchScopeChangedEvent());
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44884a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$k */
    /* loaded from: classes9.dex */
    public static final class C11564k<T> implements Predicate {

        /* renamed from: e */
        public static final C11564k<T> f55890e = new C11564k<>();

        /* renamed from: a */
        public final boolean m44885a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m44885a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel$l */
    /* loaded from: classes9.dex */
    public static final class C11565l<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ManageTagContext f55892f;

        /* renamed from: g */
        public final /* synthetic */ LayoutSearchScopeBinding f55893g;

        public C11565l(ManageTagContext manageTagContext, LayoutSearchScopeBinding layoutSearchScopeBinding) {
            this.f55892f = manageTagContext;
            this.f55893g = layoutSearchScopeBinding;
        }

        /* renamed from: a */
        public final void m44886a(boolean z) {
            SearchNoteViewModel.this.getSearchScope().setSelectAllTag(this.f55892f.getSelectAll());
            SearchNoteViewModel.this.getSearchScope().setTagIds(this.f55892f.getSelectedTagIds());
            SearchNoteViewModel.this.getSearchScope().setTagNames(this.f55892f.getSelectedTagNames());
            SearchNoteViewModel.this.saveSearchScope();
            SearchNoteViewModel.this.updateSearchScope(this.f55893g);
            SearchNoteViewModel.this.getEvent().setValue(new SearchScopeChangedEvent());
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44886a(((Boolean) obj).booleanValue());
        }
    }

    public SearchNoteViewModel() {
        Boolean bool = Boolean.FALSE;
        this.isInputting = new MutableLiveData<>(bool);
        this.executingAction = new MutableLiveData<>(bool);
        this.searchProgressPercent = new MutableLiveData<>(0);
        this.searchScope = new SearchScope();
        this.searchProgressResult = new SearchProgressResult();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void checkAndUpdateSearchScope$default(SearchNoteViewModel searchNoteViewModel, LayoutSearchScopeBinding layoutSearchScopeBinding, Consumer consumer, int i, Object obj) {
        if ((i & 2) != 0) {
            consumer = new Consumer() { // from class: com.sunia.HTREnginev2.x7m
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj2) {
                    SearchNoteViewModel.m44864s((UpdateExpiredSearchScopeAction) obj2);
                }
            };
        }
        searchNoteViewModel.checkAndUpdateSearchScope(layoutSearchScopeBinding, consumer);
    }

    /* renamed from: l */
    public static final void m44858l(final SearchNoteViewModel this$0, final LayoutSearchScopeBinding binding, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        this$0.checkAndUpdateSearchScope(binding, new Consumer() { // from class: com.sunia.HTREnginev2.y7m
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SearchNoteViewModel.m44859m(SearchNoteViewModel.this, binding, (UpdateExpiredSearchScopeAction) obj);
            }
        });
    }

    /* renamed from: m */
    public static final void m44859m(SearchNoteViewModel this$0, LayoutSearchScopeBinding binding, UpdateExpiredSearchScopeAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m44872y(binding);
    }

    /* renamed from: n */
    public static final void m44860n(final SearchNoteViewModel this$0, final LayoutSearchScopeBinding binding, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        this$0.checkAndUpdateSearchScope(binding, new Consumer() { // from class: com.sunia.HTREnginev2.r7m
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SearchNoteViewModel.m44861o(SearchNoteViewModel.this, binding, (UpdateExpiredSearchScopeAction) obj);
            }
        });
    }

    /* renamed from: o */
    public static final void m44861o(SearchNoteViewModel this$0, LayoutSearchScopeBinding binding, UpdateExpiredSearchScopeAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m44873z(binding);
    }

    /* renamed from: p */
    public static final void m44862p(final SearchNoteViewModel this$0, final LayoutSearchScopeBinding binding, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        this$0.checkAndUpdateSearchScope(binding, new Consumer() { // from class: com.sunia.HTREnginev2.s7m
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SearchNoteViewModel.m44863q(SearchNoteViewModel.this, binding, (UpdateExpiredSearchScopeAction) obj);
            }
        });
    }

    /* renamed from: q */
    public static final void m44863q(SearchNoteViewModel this$0, LayoutSearchScopeBinding binding, UpdateExpiredSearchScopeAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m44870v(binding);
    }

    /* renamed from: s */
    public static final void m44864s(UpdateExpiredSearchScopeAction it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
    }

    /* renamed from: x */
    public static final void m44865x(EditorBundle editorBundle, SearchNoteViewModel this$0) {
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.unregister(editorBundle, this$0);
        editorBundle.destroy();
        this$0.executingAction.postValue(Boolean.FALSE);
    }

    /* renamed from: A */
    public final void m44866A(SearchNoteAction action) {
        boolean isBlank;
        isBlank = StringsKt__StringsJVMKt.isBlank(action.getResult().getCurrentSearchId());
        if (isBlank) {
            return;
        }
        if (!Intrinsics.areEqual(action.getResult().getCurrentSearchId(), this.searchProgressResult.getCurrentSearchId())) {
            this.searchProgressResult.setCurrentSearchId(action.getResult().getCurrentSearchId());
            this.searchProgressResult.setCurrentSearchName(action.getResult().getCurrentSearchName());
            this.searchProgressResult.setSearchProgress(0.0f);
            SearchProgressResult searchProgressResult = this.searchProgressResult;
            searchProgressResult.setSearchedCount(searchProgressResult.getSearchedCount() + 1);
        }
        this.searchProgressResult.setMaxSearchProgress(action.getResult().getMaxSearchProgress());
    }

    public final void addSearchScopeEvents(@NotNull final LayoutSearchScopeBinding binding) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        TintLinearLayout folderConditionLayout = binding.folderConditionLayout;
        Intrinsics.checkNotNullExpressionValue(folderConditionLayout, "folderConditionLayout");
        ViewKt.click$default(folderConditionLayout, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteViewModel.m44858l(SearchNoteViewModel.this, binding, view);
            }
        }, 1, null);
        TintLinearLayout tagConditionLayout = binding.tagConditionLayout;
        Intrinsics.checkNotNullExpressionValue(tagConditionLayout, "tagConditionLayout");
        ViewKt.click$default(tagConditionLayout, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteViewModel.m44860n(SearchNoteViewModel.this, binding, view);
            }
        }, 1, null);
        TintLinearLayout scopePreviewLayout = binding.scopePreviewLayout;
        Intrinsics.checkNotNullExpressionValue(scopePreviewLayout, "scopePreviewLayout");
        ViewKt.click$default(scopePreviewLayout, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteViewModel.m44862p(SearchNoteViewModel.this, binding, view);
            }
        }, 1, null);
        checkAndUpdateSearchScope$default(this, binding, null, 2, null);
    }

    public final void checkAndUpdateSearchScope(@NotNull LayoutSearchScopeBinding binding, @NotNull Consumer<UpdateExpiredSearchScopeAction> onNext) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<UpdateExpiredSearchScopeAction> doOnNext = new UpdateExpiredSearchScopeAction(this.searchScope).build().doOnNext(new C11554a(binding)).doOnNext(onNext);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        onyxErrorHandler.subscribeSilently(doOnNext);
    }

    public final void clear() {
        this.listData.setValue(new ArrayList());
        MutableLiveData<Boolean> mutableLiveData = this.isInputting;
        Boolean bool = Boolean.FALSE;
        mutableLiveData.setValue(bool);
        this.executingAction.setValue(bool);
        this.searchScope = new SearchScope();
        this.searchProgressResult = new SearchProgressResult();
    }

    public final void clearList() {
        this.listData.setValue(new ArrayList());
    }

    @NotNull
    public final ManageFolderContext createManageFolderContext() {
        ManageFolderContext manageFolderContext = new ManageFolderContext();
        manageFolderContext.setSelectAll(this.searchScope.getSelectAllFolder());
        manageFolderContext.setSelectedFolderIds(this.searchScope.getFolderIds());
        manageFolderContext.setSelectedFolderNames(this.searchScope.getFolderNames());
        return manageFolderContext;
    }

    @NotNull
    public final ManageTagContext createManageTagContext() {
        ManageTagContext manageTagContext = new ManageTagContext();
        manageTagContext.setSelectAll(this.searchScope.getSelectAllTag());
        manageTagContext.setSelectedTagIds(this.searchScope.getTagIds());
        manageTagContext.setSelectedTagNames(this.searchScope.getTagNames());
        return manageTagContext;
    }

    @NotNull
    public final String getCurrentNoteTitle() {
        return StringKt.shortenFromCenter(this.searchProgressResult.getCurrentSearchName(), 3);
    }

    @NotNull
    public final MutableLiveData<Object> getEvent() {
        return this.event;
    }

    @NotNull
    public final MutableLiveData<Boolean> getExecutingAction() {
        return this.executingAction;
    }

    @NotNull
    public final MutableLiveData<List<NoteSearchBean>> getListData() {
        return this.listData;
    }

    @NotNull
    public final String getSearchCountProgress() {
        int searchedCount = this.searchProgressResult.getSearchedCount() + 1;
        int maxSearchCount = this.searchProgressResult.getMaxSearchCount();
        StringBuilder sb = new StringBuilder();
        sb.append(searchedCount);
        sb.append('/');
        sb.append(maxSearchCount);
        return sb.toString();
    }

    @NotNull
    public final MutableLiveData<Integer> getSearchProgressPercent() {
        return this.searchProgressPercent;
    }

    @NotNull
    public final SearchScope getSearchScope() {
        return this.searchScope;
    }

    @NotNull
    public final MutableLiveData<Boolean> isInputting() {
        return this.isInputting;
    }

    public final void loadSavedSearchScope() {
        this.searchScope = NoteConfigManager.INSTANCE.getUserSearchScopeOption().get();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateSearchProgressEvent(@NotNull UpdateSearchProgressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.searchProgressResult.updateSearchProgress(event.getTotalProgress(), event.getDeltaProgress());
        this.searchProgressPercent.setValue(Integer.valueOf(MathUtils.INSTANCE.getIntPercent(Float.valueOf(this.searchProgressResult.getSearchProgress()), Float.valueOf(this.searchProgressResult.getMaxSearchProgress()))));
    }

    /* renamed from: r */
    public final void m44867r(List<NoteSearchBean> list) {
        List<NoteSearchBean> mutableList;
        if (list.isEmpty()) {
            return;
        }
        MutableLiveData<List<NoteSearchBean>> mutableLiveData = this.listData;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) NoteSearchBean.INSTANCE.mergeByPage(list));
        mutableLiveData.setValue(mutableList);
    }

    public final void saveSearchScope() {
        NoteConfigManager.INSTANCE.getUserSearchScopeOption().put(this.searchScope);
    }

    @NotNull
    public final Observable<Boolean> search(@NotNull String keyword) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        final EditorBundle createInstance = EditorBundle.INSTANCE.createInstance();
        EditorBundleKt.register(createInstance, this);
        m44871w();
        SearchActions searchActions = SearchActions.INSTANCE;
        List<TextSearchType> correspondingSearchTypes = searchActions.getCorrespondingSearchTypes(TextSearchType.ALL);
        NoteSearchArgs createSearchArgs = INSTANCE.createSearchArgs(correspondingSearchTypes, keyword);
        createSearchArgs.getFtsIndexArgs().setUnloadPage(true);
        Observable<Boolean> map = searchActions.activateSearchEngine(createInstance, correspondingSearchTypes).flatMap(new C11555b()).filter(C11556c.f55876e).doOnNext(new C11557d()).flatMap(new C11558e(createInstance, createSearchArgs, this)).doOnSubscribe(new C11559f()).buffer(1000L, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11560g()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.t7m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SearchNoteViewModel.m44865x(EditorBundle.this, this);
            }
        }).map(C11561h.f55885e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setSearchScope(@NotNull SearchScope searchScope) {
        Intrinsics.checkNotNullParameter(searchScope, "<set-?>");
        this.searchScope = searchScope;
    }

    /* renamed from: t */
    public final String m44868t() {
        if (this.searchScope.getSelectAllFolder()) {
            return ResManager.INSTANCE.getStringSafely(C10651R.string.search_condition_all_folder);
        }
        List<String> folderNames = this.searchScope.getFolderNames();
        return folderNames.isEmpty() ? ResManager.INSTANCE.getStringSafely(C10651R.string.search_condition_no_folder) : StringKt.join(folderNames, ResManager.INSTANCE.getStringSafely(C10651R.string.adaptive_comma));
    }

    /* renamed from: u */
    public final String m44869u() {
        if (this.searchScope.getSelectAllTag()) {
            return ResManager.INSTANCE.getStringSafely(C10651R.string.search_condition_all_tag);
        }
        List<String> tagNames = this.searchScope.getTagNames();
        return tagNames.isEmpty() ? ResManager.INSTANCE.getStringSafely(C10651R.string.search_condition_no_tag) : StringKt.join(tagNames, ResManager.INSTANCE.getStringSafely(C10651R.string.adaptive_comma));
    }

    public final void updateSearchScope(@NotNull LayoutSearchScopeBinding binding) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        binding.folderConditionText.setText(m44868t());
        binding.tagConditionText.setText(m44869u());
    }

    /* renamed from: v */
    public final void m44870v(LayoutSearchScopeBinding binding) {
        com.onyx.android.sdk.base.extension.ViewKt.hideInputKeyboard(binding.getRoot());
        ManageFolderContext createManageFolderContext = createManageFolderContext();
        ManageTagContext createManageTagContext = createManageTagContext();
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_8);
        BasePopupWindow.Companion companion = BasePopupWindow.INSTANCE;
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        TintLinearLayout root = binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        SearchScopePreviewPopup searchScopePreviewPopup = new SearchScopePreviewPopup(viewLocator.getActivity(root), createManageFolderContext, createManageTagContext);
        TintLinearLayout scopePreviewLayout = binding.scopePreviewLayout;
        Intrinsics.checkNotNullExpressionValue(scopePreviewLayout, "scopePreviewLayout");
        companion.showByDockType(searchScopePreviewPopup, scopePreviewLayout, DockType.BOTTOM, (r16 & 4) != 0 ? 0 : 0, (r16 & 8) != 0 ? 0 : -dimens, (r16 & 16) != 0 ? Activity.INSTANCE.getTopContentView() : null);
    }

    /* renamed from: w */
    public final void m44871w() {
        this.searchProgressResult = new SearchProgressResult();
        this.searchProgressPercent.setValue(0);
    }

    /* renamed from: y */
    public final void m44872y(LayoutSearchScopeBinding binding) {
        com.onyx.android.sdk.base.extension.ViewKt.hideInputKeyboard(binding.getRoot());
        ManageFolderContext createManageFolderContext = createManageFolderContext();
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        SelectMultiNoteFolderAction selectMultiNoteFolderAction = new SelectMultiNoteFolderAction(createManageFolderContext);
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        TintLinearLayout root = binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        Observable<Boolean> doOnNext = selectMultiNoteFolderAction.setActivityContext(viewLocator.getActivity(root)).build().filter(C11562i.f55886e).doOnNext(new C11563j(createManageFolderContext, binding));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    /* renamed from: z */
    public final void m44873z(LayoutSearchScopeBinding binding) {
        com.onyx.android.sdk.base.extension.ViewKt.hideInputKeyboard(binding.getRoot());
        ManageTagContext createManageTagContext = createManageTagContext();
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        SelectMultiNoteTagAction selectMultiNoteTagAction = new SelectMultiNoteTagAction(createManageTagContext);
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        TintLinearLayout root = binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        Observable<Boolean> doOnNext = selectMultiNoteTagAction.setActivityContext(viewLocator.getActivity(root)).build().filter(C11564k.f55890e).doOnNext(new C11565l(createManageTagContext, binding));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    /* renamed from: isInputting, reason: collision with other method in class */
    public final boolean m72419isInputting() {
        return Intrinsics.areEqual(this.isInputting.getValue(), Boolean.TRUE);
    }
}
