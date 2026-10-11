package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003J-\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUpdateParam;", "", "", "component1", "component2", "component3", HuaweiYunQueryArgs.FILE_NAME, "addParentFolder", "removeParentFolder", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getFileName", "()Ljava/lang/String;", "b", "getAddParentFolder", "c", "getRemoveParentFolder", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class HuaweiYunUpdateParam {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public final String fileName;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public final String addParentFolder;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public final String removeParentFolder;

    public HuaweiYunUpdateParam() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ HuaweiYunUpdateParam copy$default(HuaweiYunUpdateParam huaweiYunUpdateParam, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = huaweiYunUpdateParam.fileName;
        }
        if ((i & 2) != 0) {
            str2 = huaweiYunUpdateParam.addParentFolder;
        }
        if ((i & 4) != 0) {
            str3 = huaweiYunUpdateParam.removeParentFolder;
        }
        return huaweiYunUpdateParam.copy(str, str2, str3);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getFileName() {
        return this.fileName;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getAddParentFolder() {
        return this.addParentFolder;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getRemoveParentFolder() {
        return this.removeParentFolder;
    }

    @NotNull
    public final HuaweiYunUpdateParam copy(@Nullable String fileName, @Nullable String addParentFolder, @Nullable String removeParentFolder) {
        return new HuaweiYunUpdateParam(fileName, addParentFolder, removeParentFolder);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HuaweiYunUpdateParam)) {
            return false;
        }
        HuaweiYunUpdateParam huaweiYunUpdateParam = (HuaweiYunUpdateParam) other;
        return Intrinsics.areEqual(this.fileName, huaweiYunUpdateParam.fileName) && Intrinsics.areEqual(this.addParentFolder, huaweiYunUpdateParam.addParentFolder) && Intrinsics.areEqual(this.removeParentFolder, huaweiYunUpdateParam.removeParentFolder);
    }

    @Nullable
    public final String getAddParentFolder() {
        return this.addParentFolder;
    }

    @Nullable
    public final String getFileName() {
        return this.fileName;
    }

    @Nullable
    public final String getRemoveParentFolder() {
        return this.removeParentFolder;
    }

    public int hashCode() {
        String str = this.fileName;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.addParentFolder;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.removeParentFolder;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "HuaweiYunUpdateParam(fileName=" + this.fileName + ", addParentFolder=" + this.addParentFolder + ", removeParentFolder=" + this.removeParentFolder + ')';
    }

    public HuaweiYunUpdateParam(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.fileName = str;
        this.addParentFolder = str2;
        this.removeParentFolder = str3;
    }

    public /* synthetic */ HuaweiYunUpdateParam(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
    }
}
