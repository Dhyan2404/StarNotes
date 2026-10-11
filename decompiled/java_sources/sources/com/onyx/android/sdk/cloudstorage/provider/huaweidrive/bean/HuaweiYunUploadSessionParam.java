package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b$\u0010%J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\u0007\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0002HÆ\u0003J\t\u0010\t\u001a\u00020\u0002HÆ\u0003JH\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00022\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0011\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0012HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u0006R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001f\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b \u0010\u0018\u001a\u0004\b!\u0010\u001aR\u0017\u0010\u000e\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\"\u0010\u0018\u001a\u0004\b#\u0010\u001a¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSessionParam;", "", "", "component1", "", "component2", "()[Ljava/lang/String;", "component3", "component4", "component5", HuaweiYunQueryArgs.FILE_NAME, HuaweiYunQueryArgs.QUERY_PARENT_FOLDER, HuaweiYunQueryArgs.CREATED_TIME, HuaweiYunQueryArgs.EDITED_TIME, HuaweiYunQueryArgs.QUERY_PARENT_MIMETYPE, "copy", "(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSessionParam;", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getFileName", "()Ljava/lang/String;", "b", "[Ljava/lang/String;", "getParentFolder", "c", "getCreatedTime", "d", "getEditedTime", "e", "getMimeType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class HuaweiYunUploadSessionParam {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String fileName;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String[] parentFolder;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final String createdTime;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public final String editedTime;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @NotNull
    public final String mimeType;

    public HuaweiYunUploadSessionParam(@NotNull String fileName, @NotNull String[] parentFolder, @NotNull String createdTime, @NotNull String editedTime, @NotNull String mimeType) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(parentFolder, "parentFolder");
        Intrinsics.checkNotNullParameter(createdTime, "createdTime");
        Intrinsics.checkNotNullParameter(editedTime, "editedTime");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        this.fileName = fileName;
        this.parentFolder = parentFolder;
        this.createdTime = createdTime;
        this.editedTime = editedTime;
        this.mimeType = mimeType;
    }

    public static /* synthetic */ HuaweiYunUploadSessionParam copy$default(HuaweiYunUploadSessionParam huaweiYunUploadSessionParam, String str, String[] strArr, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = huaweiYunUploadSessionParam.fileName;
        }
        if ((i & 2) != 0) {
            strArr = huaweiYunUploadSessionParam.parentFolder;
        }
        String[] strArr2 = strArr;
        if ((i & 4) != 0) {
            str2 = huaweiYunUploadSessionParam.createdTime;
        }
        String str5 = str2;
        if ((i & 8) != 0) {
            str3 = huaweiYunUploadSessionParam.editedTime;
        }
        String str6 = str3;
        if ((i & 16) != 0) {
            str4 = huaweiYunUploadSessionParam.mimeType;
        }
        return huaweiYunUploadSessionParam.copy(str, strArr2, str5, str6, str4);
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
    /* renamed from: component3, reason: from getter */
    public final String getCreatedTime() {
        return this.createdTime;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getEditedTime() {
        return this.editedTime;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final String getMimeType() {
        return this.mimeType;
    }

    @NotNull
    public final HuaweiYunUploadSessionParam copy(@NotNull String fileName, @NotNull String[] parentFolder, @NotNull String createdTime, @NotNull String editedTime, @NotNull String mimeType) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(parentFolder, "parentFolder");
        Intrinsics.checkNotNullParameter(createdTime, "createdTime");
        Intrinsics.checkNotNullParameter(editedTime, "editedTime");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        return new HuaweiYunUploadSessionParam(fileName, parentFolder, createdTime, editedTime, mimeType);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HuaweiYunUploadSessionParam)) {
            return false;
        }
        HuaweiYunUploadSessionParam huaweiYunUploadSessionParam = (HuaweiYunUploadSessionParam) other;
        return Intrinsics.areEqual(this.fileName, huaweiYunUploadSessionParam.fileName) && Intrinsics.areEqual(this.parentFolder, huaweiYunUploadSessionParam.parentFolder) && Intrinsics.areEqual(this.createdTime, huaweiYunUploadSessionParam.createdTime) && Intrinsics.areEqual(this.editedTime, huaweiYunUploadSessionParam.editedTime) && Intrinsics.areEqual(this.mimeType, huaweiYunUploadSessionParam.mimeType);
    }

    @NotNull
    public final String getCreatedTime() {
        return this.createdTime;
    }

    @NotNull
    public final String getEditedTime() {
        return this.editedTime;
    }

    @NotNull
    public final String getFileName() {
        return this.fileName;
    }

    @NotNull
    public final String getMimeType() {
        return this.mimeType;
    }

    @NotNull
    public final String[] getParentFolder() {
        return this.parentFolder;
    }

    public int hashCode() {
        return (((((((this.fileName.hashCode() * 31) + Arrays.hashCode(this.parentFolder)) * 31) + this.createdTime.hashCode()) * 31) + this.editedTime.hashCode()) * 31) + this.mimeType.hashCode();
    }

    @NotNull
    public String toString() {
        return "HuaweiYunUploadSessionParam(fileName=" + this.fileName + ", parentFolder=" + Arrays.toString(this.parentFolder) + ", createdTime=" + this.createdTime + ", editedTime=" + this.editedTime + ", mimeType=" + this.mimeType + ')';
    }
}
