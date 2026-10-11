package com.onyx.android.sdk.hwr.service.font;

import androidx.core.graphics.drawable.IconCompat;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\u0018\u00002\u00020\u0001B!\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0001R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0010\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/font/FontKey;", "", "", "hashCode", IconCompat.f5434l, "", "equalsTo", "", "a", Constants.STRING_SIG, "getFamily", "()Ljava/lang/String;", "setFamily", "(Ljava/lang/String;)V", "family", "b", "I", "getStyle", "()I", "setStyle", "(I)V", "style", "c", "getSize", "setSize", "size", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;II)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class FontKey {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String family;

    /* renamed from: b, reason: from kotlin metadata */
    public int style;

    /* renamed from: c, reason: from kotlin metadata */
    public int size;

    public FontKey(@NotNull String family, int i, int i2) {
        Intrinsics.checkNotNullParameter(family, "family");
        this.family = family;
        this.style = i;
        this.size = i2;
    }

    public final boolean equalsTo(@NotNull Object obj) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FontKey)) {
            return false;
        }
        FontKey fontKey = (FontKey) obj;
        return this.style == fontKey.style && this.size == fontKey.size && Intrinsics.areEqual(this.family, fontKey.family);
    }

    @NotNull
    public final String getFamily() {
        return this.family;
    }

    public final int getSize() {
        return this.size;
    }

    public final int getStyle() {
        return this.style;
    }

    public int hashCode() {
        return Objects.hash(this.family, Integer.valueOf(this.style), Integer.valueOf(this.size));
    }

    public final void setFamily(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.family = str;
    }

    public final void setSize(int i) {
        this.size = i;
    }

    public final void setStyle(int i) {
        this.style = i;
    }
}
