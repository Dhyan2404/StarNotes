package com.onyx.android.sdk.cloudstorage.model;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0086\b\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB%\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u0011\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004HÆ\u0003J'\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R$\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R*\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;", "", "", "component1", "", "component2", "pdfPath", "imagePaths", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getPdfPath", "()Ljava/lang/String;", "setPdfPath", "(Ljava/lang/String;)V", "b", "Ljava/util/List;", "getImagePaths", "()Ljava/util/List;", "setImagePaths", "(Ljava/util/List;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/util/List;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class CloudResource {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public String pdfPath;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public List<String> imagePaths;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudResource$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;", "pdfPath", "", "pageImagePaths", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CloudResource create(@Nullable String pdfPath, @Nullable List<String> pageImagePaths) {
            return new CloudResource(pdfPath, pageImagePaths);
        }

        public Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CloudResource() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CloudResource copy$default(CloudResource cloudResource, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cloudResource.pdfPath;
        }
        if ((i & 2) != 0) {
            list = cloudResource.imagePaths;
        }
        return cloudResource.copy(str, list);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getPdfPath() {
        return this.pdfPath;
    }

    @Nullable
    public final List<String> component2() {
        return this.imagePaths;
    }

    @NotNull
    public final CloudResource copy(@Nullable String pdfPath, @Nullable List<String> imagePaths) {
        return new CloudResource(pdfPath, imagePaths);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CloudResource)) {
            return false;
        }
        CloudResource cloudResource = (CloudResource) other;
        return Intrinsics.areEqual(this.pdfPath, cloudResource.pdfPath) && Intrinsics.areEqual(this.imagePaths, cloudResource.imagePaths);
    }

    @Nullable
    public final List<String> getImagePaths() {
        return this.imagePaths;
    }

    @Nullable
    public final String getPdfPath() {
        return this.pdfPath;
    }

    public int hashCode() {
        String str = this.pdfPath;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<String> list = this.imagePaths;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    public final void setImagePaths(@Nullable List<String> list) {
        this.imagePaths = list;
    }

    public final void setPdfPath(@Nullable String str) {
        this.pdfPath = str;
    }

    @NotNull
    public String toString() {
        return "CloudResource(pdfPath=" + this.pdfPath + ", imagePaths=" + this.imagePaths + ')';
    }

    public CloudResource(@Nullable String str, @Nullable List<String> list) {
        this.pdfPath = str;
        this.imagePaths = list;
    }

    public /* synthetic */ CloudResource(String str, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : list);
    }
}
