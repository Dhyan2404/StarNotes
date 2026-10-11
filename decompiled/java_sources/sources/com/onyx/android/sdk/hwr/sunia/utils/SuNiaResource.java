package com.onyx.android.sdk.hwr.sunia.utils;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.data.DataScope;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.StorageLocation;
import com.onyx.android.sdk.data.common.path.PathManager;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.sunia.data.p125const.SuniaConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010!\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\b\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\f\u001a\u00020\u000bJ\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\tJ\u0006\u0010\u000f\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "resource", "", "getResourceZipPath", "getResourceUnzipPath", "getResourceInstalledKey", "getDefaultResourceInstalledKey", "", "isResourceInstalled", "", "setDefaultResourceInstalled", "installed", "setResourceInstalled", "isDefaultResourceInstalled", "addDownloadingResource", "removeDownloadingResource", "isDownloading", "a", Constants.STRING_SIG, "KEY_RESOURCE_INSTALLED", "b", "KEY_DEFAULT_RESOURCE_INSTALLED", "", "c", "Ljava/util/List;", "downloadingResources", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-sunia_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSuNiaResource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaResource.kt\ncom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1747#2,3:94\n*S KotlinDebug\n*F\n+ 1 SuNiaResource.kt\ncom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource\n*L\n91#1:94,3\n*E\n"})
/* loaded from: classes7.dex */
public final class SuNiaResource {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_RESOURCE_INSTALLED = "resource_installed";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_DEFAULT_RESOURCE_INSTALLED = "default_resource_installed";

    @NotNull
    public static final SuNiaResource INSTANCE = new SuNiaResource();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final List<HWRResource> downloadingResources = new ArrayList();

    public static /* synthetic */ void setResourceInstalled$default(SuNiaResource suNiaResource, HWRResource hWRResource, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        suNiaResource.setResourceInstalled(hWRResource, z);
    }

    public final void addDownloadingResource(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        downloadingResources.add(resource);
    }

    @NotNull
    public final String getDefaultResourceInstalledKey() {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{HWRValues.ENGINE_SUNIA, "1.0", "default_resource_installed"});
        return StringKt.join(listOf, "/");
    }

    @NotNull
    public final String getResourceInstalledKey(@NotNull HWRResource resource) {
        List listOf;
        Intrinsics.checkNotNullParameter(resource, "resource");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{HWRValues.ENGINE_SUNIA, "1.0", resource.getLang(), "resource_installed"});
        return StringKt.join(listOf, "/");
    }

    @NotNull
    public final String getResourceUnzipPath(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Path resolve = Paths.INSTANCE.toPath(PathManager.INSTANCE.getDirectory(StorageLocation.PRIVATE_FILE, DataScope.APP, FunctionKey.HWR)).resolve(resource.getEngineType());
        Intrinsics.checkNotNullExpressionValue(resolve, "resolve(...)");
        return resolve.toAbsolutePath().toString();
    }

    @NotNull
    public final String getResourceZipPath(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Path resolve = Paths.INSTANCE.toPath(PathManager.INSTANCE.getDirectory(StorageLocation.PRIVATE_FILE, DataScope.APP, FunctionKey.HWR)).resolve(FileUtils.INSTANCE.concatFileName(resource.getLang(), "zip"));
        Intrinsics.checkNotNullExpressionValue(resolve, "resolve(...)");
        return resolve.toAbsolutePath().toString();
    }

    public final boolean isDefaultResourceInstalled() {
        return MMKVUtils.INSTANCE.get().getBoolean(getDefaultResourceInstalledKey(), false);
    }

    public final boolean isDownloading(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        List<HWRResource> list = downloadingResources;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(((HWRResource) it2.next()).getLang(), resource.getLang())) {
                return true;
            }
        }
        return false;
    }

    public final boolean isResourceInstalled(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        if (SuniaConstant.INSTANCE.getINTERNAL_LANG_LIST().contains(resource.getLang())) {
            return isDefaultResourceInstalled();
        }
        return MMKVUtils.INSTANCE.get().getBoolean(getResourceInstalledKey(resource), false);
    }

    public final void removeDownloadingResource(@NotNull final HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        CollectionsKt__MutableCollectionsKt.removeAll((List) downloadingResources, (Function1) new Function1<HWRResource, Boolean>() { // from class: com.onyx.android.sdk.hwr.sunia.utils.SuNiaResource$removeDownloadingResource$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull HWRResource it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getLang(), HWRResource.this.getLang()));
            }
        });
    }

    public final void setDefaultResourceInstalled() {
        MMKVUtils.INSTANCE.get().putBoolean(getDefaultResourceInstalledKey(), true);
    }

    public final void setResourceInstalled(@NotNull HWRResource resource, boolean installed) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        MMKVUtils.INSTANCE.get().putBoolean(getResourceInstalledKey(resource), installed);
    }
}
