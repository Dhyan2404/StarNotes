package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunService;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunError;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunUpdateParam;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunUploadSession;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunUploadSessionParam;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.utils.HuaweiYunUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.LongProgression;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt___RangesKt;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b \u0010!J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\u001a\u0010\r\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\bH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u0019\u001a\u00020\u0012H\u0002R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;", "execute", "uploadedFileInfo", "d", "fileInfo", "j", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "", C6998g.f39679a, "cloudFileBean", "i", "", "fileId", "", C6999h.f39688c, "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;", "uploadSession", "e", C4921e.f26537n, "", TypedValues.CycleType.S_WAVE_OFFSET, "l", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "huaweiYunProvider", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHuaweiYunUploadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunUploadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,203:1\n1#2:204\n766#3:205\n857#3,2:206\n288#3,2:208\n*S KotlinDebug\n*F\n+ 1 HuaweiYunUploadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest\n*L\n119#1:205\n119#1:206,2\n121#1:208,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HuaweiYunUploadRequest extends TransferCloudFileRequest<HuaweiYunFileListResult.File> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider huaweiYunProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    public HuaweiYunUploadRequest(@NotNull HuaweiYunProvider huaweiYunProvider, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(huaweiYunProvider, "huaweiYunProvider");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.huaweiYunProvider = huaweiYunProvider;
        this.fileBean = fileBean;
    }

    /* renamed from: d */
    public final HuaweiYunFileListResult.File m32721d(HuaweiYunFileListResult.File uploadedFileInfo) throws Exception {
        return (!StringUtils.equals(uploadedFileInfo.getFileName(), this.fileBean.getName()) && m32724g(uploadedFileInfo, this.fileBean)) ? m32727j(uploadedFileInfo) : uploadedFileInfo;
    }

    /* renamed from: e */
    public final HuaweiYunFileListResult.File m32722e(final HuaweiYunUploadSession uploadSession) throws Exception {
        Object body = this.huaweiYunProvider.getDriveClient().executeCall(new Function1<HuaweiYunService, Call<HuaweiYunFileListResult.File>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunUploadRequest$completeUpload$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<HuaweiYunFileListResult.File> invoke(@NotNull HuaweiYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                String location = HuaweiYunUploadSession.this.getLocation();
                Intrinsics.checkNotNull(location);
                return HuaweiYunService.DefaultImpls.upload$default(service, location, null, null, 0, 14, null);
            }
        }).body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return (HuaweiYunFileListResult.File) body;
    }

    /* renamed from: f */
    public final HuaweiYunUploadSession m32723f() throws Exception {
        Debug.INSTANCE.m32035d(HuaweiYunUploadRequest.class, "createUploadSession start:" + this.fileBean.getCloudFilePath(), new Object[0]);
        String localFilePath = this.fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        final long sizeOf = FileUtils.sizeOf(new File(localFilePath));
        String str = FilenameUtils.getBaseName(this.fileBean.getName()) + NameUtil.USCORE + System.currentTimeMillis();
        String extension = FilenameUtils.getExtension(this.fileBean.getName());
        String str2 = str + '.' + extension;
        String normalizeToCloudParentId = HuaweiYunUtils.INSTANCE.normalizeToCloudParentId(this.fileBean.getUniqueId());
        FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
        Intrinsics.checkNotNull(extension);
        final String mimeType = fileExtensionUtils.mimeType(extension);
        Intrinsics.checkNotNull(mimeType);
        String[] strArr = {normalizeToCloudParentId};
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        String format = dateTimeUtil.getDATE_FORMAT_RFC3339().format(Long.valueOf(this.fileBean.getCreatedAt()));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        String format2 = dateTimeUtil.getDATE_FORMAT_RFC3339().format(Long.valueOf(this.fileBean.getUpdatedAt()));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        final HuaweiYunUploadSessionParam huaweiYunUploadSessionParam = new HuaweiYunUploadSessionParam(str2, strArr, format, format2, mimeType);
        Response<?> executeCall = this.huaweiYunProvider.getDriveClient().executeCall(new Function1<HuaweiYunService, Call<HuaweiYunUploadSession>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunUploadRequest$createUploadSession$response$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<HuaweiYunUploadSession> invoke(@NotNull HuaweiYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.createUploadSession(CloudStorageConstants.HUAWEIYUN_DRIVE_UPLOAD_URL, HuaweiYunUploadSessionParam.this, sizeOf, mimeType);
            }
        });
        if (!executeCall.isSuccessful()) {
            throw HuaweiYunError.INSTANCE.parse(executeCall);
        }
        HuaweiYunUploadSession huaweiYunUploadSession = (HuaweiYunUploadSession) executeCall.body();
        huaweiYunUploadSession.setLocation(executeCall.headers().get("Location"));
        Intrinsics.checkNotNull(huaweiYunUploadSession);
        return huaweiYunUploadSession;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006a  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m32724g(com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult.File r6, com.onyx.android.sdk.cloudstorage.model.CloudFileBean r7) throws java.lang.Exception {
        /*
            r5 = this;
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
            java.lang.String r0 = r7.getUniqueId()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L14
            int r0 = r0.length()
            if (r0 != 0) goto L12
            goto L14
        L12:
            r0 = r1
            goto L15
        L14:
            r0 = r2
        L15:
            if (r0 == 0) goto L3b
            java.lang.String r0 = r7.getLocalFilePath()
            if (r0 == 0) goto L26
            int r0 = r0.length()
            if (r0 != 0) goto L24
            goto L26
        L24:
            r0 = r1
            goto L27
        L26:
            r0 = r2
        L27:
            if (r0 != 0) goto L3b
            com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider r0 = r5.huaweiYunProvider
            com.onyx.android.sdk.cloudstorage.db.CloudStorageRecordProvider r0 = r0.getCloudStorageRecordProvider()
            java.lang.String r3 = r7.getLocalFilePath()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            com.onyx.android.sdk.cloudstorage.model.CloudFileBean r0 = r0.queryFileInfoByLocalPath(r3)
            goto L3c
        L3b:
            r0 = r7
        L3c:
            if (r0 == 0) goto L5a
            java.lang.String r3 = r0.getUniqueId()
            boolean r3 = org.apache.commons.lang3.StringUtils.isNotBlank(r3)
            if (r3 == 0) goto L5a
            com.onyx.android.sdk.cloudstorage.model.common.SyncStatus r3 = r0.getSyncStatus()
            com.onyx.android.sdk.cloudstorage.model.common.SyncStatus r4 = com.onyx.android.sdk.cloudstorage.model.common.SyncStatus.NEW_FROM_LOCAL
            if (r3 == r4) goto L5a
            java.lang.String r6 = r0.getUniqueId()
            if (r6 == 0) goto L59
            r5.m32725h(r6)
        L59:
            return r2
        L5a:
            com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult$File r6 = r5.m32726i(r6, r7)
            if (r6 != 0) goto L6a
            com.onyx.android.sdk.cloudstorage.model.common.SyncStatus r5 = r7.getSyncStatus()
            com.onyx.android.sdk.cloudstorage.model.common.SyncStatus r6 = com.onyx.android.sdk.cloudstorage.model.common.SyncStatus.NEW_FROM_LOCAL
            if (r5 != r6) goto L69
            r1 = r2
        L69:
            return r1
        L6a:
            java.lang.String r6 = r6.getId()
            r5.m32725h(r6)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunUploadRequest.m32724g(com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult$File, com.onyx.android.sdk.cloudstorage.model.CloudFileBean):boolean");
    }

    /* renamed from: h */
    public final void m32725h(final String fileId) throws Exception {
        this.huaweiYunProvider.getDriveClient().executeCall(new Function1<HuaweiYunService, Call<Unit>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunUploadRequest$deleteHuaweiYunFile$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<Unit> invoke(@NotNull HuaweiYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.deleteFile(fileId);
            }
        });
    }

    /* renamed from: i */
    public final HuaweiYunFileListResult.File m32726i(HuaweiYunFileListResult.File uploadedFileInfo, CloudFileBean cloudFileBean) throws Exception {
        Object firstOrNull;
        Object firstOrNull2;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) uploadedFileInfo.getParentFolder());
        String str = (String) firstOrNull;
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setQuery(cloudFileBean.getName());
        cloudFileQueryArgs.setParentId(HuaweiYunUtils.INSTANCE.normalizeToDBParentId(str));
        cloudFileQueryArgs.setPrecisionSearch(true);
        final HuaweiYunQueryArgs from = HuaweiYunQueryArgs.INSTANCE.from(cloudFileQueryArgs);
        HuaweiYunFileListResult huaweiYunFileListResult = (HuaweiYunFileListResult) this.huaweiYunProvider.getDriveClient().executeCall(new Function1<HuaweiYunService, Call<HuaweiYunFileListResult>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunUploadRequest$findOldCloudFile$result$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<HuaweiYunFileListResult> invoke(@NotNull HuaweiYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.fetchFiles(HuaweiYunQueryArgs.this.getQueryParam(), HuaweiYunQueryArgs.this.getOrderBy(), HuaweiYunQueryArgs.this.getPageSize(), HuaweiYunQueryArgs.this.getCursor());
            }
        }).body();
        Object obj = null;
        if (huaweiYunFileListResult.getFiles().isEmpty()) {
            return null;
        }
        List<HuaweiYunFileListResult.File> files = huaweiYunFileListResult.getFiles();
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : files) {
            if (StringKt.equals(cloudFileBean.getName(), ((HuaweiYunFileListResult.File) obj2).getFileName())) {
                arrayList.add(obj2);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) ((HuaweiYunFileListResult.File) next).getParentFolder());
            if (StringKt.equals((CharSequence) firstOrNull2, str)) {
                obj = next;
                break;
            }
        }
        return (HuaweiYunFileListResult.File) obj;
    }

    /* renamed from: j */
    public final HuaweiYunFileListResult.File m32727j(final HuaweiYunFileListResult.File fileInfo) throws Exception {
        final HuaweiYunUpdateParam huaweiYunUpdateParam = new HuaweiYunUpdateParam(this.fileBean.getName(), null, null, 6, null);
        Object body = this.huaweiYunProvider.getDriveClient().executeCall(new Function1<HuaweiYunService, Call<HuaweiYunFileListResult.File>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunUploadRequest$renameCloudFile$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<HuaweiYunFileListResult.File> invoke(@NotNull HuaweiYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.updateFile(HuaweiYunFileListResult.File.this.getId(), huaweiYunUpdateParam);
            }
        }).body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return (HuaweiYunFileListResult.File) body;
    }

    /* renamed from: k */
    public final void m32728k(HuaweiYunUploadSession uploadSession) throws Exception {
        LongRange until;
        LongProgression step;
        String localFilePath = this.fileBean.getLocalFilePath();
        if (localFilePath == null) {
            return;
        }
        long sizeOf = FileUtils.sizeOf(new File(localFilePath));
        getProgressInfo().setTotalBytes(sizeOf);
        until = RangesKt___RangesKt.until(0, sizeOf);
        step = RangesKt___RangesKt.step(until, uploadSession.getSliceSize());
        long first = step.getFirst();
        long last = step.getLast();
        long step2 = step.getStep();
        if ((step2 <= 0 || first > last) && (step2 >= 0 || last > first)) {
            return;
        }
        while (true) {
            m32729l(uploadSession, first);
            if (first == last) {
                return;
            } else {
                first += step2;
            }
        }
    }

    /* renamed from: l */
    public final void m32729l(final HuaweiYunUploadSession uploadSession, long offset) {
        Debug debug = Debug.INSTANCE;
        debug.m32035d(HuaweiYunUploadRequest.class, "uploadBlock start: " + offset, new Object[0]);
        onProgress(getProgressInfo(), offset);
        String localFilePath = this.fileBean.getLocalFilePath();
        if (localFilePath != null) {
            long sizeOf = FileUtils.sizeOf(new File(localFilePath));
            final byte[] block = com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.getBlock(localFilePath, offset, uploadSession.getSliceSize());
            final String str = "bytes " + (offset - ((block.length + offset) / sizeOf));
            this.huaweiYunProvider.getDriveClient().executeCall(new Function1<HuaweiYunService, Call<HuaweiYunFileListResult.File>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunUploadRequest$uploadBlock$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Call<HuaweiYunFileListResult.File> invoke(@NotNull HuaweiYunService service) {
                    Intrinsics.checkNotNullParameter(service, "service");
                    String location = HuaweiYunUploadSession.this.getLocation();
                    Intrinsics.checkNotNull(location);
                    return service.upload(location, RequestBody.Companion.create$default(RequestBody.INSTANCE, block, (MediaType) null, 0, 0, 7, (Object) null), str, block.length);
                }
            });
            debug.m32052i(HuaweiYunUploadRequest.class, "uploadBlock finish: " + offset, new Object[0]);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public HuaweiYunFileListResult.File execute() {
        HuaweiYunUploadSession m32723f = m32723f();
        m32728k(m32723f);
        return m32721d(m32722e(m32723f));
    }
}
