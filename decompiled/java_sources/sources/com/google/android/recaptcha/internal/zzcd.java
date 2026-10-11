package com.google.android.recaptcha.internal;

import android.webkit.WebView;
import java.util.Arrays;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes6.dex */
public final class zzcd {

    @NotNull
    private final WebView zza;

    @NotNull
    private final CoroutineScope zzb;

    public zzcd(@NotNull WebView webView, @NotNull CoroutineScope coroutineScope) {
        this.zza = webView;
        this.zzb = coroutineScope;
    }

    public final void zzb(@NotNull String str, @NotNull String... strArr) {
        BuildersKt.launch$default(this.zzb, null, null, new zzcc((String[]) Arrays.copyOf(strArr, strArr.length), this, str, null), 3, null);
    }
}
