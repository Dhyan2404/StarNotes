package com.onyx.android.sdk.p039ui;

import android.text.InputFilter;
import android.text.Spanned;
import com.sunia.HTREnginev2.gon;
import com.vdurmont.emoji.EmojiManager;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J>\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0016¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/ExclusiveEmojiFilter;", "Landroid/text/InputFilter;", "()V", "filter", "", "source", gon.f71290o0, "", "end", "dest", "Landroid/text/Spanned;", "dstart", "dend", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ExclusiveEmojiFilter implements InputFilter {
    @Override // android.text.InputFilter
    @Nullable
    public CharSequence filter(@Nullable CharSequence source, int start, int end, @Nullable Spanned dest, int dstart, int dend) {
        if (EmojiManager.containsEmoji(source != null ? source.toString() : null)) {
            return "";
        }
        return null;
    }
}
