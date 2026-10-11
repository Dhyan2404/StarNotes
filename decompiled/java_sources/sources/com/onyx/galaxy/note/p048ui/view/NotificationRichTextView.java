package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.util.AttributeSet;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.galaxy.note.utils.RichTextViewEx;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\t\u0010\rB#\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\t\u0010\u0010J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/NotificationRichTextView;", "Lcom/onyx/galaxy/note/ui/view/RichTextView;", "", "m", "", "richText", "setRichText", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NotificationRichTextView extends RichTextView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NotificationRichTextView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: m */
    private final void m51443m() {
        fitContentHeight(true);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.RichTextView
    public void setRichText(@NotNull String richText) {
        Intrinsics.checkNotNullParameter(richText, "richText");
        super.setRichText(richText);
        RichTextViewEx.INSTANCE.setAdaptiveTextColor(this, C7996R.color.theme_text_color_01);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NotificationRichTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationRichTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        m51443m();
    }
}
