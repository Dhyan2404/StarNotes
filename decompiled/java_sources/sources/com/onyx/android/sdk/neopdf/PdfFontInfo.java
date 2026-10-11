package com.onyx.android.sdk.neopdf;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.mortbay.jetty.HttpHeaderValues;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB1\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J5\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\t\"\u0004\b\f\u0010\u000bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfFontInfo;", "Ljava/io/Serializable;", "name", "", "substFontName", "isEmbedded", "", "isChineseCIDFont", "(Ljava/lang/String;Ljava/lang/String;ZZ)V", Constants.BOOLEAN_VALUE_SIG, "setChineseCIDFont", "(Z)V", "setEmbedded", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getSubstFontName", "setSubstFontName", "component1", "component2", "component3", "component4", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "Companion", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class PdfFontInfo implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private boolean isChineseCIDFont;
    private boolean isEmbedded;

    @Nullable
    private String name;

    @Nullable
    private String substFontName;

    @Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J6\u0010\f\u001a\u00020\u000b2\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfFontInfo$Companion;", "", "", "Lcom/onyx/android/sdk/neopdf/PdfFontInfo;", "list", "", "nameArray", "substFontNameArray", "", "isEmbedded", "isChineseCIDFont", "", "addToList", HttpHeaderValues.BYTES, "Ljava/nio/charset/Charset;", "charset", "", "a", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final String m33541a(byte[] bytes, Charset charset) {
            try {
                try {
                    return new String(bytes, charset);
                } catch (Throwable unused) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("<");
                    for (byte b : bytes) {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String format = String.format("%2X", Arrays.copyOf(new Object[]{Integer.valueOf(b & 255)}, 1));
                        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                        sb.append(format);
                    }
                    sb.append(">");
                    String sb2 = sb.toString();
                    Intrinsics.checkNotNull(sb2);
                    return sb2;
                }
            } catch (Throwable unused2) {
                Charset UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                return new String(bytes, UTF_8);
            }
        }

        public final void addToList(@NotNull List<PdfFontInfo> list, @NotNull byte[] nameArray, @NotNull byte[] substFontNameArray, boolean isEmbedded, boolean isChineseCIDFont) {
            Intrinsics.checkNotNullParameter(list, "list");
            Intrinsics.checkNotNullParameter(nameArray, "nameArray");
            Intrinsics.checkNotNullParameter(substFontNameArray, "substFontNameArray");
            Charset UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
            String m33541a = m33541a(nameArray, UTF_8);
            Charset UTF_82 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_82, "UTF_8");
            list.add(new PdfFontInfo(m33541a, m33541a(substFontNameArray, UTF_82), isEmbedded, isChineseCIDFont));
        }

        public Companion() {
        }
    }

    public PdfFontInfo() {
        this(null, null, false, false, 15, null);
    }

    public static /* synthetic */ PdfFontInfo copy$default(PdfFontInfo pdfFontInfo, String str, String str2, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = pdfFontInfo.name;
        }
        if ((i & 2) != 0) {
            str2 = pdfFontInfo.substFontName;
        }
        if ((i & 4) != 0) {
            z = pdfFontInfo.isEmbedded;
        }
        if ((i & 8) != 0) {
            z2 = pdfFontInfo.isChineseCIDFont;
        }
        return pdfFontInfo.copy(str, str2, z, z2);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getSubstFontName() {
        return this.substFontName;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsEmbedded() {
        return this.isEmbedded;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsChineseCIDFont() {
        return this.isChineseCIDFont;
    }

    @NotNull
    public final PdfFontInfo copy(@Nullable String name, @Nullable String substFontName, boolean isEmbedded, boolean isChineseCIDFont) {
        return new PdfFontInfo(name, substFontName, isEmbedded, isChineseCIDFont);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PdfFontInfo)) {
            return false;
        }
        PdfFontInfo pdfFontInfo = (PdfFontInfo) other;
        return Intrinsics.areEqual(this.name, pdfFontInfo.name) && Intrinsics.areEqual(this.substFontName, pdfFontInfo.substFontName) && this.isEmbedded == pdfFontInfo.isEmbedded && this.isChineseCIDFont == pdfFontInfo.isChineseCIDFont;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getSubstFontName() {
        return this.substFontName;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.name;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.substFontName;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        boolean z = this.isEmbedded;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode2 + i) * 31;
        boolean z2 = this.isChineseCIDFont;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public final boolean isChineseCIDFont() {
        return this.isChineseCIDFont;
    }

    public final boolean isEmbedded() {
        return this.isEmbedded;
    }

    public final void setChineseCIDFont(boolean z) {
        this.isChineseCIDFont = z;
    }

    public final void setEmbedded(boolean z) {
        this.isEmbedded = z;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setSubstFontName(@Nullable String str) {
        this.substFontName = str;
    }

    @NotNull
    public String toString() {
        return "PdfFontInfo(name=" + this.name + ", substFontName=" + this.substFontName + ", isEmbedded=" + this.isEmbedded + ", isChineseCIDFont=" + this.isChineseCIDFont + ')';
    }

    public PdfFontInfo(@Nullable String str, @Nullable String str2, boolean z, boolean z2) {
        this.name = str;
        this.substFontName = str2;
        this.isEmbedded = z;
        this.isChineseCIDFont = z2;
    }

    public /* synthetic */ PdfFontInfo(String str, String str2, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2);
    }
}
