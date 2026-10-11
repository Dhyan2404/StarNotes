package com.onyx.android.sdk.textbox.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/data/EditorContent;", "", "", "a", Constants.STRING_SIG, "getRichText", "()Ljava/lang/String;", "setRichText", "(Ljava/lang/String;)V", "richText", "b", "getPlainText", "setPlainText", "plainText", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EditorContent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String richText = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String plainText = "";

    @NotNull
    public final String getPlainText() {
        return this.plainText;
    }

    @NotNull
    public final String getRichText() {
        return this.richText;
    }

    public final void setPlainText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.plainText = str;
    }

    public final void setRichText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.richText = str;
    }
}
