package com.onyx.android.sdk.cloudstorage.provider.common.action.cloud;

import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.TypeReference;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.common.SyncStatus;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.request.CopyLocalFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.request.QuerySelectedLocalFilesRequest;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.SelectionModel;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.SelectionHelper;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010%\n\u0002\b\b\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u00104\u001a\u00020\f¢\u0006\u0004\bD\u0010EJ*\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u001a\u0010\u0007\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003H\u0002J\u001c\u0010\u000b\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003H\u0002J\"\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\u00032\u0006\u0010\r\u001a\u00020\fH\u0002J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\bH\u0002J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u0013\u001a\u00020\fH\u0002J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0002J\u000e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0002J\b\u0010\u001a\u001a\u00020\u0019H\u0002J8\u0010!\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00042\u001e\u0010\u001f\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00050\u001d0\u001c2\u0006\u0010 \u001a\u00020\u0006H\u0002J\u000e\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0016J\b\u0010#\u001a\u00020\u0002H$J\u0016\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00052\u0006\u0010\u001b\u001a\u00020\u0004H$J\u0012\u0010&\u001a\u0004\u0018\u00010\u00062\u0006\u0010%\u001a\u00020\u0004H$J\u0016\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010'\u001a\u00020\u0002H\u0014J \u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\b\u0010%\u001a\u0004\u0018\u00010\u00042\u0006\u0010)\u001a\u00020\u0006H\u0014J\u001a\u0010-\u001a\u00020,2\b\u0010+\u001a\u0004\u0018\u00010\u00062\u0006\u0010)\u001a\u00020\u0006H\u0014J\b\u0010/\u001a\u00020.H\u0014J\u0010\u00101\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0006H\u0014J\u0018\u00103\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u0006H\u0014R\u001a\u00104\u001a\u00020\f8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R\"\u00108\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R&\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001e0>8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010BR \u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010@¨\u0006F"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "", "", "pair", "Lio/reactivex/rxjava3/core/Observable;", "", C4921e.f26528e, "r", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", "Lcom/onyx/android/sdk/data/utils/SelectionHelper;", "Lcom/alibaba/fastjson2/JSONObject;", "q", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "l", "delOperation", GoogleApiAvailabilityLight.f29016b, "containConflict", "p", "t", "s", "", "m", "parentData", "", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "destDir", "u", BaiduYunConstant.CREATE, "copyCloudData", "fetchAllChildCloudFiles", "targetFolder", "getTargetCloudPath", "delResult", "processAfterDelete", BreakpointSQLiteKey.FILENAME, "searchFile", "targetParentId", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "generateQueryArgs", "", "getMaxQueryLimit", "fileInfoPath", "getCloudFileLocalPath", "fileBean", "copyLocalFile", "fileOperation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "getFileOperation", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "cut", Constants.HASIDCALL_INDEX_SIG, "getCut", Constants.BOOLEAN_VALUE_SIG, "setCut", "(Z)V", "", "conflictBeanMap", "Ljava/util/Map;", "getConflictBeanMap", "()Ljava/util/Map;", "destDataMap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCopyCloudFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,325:1\n215#2:326\n216#2:331\n215#2,2:332\n215#2:334\n216#2:337\n1549#3:327\n1620#3,3:328\n1855#3,2:335\n1549#3:338\n1620#3,3:339\n1855#3,2:342\n1855#3,2:344\n766#3:346\n857#3,2:347\n1549#3:349\n1620#3,2:350\n1622#3:353\n1549#3:354\n1620#3,3:355\n1#4:352\n*S KotlinDebug\n*F\n+ 1 CopyCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction\n*L\n173#1:326\n173#1:331\n243#1:332,2\n280#1:334\n280#1:337\n176#1:327\n176#1:328,3\n281#1:335,2\n295#1:338\n295#1:339,3\n297#1:342,2\n302#1:344,2\n310#1:346\n310#1:347,2\n313#1:349\n313#1:350,2\n313#1:353\n314#1:354\n314#1:355,3\n*E\n"})
/* loaded from: classes7.dex */
public abstract class CopyCloudFileAction extends BaseCloudStorageAction<CloudFileListResult> {

