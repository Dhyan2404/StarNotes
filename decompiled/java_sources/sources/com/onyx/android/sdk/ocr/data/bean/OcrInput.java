package com.onyx.android.sdk.ocr.data.bean;

import android.net.Uri;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0017\u0010\u0018R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR*\u0010\u0016\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "", "", "a", Constants.STRING_SIG, "getEngine", "()Ljava/lang/String;", "setEngine", "(Ljava/lang/String;)V", "engine", "b", "getLang", "setLang", "lang", "Landroid/net/Uri;", "kotlin.jvm.PlatformType", "c", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "setUri", "(Landroid/net/Uri;)V", "uri", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OcrInput {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: d */
    @NotNull
    public static final OcrInput f44017d = new OcrInput();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String engine = OcrValues.ENGINE_GOOGLE;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String lang = "zh";

    /* renamed from: c, reason: from kotlin metadata */
    public Uri uri = Uri.EMPTY;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/data/bean/OcrInput$Companion;", "", "()V", "Empty", "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "getEmpty", "()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final OcrInput getEmpty() {
            return OcrInput.f44017d;
        }

        public Companion() {
        }
    }

    @NotNull
    public final String getEngine() {
        return this.engine;
    }

    @NotNull
    public final String getLang() {
        return this.lang;
    }

    public final Uri getUri() {
        return this.uri;
    }

    public final void setEngine(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.engine = str;
    }

    public final void setLang(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lang = str;
    }

    public final void setUri(Uri uri) {
        this.uri = uri;
    }
}
