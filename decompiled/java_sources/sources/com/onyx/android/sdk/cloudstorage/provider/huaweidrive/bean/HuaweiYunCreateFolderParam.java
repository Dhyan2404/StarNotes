package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean;

import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b#\u0010$J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\u0007\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0002HÆ\u0003J>\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u000f\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u0016\u001a\u0004\b\u001d\u0010\u0018R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u0016\u001a\u0004\b\u001f\u0010\u0018R\u001a\u0010\"\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b \u0010\u0016\u001a\u0004\b!\u0010\u0018¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunCreateFolderParam;", "", "", "component1", "", "component2", "()[Ljava/lang/String;", "component3", "component4", HuaweiYunQueryArgs.FILE_NAME, HuaweiYunQueryArgs.QUERY_PARENT_FOLDER, HuaweiYunQueryArgs.CREATED_TIME, HuaweiYunQueryArgs.EDITED_TIME, "copy", "(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunCreateFolderParam;", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getFileName", "()Ljava/lang/String;", "b", "[Ljava/lang/String;", "getParentFolder", "c", "getCreatedTime", "d", "getEditedTime", "e", "getMimeType", HuaweiYunQueryArgs.QUERY_PARENT_MIMETYPE, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class HuaweiYunCreateFolderParam {

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

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String mimeType;

    public HuaweiYunCreateFolderParam(@NotNull String fileName, @NotNull String[] parentFolder, @NotNull String createdTime, @NotNull String editedTime) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(parentFolder, "parentFolder");
        Intrinsics.checkNotNullParameter(createdTime, "createdTime");
        Intrinsics.checkNotNullParameter(editedTime, "editedTime");
        this.fileName = fileName;
        this.parentFolder = parentFolder;
        this.createdTime = createdTime;
        this.editedTime = editedTime;
        this.mimeType = HuaweiYunFileListResult.File.FOLDER;
    }

    public static /* synthetic */ HuaweiYunCreateFolderParam copy$default(HuaweiYunCreateFolderParam huaweiYunCreateFolderParam, String str, String[] strArr, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = huaweiYunCreateFolderParam.fileName;
        }
        if ((i & 2) != 0) {
            strArr = huaweiYunCreateFolderParam.parentFolder;
        }
        if ((i & 4) != 0) {
            str2 = huaweiYunCreateFolderParam.createdTime;
        }
        if ((i & 8) != 0) {
            str3 = huaweiYunCreateFolderParam.editedTime;
        }
        return huaweiYunCreateFolderParam.copy(str, strArr, str2, str3);
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
    public final HuaweiYunCreateFolderParam copy(@NotNull String fileName, @NotNull String[] parentFolder, @NotNull String createdTime, @NotNull String editedTime) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(parentFolder, "parentFolder");
        Intrinsics.checkNotNullParameter(createdTime, "createdTime");
        Intrinsics.checkNotNullParameter(editedTime, "editedTime");
        return new HuaweiYunCreateFolderParam(fileName, parentFolder, createdTime, editedTime);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HuaweiYunCreateFolderParam)) {
            return false;
        }
        HuaweiYunCreateFolderParam huaweiYunCreateFolderParam = (HuaweiYunCreateFolderParam) other;
        return Intrinsics.areEqual(this.fileName, huaweiYunCreateFolderParam.fileName) && Intrinsics.areEqual(this.parentFolder, huaweiYunCreateFolderParam.parentFolder) && Intrinsics.areEqual(this.createdTime, huaweiYunCreateFolderParam.createdTime) && Intrinsics.areEqual(this.editedTime, huaweiYunCreateFolderParam.editedTime);
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
        return (((((this.fileName.hashCode() * 31) + Arrays.hashCode(this.parentFolder)) * 31) + this.createdTime.hashCode()) * 31) + this.editedTime.hashCode();
    }

    @NotNull
    public String toString() {
        return "HuaweiYunCreateFolderParam(fileName=" + this.fileName + ", parentFolder=" + Arrays.toString(this.parentFolder) + ", createdTime=" + this.createdTime + ", editedTime=" + this.editedTime + ')';
    }
}
