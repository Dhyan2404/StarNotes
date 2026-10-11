package com.onyx.galaxy.note.category.data;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J3\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/PathEntry;", "", "id", "", "title", "level", "", "color", "(Ljava/lang/String;Ljava/lang/String;II)V", "getColor", "()I", "getId", "()Ljava/lang/String;", "getLevel", "getTitle", "component1", "component2", "component3", "component4", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final /* data */ class PathEntry {
    private final int color;

    @Nullable
    private final String id;
    private final int level;

    @NotNull
    private final String title;

    public PathEntry(@Nullable String str, @NotNull String title, int i, int i2) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.id = str;
        this.title = title;
        this.level = i;
        this.color = i2;
    }

    public static /* synthetic */ PathEntry copy$default(PathEntry pathEntry, String str, String str2, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = pathEntry.id;
        }
        if ((i3 & 2) != 0) {
            str2 = pathEntry.title;
        }
        if ((i3 & 4) != 0) {
            i = pathEntry.level;
        }
        if ((i3 & 8) != 0) {
            i2 = pathEntry.color;
        }
        return pathEntry.copy(str, str2, i, i2);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* renamed from: component3, reason: from getter */
    public final int getLevel() {
        return this.level;
    }

    /* renamed from: component4, reason: from getter */
    public final int getColor() {
        return this.color;
    }

    @NotNull
    public final PathEntry copy(@Nullable String id, @NotNull String title, int level, int color) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new PathEntry(id, title, level, color);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PathEntry)) {
            return false;
        }
        PathEntry pathEntry = (PathEntry) other;
        return Intrinsics.areEqual(this.id, pathEntry.id) && Intrinsics.areEqual(this.title, pathEntry.title) && this.level == pathEntry.level && this.color == pathEntry.color;
    }

    public final int getColor() {
        return this.color;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    public final int getLevel() {
        return this.level;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.id;
        return ((((((str == null ? 0 : str.hashCode()) * 31) + this.title.hashCode()) * 31) + Integer.hashCode(this.level)) * 31) + Integer.hashCode(this.color);
    }

    @NotNull
    public String toString() {
        return "PathEntry(id=" + this.id + ", title=" + this.title + ", level=" + this.level + ", color=" + this.color + ')';
    }

    public /* synthetic */ PathEntry(String str, String str2, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i, (i3 & 8) != 0 ? 0 : i2);
    }
}
