package com.onyx.android.sdk.cloudstorage.provider.webdav;

import androidx.annotation.WorkerThread;
import com.google.common.net.UrlEscapers;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ComparatorUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavCreateFolderRequest;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.model.p028v2.WebDAVAuthAccount;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import com.thegrizzlylabs.sardineandroid.impl.SardineException;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b2\u00103J\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002J\u0016\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0016\u0010\f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u001c\u0010\u0017\u001a\u00020\u00162\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0014J\u001c\u0010\u0018\u001a\u00020\u00162\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0014J\u001c\u0010\u0019\u001a\u00020\u00162\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0012J*\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u00112\u0006\u0010\u001d\u001a\u00020\u001c2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0004\u001a\u00020\u0002J\u001e\u0010!\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u0002J\u001a\u0010%\u001a\u00020$2\u0006\u0010#\u001a\u00020\"2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0007J\u001a\u0010'\u001a\u0004\u0018\u00010\u00122\u0006\u0010#\u001a\u00020\"2\u0006\u0010&\u001a\u00020\u001fH\u0007J(\u0010)\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u001f2\u0006\u0010\u0004\u001a\u00020\u0002H\u0007J \u0010-\u001a\u00020\u00022\u0006\u0010*\u001a\u00020\u00022\u0006\u0010+\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u0002H\u0002J\u0016\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00020.2\u0006\u0010&\u001a\u00020\u001fH\u0002J$\u00101\u001a\b\u0012\u0004\u0012\u00020\u00020\u00112\u0006\u0010&\u001a\u00020\u001f2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00020.H\u0002¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;", "", "", CouchFieldKey.KEY_PROVIDER_NAME, "accountId", "Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;", "getWebDavAuthAccount", "url", "encodeUrl", "", "logoutAccount", "relativePath", "combineUrl", "Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;", "sardineException", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "webDavErrorToStandard", "", "Lcom/thegrizzlylabs/sardineandroid/DavResource;", "fileList", "Lcom/onyx/android/sdk/base/data/SortOrder;", "sortOrder", "", "sortListByName", "sortListBySize", "sortListByTime", "fileInfo", "getSize", "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;", "cloudStorageRecordProvider", "fileInfoList", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "toCloudFiles", "toCloudFile", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", Constant.CLIENT, "", "exist", "fileBean", "createFolderPath", "parentFolderInfo", "resetFilePath", "text", "suffix", "newValue", C6997f.f39671c, "", "e", Constant.FOLDER, "d", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavUtils {

    @NotNull
    public static final WebDavUtils INSTANCE = new WebDavUtils();

    /* renamed from: g */
    public static final int m32820g(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: h */
    public static final int m32821h(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: i */
    public static final int m32822i(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    @NotNull
    public final String combineUrl(@NotNull String url, @NotNull String relativePath) {
        boolean startsWith$default;
        boolean endsWith$default;
        int indexOf$default;
        String str;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(relativePath, separator, false, 2, null);
        if (startsWith$default) {
            Intrinsics.checkNotNullExpressionValue(separator, "separator");
            relativePath = StringsKt__StringsJVMKt.replaceFirst$default(relativePath, separator, "", false, 4, (Object) null);
        }
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(url, separator, false, 2, null);
        if (endsWith$default) {
            url = url.substring(0, url.length() - 1);
            Intrinsics.checkNotNullExpressionValue(url, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) relativePath, separator, 0, false, 6, (Object) null);
        if (indexOf$default > 0) {
            str = relativePath.substring(0, indexOf$default);
            Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String…ing(startIndex, endIndex)");
        } else {
            str = "";
        }
        if (str.length() == 0) {
            String concat = FilenameUtils.concat(url, relativePath);
            Intrinsics.checkNotNullExpressionValue(concat, "concat(...)");
            return concat;
        }
        Matcher matcher = Pattern.compile(separator + str + "$|" + separator + str + separator).matcher(url);
        int i = -1;
        while (matcher.find()) {
            i = matcher.start();
        }
        if (i > 0) {
            url = url.substring(0, i);
            Intrinsics.checkNotNullExpressionValue(url, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        String concat2 = FilenameUtils.concat(url, relativePath);
        Intrinsics.checkNotNullExpressionValue(concat2, "concat(...)");
        return concat2;
    }

    @WorkerThread
    @Nullable
    public final DavResource createFolderPath(@NotNull WebDavClient client, @NotNull CloudFileBean fileBean) throws Exception {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        List<String> m32824e = m32824e(fileBean);
        DavResource davResource = null;
        if (m32824e.isEmpty()) {
            return null;
        }
        Iterator<String> it2 = m32823d(fileBean, m32824e).iterator();
        while (it2.hasNext()) {
            WebDavCreateFolderRequest webDavCreateFolderRequest = new WebDavCreateFolderRequest(client, it2.next());
            webDavCreateFolderRequest.setCheckExist(true);
            davResource = webDavCreateFolderRequest.execute();
        }
        return davResource;
    }

    /* renamed from: d */
    public final List<String> m32823d(CloudFileBean fileBean, List<String> folder) {
        Debug.INSTANCE.m32035d(WebDavUtils.class, "currentFilePath : cloud : " + fileBean.getCloudFilePath() + " local : " + fileBean.getLocalFilePath(), new Object[0]);
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int size = folder.size();
        for (int i = 0; i < size; i++) {
            sb.append(folder.get(i));
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
            arrayList.add(sb2);
            Debug.INSTANCE.m32035d(WebDavUtils.class, "currentCreateFoldPath : " + ((Object) sb) + " needCreateFold : " + ((Object) sb), new Object[0]);
            sb.append(File.separator);
        }
        return arrayList;
    }

    /* renamed from: e */
    public final List<String> m32824e(CloudFileBean fileBean) {
        File parentFile;
        String providerRootPath = fileBean.getProvider().getProviderRootPath();
        Debug.INSTANCE.m32035d(WebDavUtils.class, fileBean.getCloudFilePath(), new Object[0]);
        String localFilePath = fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        File file = new File(localFilePath);
        ArrayList arrayList = new ArrayList();
        while (true) {
            if (Intrinsics.areEqual(providerRootPath, file != null ? file.getParent() : null)) {
                arrayList.remove(0);
                return arrayList;
            }
            if (file != null && (parentFile = file.getParentFile()) != null) {
                String name = parentFile.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                arrayList.add(0, name);
            }
            Debug debug = Debug.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append("folderName: ");
            sb.append(file != null ? file.getName() : null);
            debug.m32035d(WebDavUtils.class, sb.toString(), new Object[0]);
            file = file != null ? file.getParentFile() : null;
        }
    }

    @NotNull
    public final String encodeUrl(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            String escape = UrlEscapers.urlFragmentEscaper().escape(url);
            if (!escape.equals(url)) {
                Debug.INSTANCE.m32035d(WebDavUtils.class, url + " webdav encoded url:" + escape, new Object[0]);
            }
            Intrinsics.checkNotNull(escape);
            return escape;
        } catch (Exception e) {
            e.printStackTrace();
            return url;
        }
    }

    @WorkerThread
    public final boolean exist(@NotNull WebDavClient client, @Nullable String url) throws Exception {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(client, "client");
        try {
            List<DavResource> list = client.list(url, 0, false);
            Intrinsics.checkNotNullExpressionValue(list, "list(...)");
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
            return ((DavResource) firstOrNull) != null;
        } catch (Exception e) {
            if (!(e instanceof SardineException)) {
                throw e;
            }
            if (((SardineException) e).getStatusCode() == 404) {
                return false;
            }
            throw e;
        }
    }

    /* renamed from: f */
    public final String m32825f(String text, String suffix, String newValue) {
        boolean isBlank;
        boolean endsWith$default;
        String safelyGetStr = StringKt.safelyGetStr(text);
        isBlank = StringsKt__StringsJVMKt.isBlank(suffix);
        if (!(!isBlank)) {
            return safelyGetStr;
        }
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(safelyGetStr, suffix, false, 2, null);
        if (!endsWith$default) {
            return safelyGetStr;
        }
        String substring = safelyGetStr.substring(0, safelyGetStr.length() - suffix.length());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring + StringKt.safelyGetStr(newValue);
    }

    public final long getSize(@NotNull DavResource fileInfo) {
        Intrinsics.checkNotNullParameter(fileInfo, "fileInfo");
        if (fileInfo.isDirectory()) {
            if (fileInfo.getFolderSize() != null) {
                Long folderSize = fileInfo.getFolderSize();
                Intrinsics.checkNotNullExpressionValue(folderSize, "getFolderSize(...)");
                return folderSize.longValue();
            }
        } else if (fileInfo.getContentLength() != null) {
            Long contentLength = fileInfo.getContentLength();
            Intrinsics.checkNotNullExpressionValue(contentLength, "getContentLength(...)");
            return contentLength.longValue();
        }
        return 0L;
    }

    @Nullable
    public final WebDAVAuthAccount getWebDavAuthAccount(@NotNull String providerName, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        ProviderAccountModel queryAccount = ProviderAccountModelUtils.INSTANCE.queryAccount(providerName, accountId);
        if (queryAccount == null) {
            return null;
        }
        String accountCredentialJson = queryAccount.getAccountCredentialJson();
        if (accountCredentialJson == null || accountCredentialJson.length() == 0) {
            return null;
        }
        return (WebDAVAuthAccount) JSONUtils.INSTANCE.parseObject(queryAccount.getAccountCredentialJson(), WebDAVAuthAccount.class);
    }

    public final long logoutAccount(@NotNull String providerName, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return ProviderAccountModelUtils.INSTANCE.deleteAccount(providerName, accountId);
    }

    @WorkerThread
    @NotNull
    public final CloudFileBean resetFilePath(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull DavResource parentFolderInfo, @NotNull CloudFileBean fileBean, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
        Intrinsics.checkNotNullParameter(parentFolderInfo, "parentFolderInfo");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        CloudFileBean cloudFile = toCloudFile(cloudStorageRecordProvider, parentFolderInfo, accountId);
        String localFilePath = cloudFile.getLocalFilePath();
        String cloudFilePath = cloudFile.getCloudFilePath();
        String concat = FilenameUtils.concat(localFilePath, fileBean.getName());
        String concat2 = FilenameUtils.concat(cloudFilePath, fileBean.getName());
        fileBean.setLocalFilePath(concat);
        fileBean.setCloudFilePath(concat2);
        if (!fileBean.getDir()) {
            FileUtils fileUtils = FileUtils.INSTANCE;
            if (fileUtils.fileExist(concat)) {
                fileBean.setSize(fileUtils.getFileSize(concat));
                Intrinsics.checkNotNull(concat);
                fileBean.setMd5(fileUtils.computeFullMD5Safely(concat));
            }
        }
        return fileBean;
    }

    public final void sortListByName(@NotNull List<DavResource> fileList, @NotNull final SortOrder sortOrder) {
        Intrinsics.checkNotNullParameter(fileList, "fileList");
        Intrinsics.checkNotNullParameter(sortOrder, "sortOrder");
        final Function2<DavResource, DavResource, Integer> function2 = new Function2<DavResource, DavResource, Integer>() { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils$sortListByName$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(@NotNull DavResource lhs, @NotNull DavResource rhs) {
                Intrinsics.checkNotNullParameter(lhs, "lhs");
                Intrinsics.checkNotNullParameter(rhs, "rhs");
                ComparatorUtils comparatorUtils = ComparatorUtils.INSTANCE;
                int booleanComparator = comparatorUtils.booleanComparator(lhs.isDirectory(), rhs.isDirectory(), SortOrder.Desc);
                if (booleanComparator == 0) {
                    String name = lhs.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    String name2 = rhs.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    return Integer.valueOf(comparatorUtils.stringComparator(name, name2, SortOrder.this));
                }
                return Integer.valueOf(booleanComparator);
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(fileList, new Comparator() { // from class: com.sunia.HTREnginev2.z5o
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m32820g;
                m32820g = WebDavUtils.m32820g(Function2.this, obj, obj2);
                return m32820g;
            }
        });
    }

    public final void sortListBySize(@NotNull List<DavResource> fileList, @NotNull final SortOrder sortOrder) {
        Intrinsics.checkNotNullParameter(fileList, "fileList");
        Intrinsics.checkNotNullParameter(sortOrder, "sortOrder");
        final Function2<DavResource, DavResource, Integer> function2 = new Function2<DavResource, DavResource, Integer>() { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils$sortListBySize$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(@NotNull DavResource lhs, @NotNull DavResource rhs) {
                Intrinsics.checkNotNullParameter(lhs, "lhs");
                Intrinsics.checkNotNullParameter(rhs, "rhs");
                ComparatorUtils comparatorUtils = ComparatorUtils.INSTANCE;
                int booleanComparator = comparatorUtils.booleanComparator(lhs.isDirectory(), rhs.isDirectory(), SortOrder.Desc);
                if (booleanComparator == 0) {
                    WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
                    return Integer.valueOf(comparatorUtils.longComparator(webDavUtils.getSize(lhs), webDavUtils.getSize(rhs), SortOrder.this));
                }
                return Integer.valueOf(booleanComparator);
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(fileList, new Comparator() { // from class: com.sunia.HTREnginev2.b6o
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m32821h;
                m32821h = WebDavUtils.m32821h(Function2.this, obj, obj2);
                return m32821h;
            }
        });
    }

    public final void sortListByTime(@NotNull List<DavResource> fileList, @NotNull final SortOrder sortOrder) {
        Intrinsics.checkNotNullParameter(fileList, "fileList");
        Intrinsics.checkNotNullParameter(sortOrder, "sortOrder");
        final Function2<DavResource, DavResource, Integer> function2 = new Function2<DavResource, DavResource, Integer>() { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils$sortListByTime$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(@NotNull DavResource lhs, @NotNull DavResource rhs) {
                Intrinsics.checkNotNullParameter(lhs, "lhs");
                Intrinsics.checkNotNullParameter(rhs, "rhs");
                ComparatorUtils comparatorUtils = ComparatorUtils.INSTANCE;
                int booleanComparator = comparatorUtils.booleanComparator(lhs.isDirectory(), rhs.isDirectory(), SortOrder.Desc);
                if (booleanComparator == 0) {
                    return Integer.valueOf(comparatorUtils.dateComparator(lhs.getModified(), rhs.getModified(), SortOrder.this));
                }
                return Integer.valueOf(booleanComparator);
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(fileList, new Comparator() { // from class: com.sunia.HTREnginev2.a6o
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m32822i;
                m32822i = WebDavUtils.m32822i(Function2.this, obj, obj2);
                return m32822i;
            }
        });
    }

    @NotNull
    public final CloudFileBean toCloudFile(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull DavResource fileInfo, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
        Intrinsics.checkNotNullParameter(fileInfo, "fileInfo");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Debug.INSTANCE.m32035d(fileInfo.getClass(), "fileInfo.getContentType():" + fileInfo.getContentType() + ",etag:" + fileInfo.getEtag() + ",href:" + fileInfo.getHref() + ",modified" + fileInfo.getModified() + ",path:" + fileInfo.getPath(), new Object[0]);
        String element = fileInfo.getPath();
        if (fileInfo.isDirectory()) {
            Intrinsics.checkNotNullExpressionValue(element, "element");
            String separator = File.separator;
            Intrinsics.checkNotNullExpressionValue(separator, "separator");
            element = m32825f(element, separator, "");
        }
        CloudFileBean create = CloudFileBean.INSTANCE.create(cloudStorageRecordProvider.getParent().getProviderType());
        create.setCloudFilePath(element);
        BaseCloudStorageProvider parent = cloudStorageRecordProvider.getParent();
        Intrinsics.checkNotNullExpressionValue(element, "element");
        create.setLocalFilePath(cloudStorageRecordProvider.getCloudFileLocalPath(parent, element));
        create.setAccountId(accountId);
        create.setMd5(fileInfo.getEtag());
        String computeMD5 = FileUtils.INSTANCE.computeMD5(element);
        create.setUniqueId(computeMD5 != null ? computeMD5 : "");
        create.setDir(fileInfo.isDirectory());
        create.setName(fileInfo.getName());
        create.setSize(INSTANCE.getSize(fileInfo));
        create.setCreatedAt(fileInfo.getCreation().getTime());
        create.setUpdatedAt(fileInfo.getModified().getTime());
        return create;
    }

    @NotNull
    public final List<CloudFileBean> toCloudFiles(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull List<DavResource> fileInfoList, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
        Intrinsics.checkNotNullParameter(fileInfoList, "fileInfoList");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        ArrayList arrayList = new ArrayList();
        Iterator<DavResource> it2 = fileInfoList.iterator();
        while (it2.hasNext()) {
            arrayList.add(toCloudFile(cloudStorageRecordProvider, it2.next(), accountId));
        }
        return arrayList;
    }

    @NotNull
    public final CloudNoteException webDavErrorToStandard(@NotNull SardineException sardineException) throws Exception {
        Intrinsics.checkNotNullParameter(sardineException, "sardineException");
        sardineException.printStackTrace();
        if (sardineException.getStatusCode() == 507) {
            return new CloudNoteException(sardineException.getStatusCode(), sardineException.getMessage());
        }
        String responsePhrase = sardineException.getResponsePhrase();
        return ((responsePhrase == null || responsePhrase.length() == 0) || sardineException.getStatusCode() != 403) ? new CloudNoteException(2, sardineException.getMessage()) : new CloudNoteException(1003, sardineException.getMessage());
    }
}
