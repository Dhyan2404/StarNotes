package com.onyx.android.sdk.data.glide;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.signature.ObjectKey;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.security.MessageDigest;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/data/glide/FileKey;", "Lcom/bumptech/glide/load/Key;", "file", "Ljava/io/File;", "(Ljava/io/File;)V", "objectKey", "Lcom/bumptech/glide/signature/ObjectKey;", "getObjectKey", "()Lcom/bumptech/glide/signature/ObjectKey;", "objectKey$delegate", "Lkotlin/Lazy;", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "", "updateDiskCacheKey", "", "messageDigest", "Ljava/security/MessageDigest;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FileKey implements Key {

    @NotNull
    private final File file;

    /* renamed from: objectKey$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy objectKey;

    public FileKey(@NotNull File file) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(file, "file");
        this.file = file;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ObjectKey>() { // from class: com.onyx.android.sdk.data.glide.FileKey$objectKey$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ObjectKey invoke() {
                File file2;
                FileUtils fileUtils = FileUtils.INSTANCE;
                file2 = FileKey.this.file;
                return new ObjectKey(fileUtils.getCacheKey(file2, new String[0]));
            }
        });
        this.objectKey = lazy;
    }

    private final ObjectKey getObjectKey() {
        return (ObjectKey) this.objectKey.getValue();
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(@Nullable Object other) {
        FileKey fileKey = other instanceof FileKey ? (FileKey) other : null;
        if (fileKey == null) {
            return false;
        }
        return Intrinsics.areEqual(getObjectKey(), fileKey.getObjectKey());
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return getObjectKey().hashCode();
    }

    @NotNull
    public String toString() {
        return "FileKey{object=" + getObjectKey() + "`}";
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NotNull MessageDigest messageDigest) {
        Intrinsics.checkNotNullParameter(messageDigest, "messageDigest");
        getObjectKey().updateDiskCacheKey(messageDigest);
    }
}
