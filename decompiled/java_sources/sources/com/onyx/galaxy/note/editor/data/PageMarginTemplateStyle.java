package com.onyx.galaxy.note.editor.data;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;", "Ljava/io/Serializable;", "name", "", "fillStyle", "", "resName", "(Ljava/lang/String;ILjava/lang/String;)V", "getFillStyle", "()I", "getName", "()Ljava/lang/String;", "getResName", "component1", "component2", "component3", "copy", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "toString", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final /* data */ class PageMarginTemplateStyle implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final PageMarginTemplateStyle EMPTY = new PageMarginTemplateStyle("margin_template_style_empty", 0, "");
    private final int fillStyle;

    @NotNull
    private final String name;

    @NotNull
    private final String resName;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle$Companion;", "", "()V", "EMPTY", "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;", "getEMPTY", "()Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PageMarginTemplateStyle getEMPTY() {
            return PageMarginTemplateStyle.EMPTY;
        }

        public Companion() {
        }
    }

    public PageMarginTemplateStyle(@NotNull String name, int i, @NotNull String resName) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(resName, "resName");
        this.name = name;
        this.fillStyle = i;
        this.resName = resName;
    }

    public static /* synthetic */ PageMarginTemplateStyle copy$default(PageMarginTemplateStyle pageMarginTemplateStyle, String str, int i, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pageMarginTemplateStyle.name;
        }
        if ((i2 & 2) != 0) {
            i = pageMarginTemplateStyle.fillStyle;
        }
        if ((i2 & 4) != 0) {
            str2 = pageMarginTemplateStyle.resName;
        }
        return pageMarginTemplateStyle.copy(str, i, str2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: component2, reason: from getter */
    public final int getFillStyle() {
        return this.fillStyle;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getResName() {
        return this.resName;
    }

    @NotNull
    public final PageMarginTemplateStyle copy(@NotNull String name, int fillStyle, @NotNull String resName) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(resName, "resName");
        return new PageMarginTemplateStyle(name, fillStyle, resName);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PageMarginTemplateStyle)) {
            return false;
        }
        PageMarginTemplateStyle pageMarginTemplateStyle = (PageMarginTemplateStyle) other;
        return Intrinsics.areEqual(this.name, pageMarginTemplateStyle.name) && this.fillStyle == pageMarginTemplateStyle.fillStyle && Intrinsics.areEqual(this.resName, pageMarginTemplateStyle.resName);
    }

    public final int getFillStyle() {
        return this.fillStyle;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getResName() {
        return this.resName;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + Integer.hashCode(this.fillStyle)) * 31) + this.resName.hashCode();
    }

    @NotNull
    public String toString() {
        return "PageMarginTemplateStyle(name=" + this.name + ", fillStyle=" + this.fillStyle + ", resName=" + this.resName + ')';
    }

    public /* synthetic */ PageMarginTemplateStyle(String str, int i, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? 0 : i, str2);
    }
}
