package com.onyx.galaxy.note.editor.viewmodel;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TimeGuard;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.account.model.HWRActivationModel;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.MessageTemplateKt;
import com.onyx.android.sdk.hwr.action.HWRResourceDownloadAction;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.bundle.HWRFactory;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.hwr.service.manager.HWRActivationManager;
import com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker;
import com.onyx.android.sdk.replicator.note.p035db.model.HwrResourceModel;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.universal.editor.action.hwr.FetchHwrResourceListAction;
import com.onyx.android.sdk.universal.editor.action.hwr.LoadHwrResourceListAction;
import com.onyx.android.sdk.universal.editor.data.HWRArgs;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.CheckLoginStateAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.databinding.DialogConvertToTextBinding;
import com.onyx.galaxy.note.editor.event.HwrResourceDownloadFailEvent;
import com.onyx.galaxy.note.editor.event.HwrResourceDownloadFinishEvent;
import com.onyx.galaxy.note.editor.event.HwrResourceFetchedEvent;
import com.onyx.galaxy.note.editor.event.HwrResourceLoadedEvent;
import com.onyx.galaxy.note.editor.event.HwrResourceSelectedEvent;
import com.onyx.galaxy.note.editor.event.SmartHwrDisabledEvent;
import com.onyx.galaxy.note.editor.event.SmartHwrEnabledEvent;
import com.onyx.galaxy.note.editor.viewmodel.SelectionHwrViewModel;
import com.onyx.galaxy.note.p048ui.dialog.NoteDialogsKt;
import com.onyx.galaxy.note.p048ui.view.TextSwitchButton;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.FunctionPermissions;
import com.onyx.galaxy.note.utils.Navigator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bG\u0010HJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013J\u0016\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0019\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0016J\u0006\u0010\u001e\u001a\u00020\u001dJ\u0006\u0010\u001f\u001a\u00020\u0016J\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\b\u0010!\u001a\u0004\u0018\u00010\nJ\u0006\u0010#\u001a\u00020\"J\u000e\u0010%\u001a\u00020$2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010&\u001a\u00020$2\u0006\u0010\u000b\u001a\u00020\nR\u001d\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00100'8\u0006¢\u0006\f\n\u0004\b\u0007\u0010(\u001a\u0004\b)\u0010*R0\u00101\u001a\u0010\u0012\f\u0012\n ,*\u0004\u0018\u00010$0$0'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010(\u001a\u0004\b.\u0010*\"\u0004\b/\u00100R\"\u00107\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010;\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00102\u001a\u0004\b9\u00104\"\u0004\b:\u00106R(\u0010B\u001a\b\u0012\u0004\u0012\u00020\n0<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u0014\u0010F\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010E¨\u0006I"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;", "smartHwrButton", "", C6998g.f39679a, C4921e.f26537n, "i", "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;", "m", "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;", "model", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", C6999h.f39688c, "init", Constants.CLEAR_ATTRIBUTES, "", "ev", "postEvent", "Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;", "binding", "updateSmartHwr", "", MessageTemplateKt.KEY_STATISTIC_TYPE, "toggleSmartHwr", "loadFromLocal", "fetchFromCloud", "lang", "selectLang", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "getHwrRecognizer", "getHwrLang", "download", "selectPrimaryResource", "Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;", "getHWRArgs", "", "isResourceDownloaded", "isResourceDownloading", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/lifecycle/MutableLiveData;", "getEvent", "()Landroidx/lifecycle/MutableLiveData;", NotificationCompat.CATEGORY_EVENT, "kotlin.jvm.PlatformType", "j", "getLoading", "setLoading", "(Landroidx/lifecycle/MutableLiveData;)V", "loading", Constants.STRING_SIG, "getSelectedLang", "()Ljava/lang/String;", "setSelectedLang", "(Ljava/lang/String;)V", "selectedLang", "l", "getSelectingLang", "setSelectingLang", "selectingLang", "", "Ljava/util/List;", "getHwrResourceModels", "()Ljava/util/List;", "setHwrResourceModels", "(Ljava/util/List;)V", "hwrResourceModels", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", GoogleApiAvailabilityLight.f29016b, "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "disposables", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectionHwrViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionHwrViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,254:1\n256#2,2:255\n288#3,2:257\n*S KotlinDebug\n*F\n+ 1 SelectionHwrViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel\n*L\n88#1:255,2\n214#1:257,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SelectionHwrViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Object> event = new MutableLiveData<>(Unit.INSTANCE);

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<Boolean> loading = new MutableLiveData<>(Boolean.FALSE);

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public String selectedLang = "";

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public String selectingLang = "";

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public List<HwrResourceModel> hwrResourceModels;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable disposables;

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.SelectionHwrViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12589a<T> implements Consumer {
        public C12589a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<HwrResourceModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectionHwrViewModel.this.setHwrResourceModels(it2);
            SelectionHwrViewModel.this.postEvent(new HwrResourceLoadedEvent());
        }
    }

    public SelectionHwrViewModel() {
        List<HwrResourceModel> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.hwrResourceModels = emptyList;
        this.disposables = new CompositeDisposable();
    }

    /* renamed from: j */
    public static final void m50430j(SelectionHwrViewModel this$0, HwrResourceModel model) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(model, "$model");
        this$0.postEvent(new HwrResourceDownloadFinishEvent(model));
    }

    /* renamed from: l */
    public static final void m50431l(SelectionHwrViewModel this$0, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.postEvent(new HwrResourceFetchedEvent());
    }

    /* renamed from: n */
    public static final void m50432n(String statisticType, boolean z) {
        Intrinsics.checkNotNullParameter(statisticType, "$statisticType");
        Navigator.INSTANCE.activateProVip(statisticType);
    }

    public final void clear() {
        this.event.setValue(Unit.INSTANCE);
        this.selectedLang = "";
        this.selectingLang = "";
        this.disposables.clear();
    }

    public final void download(@NotNull final HwrResourceModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        if (!NetworkUtils.INSTANCE.isNetworkConnected(ResManager.INSTANCE.getAppContext())) {
            postEvent(new HwrResourceDownloadFailEvent(model));
            return;
        }
        Observable<HWRResource> doOnComplete = new HWRResourceDownloadAction(DocCollectionBundle.INSTANCE.hwrBundle(), m50434h(model)).build().observeOn(AndroidSchedulers.mainThread()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.lgm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SelectionHwrViewModel.m50430j(SelectionHwrViewModel.this, model);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        RxjavaKt.subscribeWithDefault$default(doOnComplete, null, null, null, 7, null);
    }

    public final void fetchFromCloud() {
        RxjavaKt.doOnNextIf(new FetchHwrResourceListAction(HWREngineManager.INSTANCE.getEngineByFunction(FunctionKey.HWR_SMART)).build(), new TimeGuard(ResManager.INSTANCE.getLong(C7373R.integer.sync_timeout), 0L, 2, null), new Consumer() { // from class: com.sunia.HTREnginev2.kgm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SelectionHwrViewModel.m50431l(SelectionHwrViewModel.this, obj);
            }
        }).subscribe();
    }

    /* renamed from: g */
    public final void m50433g(final TextSwitchButton smartHwrButton) {
        final HWRRecognizerType recognizerTypeByFunction = HWREngineManager.INSTANCE.getRecognizerTypeByFunction(FunctionKey.HWR_SMART);
        HWRActivationManager hWRActivationManager = HWRActivationManager.INSTANCE;
        HWRActivationModel hWREngineActivationState = hWRActivationManager.getHWREngineActivationState(HWRRecognizerTypeKt.getEngineType(recognizerTypeByFunction));
        if (hWREngineActivationState.getExceedDeviceLimit()) {
            Context context = smartHwrButton.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            NoteDialogsKt.showExceedDeviceLimitDialog(context, hWREngineActivationState.getDeviceLimitCount());
        } else {
            if (hWRActivationManager.isRecognizerActivated(recognizerTypeByFunction)) {
                m50436k(smartHwrButton);
                return;
            }
            final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(ViewLocator.INSTANCE.getActivity(smartHwrButton));
            createLoadingDialog.updateTitle(C10651R.string.ink_activating_beautify_sdk);
            createLoadingDialog.show();
            NetworkCheckAction.Companion.checkNetwork$default(NetworkCheckAction.INSTANCE, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.viewmodel.SelectionHwrViewModel$checkAndEnableSmartHwr$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(boolean z) {
                    Context context2 = TextSwitchButton.this.getContext();
                    Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                    HWRRecognizerType hWRRecognizerType = recognizerTypeByFunction;
                    final SelectionHwrViewModel selectionHwrViewModel = this;
                    final TextSwitchButton textSwitchButton = TextSwitchButton.this;
                    NoteDialogsKt.activateHwrEngine(context2, hWRRecognizerType, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.viewmodel.SelectionHwrViewModel$checkAndEnableSmartHwr$1.1
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
                            SelectionHwrViewModel.this.m50436k(textSwitchButton);
                        }
                    });
                }
            }, null, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.viewmodel.SelectionHwrViewModel$checkAndEnableSmartHwr$2
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
                    LoadingDialog.this.dismiss();
                }
            }, false, 10, null);
        }
    }

    @NotNull
    public final MutableLiveData<Object> getEvent() {
        return this.event;
    }

    @NotNull
    public final HWRArgs getHWRArgs() {
        String hwrLang = getHwrLang();
        HWRRecognizerType hwrRecognizer = getHwrRecognizer();
        boolean shouldEnableSegmentFeature = HWREngineManager.INSTANCE.shouldEnableSegmentFeature(HWRRecognizerTypeKt.getEngineType(hwrRecognizer));
        HWRArgs hWRArgs = new HWRArgs();
        hWRArgs.setLang(hwrLang);
        hWRArgs.setRecognizer(hwrRecognizer);
        hWRArgs.setSegmentation(shouldEnableSegmentFeature);
        return hWRArgs;
    }

    @NotNull
    public final String getHwrLang() {
        String str;
        String defaultLangByFunction = HWREngineManager.INSTANCE.getDefaultLangByFunction(FunctionKey.HWR);
        return (FunctionPermissions.INSTANCE.isSmartHwrEnabled() && (str = NoteConfigManager.INSTANCE.getLastHwrLangOption().get()) != null) ? str : defaultLangByFunction;
    }

    @NotNull
    public final HWRRecognizerType getHwrRecognizer() {
        return HWREngineManager.INSTANCE.getRecognizerTypeByFunction(FunctionPermissions.INSTANCE.isSmartHwrEnabled() ? FunctionKey.HWR_SMART : FunctionKey.HWR);
    }

    @NotNull
    public final List<HwrResourceModel> getHwrResourceModels() {
        return this.hwrResourceModels;
    }

    @NotNull
    public final MutableLiveData<Boolean> getLoading() {
        return this.loading;
    }

    @NotNull
    public final String getSelectedLang() {
        return this.selectedLang;
    }

    @NotNull
    public final String getSelectingLang() {
        return this.selectingLang;
    }

    /* renamed from: h */
    public final HWRResource m50434h(HwrResourceModel model) {
        HWRResource hWRResource = new HWRResource();
        hWRResource.setEngineType(model.getEngine());
        hWRResource.setLang(model.getLang());
        hWRResource.setUrl(model.getUrl());
        hWRResource.setMd5(model.getMd5());
        return hWRResource;
    }

    /* renamed from: i */
    public final void m50435i(TextSwitchButton smartHwrButton) {
        smartHwrButton.setChecked(false);
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        noteConfigManager.getUserSmartHwrEnabledOption().put(false);
        noteConfigManager.resetLastHwrLangOption();
        this.selectedLang = getHwrLang();
        this.selectingLang = "";
        postEvent(new SmartHwrDisabledEvent());
    }

    public final void init() {
        this.selectedLang = getHwrLang();
        loadFromLocal();
        fetchFromCloud();
    }

    public final boolean isResourceDownloaded(@NotNull HwrResourceModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        return m50437m().isResourceDownloaded(m50434h(model));
    }

    public final boolean isResourceDownloading(@NotNull HwrResourceModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        return m50437m().isResourceDownloading(m50434h(model));
    }

    /* renamed from: k */
    public final void m50436k(TextSwitchButton smartHwrButton) {
        smartHwrButton.setChecked(true);
        NoteConfigManager.INSTANCE.getUserSmartHwrEnabledOption().put(true);
        postEvent(new SmartHwrEnabledEvent());
    }

    public final void loadFromLocal() {
        new LoadHwrResourceListAction(HWREngineManager.INSTANCE.getEngineByFunction(FunctionKey.HWR_SMART)).build().doOnNext(new C12589a()).subscribe();
    }

    /* renamed from: m */
    public final IHWRResourceChecker m50437m() {
        return HWRFactory.INSTANCE.getResourceCheckerFactory().invoke(HWRRecognizerTypeKt.getEngineType(getHwrRecognizer()));
    }

    public final void postEvent(@NotNull Object ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        this.event.setValue(ev);
    }

    public final void selectLang(@NotNull String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        this.selectedLang = lang;
        this.selectingLang = "";
        NoteConfigManager.INSTANCE.getLastHwrLangOption().put(lang);
        postEvent(new HwrResourceSelectedEvent());
    }

    @Nullable
    public final HwrResourceModel selectPrimaryResource() {
        Object obj;
        String hwrLang = getHwrLang();
        Iterator<T> it2 = this.hwrResourceModels.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((HwrResourceModel) obj).getLang(), hwrLang)) {
                break;
            }
        }
        return (HwrResourceModel) obj;
    }

    public final void setHwrResourceModels(@NotNull List<HwrResourceModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.hwrResourceModels = list;
    }

    public final void setLoading(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loading = mutableLiveData;
    }

    public final void setSelectedLang(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.selectedLang = str;
    }

    public final void setSelectingLang(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.selectingLang = str;
    }

    public final void toggleSmartHwr(@NotNull TextSwitchButton smartHwrButton, @NotNull final String statisticType) {
        Intrinsics.checkNotNullParameter(smartHwrButton, "smartHwrButton");
        Intrinsics.checkNotNullParameter(statisticType, "statisticType");
        if (FunctionPermissions.INSTANCE.isSmartHwrEnabled()) {
            m50435i(smartHwrButton);
            return;
        }
        if (AccountDataBundle.INSTANCE.isVipRole()) {
            m50433g(smartHwrButton);
            return;
        }
        ViewKt.hideInputKeyboard(smartHwrButton);
        Context context = smartHwrButton.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        RxjavaKt.doOnNextIfTrue(new CheckLoginStateAction(context).build(), new Consumer() { // from class: com.sunia.HTREnginev2.jgm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SelectionHwrViewModel.m50432n(statisticType, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    public final void updateSmartHwr(@NotNull DialogConvertToTextBinding binding) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        boolean isSmartHwrEnabled = FunctionPermissions.INSTANCE.isSmartHwrEnabled();
        binding.smartHwrButton.setChecked(isSmartHwrEnabled);
        TintLinearLayout langSelectLayout = binding.langSelectLayout;
        Intrinsics.checkNotNullExpressionValue(langSelectLayout, "langSelectLayout");
        langSelectLayout.setVisibility(isSmartHwrEnabled ? 0 : 8);
    }
}
