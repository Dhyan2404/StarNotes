package com.onyx.android.sdk.hwr.request;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.request.HWRResourceLoadRequest;
import com.onyx.android.sdk.hwr.service.http.OnyxHWRResourceService;
import com.onyx.android.sdk.hwr.service.manager.MLModelManager;
import com.onyx.android.sdk.hwr.utils.MSResourceUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u0018B\u0011\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\tH\u0002J\u0016\u0010\f\u001a\u00020\n2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R(\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;", "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "execute", "e", "resources", "d", "c", "", "", "b", C6997f.f39671c, "", "Ljava/util/List;", "getReservedResources", "()Ljava/util/List;", "setReservedResources", "(Ljava/util/List;)V", "reservedResources", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V", "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRResourceLoadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRResourceLoadRequest.kt\ncom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n766#2:98\n857#2,2:99\n*S KotlinDebug\n*F\n+ 1 HWRResourceLoadRequest.kt\ncom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest\n*L\n64#1:98\n64#1:99,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HWRResourceLoadRequest extends HWRBaseRequest<List<HWRResource>> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    @NotNull
    public static final String[] f42571c = {ArchiveStreamFactory.f105352AR, "fa_IR", "he_IL", "hi_IN", "th_TH", "ur_PK"};

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<String> reservedResources;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest$Companion;", "", "()V", "OFFSCREEN_RESOURCES", "", "", "getOFFSCREEN_RESOURCES", "()[Ljava/lang/String;", "[Ljava/lang/String;", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String[] getOFFSCREEN_RESOURCES() {
            return HWRResourceLoadRequest.f42571c;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRResourceLoadRequest(@NotNull HWRBundle bundle) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        this.reservedResources = new ArrayList();
    }

    /* renamed from: g */
    public static final int m33358g(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: b */
    public final void m33359b(List<HWRResource> resources) {
        for (HWRResource hWRResource : resources) {
            hWRResource.setExist(false);
            if (Intrinsics.areEqual(hWRResource.getEngineType(), HWRValues.ENGINE_MS)) {
                MSResourceUtils mSResourceUtils = MSResourceUtils.INSTANCE;
                String version = hWRResource.getVersion();
                String lang = hWRResource.getLang();
                Intrinsics.checkNotNull(lang);
                hWRResource.setExist(mSResourceUtils.isMyscriptResourceExist(version, lang));
            }
            if (Intrinsics.areEqual(hWRResource.getEngineType(), HWRValues.ENGINE_ML)) {
                MLModelManager mLModelManager = MLModelManager.INSTANCE;
                hWRResource.setExist(mLModelManager.isModelDownloaded(mLModelManager.selectModel(hWRResource)));
            }
        }
    }

    /* renamed from: c */
    public final List<HWRResource> m33360c(List<HWRResource> resources) {
        List<HWRResource> mutableList;
        boolean contains;
        ArrayList arrayList = new ArrayList();
        for (Object obj : resources) {
            contains = ArraysKt___ArraysKt.contains(f42571c, ((HWRResource) obj).getLang());
            if (!contains) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        if (this.reservedResources.isEmpty()) {
            return mutableList;
        }
        ArrayList arrayList2 = new ArrayList();
        for (HWRResource hWRResource : mutableList) {
            if (this.reservedResources.contains(hWRResource.getLang())) {
                arrayList2.add(hWRResource);
            }
        }
        return arrayList2;
    }

    /* renamed from: d */
    public final List<HWRResource> m33361d(List<HWRResource> resources) {
        for (File file : MSResourceUtils.INSTANCE.getDownloadResList()) {
            HWRResource hWRResource = new HWRResource();
            String baseName = FilenameUtils.getBaseName(file.getAbsolutePath());
            Intrinsics.checkNotNullExpressionValue(baseName, "getBaseName(...)");
            hWRResource.setLang(baseName);
            hWRResource.setExist(true);
            hWRResource.setVersion(HWRValues.VERSION_LIB_MS);
            if (MSResourceUtils.INSTANCE.isResourceExist(hWRResource)) {
                resources.add(hWRResource);
            }
        }
        return resources;
    }

    /* renamed from: e */
    public final List<HWRResource> m33362e() {
        List<HWRResource> mutableList;
        Object body = RetrofitUtils.INSTANCE.executeCall(((OnyxHWRResourceService) ServiceFactory.INSTANCE.getOnyxSpecifyService(OnyxHWRResourceService.class, getBundle().getClusterInfo().getInternationalCloudDataUrl())).getMyscriptResource(HWRValues.VERSION_LIB_MS)).body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) body);
        return mutableList;
    }

    /* renamed from: f */
    public final void m33363f(List<HWRResource> resources) {
        final HWRResourceLoadRequest$sortResources$1 hWRResourceLoadRequest$sortResources$1 = new Function2<HWRResource, HWRResource, Integer>() { // from class: com.onyx.android.sdk.hwr.request.HWRResourceLoadRequest$sortResources$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(HWRResource hWRResource, HWRResource hWRResource2) {
                return Integer.valueOf(hWRResource.getLang().compareTo(hWRResource2.getLang()));
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(resources, new Comparator() { // from class: com.sunia.HTREnginev2.dfh
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m33358g;
                m33358g = HWRResourceLoadRequest.m33358g(Function2.this, obj, obj2);
                return m33358g;
            }
        });
    }

    @NotNull
    public final List<String> getReservedResources() {
        return this.reservedResources;
    }

    public final void setReservedResources(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.reservedResources = list;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<HWRResource> execute() {
        List<HWRResource> m33360c = m33360c(m33362e());
        if (CollectionKt.isNullOrEmpty(m33360c)) {
            m33360c = m33361d(m33360c);
        }
        m33359b(m33360c);
        m33363f(m33360c);
        return m33360c;
    }
}
