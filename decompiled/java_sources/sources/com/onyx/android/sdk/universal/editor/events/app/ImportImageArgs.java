package com.onyx.android.sdk.universal.editor.events.app;

import android.net.Uri;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001b\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b.\u0010/J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003JK\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\u00022\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\tHÆ\u0001J\t\u0010\u0011\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0012HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0018\u001a\u0004\b\"\u0010\u001a\"\u0004\b#\u0010\u001cR(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001e\u001a\u0004\b%\u0010 \"\u0004\b&\u0010'R$\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;", "", "", "component1", "", "Landroid/net/Uri;", "component2", "component3", "component4", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "component5", "noteName", "uriList", CouchFieldKey.KEY_PARENT_ID, "tagList", "importSelectedContext", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getNoteName", "()Ljava/lang/String;", "setNoteName", "(Ljava/lang/String;)V", "b", "Ljava/util/List;", "getUriList", "()Ljava/util/List;", "c", "getParentId", "setParentId", "d", "getTagList", "setTagList", "(Ljava/util/List;)V", "e", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "getImportSelectedContext", "()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "setImportSelectedContext", "(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ImportImageArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String noteName;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Uri> uriList;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public String parentId;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public List<String> tagList;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @Nullable
    public ImportSelectedContext importSelectedContext;

    /* JADX WARN: Multi-variable type inference failed */
    public ImportImageArgs(@NotNull String noteName, @NotNull List<? extends Uri> uriList, @Nullable String str, @NotNull List<String> tagList, @Nullable ImportSelectedContext importSelectedContext) {
        Intrinsics.checkNotNullParameter(noteName, "noteName");
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        Intrinsics.checkNotNullParameter(tagList, "tagList");
        this.noteName = noteName;
        this.uriList = uriList;
        this.parentId = str;
        this.tagList = tagList;
        this.importSelectedContext = importSelectedContext;
    }

    public static /* synthetic */ ImportImageArgs copy$default(ImportImageArgs importImageArgs, String str, List list, String str2, List list2, ImportSelectedContext importSelectedContext, int i, Object obj) {
        if ((i & 1) != 0) {
            str = importImageArgs.noteName;
        }
        if ((i & 2) != 0) {
            list = importImageArgs.uriList;
        }
        List list3 = list;
        if ((i & 4) != 0) {
            str2 = importImageArgs.parentId;
        }
        String str3 = str2;
        if ((i & 8) != 0) {
            list2 = importImageArgs.tagList;
        }
        List list4 = list2;
        if ((i & 16) != 0) {
            importSelectedContext = importImageArgs.importSelectedContext;
        }
        return importImageArgs.copy(str, list3, str3, list4, importSelectedContext);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getNoteName() {
        return this.noteName;
    }

    @NotNull
    public final List<Uri> component2() {
        return this.uriList;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getParentId() {
        return this.parentId;
    }

    @NotNull
    public final List<String> component4() {
        return this.tagList;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final ImportSelectedContext getImportSelectedContext() {
        return this.importSelectedContext;
    }

    @NotNull
    public final ImportImageArgs copy(@NotNull String noteName, @NotNull List<? extends Uri> uriList, @Nullable String parentId, @NotNull List<String> tagList, @Nullable ImportSelectedContext importSelectedContext) {
        Intrinsics.checkNotNullParameter(noteName, "noteName");
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        Intrinsics.checkNotNullParameter(tagList, "tagList");
        return new ImportImageArgs(noteName, uriList, parentId, tagList, importSelectedContext);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ImportImageArgs)) {
            return false;
        }
        ImportImageArgs importImageArgs = (ImportImageArgs) other;
        return Intrinsics.areEqual(this.noteName, importImageArgs.noteName) && Intrinsics.areEqual(this.uriList, importImageArgs.uriList) && Intrinsics.areEqual(this.parentId, importImageArgs.parentId) && Intrinsics.areEqual(this.tagList, importImageArgs.tagList) && Intrinsics.areEqual(this.importSelectedContext, importImageArgs.importSelectedContext);
    }

    @Nullable
    public final ImportSelectedContext getImportSelectedContext() {
        return this.importSelectedContext;
    }

    @NotNull
    public final String getNoteName() {
        return this.noteName;
    }

    @Nullable
    public final String getParentId() {
        return this.parentId;
    }

    @NotNull
    public final List<String> getTagList() {
        return this.tagList;
    }

    @NotNull
    public final List<Uri> getUriList() {
        return this.uriList;
    }

    public int hashCode() {
        int hashCode = ((this.noteName.hashCode() * 31) + this.uriList.hashCode()) * 31;
        String str = this.parentId;
        int hashCode2 = (((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.tagList.hashCode()) * 31;
        ImportSelectedContext importSelectedContext = this.importSelectedContext;
        return hashCode2 + (importSelectedContext != null ? importSelectedContext.hashCode() : 0);
    }

    public final void setImportSelectedContext(@Nullable ImportSelectedContext importSelectedContext) {
        this.importSelectedContext = importSelectedContext;
    }

    public final void setNoteName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.noteName = str;
    }

    public final void setParentId(@Nullable String str) {
        this.parentId = str;
    }

    public final void setTagList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.tagList = list;
    }

    @NotNull
    public String toString() {
        return "ImportImageArgs(noteName=" + this.noteName + ", uriList=" + this.uriList + ", parentId=" + this.parentId + ", tagList=" + this.tagList + ", importSelectedContext=" + this.importSelectedContext + ')';
    }

    public /* synthetic */ ImportImageArgs(String str, List list, String str2, List list2, ImportSelectedContext importSelectedContext, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, (i & 4) != 0 ? null : str2, list2, (i & 16) != 0 ? null : importSelectedContext);
    }
}
