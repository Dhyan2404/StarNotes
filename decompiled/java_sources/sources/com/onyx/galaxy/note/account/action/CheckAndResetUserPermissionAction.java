package com.onyx.galaxy.note.account.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.BaseRxAccountAction;
import com.onyx.android.sdk.theme.utils.SkinType;
import com.onyx.android.sdk.theme.utils.ThemeHelper;
import com.onyx.android.sdk.universal.common.events.ThemeChangedEvent;
import com.onyx.android.sdk.universal.editor.data.EraserPropertyOption;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.utils.ThemeExt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "l", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CheckAndResetUserPermissionAction extends BaseRxAccountAction<CheckAndResetUserPermissionAction> {

    /* renamed from: com.onyx.galaxy.note.account.action.CheckAndResetUserPermissionAction$a */
    /* loaded from: classes9.dex */
    public static final class C10657a<T> implements Consumer {
        public C10657a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckAndResetUserPermissionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckAndResetUserPermissionAction.this.m41734m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.CheckAndResetUserPermissionAction$b */
    /* loaded from: classes9.dex */
    public static final class C10658b<T> implements Consumer {
        public C10658b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckAndResetUserPermissionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckAndResetUserPermissionAction.this.m41733l();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CheckAndResetUserPermissionAction> create() {
        Observable<CheckAndResetUserPermissionAction> doOnNext = Observable.just(this).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C10657a()).doOnNext(new C10658b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m41733l() {
        if (AccountDataBundle.INSTANCE.isVIPPermanent()) {
            return;
        }
        EraserPropertyOption eraserPropertyOption = EraserPropertyOption.INSTANCE;
        if (eraserPropertyOption.getScribbleEraseSwitchOption().get()) {
            eraserPropertyOption.getScribbleEraseSwitchOption().put(false);
        }
    }

    /* renamed from: m */
    public final void m41734m() {
        SkinType themeByType = SkinType.INSTANCE.getThemeByType(ThemeHelper.getTheme());
        if (themeByType == null) {
            themeByType = SkinType.DEFAULT;
        }
        if (!themeByType.getThemeStyle().isVipStyle() || AccountDataBundle.INSTANCE.isVIPPermanent()) {
            return;
        }
        ThemeExt.resetTheme$default(ThemeExt.INSTANCE, SkinType.DEFAULT.getThemeType(), null, 2, null);
        DocCollectionBundle.INSTANCE.postEvent(new ThemeChangedEvent());
    }
}
