package com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 >2\u00020\u0001:\u0001>B\u0007¢\u0006\u0004\b<\u0010=J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0005\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\"\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0005\u001a\u0004\b\u0018\u0010\u0007\"\u0004\b\u0019\u0010\tR*\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R*\u0010'\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001d\u001a\u0004\b%\u0010\u001f\"\u0004\b&\u0010!R*\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010\u001d\u001a\u0004\b)\u0010\u001f\"\u0004\b*\u0010!R*\u00104\u001a\u00020,2\u0006\u0010-\u001a\u00020,8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R*\u00108\u001a\u00020,2\u0006\u0010-\u001a\u00020,8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010/\u001a\u0004\b6\u00101\"\u0004\b7\u00103R\u0011\u0010:\u001a\u0002098F¢\u0006\u0006\u001a\u0004\b:\u0010;¨\u0006?"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;", "", "mapToStandardError", "p", "I", "getErrno", "()I", "setErrno", "(I)V", "errno", "", "q", Constants.STRING_SIG, "getUploadid", "()Ljava/lang/String;", "setUploadid", "(Ljava/lang/String;)V", BaiduYunConstant.UPLOAD_ID, "r", "getReturnType", "setReturnType", "returnType", "s", "getCursor", "setCursor", "cursor", "", "t", "Ljava/util/List;", "getBlockList", "()Ljava/util/List;", "setBlockList", "(Ljava/util/List;)V", "blockList", "", "u", "getList", "setList", "list", "v", "getInfo", "setInfo", PrivilegedApp.f6532i, "", "time", "w", "J", "getCtime", "()J", "setCtime", "(J)V", "ctime", "x", "getMtime", "setMtime", "mtime", "", "isSuccessful", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunFileResponseBody extends BaiduYunFileInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: p, reason: from kotlin metadata */
    public int errno;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public String uploadid;

    /* renamed from: r, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_RETURN_TYPE})
    public int returnType;

    /* renamed from: s, reason: from kotlin metadata */
    public int cursor;

    /* renamed from: t, reason: from kotlin metadata */
    @JSONField(alternateNames = {"block_list"})
    @Nullable
    public List<Integer> blockList;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public List<BaiduYunFileInfo> list;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public List<BaiduYunFileResponseBody> info;

    /* renamed from: w, reason: from kotlin metadata */
    public long ctime;

    /* renamed from: x, reason: from kotlin metadata */
    public long mtime;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0010\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody$Companion;", "", "()V", "filterBookTypeFile", "", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;", "list", "isTokenExpired", "", "json", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nBaiduYunFileResponseBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaiduYunFileResponseBody.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,96:1\n1855#2,2:97\n*S KotlinDebug\n*F\n+ 1 BaiduYunFileResponseBody.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody$Companion\n*L\n64#1:97,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<BaiduYunFileInfo> filterBookTypeFile(@NotNull List<BaiduYunFileInfo> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            ArrayList arrayList = new ArrayList();
            for (BaiduYunFileInfo baiduYunFileInfo : list) {
                if (baiduYunFileInfo.isDirectory()) {
                    arrayList.add(baiduYunFileInfo);
                }
                String extension = FilenameUtils.getExtension(baiduYunFileInfo.getPath());
                if (!(extension == null || extension.length() == 0) && FileExtensionUtils.INSTANCE.getReaderSupportFormatExtension().contains(StringUtils.lowerCase(extension))) {
                    arrayList.add(baiduYunFileInfo);
                }
            }
            return arrayList;
        }

        public final boolean isTokenExpired(@Nullable String json) {
            BaiduYunFileResponseBody baiduYunFileResponseBody = (BaiduYunFileResponseBody) JSONUtils.INSTANCE.parseObject(json, BaiduYunFileResponseBody.class);
            if (baiduYunFileResponseBody != null) {
                return baiduYunFileResponseBody.getErrno() == -6 || baiduYunFileResponseBody.getErrno() == 31045;
            }
            Debug.INSTANCE.m32035d(BaiduYunFileResponseBody.class, "can't parse to baidu yun response body: " + json, new Object[0]);
            return false;
        }

        public Companion() {
        }
    }

    @Nullable
    public final List<Integer> getBlockList() {
        return this.blockList;
    }

    public final long getCtime() {
        return this.ctime;
    }

    public final int getCursor() {
        return this.cursor;
    }

    public final int getErrno() {
        return this.errno;
    }

    @Nullable
    public final List<BaiduYunFileResponseBody> getInfo() {
        return this.info;
    }

    @Nullable
    public final List<BaiduYunFileInfo> getList() {
        return this.list;
    }

    public final long getMtime() {
        return this.mtime;
    }

    public final int getReturnType() {
        return this.returnType;
    }

    @Nullable
    public final String getUploadid() {
        return this.uploadid;
    }

    public final boolean isSuccessful() {
        return this.errno == 0;
    }

    public final int mapToStandardError() {
        int i = this.errno;
        if (i == -10) {
            return 1002;
        }
        if (i == -8) {
            return 1001;
        }
        if (i == -7) {
            return 1000;
        }
        if (i != -6) {
            return i;
        }
        return 401;
    }

    public final void setBlockList(@Nullable List<Integer> list) {
        this.blockList = list;
    }

    public final void setCtime(long j) {
        this.ctime = j;
        setServerCtime(j);
    }

    public final void setCursor(int i) {
        this.cursor = i;
    }

    public final void setErrno(int i) {
        this.errno = i;
    }

    public final void setInfo(@Nullable List<BaiduYunFileResponseBody> list) {
        this.info = list;
    }

    public final void setList(@Nullable List<BaiduYunFileInfo> list) {
        this.list = list;
    }

    public final void setMtime(long j) {
        this.mtime = j;
        setServerMtime(j);
    }

    public final void setReturnType(int i) {
        this.returnType = i;
    }

    public final void setUploadid(@Nullable String str) {
        this.uploadid = str;
    }
}
