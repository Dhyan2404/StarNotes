package com.onyx.galaxy.note.editor.data;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J%\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;", "Ljava/io/Serializable;", "version", "", "data", "", "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;", "(ILjava/util/List;)V", "getData", "()Ljava/util/List;", "getVersion", "()I", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "toString", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final /* data */ class PageMarginTemplateConfiguration implements Serializable {

    @Nullable
    private final List<PageMarginTemplateData> data;
    private final int version;

    public PageMarginTemplateConfiguration(int i, @Nullable List<PageMarginTemplateData> list) {
        this.version = i;
        this.data = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PageMarginTemplateConfiguration copy$default(PageMarginTemplateConfiguration pageMarginTemplateConfiguration, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = pageMarginTemplateConfiguration.version;
        }
        if ((i2 & 2) != 0) {
            list = pageMarginTemplateConfiguration.data;
        }
        return pageMarginTemplateConfiguration.copy(i, list);
    }

    /* renamed from: component1, reason: from getter */
    public final int getVersion() {
        return this.version;
    }

    @Nullable
    public final List<PageMarginTemplateData> component2() {
        return this.data;
    }

    @NotNull
    public final PageMarginTemplateConfiguration copy(int version, @Nullable List<PageMarginTemplateData> data) {
        return new PageMarginTemplateConfiguration(version, data);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PageMarginTemplateConfiguration)) {
            return false;
        }
        PageMarginTemplateConfiguration pageMarginTemplateConfiguration = (PageMarginTemplateConfiguration) other;
        return this.version == pageMarginTemplateConfiguration.version && Intrinsics.areEqual(this.data, pageMarginTemplateConfiguration.data);
    }

    @Nullable
    public final List<PageMarginTemplateData> getData() {
        return this.data;
    }

    public final int getVersion() {
        return this.version;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.version) * 31;
        List<PageMarginTemplateData> list = this.data;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        return "PageMarginTemplateConfiguration(version=" + this.version + ", data=" + this.data + ')';
    }

    public /* synthetic */ PageMarginTemplateConfiguration(int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : list);
    }
}
