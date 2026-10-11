package com.onyx.android.sdk.data.serverconvert.convertor.bean;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003JE\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\rR\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000b\"\u0004\b\u0017\u0010\r¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;", "", "objectKey", "", BreakpointSQLiteKey.FILENAME, Constants.ATTRNAME_FORMAT, "platform", "bucket", "region", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBucket", "()Ljava/lang/String;", "setBucket", "(Ljava/lang/String;)V", "getFilename", "setFilename", "getFormat", "setFormat", "getObjectKey", "setObjectKey", "getPlatform", "setPlatform", "getRegion", "setRegion", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class DocConvertComponentBean {

    @NotNull
    private String bucket;

    @NotNull
    private String filename;

    @NotNull
    private String format;

    @NotNull
    private String objectKey;

    @NotNull
    private String platform;

    @NotNull
    private String region;

    public DocConvertComponentBean() {
        this(null, null, null, null, null, null, 63, null);
    }

    public static /* synthetic */ DocConvertComponentBean copy$default(DocConvertComponentBean docConvertComponentBean, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = docConvertComponentBean.objectKey;
        }
        if ((i & 2) != 0) {
            str2 = docConvertComponentBean.filename;
        }
        String str7 = str2;
        if ((i & 4) != 0) {
            str3 = docConvertComponentBean.format;
        }
        String str8 = str3;
        if ((i & 8) != 0) {
            str4 = docConvertComponentBean.platform;
        }
        String str9 = str4;
        if ((i & 16) != 0) {
            str5 = docConvertComponentBean.bucket;
        }
        String str10 = str5;
        if ((i & 32) != 0) {
            str6 = docConvertComponentBean.region;
        }
        return docConvertComponentBean.copy(str, str7, str8, str9, str10, str6);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getObjectKey() {
        return this.objectKey;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getFilename() {
        return this.filename;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getFormat() {
        return this.format;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getPlatform() {
        return this.platform;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final String getBucket() {
        return this.bucket;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final String getRegion() {
        return this.region;
    }

    @NotNull
    public final DocConvertComponentBean copy(@NotNull String objectKey, @NotNull String filename, @NotNull String format, @NotNull String platform, @NotNull String bucket, @NotNull String region) {
        Intrinsics.checkNotNullParameter(objectKey, "objectKey");
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(bucket, "bucket");
        Intrinsics.checkNotNullParameter(region, "region");
        return new DocConvertComponentBean(objectKey, filename, format, platform, bucket, region);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DocConvertComponentBean)) {
            return false;
        }
        DocConvertComponentBean docConvertComponentBean = (DocConvertComponentBean) other;
        return Intrinsics.areEqual(this.objectKey, docConvertComponentBean.objectKey) && Intrinsics.areEqual(this.filename, docConvertComponentBean.filename) && Intrinsics.areEqual(this.format, docConvertComponentBean.format) && Intrinsics.areEqual(this.platform, docConvertComponentBean.platform) && Intrinsics.areEqual(this.bucket, docConvertComponentBean.bucket) && Intrinsics.areEqual(this.region, docConvertComponentBean.region);
    }

    @NotNull
    public final String getBucket() {
        return this.bucket;
    }

    @NotNull
    public final String getFilename() {
        return this.filename;
    }

    @NotNull
    public final String getFormat() {
        return this.format;
    }

    @NotNull
    public final String getObjectKey() {
        return this.objectKey;
    }

    @NotNull
    public final String getPlatform() {
        return this.platform;
    }

    @NotNull
    public final String getRegion() {
        return this.region;
    }

    public int hashCode() {
        return (((((((((this.objectKey.hashCode() * 31) + this.filename.hashCode()) * 31) + this.format.hashCode()) * 31) + this.platform.hashCode()) * 31) + this.bucket.hashCode()) * 31) + this.region.hashCode();
    }

    public final void setBucket(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.bucket = str;
    }

    public final void setFilename(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.filename = str;
    }

    public final void setFormat(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.format = str;
    }

    public final void setObjectKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.objectKey = str;
    }

    public final void setPlatform(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.platform = str;
    }

    public final void setRegion(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.region = str;
    }

    @NotNull
    public String toString() {
        return "DocConvertComponentBean(objectKey=" + this.objectKey + ", filename=" + this.filename + ", format=" + this.format + ", platform=" + this.platform + ", bucket=" + this.bucket + ", region=" + this.region + ')';
    }

    public DocConvertComponentBean(@NotNull String objectKey, @NotNull String filename, @NotNull String format, @NotNull String platform, @NotNull String bucket, @NotNull String region) {
        Intrinsics.checkNotNullParameter(objectKey, "objectKey");
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(bucket, "bucket");
        Intrinsics.checkNotNullParameter(region, "region");
        this.objectKey = objectKey;
        this.filename = filename;
        this.format = format;
        this.platform = platform;
        this.bucket = bucket;
        this.region = region;
    }

    public /* synthetic */ DocConvertComponentBean(String str, String str2, String str3, String str4, String str5, String str6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6);
    }
}
