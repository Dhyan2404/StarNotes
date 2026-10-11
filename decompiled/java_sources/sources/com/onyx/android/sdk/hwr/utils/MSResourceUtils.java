package com.onyx.android.sdk.hwr.utils;

import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0016\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u0010\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u0013\u001a\u00020\u0011J\u0016\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0002¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;", "", "", "confDirPath", "lang", "getCongFilePath", "version", "getConfigSearchPath", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "resource", "getHWRResSaveFilePath", "getHWRResSaveDirPath", "getAdditionalLexPath", "getAdditionalResPath", "", "deleteHWRResource", "deleteOldVersionResource", "", "isResourceExist", "isRawResourceExist", "isMyscriptResourceExist", "", "Ljava/io/File;", "getDownloadResList", "recognizerName", "getPackageFile", "b", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMSResourceUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MSResourceUtils.kt\ncom/onyx/android/sdk/hwr/utils/MSResourceUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n1855#2,2:139\n766#2:141\n857#2,2:142\n*S KotlinDebug\n*F\n+ 1 MSResourceUtils.kt\ncom/onyx/android/sdk/hwr/utils/MSResourceUtils\n*L\n107#1:139,2\n125#1:141\n125#1:142,2\n*E\n"})
/* loaded from: classes7.dex */
public final class MSResourceUtils {

    @NotNull
    public static final MSResourceUtils INSTANCE = new MSResourceUtils();

    /* renamed from: a */
    public final String m33406a(String version) {
        return new Regex("([.*/^()?|<>\\]\\[])").replace(version, "-");
    }

    /* renamed from: b */
    public final String m33407b(String version, String lang) {
        StringBuilder sb = new StringBuilder();
        sb.append(HWRValues.INSTANCE.getMY_SCRIPT_RESOURCE_DIR_PATH());
        String str = File.separator;
        sb.append(str);
        sb.append(m33406a(version));
        sb.append(str);
        sb.append("recognition-assets");
        sb.append(str);
        sb.append("resources");
        sb.append(str);
        sb.append(lang);
        return sb.toString();
    }

    public final void deleteHWRResource(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        String congFilePath = getCongFilePath(getConfigSearchPath(resource.getVersion()), resource.getLang());
        String m33407b = m33407b(resource.getVersion(), resource.getLang());
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.deleteFile(congFilePath);
        fileUtils.deleteFile(new File(m33407b));
    }

    public final void deleteOldVersionResource() {
        Iterator<String> it2 = HWRValues.INSTANCE.getMS_OLD_VERSION_LIST().iterator();
        while (it2.hasNext()) {
            FileUtils.INSTANCE.deleteFile(new File(HWRValues.INSTANCE.getMY_SCRIPT_RESOURCE_DIR_PATH() + File.separator + m33406a(it2.next())));
        }
    }

    @NotNull
    public final String getAdditionalLexPath(@NotNull String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        StringBuilder sb = new StringBuilder();
        HWRValues hWRValues = HWRValues.INSTANCE;
        sb.append(hWRValues.getADDITIONAL_RESOURCE_DIR());
        String str = File.separator;
        sb.append(str);
        sb.append(lang);
        sb.append(str);
        sb.append(hWRValues.getADDITIONAL_LEX_NAME());
        return sb.toString();
    }

    @NotNull
    public final String getAdditionalResPath(@NotNull String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        StringBuilder sb = new StringBuilder();
        HWRValues hWRValues = HWRValues.INSTANCE;
        sb.append(hWRValues.getADDITIONAL_RESOURCE_DIR());
        String str = File.separator;
        sb.append(str);
        sb.append(lang);
        sb.append(str);
        sb.append(hWRValues.getADDITIONAL_RES_NAME());
        return sb.toString();
    }

    @NotNull
    public final String getConfigSearchPath(@NotNull String version) {
        Intrinsics.checkNotNullParameter(version, "version");
        StringBuilder sb = new StringBuilder();
        sb.append(HWRValues.INSTANCE.getMY_SCRIPT_RESOURCE_DIR_PATH());
        String str = File.separator;
        sb.append(str);
        sb.append(m33406a(version));
        sb.append(str);
        sb.append("recognition-assets");
        sb.append(str);
        sb.append("conf");
        return sb.toString();
    }

    @NotNull
    public final String getCongFilePath(@NotNull String confDirPath, @NotNull String lang) {
        Intrinsics.checkNotNullParameter(confDirPath, "confDirPath");
        Intrinsics.checkNotNullParameter(lang, "lang");
        return confDirPath + File.separator + lang + ".conf";
    }

    @NotNull
    public final List<File> getDownloadResList() {
        boolean contains$default;
        boolean endsWith$default;
        List<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(getConfigSearchPath(HWRValues.VERSION_LIB_MS));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listAllFiles) {
            String absolutePath = ((File) obj).getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            String lowerCase = absolutePath.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            boolean z = false;
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "_", false, 2, (Object) null);
            if (contains$default) {
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".conf", false, 2, null);
                if (endsWith$default) {
                    z = true;
                }
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final String getHWRResSaveDirPath(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        StringBuilder sb = new StringBuilder();
        sb.append(HWRValues.INSTANCE.getMY_SCRIPT_RESOURCE_DIR_PATH());
        String str = File.separator;
        sb.append(str);
        sb.append(m33406a(resource.getVersion()));
        sb.append(str);
        return sb.toString();
    }

    @NotNull
    public final String getHWRResSaveFilePath(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        StringBuilder sb = new StringBuilder();
        sb.append(HWRValues.INSTANCE.getMY_SCRIPT_RESOURCE_DIR_PATH());
        String str = File.separator;
        sb.append(str);
        sb.append(m33406a(resource.getVersion()));
        sb.append(str);
        sb.append(resource.getLang());
        sb.append(ShapeDocumentUtils.SHAPE_FILE_END);
        return sb.toString();
    }

    @NotNull
    public final File getPackageFile(@NotNull String recognizerName) {
        Intrinsics.checkNotNullParameter(recognizerName, "recognizerName");
        return new File(ResManager.INSTANCE.getAppContext().getFilesDir(), recognizerName + NameUtil.USCORE + HWRValues.INSTANCE.getMY_SCRIPT_DEFAULT_PACKAGE_FILE_NAME());
    }

    public final boolean isMyscriptResourceExist(@NotNull String version, @NotNull String lang) {
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(lang, "lang");
        String congFilePath = getCongFilePath(getConfigSearchPath(version), lang);
        String m33407b = m33407b(version, lang);
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (!fileUtils.fileExist(congFilePath) || !fileUtils.fileExist(m33407b)) {
            return false;
        }
        String[] list = new File(m33407b).list();
        Intrinsics.checkNotNullExpressionValue(list, "list(...)");
        return (list.length == 0) ^ true;
    }

    public final boolean isRawResourceExist() {
        List listOf;
        String myscript_resource_raw_dir = HWRValues.INSTANCE.getMYSCRIPT_RESOURCE_RAW_DIR();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{myscript_resource_raw_dir + "analyzer/ank-raw-content.res", myscript_resource_raw_dir + "math/math-ak.res", myscript_resource_raw_dir + "math/math-grm-standard.res", myscript_resource_raw_dir + "shape/shk-diagram.res"});
        Iterator it2 = listOf.iterator();
        while (it2.hasNext()) {
            if (!new File((String) it2.next()).exists()) {
                return false;
            }
        }
        return true;
    }

    public final boolean isResourceExist(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        return isMyscriptResourceExist(HWRValues.VERSION_LIB_MS, resource.getLang());
    }
}
