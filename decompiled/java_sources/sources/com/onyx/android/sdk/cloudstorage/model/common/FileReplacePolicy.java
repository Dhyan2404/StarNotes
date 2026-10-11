package com.onyx.android.sdk.cloudstorage.model.common;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0005j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/common/FileReplacePolicy;", "", "(Ljava/lang/String;I)V", "isReplacePolicy", "", Constants.BOOLEAN_VALUE_SIG, "isSkipPolicy", "Ask", "Replace", "ReplaceAll", "Skip", "SkipAll", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FileReplacePolicy {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FileReplacePolicy[] $VALUES;
    public static final FileReplacePolicy Ask = new FileReplacePolicy("Ask", 0);
    public static final FileReplacePolicy Replace = new FileReplacePolicy("Replace", 1);
    public static final FileReplacePolicy ReplaceAll = new FileReplacePolicy("ReplaceAll", 2);
    public static final FileReplacePolicy Skip = new FileReplacePolicy("Skip", 3);
    public static final FileReplacePolicy SkipAll = new FileReplacePolicy("SkipAll", 4);

    private static final /* synthetic */ FileReplacePolicy[] $values() {
        return new FileReplacePolicy[]{Ask, Replace, ReplaceAll, Skip, SkipAll};
    }

    static {
        FileReplacePolicy[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private FileReplacePolicy(String str, int i) {
    }

    @NotNull
    public static EnumEntries<FileReplacePolicy> getEntries() {
        return $ENTRIES;
    }

    public static FileReplacePolicy valueOf(String str) {
        return (FileReplacePolicy) Enum.valueOf(FileReplacePolicy.class, str);
    }

    public static FileReplacePolicy[] values() {
        return (FileReplacePolicy[]) $VALUES.clone();
    }

    public final boolean isReplacePolicy() {
        return this == Replace || this == ReplaceAll;
    }

    public final boolean isSkipPolicy() {
        return this == Skip || this == SkipAll;
    }
}
