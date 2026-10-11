package com.onyx.galaxy.note.common.keyboard;

import android.content.Context;
import android.view.Window;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001b\u0010\u000e\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u0007\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;", "", "", "backToPreviousSoftInput", "enterAdjustPanSoftInput", "enterAdjustResizeSoftInput", "Landroid/content/Context;", "a", "Landroid/content/Context;", "activityContext", "", "b", "Lkotlin/Lazy;", "()I", "windowInputMode", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class WindowSoftInputManager {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy windowInputMode;

    public WindowSoftInputManager(@NotNull Context activityContext) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.activityContext = activityContext;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.galaxy.note.common.keyboard.WindowSoftInputManager$windowInputMode$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                Context context;
                context = WindowSoftInputManager.this.activityContext;
                return Integer.valueOf(ContextKt.toActivitySafety(context).getWindow().getAttributes().softInputMode);
            }
        });
        this.windowInputMode = lazy;
    }

    /* renamed from: a */
    public final int m45040a() {
        return ((Number) this.windowInputMode.getValue()).intValue();
    }

    public final void backToPreviousSoftInput() {
        Window window = ContextKt.toActivitySafety(this.activityContext).getWindow();
        if (m45040a() == window.getAttributes().softInputMode) {
            return;
        }
        window.setSoftInputMode(m45040a());
    }

    public final void enterAdjustPanSoftInput() {
        if (m45040a() != 48) {
            return;
        }
        ContextKt.toActivitySafety(this.activityContext).getWindow().setSoftInputMode(32);
    }

    public final void enterAdjustResizeSoftInput() {
        if (m45040a() != 48) {
            return;
        }
        ContextKt.toActivitySafety(this.activityContext).getWindow().setSoftInputMode(16);
    }
}
