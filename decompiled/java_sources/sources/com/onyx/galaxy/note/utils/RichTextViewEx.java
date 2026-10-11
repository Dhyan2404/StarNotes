package com.onyx.galaxy.note.utils;

import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.onyx.galaxy.note.p048ui.view.RichTextView;
import com.onyx.galaxy.note.utils.RichTextViewEx;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/RichTextViewEx;", "", "()V", "setAdaptiveTextColor", "Lcom/onyx/galaxy/note/ui/view/RichTextView;", "colorResId", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nRichTextViewEx.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RichTextViewEx.kt\ncom/onyx/galaxy/note/utils/RichTextViewEx\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,18:1\n117#2:19\n125#2,17:20\n*S KotlinDebug\n*F\n+ 1 RichTextViewEx.kt\ncom/onyx/galaxy/note/utils/RichTextViewEx\n*L\n14#1:19\n15#1:20,17\n*E\n"})
/* loaded from: classes9.dex */
public final class RichTextViewEx {

    @NotNull
    public static final RichTextViewEx INSTANCE = new RichTextViewEx();

    /* renamed from: b */
    public static final void m52004b(int i, RichTextView this_setAdaptiveTextColor) {
        Intrinsics.checkNotNullParameter(this_setAdaptiveTextColor, "$this_setAdaptiveTextColor");
        int colorById = ThemeUtils.getColorById(i);
        OnyxWebView.executeJavascriptSentence$default(this_setAdaptiveTextColor, "window.setTextColor", "rgba(" + ((colorById >> 16) & 255) + ", " + ((colorById >> 8) & 255) + ", " + (colorById & 255) + ", " + (((int) ((((colorById >> 24) & 255) / 256.0f) * 10)) / 10.0f) + ')', (Function1) null, (Function1) null, 12, (Object) null);
    }

    @NotNull
    public final RichTextView setAdaptiveTextColor(@NotNull final RichTextView richTextView, final int i) {
        Intrinsics.checkNotNullParameter(richTextView, "<this>");
        return richTextView.runAfterLoaded(new Runnable() { // from class: com.sunia.HTREnginev2.trl
            @Override // java.lang.Runnable
            public final void run() {
                RichTextViewEx.m52004b(i, richTextView);
            }
        });
    }
}
