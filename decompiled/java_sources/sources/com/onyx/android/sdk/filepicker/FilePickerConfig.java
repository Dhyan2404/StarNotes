package com.onyx.android.sdk.filepicker;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR \u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/FilePickerConfig;", "Ljava/io/Serializable;", "()V", "importFontMaxCount", "", "getImportFontMaxCount", "()I", "setImportFontMaxCount", "(I)V", "importLocalBackupMaxCount", "getImportLocalBackupMaxCount", "setImportLocalBackupMaxCount", "supportDocumentType", "", "", "getSupportDocumentType", "()Ljava/util/List;", "setSupportDocumentType", "(Ljava/util/List;)V", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FilePickerConfig implements Serializable {

    @NotNull
    private List<String> supportDocumentType = new ArrayList();
    private int importFontMaxCount = 1;
    private int importLocalBackupMaxCount = 1;

    public final int getImportFontMaxCount() {
        return this.importFontMaxCount;
    }

    public final int getImportLocalBackupMaxCount() {
        return this.importLocalBackupMaxCount;
    }

    @NotNull
    public final List<String> getSupportDocumentType() {
        return this.supportDocumentType;
    }

    public final void setImportFontMaxCount(int i) {
        this.importFontMaxCount = i;
    }

    public final void setImportLocalBackupMaxCount(int i) {
        this.importLocalBackupMaxCount = i;
    }

    public final void setSupportDocumentType(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.supportDocumentType = list;
    }
}
