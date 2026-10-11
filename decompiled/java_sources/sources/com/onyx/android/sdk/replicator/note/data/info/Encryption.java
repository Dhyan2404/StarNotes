package com.onyx.android.sdk.replicator.note.data.info;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;", "", "encryptionType", "", "digest", "", "(ILjava/lang/String;)V", "getDigest", "()Ljava/lang/String;", "setDigest", "(Ljava/lang/String;)V", "getEncryptionType", "()I", "setEncryptionType", "(I)V", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class Encryption {

    @Nullable
    private String digest;
    private int encryptionType;

    /* JADX WARN: Multi-variable type inference failed */
    public Encryption() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ Encryption copy$default(Encryption encryption, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = encryption.encryptionType;
        }
        if ((i2 & 2) != 0) {
            str = encryption.digest;
        }
        return encryption.copy(i, str);
    }

    /* renamed from: component1, reason: from getter */
    public final int getEncryptionType() {
        return this.encryptionType;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getDigest() {
        return this.digest;
    }

    @NotNull
    public final Encryption copy(int encryptionType, @Nullable String digest) {
        return new Encryption(encryptionType, digest);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Encryption)) {
            return false;
        }
        Encryption encryption = (Encryption) other;
        return this.encryptionType == encryption.encryptionType && Intrinsics.areEqual(this.digest, encryption.digest);
    }

    @Nullable
    public final String getDigest() {
        return this.digest;
    }

    public final int getEncryptionType() {
        return this.encryptionType;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.encryptionType) * 31;
        String str = this.digest;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setDigest(@Nullable String str) {
        this.digest = str;
    }

    public final void setEncryptionType(int i) {
        this.encryptionType = i;
    }

    @NotNull
    public String toString() {
        return "Encryption(encryptionType=" + this.encryptionType + ", digest=" + this.digest + ')';
    }

    public Encryption(int i, @Nullable String str) {
        this.encryptionType = i;
        this.digest = str;
    }

    public /* synthetic */ Encryption(int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? null : str);
    }
}
