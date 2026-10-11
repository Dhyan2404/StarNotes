package com.onyx.galaxy.note.category.action.note;

import com.alibaba.fastjson2.TypeReference;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.action.BaseRxAccountAction;
import com.onyx.android.sdk.data.account.bean.CheckInRecord;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002R!\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/note/CheckInAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;", "e", "Lkotlin/Lazy;", "l", "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "option", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCheckInAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckInAction.kt\ncom/onyx/galaxy/note/category/action/note/CheckInAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n1#2:53\n*E\n"})
/* loaded from: classes9.dex */
public final class CheckInAction extends BaseRxAccountAction<Object> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy option;

    /* renamed from: com.onyx.galaxy.note.category.action.note.CheckInAction$a */
    /* loaded from: classes9.dex */
    public static final class C11166a<T> implements Predicate {

        /* renamed from: e */
        public static final C11166a<T> f54309e = new C11166a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AccountDataBundle.INSTANCE.isAlreadyLogin();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.note.CheckInAction$b */
    /* loaded from: classes9.dex */
    public static final class C11167b<T> implements Consumer {
        public C11167b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckInAction.this.m42905m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.note.CheckInAction$c */
    /* loaded from: classes9.dex */
    public static final class C11168c<T> implements Consumer {
        public C11168c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckInAction.this.m42906n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.note.CheckInAction$d */
    /* loaded from: classes9.dex */
    public static final class C11169d<T, R> implements Function {
        public C11169d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckInAction.this;
        }
    }

    public CheckInAction() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<CheckInRecord>>() { // from class: com.onyx.galaxy.note.category.action.note.CheckInAction$option$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final JSONObjectOption<CheckInRecord> invoke() {
                String composedKey$default = SyncStateOptions.getComposedKey$default(SyncStateOptions.INSTANCE, FunctionKey.CHECK_IN, null, 2, null);
                MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
                return new JSONObjectOption<>(null, composedKey$default, new TypeReference<CheckInRecord>() { // from class: com.onyx.galaxy.note.category.action.note.CheckInAction$option$2$invoke$$inlined$typeRef$1
                }, new Function0<CheckInRecord>() { // from class: com.onyx.galaxy.note.category.action.note.CheckInAction$option$2.1
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final CheckInRecord invoke() {
                        return new CheckInRecord();
                    }
                }, 1, null);
            }
        });
        this.option = lazy;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<R> map = createCloudObservable().filter(C11166a.f54309e).doOnNext(new C11167b()).doOnNext(new C11168c()).map(new C11169d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final JSONObjectOption<CheckInRecord> m42904l() {
        return (JSONObjectOption) this.option.getValue();
    }

    /* renamed from: m */
    public final void m42905m() {
        CheckInRecord checkInRecord = m42904l().get();
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        String stringOfNow = dateTimeUtil.stringOfNow("yyyy-MM-dd");
        if (!Intrinsics.areEqual(stringOfNow, checkInRecord.getLastCheckInDay())) {
            checkInRecord.getCheckInTimes().add(Long.valueOf(dateTimeUtil.millisOfNow()));
        }
        checkInRecord.setLastCheckInDay(stringOfNow);
        m42904l().put(checkInRecord);
    }

    /* renamed from: n */
    public final void m42906n() {
        CheckInRecord checkInRecord = m42904l().get();
        Boolean valueOf = Boolean.valueOf(!checkInRecord.getCheckInTimes().isEmpty());
        if (!valueOf.booleanValue()) {
            valueOf = null;
        }
        if (valueOf != null) {
            valueOf.booleanValue();
            RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).checkIn(checkInRecord), false, 1, null);
            checkInRecord.getCheckInTimes().clear();
            m42904l().put(checkInRecord);
        }
    }
}
