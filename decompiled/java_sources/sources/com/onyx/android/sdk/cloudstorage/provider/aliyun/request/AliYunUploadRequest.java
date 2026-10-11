package com.onyx.android.sdk.cloudstorage.provider.aliyun.request;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunService;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileBase;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileRename;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunUploadSession;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunUtils;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.LongProgression;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt___RangesKt;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 %2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0017\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b#\u0010$J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0002R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;", "session", "e", "uploadedFileInfo", "d", "fileInfo", "j", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "", C6999h.f39688c, "cloudFileBean", "i", "", "fileId", "", C6998g.f39679a, "uploadSession", C4921e.f26537n, "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;", "part", "", TypedValues.CycleType.S_WAVE_OFFSET, "l", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", CouchFieldKey.KEY_PROVIDER, "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAliYunUploadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunUploadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1#2:209\n766#3:210\n857#3,2:211\n288#3,2:213\n*S KotlinDebug\n*F\n+ 1 AliYunUploadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest\n*L\n131#1:210\n131#1:211,2\n132#1:213,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AliYunUploadRequest extends TransferCloudFileRequest<AliYunFileInfo> {
    public static final long BLOCK_LENGTH = 2097152;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    public AliYunUploadRequest(@NotNull AliYunProvider provider, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.provider = provider;
        this.fileBean = fileBean;
    }

    /* renamed from: d */
    public final AliYunFileInfo m32349d(AliYunFileInfo uploadedFileInfo) throws Exception {
        return (!StringUtils.equals(uploadedFileInfo.getName(), this.fileBean.getName()) && m32353h(uploadedFileInfo, this.fileBean)) ? m32355j(uploadedFileInfo) : uploadedFileInfo;
    }

    /* renamed from: e */
    public final AliYunFileInfo m32350e(AliYunUploadSession session) throws Exception {
        final AliYunUploadSession aliYunUploadSession = new AliYunUploadSession();
        aliYunUploadSession.setDriveId(session.getDriveId());
        aliYunUploadSession.setUploadId(session.getUploadId());
        aliYunUploadSession.setFileId(session.getFileId());
        Object body = this.provider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunFileInfo>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunUploadRequest$completeUpload$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<AliYunFileInfo> invoke(@NotNull AliYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.completeUpload(AliYunUploadSession.this);
            }
        }).body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return (AliYunFileInfo) body;
    }

    /* renamed from: f */
    public final AliYunUploadSession m32351f() throws Exception {
        LongRange until;
        LongProgression step;
        Debug.INSTANCE.m32035d(this.provider.getClass(), "createUploadSession start:" + this.fileBean.getCloudFilePath(), new Object[0]);
        final AliYunUploadSession aliYunUploadSession = new AliYunUploadSession();
        aliYunUploadSession.setDriveId(this.provider.getDefaultDriveId());
        aliYunUploadSession.setParentFileId(AliYunUtils.INSTANCE.normalizeToCloudParentId(this.fileBean.getParentId()));
        aliYunUploadSession.setCheckNameMode(AliYunConstant.CHECK_NAME_MODE_AUTO_RENAME);
        aliYunUploadSession.setPartInfoList(new ArrayList());
        aliYunUploadSession.setName(FilenameUtils.concat(FilenameUtils.getBaseName(this.fileBean.getName()) + '-' + System.currentTimeMillis(), FilenameUtils.getExtension(this.fileBean.getName())));
        String localFilePath = this.fileBean.getLocalFilePath();
        if (localFilePath != null) {
            until = RangesKt___RangesKt.until(0, FileUtils.sizeOf(new File(localFilePath)));
            step = RangesKt___RangesKt.step(until, 2097152L);
            long first = step.getFirst();
            long last = step.getLast();
            long step2 = step.getStep();
            if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
                while (true) {
                    AliYunUploadSession.Part part = new AliYunUploadSession.Part();
                    List<AliYunUploadSession.Part> partInfoList = aliYunUploadSession.getPartInfoList();
                    Intrinsics.checkNotNull(partInfoList);
                    part.setPartNumber(partInfoList.size() + 1);
                    List<AliYunUploadSession.Part> partInfoList2 = aliYunUploadSession.getPartInfoList();
                    Intrinsics.checkNotNull(partInfoList2);
                    partInfoList2.add(part);
                    if (first == last) {
                        break;
                    }
                    first += step2;
                }
            }
        }
        AliYunUploadSession aliYunUploadSession2 = (AliYunUploadSession) this.provider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunUploadSession>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunUploadRequest$createUploadSession$sessionResult$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<AliYunUploadSession> invoke(@NotNull AliYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.createUploadSession(AliYunUploadSession.this);
            }
        }).body();
        Debug.INSTANCE.m32035d(this.provider.getClass(), "createUploadSession finish: " + JSONUtils.INSTANCE.toJson(aliYunUploadSession2), new Object[0]);
        Intrinsics.checkNotNull(aliYunUploadSession2);
        return aliYunUploadSession2;
    }

    /* renamed from: g */
    public final void m32352g(String fileId) throws Exception {
        final AliYunFileInfo aliYunFileInfo = new AliYunFileInfo();
        aliYunFileInfo.setDriveId(this.provider.getDefaultDriveId());
        aliYunFileInfo.setFileId(fileId);
        this.provider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunFileBase>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunUploadRequest$deleteAliYunFile$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<AliYunFileBase> invoke(@NotNull AliYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.deleteFile(AliYunFileInfo.this);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006a  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m32353h(com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo r6, com.onyx.android.sdk.cloudstorage.model.CloudFileBean r7) throws java.lang.Exception {
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
            com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider r0 = r5.provider
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
            r5.m32352g(r6)
        L59:
            return r2
        L5a:
            com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo r6 = r5.m32354i(r6, r7)
            if (r6 != 0) goto L6a
            com.onyx.android.sdk.cloudstorage.model.common.SyncStatus r5 = r7.getSyncStatus()
            com.onyx.android.sdk.cloudstorage.model.common.SyncStatus r6 = com.onyx.android.sdk.cloudstorage.model.common.SyncStatus.NEW_FROM_LOCAL
            if (r5 != r6) goto L69
            r1 = r2
        L69:
            return r1
        L6a:
            java.lang.String r6 = r6.getFileId()
            if (r6 == 0) goto L73
            r5.m32352g(r6)
        L73:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunUploadRequest.m32353h(com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo, com.onyx.android.sdk.cloudstorage.model.CloudFileBean):boolean");
    }

    /* renamed from: i */
    public final AliYunFileInfo m32354i(AliYunFileInfo uploadedFileInfo, CloudFileBean cloudFileBean) throws Exception {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setQuery(cloudFileBean.getName());
        cloudFileQueryArgs.setParentId(uploadedFileInfo.getParentFileId());
        cloudFileQueryArgs.setPrecisionSearch(true);
        final AliYunQueryArgs from = AliYunQueryArgs.INSTANCE.from(uploadedFileInfo.getDriveId(), cloudFileQueryArgs);
        AliYunFileListResult aliYunFileListResult = (AliYunFileListResult) this.provider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunFileListResult>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunUploadRequest$findOldCloudFile$result$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<AliYunFileListResult> invoke(@NotNull AliYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.searchFile(AliYunQueryArgs.this);
            }
        }).body();
        Object obj = null;
        if (aliYunFileListResult.getItems() == null) {
            return null;
        }
        List<AliYunFileInfo> items = aliYunFileListResult.getItems();
        Intrinsics.checkNotNull(items);
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : items) {
            if (StringUtils.equals(cloudFileBean.getName(), ((AliYunFileInfo) obj2).getName())) {
                arrayList.add(obj2);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (StringUtils.equals(uploadedFileInfo.getParentFileId(), ((AliYunFileInfo) next).getParentFileId())) {
                obj = next;
                break;
            }
        }
        return (AliYunFileInfo) obj;
    }

    /* renamed from: j */
    public final AliYunFileInfo m32355j(AliYunFileInfo fileInfo) throws Exception {
        final AliYunFileRename aliYunFileRename = new AliYunFileRename();
        aliYunFileRename.setDriveId(fileInfo.getDriveId());
        aliYunFileRename.setFileId(fileInfo.getFileId());
        aliYunFileRename.setName(this.fileBean.getName());
        Object body = this.provider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunFileInfo>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunUploadRequest$renameCloudFile$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<AliYunFileInfo> invoke(@NotNull AliYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.renameFile(AliYunFileRename.this);
            }
        }).body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return (AliYunFileInfo) body;
    }

    /* renamed from: k */
    public final void m32356k(AliYunUploadSession uploadSession) throws Exception {
        LongRange until;
        LongProgression step;
        String localFilePath = this.fileBean.getLocalFilePath();
        if (localFilePath == null) {
            return;
        }
        long sizeOf = FileUtils.sizeOf(new File(localFilePath));
        getProgressInfo().setTotalBytes(sizeOf);
        int i = 0;
        until = RangesKt___RangesKt.until(0, sizeOf);
        step = RangesKt___RangesKt.step(until, 2097152L);
        long first = step.getFirst();
        long last = step.getLast();
        long step2 = step.getStep();
        if ((step2 <= 0 || first > last) && (step2 >= 0 || last > first)) {
            return;
        }
        while (true) {
            int i2 = i + 1;
            List<AliYunUploadSession.Part> partInfoList = uploadSession.getPartInfoList();
            Intrinsics.checkNotNull(partInfoList);
            m32357l(partInfoList.get(i), first);
            if (first == last) {
                return;
            }
            first += step2;
            i = i2;
        }
    }

    /* renamed from: l */
    public final void m32357l(final AliYunUploadSession.Part part, long offset) throws Exception {
        Debug debug = Debug.INSTANCE;
        debug.m32035d(AliYunUploadRequest.class, "uploadBlock start: " + offset, new Object[0]);
        onProgress(getProgressInfo(), offset);
        String localFilePath = this.fileBean.getLocalFilePath();
        if (localFilePath != null) {
            final byte[] block = com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.getBlock(localFilePath, offset, 2097152L);
            this.provider.getDriveClient().executeCall(new Function1<AliYunService, Call<ResponseBody>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunUploadRequest$uploadBlock$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Call<ResponseBody> invoke(@NotNull AliYunService service) {
                    Intrinsics.checkNotNullParameter(service, "service");
                    return service.upload(AliYunUploadSession.Part.this.getUploadUrl(), RequestBody.Companion.create$default(RequestBody.INSTANCE, block, (MediaType) null, 0, 0, 7, (Object) null));
                }
            });
            debug.m32052i(this.provider.getClass(), "uploadBlock finish: " + offset, new Object[0]);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public AliYunFileInfo execute() {
        AliYunUploadSession m32351f = m32351f();
        m32356k(m32351f);
        return m32349d(m32350e(m32351f));
    }
}
