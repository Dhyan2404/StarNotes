package com.onyx.galaxy.note.common.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/data/ChannelsFeatureConfig;", "Ljava/io/Serializable;", "()V", "stylusType", "", "getStylusType", "()Ljava/lang/String;", "setStylusType", "(Ljava/lang/String;)V", "supportPaymentTheme", "", "getSupportPaymentTheme", Constants.BOOLEAN_VALUE_SIG, "setSupportPaymentTheme", "(Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ChannelsFeatureConfig implements Serializable {

    @NotNull
    private String stylusType = "";
    private boolean supportPaymentTheme;

    @NotNull
    public final String getStylusType() {
        return this.stylusType;
    }

    public final boolean getSupportPaymentTheme() {
        return this.supportPaymentTheme;
    }

    public final void setStylusType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.stylusType = str;
    }

    public final void setSupportPaymentTheme(boolean z) {
        this.supportPaymentTheme = z;
    }
}
