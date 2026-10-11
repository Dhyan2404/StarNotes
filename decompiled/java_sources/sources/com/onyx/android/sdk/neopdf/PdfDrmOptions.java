package com.onyx.android.sdk.neopdf;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB=\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003JA\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;", "Ljava/io/Serializable;", "drmType", "", "key", "", "keyLen", "uuid", "rand", "(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getDrmType", "()I", "getKey", "()Ljava/lang/String;", "getKeyLen", "getRand", "getUuid", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "toString", "Companion", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class PdfDrmOptions implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int DRM_JEB = 3;
    public static final int DRM_NONE = 0;
    public static final int DRM_ONYX = 2;
    public static final int DRM_PASSWORD = 1;
    private final int drmType;

    @Nullable
    private final String key;
    private final int keyLen;

    @Nullable
    private final String rand;

    @Nullable
    private final String uuid;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfDrmOptions$Companion;", "", "()V", "DRM_JEB", "", "DRM_NONE", "DRM_ONYX", "DRM_PASSWORD", "jebDrmBuilder", "Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;", "onyxDrmBuilder", "Lcom/onyx/android/sdk/neopdf/OnyxDrmBuilder;", "passwordBuilder", "Lcom/onyx/android/sdk/neopdf/PdfPasswordBuilder;", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final JebDrmBuilder jebDrmBuilder() {
            return new JebDrmBuilder();
        }

        @NotNull
        public final OnyxDrmBuilder onyxDrmBuilder() {
            return new OnyxDrmBuilder();
        }

        @NotNull
        public final PdfPasswordBuilder passwordBuilder() {
            return new PdfPasswordBuilder();
        }

        public Companion() {
        }
    }

    public PdfDrmOptions() {
        this(0, null, 0, null, null, 31, null);
    }

    public static /* synthetic */ PdfDrmOptions copy$default(PdfDrmOptions pdfDrmOptions, int i, String str, int i2, String str2, String str3, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = pdfDrmOptions.drmType;
        }
        if ((i3 & 2) != 0) {
            str = pdfDrmOptions.key;
        }
        String str4 = str;
        if ((i3 & 4) != 0) {
            i2 = pdfDrmOptions.keyLen;
        }
        int i4 = i2;
        if ((i3 & 8) != 0) {
            str2 = pdfDrmOptions.uuid;
        }
        String str5 = str2;
        if ((i3 & 16) != 0) {
            str3 = pdfDrmOptions.rand;
        }
        return pdfDrmOptions.copy(i, str4, i4, str5, str3);
    }

    /* renamed from: component1, reason: from getter */
    public final int getDrmType() {
        return this.drmType;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    /* renamed from: component3, reason: from getter */
    public final int getKeyLen() {
        return this.keyLen;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final String getUuid() {
        return this.uuid;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final String getRand() {
        return this.rand;
    }

    @NotNull
    public final PdfDrmOptions copy(int drmType, @Nullable String key, int keyLen, @Nullable String uuid, @Nullable String rand) {
        return new PdfDrmOptions(drmType, key, keyLen, uuid, rand);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PdfDrmOptions)) {
            return false;
        }
        PdfDrmOptions pdfDrmOptions = (PdfDrmOptions) other;
        return this.drmType == pdfDrmOptions.drmType && Intrinsics.areEqual(this.key, pdfDrmOptions.key) && this.keyLen == pdfDrmOptions.keyLen && Intrinsics.areEqual(this.uuid, pdfDrmOptions.uuid) && Intrinsics.areEqual(this.rand, pdfDrmOptions.rand);
    }

    public final int getDrmType() {
        return this.drmType;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    public final int getKeyLen() {
        return this.keyLen;
    }

    @Nullable
    public final String getRand() {
        return this.rand;
    }

    @Nullable
    public final String getUuid() {
        return this.uuid;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.drmType) * 31;
        String str = this.key;
        int hashCode2 = (((hashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.keyLen)) * 31;
        String str2 = this.uuid;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.rand;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "PdfDrmOptions(drmType=" + this.drmType + ", key=" + this.key + ", keyLen=" + this.keyLen + ", uuid=" + this.uuid + ", rand=" + this.rand + ')';
    }

    public PdfDrmOptions(int i, @Nullable String str, int i2, @Nullable String str2, @Nullable String str3) {
        this.drmType = i;
        this.key = str;
        this.keyLen = i2;
        this.uuid = str2;
        this.rand = str3;
    }

    public /* synthetic */ PdfDrmOptions(int i, String str, int i2, String str2, String str3, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? null : str, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? null : str2, (i3 & 16) != 0 ? null : str3);
    }
}
