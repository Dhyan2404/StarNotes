package com.onyx.android.sdk.cloudstorage;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.common.action.InitCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.common.action.LoadAuthProvidersAction;
import com.onyx.android.sdk.cloudstorage.common.utils.CloudStorageMMKVHelper;
import com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.AsyncResult;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.cloudstorage.model.CloudAnnotation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.CloudFolderTreeEntry;
import com.onyx.android.sdk.cloudstorage.model.CloudNote;
import com.onyx.android.sdk.cloudstorage.model.PasteLocalFileOperation;
import com.onyx.android.sdk.cloudstorage.model.ProviderContext;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.model.UserInfo;
import com.onyx.android.sdk.cloudstorage.model.common.ProviderFeature;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageDBBundle;
import com.onyx.android.sdk.cloudstorage.provider.common.CloudStorageProviderFactory;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.common.action.LoadCertificatesAction;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.lang3.EnumUtils;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 b2\u00020\u0001:\u0001bB\u0007¢\u0006\u0004\b`\u0010aJ\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0007J\u000e\u0010\r\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0001J\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u0001J\u000e\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u0001J\u000e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012J\u001e\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016J\u0016\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001e\u001a\u00020\u001dJ\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004J$\u0010%\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u0002J\u0012\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060&0\u0004J \u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060&0\u00042\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00140&J,\u0010,\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0&0*0\u00042\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00140&J$\u00101\u001a\b\u0012\u0004\u0012\u0002000\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u0010.\u001a\u00020-2\u0006\u0010/\u001a\u00020\u001aJ$\u00104\u001a\b\u0012\u0004\u0012\u0002000\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00103\u001a\u0002022\u0006\u0010/\u001a\u00020\u001aJ\u001c\u00108\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u000205J\u001c\u00109\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u000205J\u001c\u0010:\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u000205J\u001c\u0010=\u001a\b\u0012\u0004\u0012\u00020;0\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u0010<\u001a\u00020;J\u001c\u0010>\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u0010<\u001a\u00020;J\u001c\u0010@\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u00020?J\u001c\u0010A\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u00020?J\u001c\u0010B\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u00020?J\u001c\u0010C\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u00020?J\"\u0010F\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020E0D0\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u000205J\u001c\u0010G\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u000205J*\u0010I\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\f\u0010H\u001a\b\u0012\u0004\u0012\u00020;0&2\u0006\u0010\u001b\u001a\u00020\u001aJ*\u0010J\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\f\u0010H\u001a\b\u0012\u0004\u0012\u00020;0&2\u0006\u0010\u001b\u001a\u00020\u001aJ*\u0010K\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\f\u0010H\u001a\b\u0012\u0004\u0012\u00020;0&2\u0006\u0010\u001b\u001a\u00020\u001aJ*\u0010L\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\f\u0010H\u001a\b\u0012\u0004\u0012\u00020;0&2\u0006\u0010\u001b\u001a\u00020\u001aJ*\u0010M\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\f\u0010H\u001a\b\u0012\u0004\u0012\u00020;0&2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0014\u0010P\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010O\u001a\u00020NR\u001b\u0010V\u001a\u00020Q8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010UR\u001b\u0010Z\u001a\u00020W8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010S\u001a\u0004\bX\u0010YR \u0010\\\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00060*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010[R\u001c\u0010_\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^¨\u0006c"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;", "", "Landroid/content/Context;", "context", "Lio/reactivex/rxjava3/core/Observable;", "", "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;", "b", "", "c", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", NotificationCompat.CATEGORY_EVENT, "onAccountChangedEvent", "postEvent", "subscriber", "register", "unregister", "initProviderContext", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;", "certificates", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "type", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", PrivilegedApp.f6532i, "initProvider", "providerType", "", "accountId", "getProvider", "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOn", "createObservable", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", Constant.USER_INFO, "activityContext", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "authenticate", "", "getAuthProviders", "excludeList", "list", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "loadSupportFeatures", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", Constant.TAG_USER_ID, "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "saveNote", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", "saveAnnotation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "args", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "refreshFileInfoList", "fetchFileInfoList", "searchFileInfoList", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", "fetchFileInfo", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "renameFile", "deleteFile", "copyFile", "moveFile", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "loadFolderTree", "queryChildCount", "cloudList", "downloadCloudFile", "uploadCloudFile", "appendCloudFile", "saveFileInfoList", "abortCloudFileTransfer", "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;", "operation", "pasteLocalFileToCloud", "Lorg/greenrobot/eventbus/EventBus;", "a", "Lkotlin/Lazy;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "eventBus", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "getRxScheduler", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "rxScheduler", "Ljava/util/Map;", "providerMap", "d", "Ljava/util/List;", "cloudStorageProviders", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCloudStorageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,363:1\n1855#2,2:364\n1855#2,2:366\n1855#2,2:368\n766#2:370\n857#2,2:371\n223#2,2:373\n37#3,2:375\n*S KotlinDebug\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager\n*L\n98#1:364,2\n107#1:366,2\n132#1:368,2\n141#1:370\n141#1:371,2\n143#1:373,2\n183#1:375,2\n*E\n"})
/* loaded from: classes7.dex */
public final class CloudStorageManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e */
    @NotNull
    public static final CloudStorageManager f41012e = new CloudStorageManager();

    /* renamed from: f */
    @Nullable
    public static String f41013f;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy eventBus;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy rxScheduler;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Map<Provider, CloudStorageProvider> providerMap;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<CloudStorageProvider> cloudStorageProviders;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;", "", "()V", "ourInstance", "Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;", "getOurInstance", "()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;", Constant.TAG_USER_ID, "", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "initCloudNote", "", "appContext", "Landroid/content/Context;", "syncUserId", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CloudStorageManager getOurInstance() {
            return CloudStorageManager.f41012e;
        }

        @Nullable
        public final String getUserId() {
            return CloudStorageManager.f41013f;
        }

        public final void initCloudNote(@NotNull Context appContext, @NotNull String syncUserId) {
            Intrinsics.checkNotNullParameter(appContext, "appContext");
            Intrinsics.checkNotNullParameter(syncUserId, "syncUserId");
            setUserId(syncUserId);
            CloudStorageDBBundle.INSTANCE.initProviderAccountProvider(syncUserId);
            CloudStorageMMKVHelper.INSTANCE.init(appContext);
            getOurInstance().initProviderContext(appContext);
            getOurInstance().m32230b(appContext).subscribe();
            getOurInstance().m32231c(appContext);
        }

        public final void setUserId(@Nullable String str) {
            CloudStorageManager.f41013f = str;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class EntriesMappings {
        public static final /* synthetic */ EnumEntries<Provider> entries$0 = EnumEntriesKt.enumEntries(Provider.values());
    }

    @SourceDebugExtension({"SMAP\nCloudStorageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$getAuthProviders$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,363:1\n766#2:364\n857#2,2:365\n766#2:367\n857#2,2:368\n*S KotlinDebug\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$getAuthProviders$1\n*L\n172#1:364\n172#1:365,2\n174#1:367\n174#1:368,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.cloudstorage.CloudStorageManager$d */
    /* loaded from: classes7.dex */
    public static final class C7145d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Provider> f41021e;

        /* JADX WARN: Multi-variable type inference failed */
        public C7145d(List<? extends Provider> list) {
            this.f41021e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudStorageProvider> apply(@NotNull List<CloudStorageProvider> storageProviders) {
            Intrinsics.checkNotNullParameter(storageProviders, "storageProviders");
            ArrayList arrayList = new ArrayList();
            for (T t : storageProviders) {
                if (((CloudStorageProvider) t).isAuth()) {
                    arrayList.add(t);
                }
            }
            List<Provider> list = this.f41021e;
            ArrayList arrayList2 = new ArrayList();
            for (T t2 : arrayList) {
                if (!list.contains(((CloudStorageProvider) t2).getProviderType())) {
                    arrayList2.add(t2);
                }
            }
            return arrayList2;
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.CloudStorageManager$e */
    /* loaded from: classes7.dex */
    public static final class C7146e<T> implements Consumer {
        public C7146e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CloudStorageProvider> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            CloudStorageManager.this.cloudStorageProviders = list;
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.CloudStorageManager$f */
    /* loaded from: classes7.dex */
    public static final class C7147f<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Context f41024f;

        public C7147f(Context context) {
            this.f41024f = context;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CloudStorageProvider> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudStorageManager.this.initProviderContext(this.f41024f);
        }
    }

    @SourceDebugExtension({"SMAP\nCloudStorageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$loadCertificates$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,363:1\n1855#2,2:364\n*S KotlinDebug\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$loadCertificates$1\n*L\n358#1:364,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.cloudstorage.CloudStorageManager$g */
    /* loaded from: classes7.dex */
    public static final class C7148g<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Context f41026f;

        public C7148g(Context context) {
            this.f41026f = context;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProviderCertificate providerCertificate) {
            Intrinsics.checkNotNullParameter(providerCertificate, "providerCertificate");
            List ensureList = CollectionKt.ensureList(providerCertificate.getCertificates());
            CloudStorageManager cloudStorageManager = CloudStorageManager.this;
            Context context = this.f41026f;
            Iterator<T> it2 = ensureList.iterator();
            while (it2.hasNext()) {
                cloudStorageManager.initProviderContext(context, (ProviderCertificate.Certificate) it2.next());
            }
        }
    }

    @SourceDebugExtension({"SMAP\nCloudStorageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$loadSupportFeatures$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,363:1\n1855#2,2:364\n*S KotlinDebug\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$loadSupportFeatures$1\n*L\n189#1:364,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.cloudstorage.CloudStorageManager$h */
    /* loaded from: classes7.dex */
    public static final class C7149h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Provider> f41027e;

        public C7149h(List<Provider> list) {
            this.f41027e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<Provider, List<ProviderFeature>> apply(@NotNull CloudStorageManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Provider provider : this.f41027e) {
                Object obj = CloudStorageManager.INSTANCE.getOurInstance().providerMap.get(provider);
                Intrinsics.checkNotNull(obj);
                linkedHashMap.put(provider, ((CloudStorageProvider) obj).getSupportFeatures());
            }
            return linkedHashMap;
        }
    }

    public CloudStorageManager() {
        Lazy lazy;
        Lazy lazy2;
        AccountDataBundle.INSTANCE.getEventBusHolder().register(this);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<EventBus>() { // from class: com.onyx.android.sdk.cloudstorage.CloudStorageManager$eventBus$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EventBus invoke() {
                return new EventBus();
            }
        });
        this.eventBus = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.cloudstorage.CloudStorageManager$rxScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        this.rxScheduler = lazy2;
        this.providerMap = new LinkedHashMap();
        this.cloudStorageProviders = new ArrayList();
        for (Provider provider : EntriesMappings.entries$0) {
            this.providerMap.put(provider, CloudStorageProviderFactory.INSTANCE.newType(provider, null));
        }
    }

    /* renamed from: d */
    public static final void m32229d(CloudStorageManager this$0, LoginAccountChanged event, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        this$0.getEventBus().post(event);
    }

    @NotNull
    public final Observable<CloudFileListResult> abortCloudFileTransfer(@NotNull Provider provider, @NotNull List<CloudFileBean> cloudList, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(cloudList, "cloudList");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Observable<List<CloudFileBean>> abortFileTransfer = getProvider(provider, accountId).abortFileTransfer(cloudList);
        final CloudFileListResult.Companion companion = CloudFileListResult.INSTANCE;
        Observable map = abortFileTransfer.map(new Function() { // from class: com.onyx.android.sdk.cloudstorage.CloudStorageManager.a
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final CloudFileListResult apply(@NotNull List<CloudFileBean> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return CloudFileListResult.Companion.this.create(p0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<CloudFileListResult> appendCloudFile(@NotNull Provider provider, @NotNull List<CloudFileBean> cloudList, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(cloudList, "cloudList");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Observable<List<CloudFileBean>> appendFiles = getProvider(provider, accountId).appendFiles(cloudList);
        final CloudFileListResult.Companion companion = CloudFileListResult.INSTANCE;
        Observable map = appendFiles.map(new Function() { // from class: com.onyx.android.sdk.cloudstorage.CloudStorageManager.b
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final CloudFileListResult apply(@NotNull List<CloudFileBean> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return CloudFileListResult.Companion.this.create(p0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<AuthResult> authenticate(@NotNull Provider provider, @NotNull UserInfo userInfo, @NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        CloudStorageProvider cloudStorageProvider = this.providerMap.get(provider);
        Intrinsics.checkNotNull(cloudStorageProvider);
        return cloudStorageProvider.authenticate(userInfo, activityContext);
    }

    /* renamed from: b */
    public final Observable<List<CloudStorageProvider>> m32230b(Context context) {
        Observable<List<CloudStorageProvider>> doOnNext = new LoadAuthProvidersAction(this).build().doOnNext(new C7146e()).doOnNext(new C7147f(context));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: c */
    public final void m32231c(Context context) {
        new LoadCertificatesAction(LoadCertificatesAction.CLOUD_STORAGE_KEY, true).build().observeOn(getObserveOn()).doOnNext(new C7148g(context)).subscribe();
    }

    @NotNull
    public final Observable<CloudFileListResult> copyFile(@NotNull Provider provider, @NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(args, "args");
        String accountId = args.getAccountId();
        Intrinsics.checkNotNull(accountId);
        return getProvider(provider, accountId).copyFile(args);
    }

    @NotNull
    public final Observable<CloudFileListResult> createFolder(@NotNull Provider provider, @NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        String accountId = cloudFile.getAccountId();
        Intrinsics.checkNotNull(accountId);
        return getProvider(provider, accountId).createFolder(cloudFile);
    }

    @NotNull
    public final Observable<CloudStorageManager> createObservable() {
        Observable<CloudStorageManager> observeOn = Observable.just(this).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Observable<CloudFileListResult> deleteFile(@NotNull Provider provider, @NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(args, "args");
        String accountId = args.getAccountId();
        Intrinsics.checkNotNull(accountId);
        return getProvider(provider, accountId).deleteFile(args);
    }

    @NotNull
    public final Observable<CloudFileListResult> downloadCloudFile(@NotNull Provider provider, @NotNull List<CloudFileBean> cloudList, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(cloudList, "cloudList");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Observable<List<CloudFileBean>> downloadFiles = getProvider(provider, accountId).downloadFiles(cloudList);
        final CloudFileListResult.Companion companion = CloudFileListResult.INSTANCE;
        Observable map = downloadFiles.map(new Function() { // from class: com.onyx.android.sdk.cloudstorage.CloudStorageManager.c
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final CloudFileListResult apply(@NotNull List<CloudFileBean> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return CloudFileListResult.Companion.this.create(p0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<CloudFileBean> fetchFileInfo(@NotNull Provider provider, @NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        String accountId = cloudFile.getAccountId();
        Intrinsics.checkNotNull(accountId);
        return getProvider(provider, accountId).fetchFileInfo(cloudFile);
    }

    @NotNull
    public final Observable<CloudFileListResult> fetchFileInfoList(@NotNull Provider provider, @NotNull CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(args, "args");
        String accountId = args.getAccountId();
        Intrinsics.checkNotNull(accountId);
        return getProvider(provider, accountId).fetchFileInfoList(args);
    }

    @NotNull
    public final Observable<List<CloudStorageProvider>> getAuthProviders() {
        List<? extends Provider> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return getAuthProviders(emptyList);
    }

    @NotNull
    public final EventBus getEventBus() {
        return (EventBus) this.eventBus.getValue();
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return getRxScheduler().getObserveOn();
    }

    @NotNull
    public final CloudStorageProvider getProvider(@NotNull Provider providerType, @NotNull String accountId) {
        boolean equals$default;
        Intrinsics.checkNotNullParameter(providerType, "providerType");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        List<CloudStorageProvider> list = this.cloudStorageProviders;
        ArrayList<CloudStorageProvider> arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((CloudStorageProvider) next).getProviderType() == providerType) {
                arrayList.add(next);
            }
        }
        for (CloudStorageProvider cloudStorageProvider : arrayList) {
            equals$default = StringsKt__StringsJVMKt.equals$default(cloudStorageProvider.getAccountInfo().getId(), accountId, false, 2, null);
            if (equals$default) {
                return cloudStorageProvider;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @NotNull
    public final RxScheduler getRxScheduler() {
        return (RxScheduler) this.rxScheduler.getValue();
    }

    public final void initProvider(@NotNull Context context, @NotNull Provider type, @NotNull ProviderContext info) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(info, "info");
        for (CloudStorageProvider cloudStorageProvider : this.cloudStorageProviders) {
            if (type == cloudStorageProvider.getProviderType()) {
                cloudStorageProvider.initProvider(context, info);
            }
        }
        CloudStorageProvider cloudStorageProvider2 = this.providerMap.get(type);
        if (cloudStorageProvider2 != null) {
            cloudStorageProvider2.initProvider(context, info);
        }
    }

    public final void initProviderContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ProviderCertificate providerCertificates = CloudStorageMMKVHelper.INSTANCE.getProviderCertificates();
        if (providerCertificates == null) {
            providerCertificates = new ProviderCertificate();
        }
        for (Provider provider : EntriesMappings.entries$0) {
            String upperCase = provider.name().toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            initProviderContext(context, providerCertificates.find(upperCase, provider.createDefaultCertificate()));
        }
    }

    @NotNull
    public final Observable<QueryListResult<CloudFolderTreeEntry>> loadFolderTree(@NotNull Provider provider, @NotNull CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(args, "args");
        String accountId = args.getAccountId();
        Intrinsics.checkNotNull(accountId);
        return getProvider(provider, accountId).loadFolderTree(args);
    }

    @NotNull
    public final Observable<Map<Provider, List<ProviderFeature>>> loadSupportFeatures(@NotNull List<? extends Provider> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        if (list.isEmpty()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, EntriesMappings.entries$0.toArray(new Provider[0]));
        }
        arrayList.addAll(list);
        Observable map = createObservable().map(new C7149h(arrayList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<CloudFileListResult> moveFile(@NotNull Provider provider, @NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(args, "args");
        String accountId = args.getAccountId();
        Intrinsics.checkNotNull(accountId);
        return getProvider(provider, accountId).moveFile(args);
    }

    @Subscribe(threadMode = ThreadMode.BACKGROUND)
    public final void onAccountChangedEvent(@NotNull final LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new InitCloudStorageAction(ResManager.INSTANCE.getAppContext()), new Consumer() { // from class: com.sunia.HTREnginev2.ewd
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CloudStorageManager.m32229d(CloudStorageManager.this, event, ((Boolean) obj).booleanValue());
            }
        }, null, null, 6, null);
    }

    @NotNull
    public final Observable<CloudFileListResult> pasteLocalFileToCloud(@NotNull PasteLocalFileOperation operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        CloudFileBean targetFolderBean = operation.getTargetFolderBean();
        Provider provider = targetFolderBean.getProvider();
        String accountId = targetFolderBean.getAccountId();
        Intrinsics.checkNotNull(accountId);
        return getProvider(provider, accountId).pasteLocalFileToCloud(operation);
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getEventBus().post(event);
    }

    @NotNull
    public final Observable<CloudFileListResult> queryChildCount(@NotNull Provider provider, @NotNull CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(args, "args");
        String accountId = args.getAccountId();
        Intrinsics.checkNotNull(accountId);
        return getProvider(provider, accountId).queryChildCount(args);
    }

    @NotNull
    public final Observable<CloudFileListResult> refreshFileInfoList(@NotNull Provider provider, @NotNull CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(args, "args");
        String accountId = args.getAccountId();
        Intrinsics.checkNotNull(accountId);
        return getProvider(provider, accountId).refreshFileInfoList(args);
    }

    public final void register(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBusHolderKt.ensureRegister(getEventBus(), subscriber);
    }

    @NotNull
    public final Observable<CloudFileListResult> renameFile(@NotNull Provider provider, @NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(args, "args");
        String accountId = args.getAccountId();
        Intrinsics.checkNotNull(accountId);
        return getProvider(provider, accountId).renameFile(args);
    }

    @NotNull
    public final Observable<AsyncResult> saveAnnotation(@NotNull Provider provider, @NotNull CloudAnnotation cloudAnnotation, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return getProvider(provider, userId).saveAnnotation(cloudAnnotation);
    }

    @NotNull
    public final Observable<CloudFileListResult> saveFileInfoList(@NotNull Provider provider, @NotNull List<CloudFileBean> cloudList, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(cloudList, "cloudList");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return getProvider(provider, accountId).saveFileInfoList(cloudList);
    }

    @NotNull
    public final Observable<AsyncResult> saveNote(@NotNull Provider provider, @NotNull CloudNote cloudNote, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return getProvider(provider, userId).saveNote(cloudNote);
    }

    @NotNull
    public final Observable<CloudFileListResult> searchFileInfoList(@NotNull Provider provider, @NotNull CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(args, "args");
        String accountId = args.getAccountId();
        Intrinsics.checkNotNull(accountId);
        return getProvider(provider, accountId).searchFileInfoList(args);
    }

    public final void unregister(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBusHolderKt.ensureUnRegister(getEventBus(), subscriber);
    }

    @NotNull
    public final Observable<CloudFileListResult> uploadCloudFile(@NotNull Provider provider, @NotNull List<CloudFileBean> cloudList, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(cloudList, "cloudList");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Observable<List<CloudFileBean>> uploadFiles = getProvider(provider, accountId).uploadFiles(cloudList);
        final CloudFileListResult.Companion companion = CloudFileListResult.INSTANCE;
        Observable map = uploadFiles.map(new Function() { // from class: com.onyx.android.sdk.cloudstorage.CloudStorageManager.i
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final CloudFileListResult apply(@NotNull List<CloudFileBean> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return CloudFileListResult.Companion.this.create(p0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<List<CloudStorageProvider>> getAuthProviders(@NotNull List<? extends Provider> excludeList) {
        Intrinsics.checkNotNullParameter(excludeList, "excludeList");
        Observable map = m32230b(ResManager.INSTANCE.getAppContext()).map(new C7145d(excludeList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void initProviderContext(@NotNull Context context, @NotNull ProviderCertificate.Certificate certificates) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(certificates, "certificates");
        String upperCase = certificates.getName().toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        Provider provider = (Provider) EnumUtils.getEnum(Provider.class, upperCase);
        if (provider == null) {
            return;
        }
        initProvider(context, provider, ProviderContext.INSTANCE.createProviderContext(provider, certificates));
    }
}
