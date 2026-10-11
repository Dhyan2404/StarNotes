package com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.internal.bind.TypeAdapters;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.common.MediaCategory;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.ResponseBody;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b'\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\b\u0016\u0018\u0000 ]2\u00020\u0001:\u0001]B\u0007¢\u0006\u0004\b[\u0010\\R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R$\u0010\u0019\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\f\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010%\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u001c\u001a\u0004\b#\u0010\u001e\"\u0004\b$\u0010 R\"\u0010)\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u001c\u001a\u0004\b'\u0010\u001e\"\u0004\b(\u0010 R$\u0010-\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\f\u001a\u0004\b+\u0010\u000e\"\u0004\b,\u0010\u0010R\"\u00101\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\u0004\u001a\u0004\b/\u0010\u0006\"\u0004\b0\u0010\bR\"\u00105\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b2\u0010\u0004\u001a\u0004\b3\u0010\u0006\"\u0004\b4\u0010\bR\"\u00109\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b6\u0010\u0004\u001a\u0004\b7\u0010\u0006\"\u0004\b8\u0010\bR\"\u0010=\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b:\u0010\u0004\u001a\u0004\b;\u0010\u0006\"\u0004\b<\u0010\bR\"\u0010A\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b>\u0010\u0004\u001a\u0004\b?\u0010\u0006\"\u0004\b@\u0010\bR0\u0010I\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010B8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR$\u0010Q\u001a\u0004\u0018\u00010J8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\u0011\u0010S\u001a\u00020R8G¢\u0006\u0006\u001a\u0004\bS\u0010TR\u0019\u0010X\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010U8G¢\u0006\u0006\u001a\u0004\bV\u0010WR\u0011\u0010Z\u001a\u00020\n8G¢\u0006\u0006\u001a\u0004\bY\u0010\u000e¨\u0006^"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;", "", "", "a", "J", "getFsId", "()J", "setFsId", "(J)V", "fsId", "", "b", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "path", "c", "getServerFilename", "setServerFilename", "serverFilename", "d", "getDlink", "setDlink", "dlink", "", "e", "I", "getIsdir", "()I", "setIsdir", "(I)V", BaiduYunConstant.IS_DIR, C6997f.f39671c, "getCategory", "setCategory", "category", C6998g.f39679a, "getShare", "setShare", FirebaseAnalytics.Event.SHARE, C6999h.f39688c, "getMd5", "setMd5", CouchFieldKey.KEY_MD5, "i", "getSize", "setSize", "size", "j", "getServerMtime", "setServerMtime", "serverMtime", C4921e.f26537n, "getServerCtime", "setServerCtime", "serverCtime", "l", "getLocalMtime", "setLocalMtime", "localMtime", "m", "getLocalCtime", "setLocalCtime", "localCtime", "", GoogleApiAvailabilityLight.f29016b, "Ljava/util/Map;", "getThumbs", "()Ljava/util/Map;", "setThumbs", "(Ljava/util/Map;)V", "thumbs", "Lokhttp3/ResponseBody;", C4921e.f26528e, "Lokhttp3/ResponseBody;", "getResponseBody", "()Lokhttp3/ResponseBody;", "setResponseBody", "(Lokhttp3/ResponseBody;)V", "responseBody", "", "isDirectory", Constants.BOOLEAN_VALUE_SIG, "", "getThumbList", "()Ljava/util/List;", "thumbList", "getFileName", HuaweiYunQueryArgs.FILE_NAME, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class BaiduYunFileInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_FS_ID})
    public long fsId;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String path;

    /* renamed from: c, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_SERVER_FILENAME})
    @Nullable
    public String serverFilename;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String dlink;

    /* renamed from: e, reason: from kotlin metadata */
    public int isdir;

    /* renamed from: f, reason: from kotlin metadata */
    public int category;

    /* renamed from: g, reason: from kotlin metadata */
    public int share;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String md5;

    /* renamed from: i, reason: from kotlin metadata */
    public long size;

    /* renamed from: j, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_SERVER_MTIME})
    public long serverMtime;

    /* renamed from: k, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_SERVER_CTIME})
    public long serverCtime;

    /* renamed from: l, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_LOCAL_MTIME})
    public long localMtime;

    /* renamed from: m, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_LOCAL_CTIME})
    public long localCtime;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public Map<String, String> thumbs;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public ResponseBody responseBody;

    @Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u0004J\"\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u00192\u0006\u0010\u0007\u001a\u00020\u0004¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;", "", "()V", "getCloudFileLocalDir", "", "providerType", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "accountId", "getCloudFileLocalPath", "fileInfoPath", "getMediaCategory", "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;", "category", "", "pareSecondToDate", "Ljava/util/Date;", TypeAdapters.C6590r.f36278f, "", "toCloudFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileInfo", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;", "toCloudFiles", "", "fileInfoList", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getCloudFileLocalDir(@NotNull Provider providerType, @NotNull String accountId) {
            Intrinsics.checkNotNullParameter(providerType, "providerType");
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            String absolutePath = new File(com.onyx.android.sdk.cloudstorage.constans.Constants.INSTANCE.getNETDISK_PATH(), providerType.getTitle() + File.separator + FileUtils.INSTANCE.fixNotAllowFileName(accountId, -1)).getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            return absolutePath;
        }

        @NotNull
        public final String getCloudFileLocalPath(@NotNull String fileInfoPath, @NotNull String accountId) {
            boolean startsWith$default;
            Intrinsics.checkNotNullParameter(fileInfoPath, "fileInfoPath");
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            String str = "/";
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(fileInfoPath, "/", false, 2, null);
            if (!startsWith$default) {
                Locale locale = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
                str = "/".toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String).toLowerCase(locale)");
            }
            String concat = FilenameUtils.concat(getCloudFileLocalDir(Provider.BAIDU_YUN, accountId), StringUtils.substringAfter(fileInfoPath, str));
            Intrinsics.checkNotNullExpressionValue(concat, "concat(...)");
            return concat;
        }

        @NotNull
        public final MediaCategory getMediaCategory(int category) {
            switch (category) {
                case 1:
                    return MediaCategory.Video;
                case 2:
                    return MediaCategory.Audio;
                case 3:
                    return MediaCategory.Image;
                case 4:
                    return MediaCategory.Document;
                case 5:
                    return MediaCategory.APK;
                case 6:
                    return MediaCategory.Unknown;
                case 7:
                    return MediaCategory.Torrent;
                default:
                    return MediaCategory.Unknown;
            }
        }

        @NotNull
        public final Date pareSecondToDate(long second) {
            return new Date(second * 1000);
        }

        @NotNull
        public final CloudFileBean toCloudFile(@NotNull BaiduYunFileInfo fileInfo, @NotNull String accountId) {
            String str;
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(fileInfo, "fileInfo");
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            CloudFileBean create = CloudFileBean.INSTANCE.create(Provider.BAIDU_YUN);
            create.setCloudFilePath(fileInfo.getPath());
            Companion companion = BaiduYunFileInfo.INSTANCE;
            String path = fileInfo.getPath();
            Intrinsics.checkNotNull(path);
            create.setLocalFilePath(companion.getCloudFileLocalPath(path, accountId));
            create.setAccountId(accountId);
            create.setMd5(fileInfo.getMd5());
            create.setUniqueId(String.valueOf(fileInfo.getFsId()));
            create.setDir(fileInfo.getIsdir() != 0);
            create.setName(fileInfo.getFileName());
            create.setSize(fileInfo.getSize());
            create.setCreatedAt(companion.pareSecondToDate(fileInfo.getServerCtime()).getTime());
            create.setUpdatedAt(companion.pareSecondToDate(fileInfo.getServerMtime()).getTime());
            List<String> thumbList = fileInfo.getThumbList();
            if (thumbList != null) {
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) thumbList);
                str = (String) firstOrNull;
            } else {
                str = null;
            }
            create.setThumbnail(str);
            create.setMediaCategory(companion.getMediaCategory(fileInfo.getCategory()));
            return create;
        }

        @NotNull
        public final List<CloudFileBean> toCloudFiles(@NotNull List<? extends BaiduYunFileInfo> fileInfoList, @NotNull String accountId) {
            Intrinsics.checkNotNullParameter(fileInfoList, "fileInfoList");
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            ArrayList arrayList = new ArrayList();
            Iterator<? extends BaiduYunFileInfo> it2 = fileInfoList.iterator();
            while (it2.hasNext()) {
                arrayList.add(toCloudFile(it2.next(), accountId));
            }
            return arrayList;
        }

        public Companion() {
        }
    }

    public final int getCategory() {
        return this.category;
    }

    @Nullable
    public final String getDlink() {
        return this.dlink;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getFileName() {
        String str = this.serverFilename;
        if (str != null) {
            Intrinsics.checkNotNull(str);
            return str;
        }
        String name = FilenameUtils.getName(this.path);
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return name;
    }

    public final long getFsId() {
        return this.fsId;
    }

    public final int getIsdir() {
        return this.isdir;
    }

    public final long getLocalCtime() {
        return this.localCtime;
    }

    public final long getLocalMtime() {
        return this.localMtime;
    }

    @Nullable
    public final String getMd5() {
        return this.md5;
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    @Nullable
    public final ResponseBody getResponseBody() {
        return this.responseBody;
    }

    public final long getServerCtime() {
        return this.serverCtime;
    }

    @Nullable
    public final String getServerFilename() {
        return this.serverFilename;
    }

    public final long getServerMtime() {
        return this.serverMtime;
    }

    public final int getShare() {
        return this.share;
    }

    public final long getSize() {
        return this.size;
    }

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public final List<String> getThumbList() {
        Map<String, String> map = this.thumbs;
        if (map == null || map.isEmpty()) {
            return null;
        }
        Map<String, String> map2 = this.thumbs;
        Intrinsics.checkNotNull(map2);
        return new ArrayList(map2.values());
    }

    @Nullable
    public final Map<String, String> getThumbs() {
        return this.thumbs;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isDirectory() {
        return this.isdir == 1;
    }

    public final void setCategory(int i) {
        this.category = i;
    }

    public final void setDlink(@Nullable String str) {
        this.dlink = str;
    }

    public final void setFsId(long j) {
        this.fsId = j;
    }

    public final void setIsdir(int i) {
        this.isdir = i;
    }

    public final void setLocalCtime(long j) {
        this.localCtime = j;
    }

    public final void setLocalMtime(long j) {
        this.localMtime = j;
    }

    public final void setMd5(@Nullable String str) {
        this.md5 = str;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }

    public final void setResponseBody(@Nullable ResponseBody responseBody) {
        this.responseBody = responseBody;
    }

    public final void setServerCtime(long j) {
        this.serverCtime = j;
    }

    public final void setServerFilename(@Nullable String str) {
        this.serverFilename = str;
    }

    public final void setServerMtime(long j) {
        this.serverMtime = j;
    }

    public final void setShare(int i) {
        this.share = i;
    }

    public final void setSize(long j) {
        this.size = j;
    }

    public final void setThumbs(@Nullable Map<String, String> map) {
        this.thumbs = map;
    }
}
