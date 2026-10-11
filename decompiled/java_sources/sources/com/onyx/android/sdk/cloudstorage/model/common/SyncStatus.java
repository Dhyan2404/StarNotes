package com.onyx.android.sdk.cloudstorage.model.common;

import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\tR\u0011\u0010\n\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\tR\u0011\u0010\u000b\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\f\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\tR\u0011\u0010\r\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\r\u0010\tj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;", "", "id", "", "(Ljava/lang/String;II)V", "getId", "()I", "isNewFromCloud", "", Constants.BOOLEAN_VALUE_SIG, "isNewFromLocal", "isNewVersionFromCloud", "isUploadConflict", "isUploadSync", "NEW_FROM_LOCAL", "NEW_FROM_CLOUD", "UPLOAD", "UPLOAD_CONFLICT", "NEW_VERSION_FROM_CLOUD", HwrRecognizerConstant.RECOGNIZER_UNKNOWN, "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SyncStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SyncStatus[] $VALUES;
    private final int id;
    public static final SyncStatus NEW_FROM_LOCAL = new SyncStatus("NEW_FROM_LOCAL", 0, 0);
    public static final SyncStatus NEW_FROM_CLOUD = new SyncStatus("NEW_FROM_CLOUD", 1, 1);
    public static final SyncStatus UPLOAD = new SyncStatus("UPLOAD", 2, 2);
    public static final SyncStatus UPLOAD_CONFLICT = new SyncStatus("UPLOAD_CONFLICT", 3, 3);
    public static final SyncStatus NEW_VERSION_FROM_CLOUD = new SyncStatus("NEW_VERSION_FROM_CLOUD", 4, 4);
    public static final SyncStatus UNKNOWN = new SyncStatus(HwrRecognizerConstant.RECOGNIZER_UNKNOWN, 5, 99);

    private static final /* synthetic */ SyncStatus[] $values() {
        return new SyncStatus[]{NEW_FROM_LOCAL, NEW_FROM_CLOUD, UPLOAD, UPLOAD_CONFLICT, NEW_VERSION_FROM_CLOUD, UNKNOWN};
    }

    static {
        SyncStatus[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private SyncStatus(String str, int i, int i2) {
        this.id = i2;
    }

    @NotNull
    public static EnumEntries<SyncStatus> getEntries() {
        return $ENTRIES;
    }

    public static SyncStatus valueOf(String str) {
        return (SyncStatus) Enum.valueOf(SyncStatus.class, str);
    }

    public static SyncStatus[] values() {
        return (SyncStatus[]) $VALUES.clone();
    }

    public final int getId() {
        return this.id;
    }

    public final boolean isNewFromCloud() {
        return this == NEW_FROM_CLOUD;
    }

    public final boolean isNewFromLocal() {
        return this == NEW_FROM_LOCAL;
    }

    public final boolean isNewVersionFromCloud() {
        return this == NEW_VERSION_FROM_CLOUD;
    }

    public final boolean isUploadConflict() {
        return this == UPLOAD_CONFLICT;
    }

    public final boolean isUploadSync() {
        return this == UPLOAD || this == NEW_FROM_LOCAL;
    }
}
