package com.onyx.galaxy.note.editor.action;

import android.app.Application;
import android.content.Context;
import android.graphics.Rect;
import com.blankj.utilcode.util.PermissionUtils;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.p039ui.PermissionDialog;
import com.onyx.android.sdk.universal.editor.events.note.ScreenCaptureCancelEvent;
import com.onyx.android.sdk.universal.editor.events.note.ScreenCaptureEvent;
import com.onyx.android.sdk.universal.editor.events.note.ScreenCaptureStartedEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.service.ScreenCaptureService;
import com.onyx.galaxy.note.editor.view.popup.ScreenCaptureEditorPopup;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "m", "Landroid/content/Context;", "e", "Landroid/content/Context;", "activityContext", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SelectCaptureRectAction extends RxBaseAction<SelectCaptureRectAction> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u001c\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0016\u0010\b\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;", "", "Landroid/content/Context;", "activityContext", "Lkotlin/Function0;", "", "onGranted", "requestPermission", "a", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m45633a(final Function0<Unit> onGranted) {
            PermissionUtils.requestDrawOverlays(new PermissionUtils.SimpleCallback() { // from class: com.onyx.galaxy.note.editor.action.SelectCaptureRectAction$Companion$overlaysPermissionRequest$1
                @Override // com.blankj.utilcode.util.PermissionUtils.SimpleCallback
                public void onDenied() {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C7453R.string.permission_denied, false, 2, (Object) null);
                }

                @Override // com.blankj.utilcode.util.PermissionUtils.SimpleCallback
                public void onGranted() {
                    onGranted.invoke();
                }
            });
        }

        public final void requestPermission(@NotNull Context activityContext, @NotNull final Function0<Unit> onGranted) {
            Intrinsics.checkNotNullParameter(activityContext, "activityContext");
            Intrinsics.checkNotNullParameter(onGranted, "onGranted");
            if (ContextKt.hasOverlayPermission(activityContext)) {
                onGranted.invoke();
            } else {
                new PermissionDialog.Builder(activityContext).setMessageTextRes(C10651R.string.permission_screen_capture_request_tip).setConfirmTextRes(C10651R.string.go_to_setting).setConfirmCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.action.SelectCaptureRectAction$Companion$requestPermission$1
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
                        SelectCaptureRectAction.INSTANCE.m45633a(onGranted);
                    }
                }).setCancelCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.action.SelectCaptureRectAction$Companion$requestPermission$2
                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        ToastUtils.show$default(ToastUtils.INSTANCE, C7453R.string.permission_denied, false, 2, (Object) null);
                    }
                }).create();
            }
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.SelectCaptureRectAction$a */
    /* loaded from: classes9.dex */
    public static final class C11799a<T> implements Consumer {
        public C11799a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SelectCaptureRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectCaptureRectAction.this.m45631l();
        }
    }

    public SelectCaptureRectAction(@NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.activityContext = activityContext;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SelectCaptureRectAction> create() {
        Observable<SelectCaptureRectAction> doOnNext = Observable.just(this).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11799a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m45631l() {
        INSTANCE.requestPermission(this.activityContext, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.action.SelectCaptureRectAction$showEditWithCheck$1
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
                SelectCaptureRectAction.this.m45632m();
            }
        });
    }

    /* renamed from: m */
    public final void m45632m() {
        ScreenCaptureEditorPopup screenCaptureEditorPopup = new ScreenCaptureEditorPopup();
        screenCaptureEditorPopup.setListener(new ScreenCaptureEditorPopup.ScreenCaptureListener() { // from class: com.onyx.galaxy.note.editor.action.SelectCaptureRectAction$showEditorDialog$1$1
            @Override // com.onyx.galaxy.note.editor.view.popup.ScreenCaptureEditorPopup.ScreenCaptureListener
            public void onCancel() {
                ScreenCaptureService.Companion.postEvent(new ScreenCaptureCancelEvent());
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.ScreenCaptureEditorPopup.ScreenCaptureListener
            public void onEditorRect(@NotNull Rect rect) {
                Intrinsics.checkNotNullParameter(rect, "rect");
                ScreenCaptureService.Companion.postEvent(new ScreenCaptureEvent(rect));
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.ScreenCaptureEditorPopup.ScreenCaptureListener
            public void onStart() {
                ScreenCaptureService.Companion.postEvent(new ScreenCaptureStartedEvent());
            }
        });
        Context appContext = getAppContext();
        Intrinsics.checkNotNull(appContext, "null cannot be cast to non-null type android.app.Application");
        screenCaptureEditorPopup.show((Application) appContext);
    }
}
