package com.onyx.galaxy.note.editor.data;

import com.onyx.android.sdk.data.common.data.template.SpaceArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003JG\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;", "Ljava/io/Serializable;", "id", "", "name", "iconRes", "spaceArgs", "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;", "templates", "", "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;Ljava/util/List;)V", "getIconRes", "()Ljava/lang/String;", "getId", "getName", "getSpaceArgs", "()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;", "getTemplates", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final /* data */ class PageMarginTemplateData implements Serializable {

    @Nullable
    private final String iconRes;

    @NotNull
    private final String id;

    @NotNull
    private final String name;

    @Nullable
    private final SpaceArgs spaceArgs;

    @Nullable
    private final List<PageMarginTemplateStyle> templates;

    public PageMarginTemplateData(@NotNull String id, @NotNull String name, @Nullable String str, @Nullable SpaceArgs spaceArgs, @Nullable List<PageMarginTemplateStyle> list) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        this.id = id;
        this.name = name;
        this.iconRes = str;
        this.spaceArgs = spaceArgs;
        this.templates = list;
    }

    public static /* synthetic */ PageMarginTemplateData copy$default(PageMarginTemplateData pageMarginTemplateData, String str, String str2, String str3, SpaceArgs spaceArgs, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = pageMarginTemplateData.id;
        }
        if ((i & 2) != 0) {
            str2 = pageMarginTemplateData.name;
        }
        String str4 = str2;
        if ((i & 4) != 0) {
            str3 = pageMarginTemplateData.iconRes;
        }
        String str5 = str3;
        if ((i & 8) != 0) {
            spaceArgs = pageMarginTemplateData.spaceArgs;
        }
        SpaceArgs spaceArgs2 = spaceArgs;
        if ((i & 16) != 0) {
            list = pageMarginTemplateData.templates;
        }
        return pageMarginTemplateData.copy(str, str4, str5, spaceArgs2, list);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getIconRes() {
        return this.iconRes;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final SpaceArgs getSpaceArgs() {
        return this.spaceArgs;
    }

    @Nullable
    public final List<PageMarginTemplateStyle> component5() {
        return this.templates;
    }

    @NotNull
    public final PageMarginTemplateData copy(@NotNull String id, @NotNull String name, @Nullable String iconRes, @Nullable SpaceArgs spaceArgs, @Nullable List<PageMarginTemplateStyle> templates) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        return new PageMarginTemplateData(id, name, iconRes, spaceArgs, templates);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PageMarginTemplateData)) {
            return false;
        }
        PageMarginTemplateData pageMarginTemplateData = (PageMarginTemplateData) other;
        return Intrinsics.areEqual(this.id, pageMarginTemplateData.id) && Intrinsics.areEqual(this.name, pageMarginTemplateData.name) && Intrinsics.areEqual(this.iconRes, pageMarginTemplateData.iconRes) && Intrinsics.areEqual(this.spaceArgs, pageMarginTemplateData.spaceArgs) && Intrinsics.areEqual(this.templates, pageMarginTemplateData.templates);
    }

    @Nullable
    public final String getIconRes() {
        return this.iconRes;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final SpaceArgs getSpaceArgs() {
        return this.spaceArgs;
    }

    @Nullable
    public final List<PageMarginTemplateStyle> getTemplates() {
        return this.templates;
    }

    public int hashCode() {
        int hashCode = ((this.id.hashCode() * 31) + this.name.hashCode()) * 31;
        String str = this.iconRes;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        SpaceArgs spaceArgs = this.spaceArgs;
        int hashCode3 = (hashCode2 + (spaceArgs == null ? 0 : spaceArgs.hashCode())) * 31;
        List<PageMarginTemplateStyle> list = this.templates;
        return hashCode3 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "PageMarginTemplateData(id=" + this.id + ", name=" + this.name + ", iconRes=" + this.iconRes + ", spaceArgs=" + this.spaceArgs + ", templates=" + this.templates + ')';
    }

    public /* synthetic */ PageMarginTemplateData(String str, String str2, String str3, SpaceArgs spaceArgs, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i & 8) != 0 ? null : spaceArgs, (i & 16) != 0 ? null : list);
    }
}
