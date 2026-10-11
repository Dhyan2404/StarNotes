package com.onyx.android.sdk.hwr.data.event;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/event/HWRLangChangeEvent;", "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;", "", "e", Constants.STRING_SIG, "getLang", "()Ljava/lang/String;", "setLang", "(Ljava/lang/String;)V", "lang", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRLangChangeEvent extends HWRBaseEvent<HWRLangChangeEvent> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String lang;

    public HWRLangChangeEvent(@NotNull String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        this.lang = lang;
    }

    @NotNull
    public final String getLang() {
        return this.lang;
    }

    public final void setLang(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lang = str;
    }
}
