package com.onyx.galaxy.note.utils;

import android.content.Context;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringMap;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.account.model.HWRActivationModel;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.MessageTemplateKt;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.hwr.service.manager.HWRActivationManager;
import com.onyx.android.sdk.p039ui.DoubleOptionDialog;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.CheckLoginStateAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.data.NavigationType;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.p048ui.view.TextSwitchButton;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.SearchActions;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J \u0010\n\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004J\u0016\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rJ\u0016\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/SearchActions;", "", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "searchType", "", "getCorrespondingSearchTypes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "searchTypes", "Lio/reactivex/rxjava3/core/Observable;", "activateSearchEngine", "Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;", "hwrSwitchButton", "", MessageTemplateKt.KEY_STATISTIC_TYPE, "", "toggleHwrSearch", "Landroid/content/Context;", "uiContext", "", "limitCount", "showExceedDeviceLimitDialog", C6999h.f39688c, "i", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "recognizer", "d", C6998g.f39679a, Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchActions.kt\ncom/onyx/galaxy/note/utils/SearchActions\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,146:1\n637#2:147\n*S KotlinDebug\n*F\n+ 1 SearchActions.kt\ncom/onyx/galaxy/note/utils/SearchActions\n*L\n56#1:147\n*E\n"})
/* loaded from: classes9.dex */
public final class SearchActions {

