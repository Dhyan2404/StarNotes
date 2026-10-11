package com.onyx.galaxy.note.p048ui.dialog;

import android.content.Context;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.p039ui.DoubleOptionDialog;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.p048ui.dialog.NoteDialogsKt;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u001a(\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\u0004\u0012\u00020\u00010\u0007j\u0002`\b\u001a\u0016\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b¨\u0006\f"}, m61528d2 = {"activateHwrEngine", "", "uiContext", "Landroid/content/Context;", "recognizer", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "callback", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "showExceedDeviceLimitDialog", "limitCount", "", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteDialogsKt {

    /* renamed from: com.onyx.galaxy.note.ui.dialog.NoteDialogsKt$a */
    /* loaded from: classes9.dex */
    public static final class C12778a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ HWRBundle f61998e;

        /* renamed from: f */
        public final /* synthetic */ HWRRecognizerType f61999f;

        public C12778a(HWRBundle hWRBundle, HWRRecognizerType hWRRecognizerType) {
            this.f61998e = hWRBundle;
            this.f61999f = hWRRecognizerType;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRActivateAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRActivateAction(this.f61998e, this.f61999f).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.dialog.NoteDialogsKt$b */
    /* loaded from: classes9.dex */
    public static final class C12779b<T> implements Consumer {

        /* renamed from: e */
        public static final C12779b<T> f62000e = new C12779b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.ink_engine_failed, false, 2, (Object) null);
        }
    }

    public static final void activateHwrEngine(@NotNull Context uiContext, @NotNull HWRRecognizerType recognizer, @NotNull final Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(recognizer, "recognizer");
        Intrinsics.checkNotNullParameter(callback, "callback");
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(uiContext);
        createLoadingDialog.updateTitle(C10651R.string.ink_activating_beautify_sdk);
        createLoadingDialog.show();
        final HWRBundle hWRBundle = new HWRBundle();
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doFinally = Observable.just(Unit.INSTANCE).flatMap(new C12778a(hWRBundle, recognizer)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.bvj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteDialogsKt.m51324c(Function0.this);
            }
        }).doOnError(C12779b.f62000e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.cvj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteDialogsKt.m51325d(LoadingDialog.this, hWRBundle);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doFinally, null, null, 3, null);
    }

    /* renamed from: c */
    public static final void m51324c(Function0 callback) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        callback.invoke();
    }

    /* renamed from: d */
    public static final void m51325d(LoadingDialog dialog, HWRBundle hwrBundle) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        Intrinsics.checkNotNullParameter(hwrBundle, "$hwrBundle");
        dialog.dismiss();
        hwrBundle.getRecognizerManager().destroyAll();
    }

    public static final void showExceedDeviceLimitDialog(@NotNull Context uiContext, int i) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        DoubleOptionDialog createWithWarningConfirmTitleStyle = DoubleOptionDialog.INSTANCE.createWithWarningConfirmTitleStyle(uiContext);
        createWithWarningConfirmTitleStyle.setMessageText(ResManager.INSTANCE.getFormatString(C10651R.string.ink_exceed_device_limit, Integer.valueOf(i)));
        createWithWarningConfirmTitleStyle.setLeftButtonTitleRes(C10651R.string.cancel);
        createWithWarningConfirmTitleStyle.setRightButtonTitleRes(C10651R.string.confirm);
        createWithWarningConfirmTitleStyle.show();
    }
}
