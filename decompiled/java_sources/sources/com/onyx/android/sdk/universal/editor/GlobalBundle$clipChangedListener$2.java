package com.onyx.android.sdk.universal.editor;

import android.content.ClipboardManager;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class GlobalBundle$clipChangedListener$2 extends Lambda implements Function0<ClipboardManager.OnPrimaryClipChangedListener> {
    public static final GlobalBundle$clipChangedListener$2 INSTANCE = new GlobalBundle$clipChangedListener$2();

    public GlobalBundle$clipChangedListener$2() {
        super(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0() {
        GlobalBundle.INSTANCE.updateClipData();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final ClipboardManager.OnPrimaryClipChangedListener invoke() {
        return new ClipboardManager.OnPrimaryClipChangedListener() { // from class: com.onyx.android.sdk.universal.editor.a
            @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
            public final void onPrimaryClipChanged() {
                GlobalBundle$clipChangedListener$2.invoke$lambda$0();
            }
        };
    }
}
