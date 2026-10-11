package com.onyx.android.sdk.cloudstorage.provider.common.request;

import android.content.Intent;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.data.common.data.BroadCastConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0007¢\u0006\u0004\b#\u0010$J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0002R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0013R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0015R\u0014\u0010\r\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0016R\"\u0010\u001b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\"\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/request/RenameLocalCloudFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "execute", "()Ljava/lang/Boolean;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "localFile", "", "originPath", "", "c", "a", "fileBean", "newName", "b", "localOriginPath", "localDestPath", "d", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", Constants.STRING_SIG, "getCloudPrefixPath", "()Ljava/lang/String;", "setCloudPrefixPath", "(Ljava/lang/String;)V", "cloudPrefixPath", "e", Constants.HASIDCALL_INDEX_SIG, "getCheckDestFileInfo", Constants.BOOLEAN_VALUE_SIG, "setCheckDestFileInfo", "(Z)V", "checkDestFileInfo", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenameLocalCloudFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenameLocalCloudFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/RenameLocalCloudFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1855#2,2:130\n1#3:132\n*S KotlinDebug\n*F\n+ 1 RenameLocalCloudFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/RenameLocalCloudFileRequest\n*L\n66#1:130,2\n*E\n"})
/* loaded from: classes7.dex */
public final class RenameLocalCloudFileRequest extends RxBaseRequest<Boolean> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaseCloudStorageProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean localFile;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String newName;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String cloudPrefixPath;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean checkDestFileInfo;

    public RenameLocalCloudFileRequest(@NotNull BaseCloudStorageProvider provider, @NotNull CloudFileBean localFile, @NotNull String newName) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(localFile, "localFile");
        Intrinsics.checkNotNullParameter(newName, "newName");
        this.provider = provider;
        this.localFile = localFile;
        this.newName = newName;
        this.cloudPrefixPath = "/";
    }

    /* renamed from: a */
    public final boolean m32622a() {
        if (this.localFile.getLocalFilePath() == null) {
            return false;
        }
        FileUtils fileUtils = FileUtils.INSTANCE;
        String localFilePath = this.localFile.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        return this.provider.getCloudStorageRecordProvider().queryFileInfoByLocalPath(fileUtils.combinePath(new File(localFilePath).getParent(), this.newName)) != null;
    }

    /* renamed from: b */
    public final void m32623b(CloudFileBean fileBean, String newName) {
        String cloudFilePath = fileBean.getCloudFilePath();
        String parent = cloudFilePath != null ? new File(cloudFilePath).getParent() : null;
        fileBean.setCloudFilePath(parent != null ? FileUtils.INSTANCE.combinePath(parent, newName) : newName);
        String localFilePath = fileBean.getLocalFilePath();
        String combinePath = localFilePath != null ? FileUtils.INSTANCE.combinePath(new File(localFilePath).getParent(), FilenameUtils.getName(fileBean.getCloudFilePath())) : null;
        fileBean.setName(newName);
        fileBean.setLocalFilePath(combinePath);
        fileBean.setUpdatedAt(System.currentTimeMillis());
        if (!FileUtils.INSTANCE.fileExist(localFilePath) || StringUtils.equals(localFilePath, combinePath) || combinePath == null || !new File(localFilePath).renameTo(new File(combinePath))) {
            return;
        }
        m32625d(localFilePath, combinePath);
    }

    /* renamed from: c */
    public final void m32624c(CloudFileBean localFile, String originPath) {
        String str;
        CloudFileBean cloudFileBean;
        String str2;
        String replaceFirst$default;
        ArrayList<CloudFileBean> arrayList = new ArrayList();
        String cloudFileLocalDir = this.provider.getCloudStorageRecordProvider().getCloudFileLocalDir();
        String cloudFilePath = localFile.getCloudFilePath();
        this.provider.getCloudStorageRecordProvider().queryAllChildList(localFile, arrayList, true);
        String str3 = cloudFileLocalDir + StringUtils.substringAfter(originPath, this.cloudPrefixPath);
        String str4 = cloudFileLocalDir + StringUtils.substringAfter(cloudFilePath, this.cloudPrefixPath);
        Debug.INSTANCE.m32035d(RenameLocalCloudFileRequest.class, "rename, localOriginDir:" + str3 + ",localDestDir:" + str4, new Object[0]);
        for (CloudFileBean cloudFileBean2 : arrayList) {
            if (cloudFilePath != null && cloudFileBean2.getCloudFilePath() != null) {
                String cloudFilePath2 = cloudFileBean2.getCloudFilePath();
                Intrinsics.checkNotNull(cloudFilePath2);
                replaceFirst$default = StringsKt__StringsJVMKt.replaceFirst$default(cloudFilePath2, originPath, cloudFilePath, false, 4, (Object) null);
                cloudFileBean2.setCloudFilePath(replaceFirst$default);
            }
            if (cloudFileBean2.getLocalFilePath() != null) {
                String localFilePath = cloudFileBean2.getLocalFilePath();
                if (localFilePath != null) {
                    cloudFileBean = cloudFileBean2;
                    str = str3;
                    str2 = StringsKt__StringsJVMKt.replaceFirst$default(localFilePath, str3, str4, false, 4, (Object) null);
                } else {
                    cloudFileBean = cloudFileBean2;
                    str = str3;
                    str2 = null;
                }
                cloudFileBean.setLocalFilePath(str2);
            } else {
                str = str3;
            }
            str3 = str;
        }
        this.provider.getCloudStorageRecordProvider().saveCloudFiles(arrayList);
    }

    /* renamed from: d */
    public final void m32625d(String localOriginPath, String localDestPath) {
        Map mapOf;
        Intent intent = new Intent();
        intent.setAction(BroadCastConstant.RECEIVER_INTENT_RENAME_ACTION);
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(localOriginPath, localDestPath));
        intent.putExtra("name", jSONUtils.toJSONString(mapOf));
        ResManager.INSTANCE.getAppContext().sendBroadcast(intent);
        Debug.INSTANCE.m32035d(RenameLocalCloudFileRequest.class, localOriginPath + " rename to " + localDestPath, new Object[0]);
    }

    public final boolean getCheckDestFileInfo() {
        return this.checkDestFileInfo;
    }

    @NotNull
    public final String getCloudPrefixPath() {
        return this.cloudPrefixPath;
    }

    public final void setCheckDestFileInfo(boolean z) {
        this.checkDestFileInfo = z;
    }

    public final void setCloudPrefixPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.cloudPrefixPath = str;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Boolean execute() {
        List listOf;
        if (this.checkDestFileInfo && m32622a()) {
            return Boolean.FALSE;
        }
        String cloudFilePath = this.localFile.getCloudFilePath();
        m32623b(this.localFile, this.newName);
        if (this.localFile.getDir() && cloudFilePath != null) {
            m32624c(this.localFile, cloudFilePath);
        }
        CloudStorageRecordProvider cloudStorageRecordProvider = this.provider.getCloudStorageRecordProvider();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.localFile);
        cloudStorageRecordProvider.saveCloudFiles(listOf);
        return Boolean.TRUE;
    }
}
