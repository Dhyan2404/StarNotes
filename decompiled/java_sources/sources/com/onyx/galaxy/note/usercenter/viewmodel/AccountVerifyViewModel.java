package com.onyx.galaxy.note.usercenter.viewmodel;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.bean.AccountVerifyArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyMethods;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.subjects.PublishSubject;
import io.reactivex.rxjava3.subjects.Subject;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b$\u0010%J\u0006\u0010\u0003\u001a\u00020\u0002R%\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R(\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010#\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", Constants.RESET, "", "", "i", "Ljava/util/Map;", "getTabTitles", "()Ljava/util/Map;", "tabTitles", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "j", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "getVerifyArgs", "()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "setVerifyArgs", "(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V", "verifyArgs", "Lio/reactivex/rxjava3/subjects/Subject;", "", C4921e.f26537n, "Lio/reactivex/rxjava3/subjects/Subject;", "getEventPublisher", "()Lio/reactivex/rxjava3/subjects/Subject;", "setEventPublisher", "(Lio/reactivex/rxjava3/subjects/Subject;)V", "eventPublisher", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "l", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "getAccount", "()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "setAccount", "(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V", LoginAuthConst.ACCOUNT_AUTH, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AccountVerifyViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<String, String> tabTitles;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public AccountVerifyArgs verifyArgs;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public Subject<Boolean> eventPublisher;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public OnyxAccountModel account;

    public AccountVerifyViewModel() {
        Map<String, String> mapOf;
        ResManager resManager = ResManager.INSTANCE;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.m61535to(AccountVerifyMethods.PASSWORD, resManager.getString(C10651R.string.verify_method_account)), TuplesKt.m61535to(AccountVerifyMethods.PHONE, resManager.getString(C10651R.string.verify_method_phone)), TuplesKt.m61535to(AccountVerifyMethods.EMAIL, resManager.getString(C10651R.string.user_title_email)), TuplesKt.m61535to(AccountVerifyMethods.WECHAT, resManager.getString(C10651R.string.user_title_wechat)), TuplesKt.m61535to(AccountVerifyMethods.HUAWEI, resManager.getString(C10651R.string.login_ways_huawei)));
        this.tabTitles = mapOf;
        this.verifyArgs = new AccountVerifyArgs();
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.eventPublisher = create;
    }

    @Nullable
    public final OnyxAccountModel getAccount() {
        return this.account;
    }

    @NotNull
    public final Subject<Boolean> getEventPublisher() {
        return this.eventPublisher;
    }

    @NotNull
    public final Map<String, String> getTabTitles() {
        return this.tabTitles;
    }

    @NotNull
    public final AccountVerifyArgs getVerifyArgs() {
        return this.verifyArgs;
    }

    public final void reset() {
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.eventPublisher = create;
    }

    public final void setAccount(@Nullable OnyxAccountModel onyxAccountModel) {
        this.account = onyxAccountModel;
    }

    public final void setEventPublisher(@NotNull Subject<Boolean> subject) {
        Intrinsics.checkNotNullParameter(subject, "<set-?>");
        this.eventPublisher = subject;
    }

    public final void setVerifyArgs(@NotNull AccountVerifyArgs accountVerifyArgs) {
        Intrinsics.checkNotNullParameter(accountVerifyArgs, "<set-?>");
        this.verifyArgs = accountVerifyArgs;
    }
}
