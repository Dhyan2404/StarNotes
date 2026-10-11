package com.onyx.galaxy.note.datarepository.action;

import android.content.Context;
import android.content.Intent;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.DataResponseKt;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.datarepository.bean.ShareResourceBean;
import com.onyx.galaxy.note.datarepository.p045ui.ShareResourceActivity;
import com.onyx.galaxy.note.datarepository.request.LoadShareResourceRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0015\u001a\u00020\u0010¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0016\u0010\t\u001a\u00020\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002R\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0015\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;", "m", AbstractLogger.RESPONSE, "l", "Landroid/content/Context;", "e", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "", C6997f.f39671c, Constants.STRING_SIG, "getCode", "()Ljava/lang/String;", "code", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class HandleShareResourceAction extends RxBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String code;

    /* renamed from: com.onyx.galaxy.note.datarepository.action.HandleShareResourceAction$a */
    /* loaded from: classes9.dex */
    public static final class C11739a<T, R> implements Function {
        public C11739a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DataResponse<ShareResourceBean> apply(@NotNull HandleShareResourceAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleShareResourceAction.this.m45438m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.HandleShareResourceAction$b */
    /* loaded from: classes9.dex */
    public static final class C11740b<T, R> implements Function {
        public C11740b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull DataResponse<ShareResourceBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(HandleShareResourceAction.this.m45437l(it2));
        }
    }

    public HandleShareResourceAction(@NotNull Context context, @NotNull String code) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(code, "code");
        this.context = context;
        this.code = code;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C11739a()).observeOn(AndroidSchedulers.mainThread()).map(new C11740b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getCode() {
        return this.code;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    /* renamed from: l */
    public final boolean m45437l(DataResponse<ShareResourceBean> response) {
        if (!DataResponseKt.isSuccess(response)) {
            return false;
        }
        ShareResourceBean data = response.getData();
        if (data == null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.command_password_does_not_exist, false, 2, (Object) null);
            return true;
        }
        if (data.getExpired()) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.command_password_has_expired, false, 2, (Object) null);
            return true;
        }
        String json = JSONUtils.INSTANCE.toJson(data);
        Intent intent = new Intent(this.context, (Class<?>) ShareResourceActivity.class);
        intent.putExtra("args", json);
        this.context.startActivity(intent);
        return true;
    }

    /* renamed from: m */
    public final DataResponse<ShareResourceBean> m45438m() {
        return new LoadShareResourceRequest(this.code).execute();
    }
}
