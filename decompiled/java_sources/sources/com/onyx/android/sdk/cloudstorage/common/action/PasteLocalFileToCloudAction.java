package com.onyx.android.sdk.cloudstorage.common.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.PasteLocalFileOperation;
import com.onyx.android.sdk.cloudstorage.model.common.SyncStatus;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import onyx.org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\bA\u0010BJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u001c\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00070\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J \u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0014J\b\u0010\u0015\u001a\u00020\u0014H\u0014J\u001c\u0010\u0018\u001a\u00020\u00022\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00050\u0016H\u0002J\u0016\u0010\u001a\u001a\u00020\u00102\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0002J(\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00050\u00162\u0012\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00070\u0007H\u0002J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0018\u0010 \u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u000eH\u0002J\u000e\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\u0003H\u0002J\u000e\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\"\u0010%\u001a\u00020$8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u0010+\u001a\u00020!8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u00102\u001a\u0002018\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R0\u0010<\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000508j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0005`98\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R0\u0010>\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e08j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e`98\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010;R0\u0010@\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000508j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0005`98\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010;¨\u0006C"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/action/PasteLocalFileToCloudAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFileBean", "", "searchTargetCloudFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "generateQueryArgs", "fileBean", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, "", BreakpointSQLiteKey.FILENAME, "", "setFilePathUnderRootFolder", "delResult", "processAfterDelete", "", "getMaxQueryLimit", "", "conflictMap", "p", "list", "q", "searchResultBeanLists", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "folderBean", CouchFieldKey.KEY_LOCAL_FILE_PATH, "r", "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;", "l", "m", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "cloudStorageProvider", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "getCloudStorageProvider", "()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "setCloudStorageProvider", "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V", "operation", "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;", "getOperation", "()Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;", "setOperation", "(Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;)V", "Lio/reactivex/rxjava3/core/Scheduler;", "workScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "getWorkScheduler", "()Lio/reactivex/rxjava3/core/Scheduler;", "setWorkScheduler", "(Lio/reactivex/rxjava3/core/Scheduler;)V", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "e", "Ljava/util/HashMap;", "pasteBeanMap", C6997f.f39671c, "pastePathMap", C6998g.f39679a, "conflictBeanMap", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPasteLocalFileToCloudAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasteLocalFileToCloudAction.kt\ncom/onyx/android/sdk/cloudstorage/common/action/PasteLocalFileToCloudAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,223:1\n1855#2,2:224\n766#2:226\n857#2,2:227\n1549#2:229\n1620#2,3:230\n1855#2,2:233\n*S KotlinDebug\n*F\n+ 1 PasteLocalFileToCloudAction.kt\ncom/onyx/android/sdk/cloudstorage/common/action/PasteLocalFileToCloudAction\n*L\n58#1:224,2\n92#1:226\n92#1:227,2\n94#1:229\n94#1:230,3\n105#1:233,2\n*E\n"})
/* loaded from: classes7.dex */
public class PasteLocalFileToCloudAction extends RxBaseAction<CloudFileListResult> {
    public BaseCloudStorageProvider cloudStorageProvider;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final HashMap<String, CloudFileBean> pasteBeanMap = new HashMap<>();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final HashMap<String, String> pastePathMap = new HashMap<>();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final HashMap<String, CloudFileBean> conflictBeanMap = new HashMap<>();
    public PasteLocalFileOperation operation;
    public Scheduler workScheduler;

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction$a */
    /* loaded from: classes7.dex */
    public static final class C7162a<T, R> implements Function {
        public C7162a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PasteLocalFileOperation apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PasteLocalFileToCloudAction.this.getOperation();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction$c */
    /* loaded from: classes7.dex */
    public static final class C7164c<T, R> implements Function {
        public C7164c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull PasteLocalFileOperation it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PasteLocalFileToCloudAction.this.m32272o();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction$d */
    /* loaded from: classes7.dex */
    public static final class C7165d<T, R> implements Function {
        public C7165d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<CloudFileBean>> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PasteLocalFileToCloudAction.this.searchTargetCloudFile(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction$e */
    /* loaded from: classes7.dex */
    public static final class C7166e<T, R> implements Function {
        public C7166e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, CloudFileBean> apply(@NotNull List<List<CloudFileBean>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PasteLocalFileToCloudAction.this.m32271n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction$f */
    /* loaded from: classes7.dex */
    public static final class C7167f<T, R> implements Function {
        public C7167f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull Map<String, CloudFileBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PasteLocalFileToCloudAction.this.m32273p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction$g */
    /* loaded from: classes7.dex */
    public static final class C7168g<T, R> implements Function {
        public C7168g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileListResult> apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PasteLocalFileToCloudAction.this.processAfterDelete(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction$h */
    /* loaded from: classes7.dex */
    public static final class C7169h<T, R> implements Function {
        public C7169h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull String localFilePath) {
            Intrinsics.checkNotNullParameter(localFilePath, "localFilePath");
            PasteLocalFileToCloudAction pasteLocalFileToCloudAction = PasteLocalFileToCloudAction.this;
            return pasteLocalFileToCloudAction.m32275r(pasteLocalFileToCloudAction.getOperation().getTargetFolderBean(), localFilePath);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction$i */
    /* loaded from: classes7.dex */
    public static final class C7170i<T, R> implements Function {

        /* renamed from: e */
        public static final C7170i<T, R> f41070e = new C7170i<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull CloudFileListResult result) {
            Intrinsics.checkNotNullParameter(result, "result");
            if (result.isSuccessful()) {
                return result;
            }
            throw new Exception(result.getException());
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction$j */
    /* loaded from: classes7.dex */
    public static final class C7171j<T, R> implements Function {
        public C7171j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileListResult> apply(@NotNull CloudFileQueryArgs args) {
            Intrinsics.checkNotNullParameter(args, "args");
            return PasteLocalFileToCloudAction.this.getCloudStorageProvider().searchFileInfoList(args);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction$k */
    /* loaded from: classes7.dex */
    public static final class C7172k<T, R> implements Function {

        /* renamed from: e */
        public static final C7172k<T, R> f41072e = new C7172k<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull CloudFileListResult obj) {
            Intrinsics.checkNotNullParameter(obj, "obj");
            return obj.ensureList();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileListResult> create() {
        Observable<CloudFileListResult> observable = Observable.just(this).observeOn(getWorkScheduler()).flatMap(new Function() { // from class: com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction.b
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Observable<PasteLocalFileOperation> apply(@NotNull PasteLocalFileToCloudAction p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return p0.m32269l();
            }
        }).observeOn(getWorkScheduler()).flatMap(new C7164c()).flatMap(new C7165d()).toList().map(new C7166e()).map(new C7167f()).toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "toObservable(...)");
        return observable;
    }

    @NotNull
    public CloudFileQueryArgs generateQueryArgs(@NotNull CloudFileBean cloudFileBean) {
        Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setQuery(cloudFileBean.getName());
        cloudFileQueryArgs.setParentId(cloudFileBean.getParentId());
        cloudFileQueryArgs.setFilterParent(true);
        cloudFileQueryArgs.setProvider(getCloudStorageProvider().getProviderType().getTitle());
        cloudFileQueryArgs.setSortBy(SortBy.Name);
        cloudFileQueryArgs.setOrder(SortOrder.Desc);
        cloudFileQueryArgs.setOffset(0L);
        cloudFileQueryArgs.setLimit(getMaxQueryLimit());
        return cloudFileQueryArgs;
    }

    @NotNull
    public final BaseCloudStorageProvider getCloudStorageProvider() {
        BaseCloudStorageProvider baseCloudStorageProvider = this.cloudStorageProvider;
        if (baseCloudStorageProvider != null) {
            return baseCloudStorageProvider;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cloudStorageProvider");
        return null;
    }

    public int getMaxQueryLimit() {
        return Integer.MAX_VALUE;
    }

    @NotNull
    public final PasteLocalFileOperation getOperation() {
        PasteLocalFileOperation pasteLocalFileOperation = this.operation;
        if (pasteLocalFileOperation != null) {
            return pasteLocalFileOperation;
        }
        Intrinsics.throwUninitializedPropertyAccessException("operation");
        return null;
    }

    @NotNull
    public final Scheduler getWorkScheduler() {
        Scheduler scheduler = this.workScheduler;
        if (scheduler != null) {
            return scheduler;
        }
        Intrinsics.throwUninitializedPropertyAccessException("workScheduler");
        return null;
    }

    /* renamed from: l */
    public final Observable<PasteLocalFileOperation> m32269l() {
        Observable map = m32270m().map(new C7162a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<CloudFileListResult> m32270m() {
        if (getOperation().getFileReplacePolicy().isReplacePolicy()) {
            Observable flatMap = getCloudStorageProvider().deleteFile(getOperation().getConflictDelOperation()).flatMap(new C7168g());
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            return flatMap;
        }
        Observable<CloudFileListResult> just = Observable.just(new CloudFileListResult());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: n */
    public final Map<String, CloudFileBean> m32271n(List<? extends List<CloudFileBean>> searchResultBeanLists) {
        int collectionSizeOrDefault;
        ArrayList arrayList = new ArrayList();
        Iterator<? extends List<CloudFileBean>> it2 = searchResultBeanLists.iterator();
        while (it2.hasNext()) {
            arrayList.addAll(it2.next());
        }
        ArrayList<CloudFileBean> arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (this.pastePathMap.get(((CloudFileBean) obj).getCloudFilePath()) != null) {
                arrayList2.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList<CloudFileBean> arrayList3 = new ArrayList(collectionSizeOrDefault);
        for (CloudFileBean cloudFileBean : arrayList2) {
            String cloudFilePath = cloudFileBean.getCloudFilePath();
            String str = this.pastePathMap.get(cloudFilePath);
            TypeIntrinsics.asMutableMap(this.pasteBeanMap).remove(cloudFilePath);
            TypeIntrinsics.asMutableMap(this.pastePathMap).remove(cloudFilePath);
            if (str != null) {
                this.conflictBeanMap.put(str, cloudFileBean);
            }
            arrayList3.add(cloudFileBean);
        }
        for (CloudFileBean cloudFileBean2 : arrayList3) {
            Debug.INSTANCE.m32053i("conflict file: " + cloudFileBean2.getName());
        }
        return this.conflictBeanMap;
    }

    /* renamed from: o */
    public final Observable<CloudFileBean> m32272o() {
        Observable<CloudFileBean> map = Observable.fromIterable(getOperation().getFilePaths()).observeOn(getWorkScheduler()).map(new C7169h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final CloudFileListResult m32273p(Map<String, CloudFileBean> conflictMap) {
        Set<Map.Entry<String, CloudFileBean>> entrySet = this.pasteBeanMap.entrySet();
        Intrinsics.checkNotNullExpressionValue(entrySet, "<get-entries>(...)");
        Iterator<T> it2 = entrySet.iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            String str = this.pastePathMap.get(entry.getKey());
            String localFilePath = ((CloudFileBean) entry.getValue()).getLocalFilePath();
            if (str != null && localFilePath != null && !StringUtils.equals(str, localFilePath)) {
                FileUtils.copyFile(new File(str), new File(localFilePath));
            }
        }
        ArrayList arrayList = new ArrayList(this.pasteBeanMap.values());
        m32274q(arrayList);
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        cloudFileListResult.ensureList().addAll(arrayList);
        cloudFileListResult.setConflictFileBeanMap(conflictMap);
        if (conflictMap.isEmpty()) {
            cloudFileListResult.setCode(0);
        } else {
            cloudFileListResult.setCode(1001);
        }
        return cloudFileListResult;
    }

    @NotNull
    public Observable<CloudFileListResult> processAfterDelete(@NotNull CloudFileListResult delResult) {
        Intrinsics.checkNotNullParameter(delResult, "delResult");
        Observable<CloudFileListResult> map = Observable.just(delResult).map(C7170i.f41070e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final void m32274q(List<CloudFileBean> list) {
        getCloudStorageProvider().getCloudStorageRecordProvider().saveCloudFiles(list);
    }

    /* renamed from: r */
    public final CloudFileBean m32275r(CloudFileBean folderBean, String localFilePath) throws Exception {
        String name = new File(localFilePath).getName();
        Provider provider = folderBean.getProvider();
        String str = localFilePath + folderBean.getUniqueId() + folderBean.getProvider().getTitle() + folderBean.getAccountId();
        CloudFileBean cloudFileBean = new CloudFileBean(null, null, null, null, false, 0L, null, null, null, null, null, null, 0L, 0L, 16383, null);
        com.onyx.android.sdk.base.utils.FileUtils fileUtils = com.onyx.android.sdk.base.utils.FileUtils.INSTANCE;
        String computeMD5 = fileUtils.computeMD5(str);
        if (computeMD5 == null) {
            computeMD5 = UUIDUtils.INSTANCE.shortUUID();
        }
        cloudFileBean.setUniqueId(computeMD5);
        cloudFileBean.setParentId(folderBean.getUniqueId());
        cloudFileBean.setProvider(provider);
        cloudFileBean.setAccountId(folderBean.getAccountId());
        cloudFileBean.setCreatedAt(System.currentTimeMillis());
        cloudFileBean.setUpdatedAt(System.currentTimeMillis());
        boolean z = true;
        if (localFilePath.length() == 0) {
            cloudFileBean.setSize(0L);
        } else {
            cloudFileBean.setSize(FileUtils.sizeOf(new File(localFilePath)));
        }
        cloudFileBean.setName(name);
        cloudFileBean.setSyncStatus(SyncStatus.NEW_FROM_LOCAL);
        cloudFileBean.setDir(false);
        String localFilePath2 = folderBean.getLocalFilePath();
        if (localFilePath2 != null && localFilePath2.length() != 0) {
            z = false;
        }
        if (z) {
            Intrinsics.checkNotNull(name);
            setFilePathUnderRootFolder(cloudFileBean, provider, name);
        } else {
            cloudFileBean.setLocalFilePath(fileUtils.combinePath(folderBean.getLocalFilePath(), name));
            cloudFileBean.setCloudFilePath(fileUtils.combinePath(folderBean.getCloudFilePath(), name));
        }
        String cloudFilePath = cloudFileBean.getCloudFilePath();
        if (cloudFilePath != null) {
            this.pasteBeanMap.put(cloudFilePath, cloudFileBean);
            this.pastePathMap.put(cloudFilePath, localFilePath);
        }
        return cloudFileBean;
    }

    @NotNull
    public Observable<List<CloudFileBean>> searchTargetCloudFile(@NotNull CloudFileBean cloudFileBean) {
        Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
        Observable<List<CloudFileBean>> map = Observable.just(generateQueryArgs(cloudFileBean)).observeOn(getWorkScheduler()).flatMap(new C7171j()).map(C7172k.f41072e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setCloudStorageProvider(@NotNull BaseCloudStorageProvider baseCloudStorageProvider) {
        Intrinsics.checkNotNullParameter(baseCloudStorageProvider, "<set-?>");
        this.cloudStorageProvider = baseCloudStorageProvider;
    }

    public void setFilePathUnderRootFolder(@NotNull CloudFileBean fileBean, @NotNull Provider provider, @NotNull String filename) throws Exception {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(filename, "filename");
        com.onyx.android.sdk.base.utils.FileUtils fileUtils = com.onyx.android.sdk.base.utils.FileUtils.INSTANCE;
        fileBean.setLocalFilePath(fileUtils.combinePath(getCloudStorageProvider().getCloudStorageRecordProvider().getCloudFileLocalDir(), filename));
        fileBean.setCloudFilePath(fileUtils.combinePath(CloudStorageConstants.INSTANCE.getCloudOnyxPath(provider), filename));
    }

    public final void setOperation(@NotNull PasteLocalFileOperation pasteLocalFileOperation) {
        Intrinsics.checkNotNullParameter(pasteLocalFileOperation, "<set-?>");
        this.operation = pasteLocalFileOperation;
    }

    public final void setWorkScheduler(@NotNull Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(scheduler, "<set-?>");
        this.workScheduler = scheduler;
    }
}
