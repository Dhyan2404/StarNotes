package com.onyx.galaxy.note.settings.viewmodel;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.common.action.CloudAuthAction;
import com.onyx.android.sdk.cloudstorage.common.action.DeleteLocalAuthAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.UserInfo;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsCloudBackupFragment;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b3\u00104J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0003J\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0003J\u0006\u0010\u0011\u001a\u00020\u0003J\u0006\u0010\u0012\u001a\u00020\u0003J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016R\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001f\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u001f\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u001e8\u0006¢\u0006\f\n\u0004\b#\u0010 \u001a\u0004\b$\u0010\"R\u001f\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u001e8\u0006¢\u0006\f\n\u0004\b%\u0010 \u001a\u0004\b&\u0010\"R%\u0010)\u001a\u0010\u0012\f\u0012\n '*\u0004\u0018\u00010\u00030\u00030\u001e8\u0006¢\u0006\f\n\u0004\b(\u0010 \u001a\u0004\b)\u0010\"R%\u0010+\u001a\u0010\u0012\f\u0012\n '*\u0004\u0018\u00010\u00030\u00030\u001e8\u0006¢\u0006\f\n\u0004\b*\u0010 \u001a\u0004\b+\u0010\"R(\u00102\u001a\b\u0012\u0004\u0012\u00020,0\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u001c\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u00065"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lio/reactivex/rxjava3/core/Observable;", "", "checkNetDiskAuth", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, "deleteNetDiskAuth", "Landroid/content/Context;", "context", "currentProvider", "Lcom/onyx/android/sdk/data/account/AccountDataBundle;", "oAuthDrive", "enable", "", "configureWifiOnly", "configureAutoBackup", "hasBindDrive", "isEnableAutoBackup", "d", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "i", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "autoBackupOp", "j", "wifiOnlyOp", "", C4921e.f26537n, "Ljava/util/List;", "drives", "Landroidx/lifecycle/MutableLiveData;", "l", "Landroidx/lifecycle/MutableLiveData;", "isAuthBaidu", "()Landroidx/lifecycle/MutableLiveData;", "m", "isAuthGoogleDrive", GoogleApiAvailabilityLight.f29016b, "isAuthOneDrive", "kotlin.jvm.PlatformType", C4921e.f26528e, "isAutoBackup", "p", "isWifiOnly", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "q", "getAuthProvider", "()Ljava/util/List;", "setAuthProvider", "(Ljava/util/List;)V", "authProvider", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSettingsCloudBackupViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsCloudBackupViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1549#2:94\n1620#2,3:95\n1747#2,3:98\n288#2,2:101\n*S KotlinDebug\n*F\n+ 1 SettingsCloudBackupViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel\n*L\n83#1:94\n83#1:95,3\n83#1:98,3\n87#1:101,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SettingsCloudBackupViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption autoBackupOp;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption wifiOnlyOp;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<Provider> drives;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isAuthBaidu;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isAuthGoogleDrive;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isAuthOneDrive;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isAutoBackup;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isWifiOnly;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public List<? extends BaseCloudStorageProvider> authProvider;

    @SourceDebugExtension({"SMAP\nSettingsCloudBackupViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsCloudBackupViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$checkNetDiskAuth$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1549#2:94\n1620#2,3:95\n*S KotlinDebug\n*F\n+ 1 SettingsCloudBackupViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$checkNetDiskAuth$1\n*L\n42#1:94\n42#1:95,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.SettingsCloudBackupViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12760a<T> implements Consumer {
        public C12760a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends CloudStorageProvider> it2) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(it2, "it");
            SettingsCloudBackupViewModel settingsCloudBackupViewModel = SettingsCloudBackupViewModel.this;
            List<? extends CloudStorageProvider> list = it2;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (CloudStorageProvider cloudStorageProvider : list) {
                Intrinsics.checkNotNull(cloudStorageProvider, "null cannot be cast to non-null type com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider");
                arrayList.add((BaseCloudStorageProvider) cloudStorageProvider);
            }
            settingsCloudBackupViewModel.setAuthProvider(arrayList);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.SettingsCloudBackupViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12761b<T> implements Consumer {
        public C12761b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends CloudStorageProvider> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SettingsCloudBackupViewModel.this.isAuthBaidu().setValue(Boolean.valueOf(SettingsCloudBackupViewModel.this.m51216d(Provider.BAIDU_YUN)));
            SettingsCloudBackupViewModel.this.isAuthGoogleDrive().setValue(Boolean.valueOf(SettingsCloudBackupViewModel.this.m51216d(Provider.GOOGLE_DRIVE)));
            SettingsCloudBackupViewModel.this.isAuthOneDrive().setValue(Boolean.valueOf(SettingsCloudBackupViewModel.this.m51216d(Provider.ONE_DRIVE)));
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.SettingsCloudBackupViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12762c<T, R> implements Function {

        /* renamed from: e */
        public static final C12762c<T, R> f61832e = new C12762c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull List<? extends CloudStorageProvider> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.SettingsCloudBackupViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C12763d<T, R> implements Function {
        public C12763d() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m51220a(long j) {
            return SettingsCloudBackupViewModel.this.checkNetDiskAuth();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51220a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.SettingsCloudBackupViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C12764e<T, R> implements Function {

        /* renamed from: e */
        public static final C12764e<T, R> f61834e = new C12764e<>();

        @NotNull
        /* renamed from: a */
        public final Boolean m51221a(boolean z) {
            return Boolean.TRUE;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51221a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.SettingsCloudBackupViewModel$f */
    /* loaded from: classes9.dex */
    public static final class C12765f<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Context f61835e;

        /* renamed from: f */
        public final /* synthetic */ Provider f61836f;

        public C12765f(Context context, Provider provider) {
            this.f61835e = context;
            this.f61836f = provider;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AccountDataBundle accountDataBundle) {
            Intrinsics.checkNotNullParameter(accountDataBundle, "accountDataBundle");
            RxBaseAction.execute$default(new CloudAuthAction(this.f61835e, this.f61836f, new UserInfo(accountDataBundle.getAccountId(), accountDataBundle.getAccountName()), SettingsCloudBackupFragment.TAG), null, null, null, 7, null);
        }
    }

    public SettingsCloudBackupViewModel() {
        List<Provider> listOf;
        List<? extends BaseCloudStorageProvider> emptyList;
        MMKVBackup mMKVBackup = MMKVBackup.INSTANCE;
        BooleanOption cloudBackupAutoOption = mMKVBackup.getCloudBackupAutoOption();
        this.autoBackupOp = cloudBackupAutoOption;
        BooleanOption cloudBackupWifiOnlyOption = mMKVBackup.getCloudBackupWifiOnlyOption();
        this.wifiOnlyOp = cloudBackupWifiOnlyOption;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Provider[]{Provider.BAIDU_YUN, Provider.GOOGLE_DRIVE, Provider.ONE_DRIVE});
        this.drives = listOf;
        this.isAuthBaidu = new MutableLiveData<>(null);
        this.isAuthGoogleDrive = new MutableLiveData<>(null);
        this.isAuthOneDrive = new MutableLiveData<>(null);
        this.isAutoBackup = new MutableLiveData<>(Boolean.valueOf(cloudBackupAutoOption.get()));
        this.isWifiOnly = new MutableLiveData<>(Boolean.valueOf(cloudBackupWifiOnlyOption.get()));
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.authProvider = emptyList;
    }

    @NotNull
    public final Observable<Boolean> checkNetDiskAuth() {
        Observable<Boolean> observeOn = CloudStorageManager.INSTANCE.getOurInstance().getAuthProviders().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12760a()).doOnNext(new C12761b()).map(C12762c.f61832e).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    public final void configureAutoBackup(boolean enable) {
        this.autoBackupOp.put(enable);
        this.isAutoBackup.setValue(Boolean.valueOf(enable));
    }

    public final void configureWifiOnly(boolean enable) {
        this.wifiOnlyOp.put(enable);
        this.isWifiOnly.setValue(Boolean.valueOf(enable));
    }

    /* renamed from: d */
    public final boolean m51216d(Provider provider) {
        Object obj;
        Iterator<T> it2 = this.authProvider.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((BaseCloudStorageProvider) obj).getProviderType() == provider) {
                break;
            }
        }
        return obj != null;
    }

    @NotNull
    public final Observable<Boolean> deleteNetDiskAuth(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Observable<Boolean> observeOn = new DeleteLocalAuthAction(provider.getTitle()).build().flatMap(new C12763d()).map(C12764e.f61834e).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final List<BaseCloudStorageProvider> getAuthProvider() {
        return this.authProvider;
    }

    public final boolean hasBindDrive() {
        int collectionSizeOrDefault;
        List<? extends BaseCloudStorageProvider> list = this.authProvider;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((BaseCloudStorageProvider) it2.next()).getProviderType());
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            if (this.drives.contains((Provider) it3.next())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final MutableLiveData<Boolean> isAuthBaidu() {
        return this.isAuthBaidu;
    }

    @NotNull
    public final MutableLiveData<Boolean> isAuthGoogleDrive() {
        return this.isAuthGoogleDrive;
    }

    @NotNull
    public final MutableLiveData<Boolean> isAuthOneDrive() {
        return this.isAuthOneDrive;
    }

    @NotNull
    public final MutableLiveData<Boolean> isAutoBackup() {
        return this.isAutoBackup;
    }

    public final boolean isEnableAutoBackup() {
        return this.autoBackupOp.get();
    }

    @NotNull
    public final MutableLiveData<Boolean> isWifiOnly() {
        return this.isWifiOnly;
    }

    @NotNull
    public final Observable<AccountDataBundle> oAuthDrive(@NotNull Context context, @NotNull Provider currentProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(currentProvider, "currentProvider");
        Observable<AccountDataBundle> doOnNext = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12765f(context, currentProvider));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public final void setAuthProvider(@NotNull List<? extends BaseCloudStorageProvider> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.authProvider = list;
    }
}
