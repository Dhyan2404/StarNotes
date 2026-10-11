package com.onyx.galaxy.note.p048ui.activity;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.galaxy.note.NoteApp;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m61528d2 = {"<anonymous>", "Lio/reactivex/rxjava3/core/Observable;", "", OcrValues.LANG_ITALIAN, "", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SplashActivity$onCreate$2 extends Lambda implements Function1<Boolean, Observable<? extends Object>> {
    final /* synthetic */ boolean $isUserAgree;
    final /* synthetic */ SplashActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashActivity$onCreate$2(boolean z, SplashActivity splashActivity) {
        super(1);
        this.$isUserAgree = z;
        this.this$0 = splashActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(SplashActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51242C();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Boolean bool) {
        return invoke(bool.booleanValue());
    }

    @NotNull
    public final Observable<? extends Object> invoke(boolean z) {
        NoteApp companion;
        if (!this.$isUserAgree && (companion = NoteApp.INSTANCE.getInstance()) != null) {
            companion.initSdkWithAgreement();
        }
        Observable<List<OnyxAccountModel>> loadRecentLoginAccountListObservable = AccountDataBundle.INSTANCE.loadRecentLoginAccountListObservable();
        final SplashActivity splashActivity = this.this$0;
        Observable<List<OnyxAccountModel>> doFinally = loadRecentLoginAccountListObservable.doFinally(new Action() { // from class: com.onyx.galaxy.note.ui.activity.a
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SplashActivity$onCreate$2.invoke$lambda$0(SplashActivity.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }
}
