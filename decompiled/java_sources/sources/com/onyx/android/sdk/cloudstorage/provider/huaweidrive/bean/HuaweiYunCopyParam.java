package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J*\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R(\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunCopyParam;", "", "", "component1", "", "component2", "()[Ljava/lang/String;", HuaweiYunQueryArgs.FILE_NAME, HuaweiYunQueryArgs.QUERY_PARENT_FOLDER, "copy", "(Ljava/lang/String;[Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunCopyParam;", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getFileName", "()Ljava/lang/String;", "setFileName", "(Ljava/lang/String;)V", "b", "[Ljava/lang/String;", "getParentFolder", "setParentFolder", "([Ljava/lang/String;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;[Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class HuaweiYunCopyParam {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String fileName;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String[] parentFolder;

    public HuaweiYunCopyParam(@NotNull String fileName, @NotNull String[] parentFolder) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(parentFolder, "parentFolder");
        this.fileName = fileName;
        this.parentFolder = parentFolder;
    }

    public static /* synthetic */ HuaweiYunCopyParam copy$default(HuaweiYunCopyParam huaweiYunCopyParam, String str, String[] strArr, int i, Object obj) {
        if ((i & 1) != 0) {
            str = huaweiYunCopyParam.fileName;
        }
        if ((i & 2) != 0) {
            strArr = huaweiYunCopyParam.parentFolder;
        }
        return huaweiYunCopyParam.copy(str, strArr);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getFileName() {
        return this.fileName;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String[] getParentFolder() {
        return this.parentFolder;
    }

    @NotNull
    public final HuaweiYunCopyParam copy(@NotNull String fileName, @NotNull String[] parentFolder) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(parentFolder, "parentFolder");
        return new HuaweiYunCopyParam(fileName, parentFolder);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HuaweiYunCopyParam)) {
            return false;
        }
        HuaweiYunCopyParam huaweiYunCopyParam = (HuaweiYunCopyParam) other;
        return Intrinsics.areEqual(this.fileName, huaweiYunCopyParam.fileName) && Intrinsics.areEqual(this.parentFolder, huaweiYunCopyParam.parentFolder);
    }

    @NotNull
    public final String getFileName() {
        return this.fileName;
    }

    @NotNull
    public final String[] getParentFolder() {
        return this.parentFolder;
    }

    public int hashCode() {
        return (this.fileName.hashCode() * 31) + Arrays.hashCode(this.parentFolder);
    }

    public final void setFileName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.fileName = str;
    }

    public final void setParentFolder(@NotNull String[] strArr) {
        Intrinsics.checkNotNullParameter(strArr, "<set-?>");
        this.parentFolder = strArr;
    }

    @NotNull
    public String toString() {
        return "HuaweiYunCopyParam(fileName=" + this.fileName + ", parentFolder=" + Arrays.toString(this.parentFolder) + ')';
    }
}
