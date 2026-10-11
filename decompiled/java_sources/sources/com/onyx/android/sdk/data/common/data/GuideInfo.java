package com.onyx.android.sdk.data.common.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b*\b\u0086\b\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0007¢\u0006\u0002\u0010\u0013J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010HÆ\u0003J\t\u0010-\u001a\u00020\u0007HÆ\u0003J\t\u0010.\u001a\u00020\u0005HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u00100\u001a\u00020\u0005HÆ\u0003J\t\u00101\u001a\u00020\u0005HÆ\u0003J\t\u00102\u001a\u00020\u0005HÆ\u0003J\t\u00103\u001a\u00020\u0007HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0091\u0001\u00106\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0007HÆ\u0001J\u0013\u00107\u001a\u00020\u00032\b\u00108\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00109\u001a\u00020\u0005HÖ\u0001J\t\u0010:\u001a\u00020\u0007HÖ\u0001R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0012\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0017R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015R\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0017R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0017R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0015\"\u0004\b(\u0010)¨\u0006;"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "", "enable", "", "type", "", "webUrl", "", "contentStyle", "ordinal", "version", "title", "content", "summary", "resourceType", "resources", "", "Lcom/onyx/android/sdk/data/common/data/GuideInfoResource;", "functionId", "(ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "getContentStyle", "()I", "getEnable", Constants.BOOLEAN_VALUE_SIG, "setEnable", "(Z)V", "getFunctionId", "getOrdinal", "getResourceType", "getResources", "()Ljava/util/List;", "setResources", "(Ljava/util/List;)V", "getSummary", "getTitle", "getType", "getVersion", "getWebUrl", "setWebUrl", "(Ljava/lang/String;)V", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class GuideInfo {

    @Nullable
    private final String content;
    private final int contentStyle;
    private boolean enable;

    @NotNull
    private final String functionId;
    private final int ordinal;

    @Nullable
    private final String resourceType;

    @Nullable
    private List<GuideInfoResource> resources;

    @Nullable
    private final String summary;

    @NotNull
    private final String title;
    private final int type;
    private final int version;

    @Nullable
    private String webUrl;

    public GuideInfo(boolean z, int i, @Nullable String str, int i2, int i3, int i4, @NotNull String title, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable List<GuideInfoResource> list, @NotNull String functionId) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(functionId, "functionId");
        this.enable = z;
        this.type = i;
        this.webUrl = str;
        this.contentStyle = i2;
        this.ordinal = i3;
        this.version = i4;
        this.title = title;
        this.content = str2;
        this.summary = str3;
        this.resourceType = str4;
        this.resources = list;
        this.functionId = functionId;
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getEnable() {
        return this.enable;
    }

    @Nullable
    /* renamed from: component10, reason: from getter */
    public final String getResourceType() {
        return this.resourceType;
    }

    @Nullable
    public final List<GuideInfoResource> component11() {
        return this.resources;
    }

    @NotNull
    /* renamed from: component12, reason: from getter */
    public final String getFunctionId() {
        return this.functionId;
    }

    /* renamed from: component2, reason: from getter */
    public final int getType() {
        return this.type;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getWebUrl() {
        return this.webUrl;
    }

    /* renamed from: component4, reason: from getter */
    public final int getContentStyle() {
        return this.contentStyle;
    }

    /* renamed from: component5, reason: from getter */
    public final int getOrdinal() {
        return this.ordinal;
    }

    /* renamed from: component6, reason: from getter */
    public final int getVersion() {
        return this.version;
    }

    @NotNull
    /* renamed from: component7, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    /* renamed from: component8, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    @Nullable
    /* renamed from: component9, reason: from getter */
    public final String getSummary() {
        return this.summary;
    }

    @NotNull
    public final GuideInfo copy(boolean enable, int type, @Nullable String webUrl, int contentStyle, int ordinal, int version, @NotNull String title, @Nullable String content, @Nullable String summary, @Nullable String resourceType, @Nullable List<GuideInfoResource> resources, @NotNull String functionId) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(functionId, "functionId");
        return new GuideInfo(enable, type, webUrl, contentStyle, ordinal, version, title, content, summary, resourceType, resources, functionId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GuideInfo)) {
            return false;
        }
        GuideInfo guideInfo = (GuideInfo) other;
        return this.enable == guideInfo.enable && this.type == guideInfo.type && Intrinsics.areEqual(this.webUrl, guideInfo.webUrl) && this.contentStyle == guideInfo.contentStyle && this.ordinal == guideInfo.ordinal && this.version == guideInfo.version && Intrinsics.areEqual(this.title, guideInfo.title) && Intrinsics.areEqual(this.content, guideInfo.content) && Intrinsics.areEqual(this.summary, guideInfo.summary) && Intrinsics.areEqual(this.resourceType, guideInfo.resourceType) && Intrinsics.areEqual(this.resources, guideInfo.resources) && Intrinsics.areEqual(this.functionId, guideInfo.functionId);
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    public final int getContentStyle() {
        return this.contentStyle;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    @NotNull
    public final String getFunctionId() {
        return this.functionId;
    }

    public final int getOrdinal() {
        return this.ordinal;
    }

    @Nullable
    public final String getResourceType() {
        return this.resourceType;
    }

    @Nullable
    public final List<GuideInfoResource> getResources() {
        return this.resources;
    }

    @Nullable
    public final String getSummary() {
        return this.summary;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    public final int getVersion() {
        return this.version;
    }

    @Nullable
    public final String getWebUrl() {
        return this.webUrl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    public int hashCode() {
        boolean z = this.enable;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int hashCode = ((r0 * 31) + Integer.hashCode(this.type)) * 31;
        String str = this.webUrl;
        int hashCode2 = (((((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.contentStyle)) * 31) + Integer.hashCode(this.ordinal)) * 31) + Integer.hashCode(this.version)) * 31) + this.title.hashCode()) * 31;
        String str2 = this.content;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.summary;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.resourceType;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List<GuideInfoResource> list = this.resources;
        return ((hashCode5 + (list != null ? list.hashCode() : 0)) * 31) + this.functionId.hashCode();
    }

    public final void setEnable(boolean z) {
        this.enable = z;
    }

    public final void setResources(@Nullable List<GuideInfoResource> list) {
        this.resources = list;
    }

    public final void setWebUrl(@Nullable String str) {
        this.webUrl = str;
    }

    @NotNull
    public String toString() {
        return "GuideInfo(enable=" + this.enable + ", type=" + this.type + ", webUrl=" + this.webUrl + ", contentStyle=" + this.contentStyle + ", ordinal=" + this.ordinal + ", version=" + this.version + ", title=" + this.title + ", content=" + this.content + ", summary=" + this.summary + ", resourceType=" + this.resourceType + ", resources=" + this.resources + ", functionId=" + this.functionId + ')';
    }

    public /* synthetic */ GuideInfo(boolean z, int i, String str, int i2, int i3, int i4, String str2, String str3, String str4, String str5, List list, String str6, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, i, str, i2, i3, i4, str2, str3, str4, str5, (i5 & 1024) != 0 ? null : list, str6);
    }
}