    @NotNull
    private final Map<CloudFileOperation.OperationData, CloudFileBean> conflictBeanMap;
    private boolean cut;

    @NotNull
    private final Map<String, CloudFileOperation.OperationData> destDataMap;

    @NotNull
    private final CloudFileOperation fileOperation;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$a */
    /* loaded from: classes7.dex */
    public static final class C7211a<T, R> implements Function {
        public C7211a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseCloudStorageProvider apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyCloudFileAction.this.getOnyxCloudProvider();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$b */
    /* loaded from: classes7.dex */
    public static final class C7212b<T, R> implements Function {
        public C7212b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BaseCloudStorageProvider> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyCloudFileAction.this.m32425l();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$c */
    /* loaded from: classes7.dex */
    public static final class C7213c<T, R> implements Function {
        public C7213c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<CloudFileOperation.OperationData, List<String>> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyCloudFileAction.this.m32431r();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$d */
    /* loaded from: classes7.dex */
    public static final class C7214d<T, R> implements Function {
        public C7214d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Pair<CloudFileOperation.OperationData, ? extends List<String>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyCloudFileAction.this.m32428o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$e */
    /* loaded from: classes7.dex */
    public static final class C7215e<T, R> implements Function {
        public C7215e() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends CloudFileListResult> m32439a(boolean z) {
            return CopyCloudFileAction.this.m32429p(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m32439a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$f */
    /* loaded from: classes7.dex */
    public static final class C7216f<T, R> implements Function {
        public C7216f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileListResult> apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyCloudFileAction.this.processAfterDelete(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$g */
    /* loaded from: classes7.dex */
    public static final class C7217g<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Pair<CloudFileOperation.OperationData, List<String>> f41410f;

        /* JADX WARN: Multi-variable type inference failed */
        public C7217g(Pair<CloudFileOperation.OperationData, ? extends List<String>> pair) {
            this.f41410f = pair;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileListResult> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyCloudFileAction.this.searchFile(this.f41410f.getFirst(), it2);
        }
    }

    @SourceDebugExtension({"SMAP\nCopyCloudFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$findConflict$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,325:1\n1855#2,2:326\n*S KotlinDebug\n*F\n+ 1 CopyCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$findConflict$2\n*L\n131#1:326,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$h */
    /* loaded from: classes7.dex */
    public static final class C7218h<T, R> implements Function {

        /* renamed from: e */
        public static final C7218h<T, R> f41411e = new C7218h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull List<CloudFileListResult> resultList) {
            Intrinsics.checkNotNullParameter(resultList, "resultList");
            CloudFileListResult cloudFileListResult = new CloudFileListResult();
            Iterator<T> it2 = resultList.iterator();
            while (it2.hasNext()) {
                cloudFileListResult.ensureList().addAll(((CloudFileListResult) it2.next()).ensureList());
            }
            return cloudFileListResult;
        }
    }

    @SourceDebugExtension({"SMAP\nCopyCloudFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$findConflict$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,325:1\n766#2:326\n857#2,2:327\n2634#2:329\n1855#2,2:331\n1#3:330\n*S KotlinDebug\n*F\n+ 1 CopyCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$findConflict$3\n*L\n138#1:326\n138#1:327,2\n141#1:329\n143#1:331,2\n141#1:330\n*E\n"})
    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$i */
    /* loaded from: classes7.dex */
    public static final class C7219i<T, R> implements Function {
        public C7219i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull CloudFileListResult result) {
            Intrinsics.checkNotNullParameter(result, "result");
            List<CloudFileBean> ensureList = result.ensureList();
            CopyCloudFileAction copyCloudFileAction = CopyCloudFileAction.this;
            ArrayList<CloudFileBean> arrayList = new ArrayList();
            for (T t : ensureList) {
                if (copyCloudFileAction.destDataMap.get(((CloudFileBean) t).getCloudFilePath()) != null) {
                    arrayList.add(t);
                }
            }
            for (CloudFileBean cloudFileBean : arrayList) {
                Debug.INSTANCE.m32053i("conflict file: " + cloudFileBean.getCloudFilePath());
            }
            CopyCloudFileAction copyCloudFileAction2 = CopyCloudFileAction.this;
            for (CloudFileBean cloudFileBean2 : arrayList) {
                CloudFileOperation.OperationData operationData = (CloudFileOperation.OperationData) copyCloudFileAction2.destDataMap.get(cloudFileBean2.getCloudFilePath());
                if (operationData != null) {
                    copyCloudFileAction2.getConflictBeanMap().put(operationData, cloudFileBean2);
                }
            }
            return Boolean.valueOf(CollectionKt.isNonBlank(CopyCloudFileAction.this.getConflictBeanMap()));
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$j */
    /* loaded from: classes7.dex */
    public static final class C7220j<T, R> implements Function {

        /* renamed from: e */
        public static final C7220j<T, R> f41413e = new C7220j<>();

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

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$k */
    /* loaded from: classes7.dex */
    public static final class C7221k<T, R> implements Function {
        public C7221k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull CopyCloudFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyCloudFileAction.this.copyCloudData();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$l */
    /* loaded from: classes7.dex */
    public static final class C7222l<T, R> implements Function {
        public C7222l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull CloudFileListResult result) {
            Intrinsics.checkNotNullParameter(result, "result");
            if (result.isSuccessful()) {
                CopyCloudFileAction.this.m32426m();
            }
            return result;
        }
    }

    public CopyCloudFileAction(@NotNull CloudFileOperation fileOperation) {
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.fileOperation = fileOperation;
        this.conflictBeanMap = new LinkedHashMap();
        this.destDataMap = new LinkedHashMap();
    }

    @NotNull
    public abstract CloudFileListResult copyCloudData() throws Exception;

    public void copyLocalFile(@NotNull CloudFileBean fileBean, @NotNull String destDir) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Intrinsics.checkNotNullParameter(destDir, "destDir");
        try {
            String name = fileBean.getName();
            Intrinsics.checkNotNull(name);
            CopyLocalFileRequest copyLocalFileRequest = new CopyLocalFileRequest(fileBean, destDir, name);
            copyLocalFileRequest.setCut(this.cut);
            copyLocalFileRequest.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileListResult> create() {
        Observable<CloudFileListResult> flatMap = createObservableWithUpdateClusterInfo().takeLast(1).flatMap(new C7212b()).map(new C7213c()).flatMap(new C7214d()).flatMap(new C7215e());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public abstract List<CloudFileBean> fetchAllChildCloudFiles(@NotNull CloudFileOperation.OperationData parentData) throws Exception;

    @NotNull
    public CloudFileQueryArgs generateQueryArgs(@Nullable String targetParentId, @NotNull String filename) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setQuery(filename);
        cloudFileQueryArgs.setParentId(targetParentId);
        cloudFileQueryArgs.setFilterParent(true);
        cloudFileQueryArgs.setProvider(getOnyxCloudProvider().getProviderType().getTitle());
        cloudFileQueryArgs.setSortBy(SortBy.Name);
        cloudFileQueryArgs.setOrder(SortOrder.Desc);
        cloudFileQueryArgs.setOffset(0L);
        cloudFileQueryArgs.setLimit(getMaxQueryLimit());
        cloudFileQueryArgs.setAccountId(this.fileOperation.getAccountId());
        cloudFileQueryArgs.setFetchPolicy(0);
        return cloudFileQueryArgs;
    }

    @NotNull
    public String getCloudFileLocalPath(@NotNull String fileInfoPath) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(fileInfoPath, "fileInfoPath");
        String cloudOnyxPath = CloudStorageConstants.INSTANCE.getCloudOnyxPath(getOnyxCloudProvider().getProviderType());
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(fileInfoPath, cloudOnyxPath, false, 2, null);
        if (!startsWith$default) {
            cloudOnyxPath = StringUtils.lowerCase(cloudOnyxPath);
            Intrinsics.checkNotNullExpressionValue(cloudOnyxPath, "lowerCase(...)");
        }
        return FileUtils.INSTANCE.combinePath(getOnyxCloudProvider().getCloudStorageRecordProvider().getCloudFileLocalDir(), StringUtils.substringAfter(fileInfoPath, cloudOnyxPath));
    }

    @NotNull
    public final Map<CloudFileOperation.OperationData, CloudFileBean> getConflictBeanMap() {
        return this.conflictBeanMap;
    }

    public final boolean getCut() {
        return this.cut;
    }

    @NotNull
    public final CloudFileOperation getFileOperation() {
        return this.fileOperation;
    }

    public int getMaxQueryLimit() {
        return Integer.MAX_VALUE;
    }

    @Nullable
    public abstract String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder);

    /* renamed from: l */
    public final Observable<BaseCloudStorageProvider> m32425l() {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Map map = (Map) jSONUtils.parseObject(this.fileOperation.getDataJson(), new TypeReference<Map<String, ? extends String>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$checkFileOperation$delOperation$1
        });
        CloudFileOperation cloudFileOperation = map != null ? (CloudFileOperation) jSONUtils.parseObject((String) map.get(Constant.PADDING_TAG), CloudFileOperation.class) : null;
        if (cloudFileOperation != null) {
            Observable map2 = m32427n(cloudFileOperation).map(new C7211a());
            Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
            return map2;
        }
        Observable<BaseCloudStorageProvider> just = Observable.just(getOnyxCloudProvider());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: m */
    public final void m32426m() throws Exception {
        Pair<CloudFileOperation.OperationData, SelectionHelper<JSONObject>> m32430q = m32430q(this.fileOperation);
        Map<String, List<CloudFileBean>> execute = new QuerySelectedLocalFilesRequest(getOnyxCloudProvider(), this.fileOperation.getProvider(), m32430q.getSecond()).execute();
        String path = m32430q.getFirst().getPath();
        if (path != null) {
            File file = new File(getCloudFileLocalPath(path));
            CloudFileOperation.OperationData first = m32430q.getFirst();
            Set<Map.Entry<String, List<CloudFileBean>>> entrySet = execute.entrySet();
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            m32434u(first, entrySet, absolutePath);
            onyx.org.apache.commons.io.FileUtils.forceMkdir(file);
            Iterator<Map.Entry<String, List<CloudFileBean>>> it2 = execute.entrySet().iterator();
            while (it2.hasNext()) {
                for (CloudFileBean cloudFileBean : it2.next().getValue()) {
                    String absolutePath2 = file.getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
                    copyLocalFile(cloudFileBean, absolutePath2);
                }
            }
        }
    }

    /* renamed from: n */
    public final Observable<CloudFileListResult> m32427n(CloudFileOperation delOperation) {
        Observable flatMap = getOnyxCloudProvider().deleteFile(delOperation).flatMap(new C7216f());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: o */
    public final Observable<Boolean> m32428o(Pair<CloudFileOperation.OperationData, ? extends List<String>> pair) {
        Observable<Boolean> observable = Observable.fromIterable(pair.getSecond()).observeOn(getObserveOn()).flatMap(new C7217g(pair)).toList().map(C7218h.f41411e).map(new C7219i()).toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "toObservable(...)");
        return observable;
    }

    /* renamed from: p */
    public final Observable<CloudFileListResult> m32429p(boolean containConflict) {
        return containConflict ? m32433t() : m32432s();
    }

    @NotNull
    public Observable<CloudFileListResult> processAfterDelete(@NotNull CloudFileListResult delResult) {
        Intrinsics.checkNotNullParameter(delResult, "delResult");
        Observable<CloudFileListResult> map = Observable.just(delResult).map(C7220j.f41413e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Pair<CloudFileOperation.OperationData, SelectionHelper<JSONObject>> m32430q(CloudFileOperation args) {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Object parseObject = jSONUtils.parseObject(args.getDataJson(), new TypeReference<Map<String, ? extends String>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$parseArgsData$map$1
        });
        Intrinsics.checkNotNull(parseObject);
        Map map = (Map) parseObject;
        Object parseObject2 = jSONUtils.parseObject((String) map.get("target"), (Class<Object>) CloudFileOperation.OperationData.class);
        Intrinsics.checkNotNull(parseObject2);
        CloudFileOperation.OperationData operationData = (CloudFileOperation.OperationData) parseObject2;
        Object parseObject3 = jSONUtils.parseObject((String) map.get(Constant.MAP_TAG), new TypeReference<SelectionHelper<JSONObject>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$parseArgsData$selectionHelper$1
        });
        Intrinsics.checkNotNull(parseObject3);
        SelectionHelper selectionHelper = (SelectionHelper) parseObject3;
        String path = operationData.getPath();
        if ((path == null || path.length() == 0) && operationData.getOrigin() != null) {
            CloudStorageRecordProvider cloudStorageRecordProvider = getOnyxCloudProvider().getCloudStorageRecordProvider();
            String origin = operationData.getOrigin();
            Intrinsics.checkNotNull(origin);
            operationData.setPath(cloudStorageRecordProvider.getCloudFilePath(origin, CloudStorageConstants.INSTANCE.getCloudOnyxPath(getOnyxCloudProvider().getProviderType())));
        }
        return TuplesKt.m61535to(operationData, selectionHelper);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [T, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.util.List, T] */
    /* renamed from: r */
    public final Pair<CloudFileOperation.OperationData, List<String>> m32431r() {
        int collectionSizeOrDefault;
        ?? mutableList;
        Pair<CloudFileOperation.OperationData, SelectionHelper<JSONObject>> m32430q = m32430q(this.fileOperation);
        final CloudFileOperation.OperationData first = m32430q.getFirst();
        String path = first.getPath();
        if (path == null || path.length() == 0) {
            first.setPath(getTargetCloudPath(first));
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new ArrayList();
        Iterator it2 = m32430q.getSecond().getSelectedItemMap(new Function1<JSONObject, CloudFileOperation.OperationData>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$parseSearchData$selectedItemMap$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CloudFileOperation.OperationData invoke(@NotNull JSONObject it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                Object parseObject = JSONUtils.INSTANCE.parseObject(it3.toJSONString(new JSONWriter.Feature[0]), new TypeReference<CloudFileOperation.OperationData>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction$parseSearchData$selectedItemMap$1$operationData$1
                });
                Intrinsics.checkNotNull(parseObject);
                CloudFileOperation.OperationData operationData = (CloudFileOperation.OperationData) parseObject;
                operationData.setDest(CloudFileOperation.OperationData.this.getPath());
                operationData.setNewName(FilenameUtils.getName(operationData.getPath()));
                return operationData;
            }
        }).entrySet().iterator();
        while (it2.hasNext()) {
            SelectionModel selectionModel = (SelectionModel) ((Map.Entry) it2.next()).getValue();
            if (!selectionModel.getIsSelectedAllMode()) {
                List<CloudFileOperation.OperationData> selectedList = selectionModel.getSelectedList();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(selectedList, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (CloudFileOperation.OperationData operationData : selectedList) {
                    this.destDataMap.put(FileUtils.INSTANCE.combinePath(operationData.getDest(), operationData.getNewName()), operationData);
                    arrayList.add(FilenameUtils.getName(operationData.getPath()));
                }
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                objectRef.element = mutableList;
            }
        }
        return TuplesKt.m61535to(first, objectRef.element);
    }

    /* renamed from: s */
    public final Observable<CloudFileListResult> m32432s() {
        Observable<CloudFileListResult> map = Observable.just(this).observeOn(getObserveOn()).map(new C7221k()).map(new C7222l());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public Observable<CloudFileListResult> searchFile(@Nullable CloudFileOperation.OperationData targetFolder, @NotNull String filename) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        return getOnyxCloudProvider().searchFileInfoList(generateQueryArgs(targetFolder != null ? targetFolder.getOrigin() : null, filename));
    }

    public final void setCut(boolean z) {
        this.cut = z;
    }

    /* renamed from: t */
    public final Observable<CloudFileListResult> m32433t() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<CloudFileOperation.OperationData, CloudFileBean> entry : this.conflictBeanMap.entrySet()) {
            CloudFileOperation.OperationData key = entry.getKey();
            CloudFileBean value = entry.getValue();
            String json = JSONUtils.INSTANCE.toJson(key);
            Intrinsics.checkNotNull(json);
            linkedHashMap.put(json, value);
        }
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        cloudFileListResult.setOperationJson(JSONUtils.INSTANCE.toJson(this.fileOperation));
        cloudFileListResult.setConflictFileBeanMap(linkedHashMap);
        cloudFileListResult.setCode(1001);
        Observable<CloudFileListResult> just = Observable.just(cloudFileListResult);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: u */
    public final void m32434u(CloudFileOperation.OperationData parentData, Set<? extends Map.Entry<String, ? extends List<CloudFileBean>>> set, String destDir) throws Exception {
        int collectionSizeOrDefault;
        List mutableList;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        List mutableList2;
        boolean contains;
        ArrayList<CloudFileBean> arrayList = new ArrayList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = set.iterator();
        while (it2.hasNext()) {
            arrayList2.add((List) ((Map.Entry) it2.next()).getValue());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        Iterator it3 = mutableList.iterator();
        while (it3.hasNext()) {
            arrayList.addAll((List) it3.next());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (CloudFileBean cloudFileBean : arrayList) {
            linkedHashMap.put(FileUtils.INSTANCE.combinePath(destDir, cloudFileBean.getName()), cloudFileBean);
        }
        Set keySet = linkedHashMap.keySet();
        List ensureList = CollectionKt.ensureList(fetchAllChildCloudFiles(parentData));
        ArrayList<CloudFileBean> arrayList3 = new ArrayList();
        for (Object obj : ensureList) {
            contains = CollectionsKt___CollectionsKt.contains(keySet, ((CloudFileBean) obj).getLocalFilePath());
            if (contains) {
                arrayList3.add(obj);
            }
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
        ArrayList<CloudFileBean> arrayList4 = new ArrayList(collectionSizeOrDefault2);
        for (CloudFileBean cloudFileBean2 : arrayList3) {
            cloudFileBean2.setParentId(parentData.getOrigin());
            arrayList4.add(cloudFileBean2);
        }
        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList4, 10);
        ArrayList arrayList5 = new ArrayList(collectionSizeOrDefault3);
        for (CloudFileBean cloudFileBean3 : arrayList4) {
            CloudFileBean cloudFileBean4 = (CloudFileBean) linkedHashMap.get(cloudFileBean3.getLocalFilePath());
            if (cloudFileBean4 != null && cloudFileBean4.getSyncStatus() != SyncStatus.NEW_FROM_CLOUD) {
                cloudFileBean3.setSyncStatus(cloudFileBean4.getSyncStatus());
            }
            arrayList5.add(cloudFileBean3);
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList5);
        getOnyxCloudProvider().getCloudStorageRecordProvider().saveCloudFiles(mutableList2);
    }
}
