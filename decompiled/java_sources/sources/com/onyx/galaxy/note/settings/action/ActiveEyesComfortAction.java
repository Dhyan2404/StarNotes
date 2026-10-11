package com.onyx.galaxy.note.settings.action;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.galaxy.note.settings.action.ActiveEyesComfortAction;
import com.onyx.galaxy.note.settings.utils.EyesComfortManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "e", Constants.HASIDCALL_INDEX_SIG, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ActiveEyesComfortAction extends RxBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean active;

    public ActiveEyesComfortAction(boolean z) {
        this.active = z;
    }

    public static final void create$lambda$0(boolean z) {
        EyesComfortManager.INSTANCE.onResume();
    }

    /* renamed from: n */
    public static final void m50632n(boolean z) {
        EyesComfortManager.INSTANCE.onPause();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable observeOn = Observable.just(Boolean.valueOf(this.active)).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return RxjavaKt.doOnNextIf(RxjavaKt.doOnNextIf(observeOn, new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.settings.action.ActiveEyesComfortAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = ActiveEyesComfortAction.this.active;
                return Boolean.valueOf(z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.f6
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ActiveEyesComfortAction.create$lambda$0(((Boolean) obj).booleanValue());
            }
        }), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.settings.action.ActiveEyesComfortAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = ActiveEyesComfortAction.this.active;
                return Boolean.valueOf(!z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.g6
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ActiveEyesComfortAction.m50632n(((Boolean) obj).booleanValue());
            }
        });
    }
}
