package com.onyx.android.sdk.neopdf;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\u0004\u0010\t¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;", "", "", "update", "setUpdateAp", "a", Constants.HASIDCALL_INDEX_SIG, "isUpdateAp", Constants.BOOLEAN_VALUE_SIG, "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PdfShapeUpdateOptions {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean isUpdateAp = true;

    /* renamed from: isUpdateAp, reason: from getter */
    public final boolean getIsUpdateAp() {
        return this.isUpdateAp;
    }

    /* renamed from: setUpdateAp, reason: collision with other method in class */
    public final void m72292setUpdateAp(boolean z) {
        this.isUpdateAp = z;
    }

    @NotNull
    public final PdfShapeUpdateOptions setUpdateAp(boolean update) {
        this.isUpdateAp = update;
        return this;
    }
}
