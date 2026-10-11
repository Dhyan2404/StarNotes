package com.onyx.galaxy.note.editor.action.theme;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.ResponseData;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.cloud.p026v2.ThemePayService;
import com.onyx.android.sdk.data.common.data.theme.UserThemeBean;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002R*\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;", "e", "Ljava/util/List;", "getUserThemeList", "()Ljava/util/List;", "setUserThemeList", "(Ljava/util/List;)V", "userThemeList", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class UserThemeRequestAction extends RxBaseAction<UserThemeRequestAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public List<UserThemeBean> userThemeList;

    /* renamed from: com.onyx.galaxy.note.editor.action.theme.UserThemeRequestAction$a */
    /* loaded from: classes9.dex */
    public static final class C12007a<T, R> implements Function {
        public C12007a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserThemeRequestAction apply(@NotNull UserThemeRequestAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UserThemeRequestAction.this.m45987l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.theme.UserThemeRequestAction$b */
    /* loaded from: classes9.dex */
    public static final class C12008b<T, R> implements Function {
        public C12008b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserThemeRequestAction apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UserThemeRequestAction.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UserThemeRequestAction> create() {
        Observable<UserThemeRequestAction> onErrorReturn = Observable.just(this).observeOn(KSyncBundle.INSTANCE.getNetworkScheduler()).map(new C12007a()).onErrorReturn(new C12008b());
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }

    @Nullable
    public final List<UserThemeBean> getUserThemeList() {
        return this.userThemeList;
    }

    /* renamed from: l */
    public final UserThemeRequestAction m45987l() {
        Response<ResponseData<List<UserThemeBean>>> execute = ((ThemePayService) ServiceFactory.INSTANCE.getOnyxApiV2Service(ThemePayService.class)).getUsersTheme().execute();
        if (execute.isSuccessful()) {
            this.userThemeList = execute.body().getData();
        }
        return this;
    }

    public final void setUserThemeList(@Nullable List<UserThemeBean> list) {
        this.userThemeList = list;
    }
}