    @NotNull
    public static final SearchActions INSTANCE = new SearchActions();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TextSearchType.values().length];
            try {
                iArr[TextSearchType.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextSearchType.HANDWRITING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextSearchType.ALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: e */
    public static final void m52008e(TextSwitchButton hwrSwitchButton) {
        Intrinsics.checkNotNullParameter(hwrSwitchButton, "$hwrSwitchButton");
        INSTANCE.m52014i(hwrSwitchButton);
    }

    /* renamed from: f */
    public static final void m52009f(LoadingDialog dialog, HWRBundle hwrBundle) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        Intrinsics.checkNotNullParameter(hwrBundle, "$hwrBundle");
        dialog.dismiss();
        hwrBundle.getRecognizerManager().destroyAll();
    }

    /* renamed from: j */
    public static final void m52010j(String statisticType, boolean z) {
        Intrinsics.checkNotNullParameter(statisticType, "$statisticType");
        INSTANCE.m52012g(statisticType);
    }

    @NotNull
    public final Observable<?> activateSearchEngine(@NotNull EditorBundle editorBundle, @NotNull List<? extends TextSearchType> searchTypes) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(searchTypes, "searchTypes");
        if (!(!searchTypes.contains(TextSearchType.HANDWRITING))) {
            return new HWRActivateAction(editorBundle.getAiBundle().getHwrBundle(), HWREngineManager.INSTANCE.getRecognizerTypeByFunction(FunctionKey.HWR_SEARCH)).build();
        }
        Observable<?> just = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: d */
    public final void m52011d(final TextSwitchButton hwrSwitchButton, HWRRecognizerType recognizer) {
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(ViewLocator.INSTANCE.getActivity(hwrSwitchButton));
        createLoadingDialog.updateTitle(C10651R.string.ink_activating_beautify_sdk);
        createLoadingDialog.show();
        final HWRBundle hwrBundle = DocCollectionBundle.INSTANCE.docManagerBundle().getAiBundle().getHwrBundle();
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<HWRActivateAction> doFinally = new HWRActivateAction(hwrBundle, recognizer).build().doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.i6m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SearchActions.m52008e(TextSwitchButton.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.j6m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SearchActions.m52009f(LoadingDialog.this, hwrBundle);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doFinally, null, null, 3, null);
    }

    /* renamed from: g */
    public final void m52012g(final String statisticType) {
        NetworkCheckAction.Companion.checkNetwork$default(NetworkCheckAction.INSTANCE, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.utils.SearchActions$activateProVip$1
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
                StringMap stringMap = new StringMap();
                stringMap.put(MessageTemplateKt.KEY_STATISTIC_TYPE, statisticType);
                Navigator.navigate$default(Navigator.INSTANCE, NavigationType.MEMBER_CHARGE, stringMap, null, 4, null);
            }
        }, null, null, false, 14, null);
    }

    @NotNull
    public final List<TextSearchType> getCorrespondingSearchTypes(@NotNull TextSearchType searchType) {
        List<TextSearchType> mutableListOf;
        Intrinsics.checkNotNullParameter(searchType, "searchType");
        int i = WhenMappings.$EnumSwitchMapping$0[searchType.ordinal()];
        if (i == 1 || i == 2) {
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(searchType);
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(TextSearchType.TEXT, TextSearchType.HANDWRITING);
        }
        if (!FunctionPermissions.INSTANCE.isAiSearchEnabled()) {
            mutableListOf.remove(TextSearchType.HANDWRITING);
        }
        return mutableListOf;
    }

    /* renamed from: h */
    public final void m52013h(final TextSwitchButton hwrSwitchButton) {
        final HWRRecognizerType recognizerTypeByFunction = HWREngineManager.INSTANCE.getRecognizerTypeByFunction(FunctionKey.HWR_SEARCH);
        HWRActivationManager hWRActivationManager = HWRActivationManager.INSTANCE;
        HWRActivationModel hWREngineActivationState = hWRActivationManager.getHWREngineActivationState(HWRRecognizerTypeKt.getEngineType(recognizerTypeByFunction));
        if (hWREngineActivationState.getExceedDeviceLimit()) {
            Context context = hwrSwitchButton.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            showExceedDeviceLimitDialog(context, hWREngineActivationState.getDeviceLimitCount());
        } else if (hWRActivationManager.isRecognizerActivated(recognizerTypeByFunction)) {
            m52014i(hwrSwitchButton);
        } else {
            NetworkCheckAction.Companion.checkNetwork$default(NetworkCheckAction.INSTANCE, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.utils.SearchActions$checkAndEnableHwrSearch$1
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
                    SearchActions.INSTANCE.m52011d(TextSwitchButton.this, recognizerTypeByFunction);
                }
            }, null, null, false, 14, null);
        }
    }

    /* renamed from: i */
    public final void m52014i(TextSwitchButton hwrSwitchButton) {
        hwrSwitchButton.setChecked(true);
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        noteConfigManager.getUserHwrSearchEnabledOption().put(true);
        BooleanOption userAiSearchConfirmedOption = noteConfigManager.getUserAiSearchConfirmedOption();
        if (userAiSearchConfirmedOption.get()) {
            return;
        }
        userAiSearchConfirmedOption.put(true);
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.search_hwr_opened, false, 2, (Object) null);
    }

    public final void showExceedDeviceLimitDialog(@NotNull Context uiContext, int limitCount) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        DoubleOptionDialog createWithWarningConfirmTitleStyle = DoubleOptionDialog.INSTANCE.createWithWarningConfirmTitleStyle(uiContext);
        createWithWarningConfirmTitleStyle.setMessageText(ResManager.INSTANCE.getFormatString(C10651R.string.ink_exceed_device_limit, Integer.valueOf(limitCount)));
        createWithWarningConfirmTitleStyle.setLeftButtonTitleRes(C10651R.string.cancel);
        createWithWarningConfirmTitleStyle.setRightButtonTitleRes(C10651R.string.confirm);
        createWithWarningConfirmTitleStyle.show();
    }

    public final void toggleHwrSearch(@NotNull TextSwitchButton hwrSwitchButton, @NotNull final String statisticType) {
        Intrinsics.checkNotNullParameter(hwrSwitchButton, "hwrSwitchButton");
        Intrinsics.checkNotNullParameter(statisticType, "statisticType");
        BooleanOption userHwrSearchEnabledOption = NoteConfigManager.INSTANCE.getUserHwrSearchEnabledOption();
        if (FunctionPermissions.INSTANCE.isAiSearchEnabled()) {
            hwrSwitchButton.setChecked(false);
            userHwrSearchEnabledOption.put(false);
        } else {
            if (AccountDataBundle.INSTANCE.isVipRole()) {
                m52013h(hwrSwitchButton);
                return;
            }
            ViewKt.hideInputKeyboard(hwrSwitchButton);
            Context context = hwrSwitchButton.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            RxjavaKt.doOnNextIfTrue(new CheckLoginStateAction(context).build(), new Consumer() { // from class: com.sunia.HTREnginev2.k6m
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    SearchActions.m52010j(statisticType, ((Boolean) obj).booleanValue());
                }
            }).subscribe();
        }
    }
}
