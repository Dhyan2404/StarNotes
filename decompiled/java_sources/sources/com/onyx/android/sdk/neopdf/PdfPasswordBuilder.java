package com.onyx.android.sdk.neopdf;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfPasswordBuilder;", "", "Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;", PrivilegedApp.f6529f, "", "a", "I", "getDrmType", "()I", "setDrmType", "(I)V", "drmType", "", "b", Constants.STRING_SIG, "getPassword", "()Ljava/lang/String;", "setPassword", "(Ljava/lang/String;)V", "password", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PdfPasswordBuilder {

    /* renamed from: a, reason: from kotlin metadata */
    public int drmType = 1;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String password = "";

    @NotNull
    public final PdfDrmOptions build() {
        return new PdfDrmOptions(this.drmType, this.password, 0, null, null, 28, null);
    }

    public final int getDrmType() {
        return this.drmType;
    }

    @NotNull
    public final String getPassword() {
        return this.password;
    }

    public final void setDrmType(int i) {
        this.drmType = i;
    }

    public final void setPassword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.password = str;
    }
}
