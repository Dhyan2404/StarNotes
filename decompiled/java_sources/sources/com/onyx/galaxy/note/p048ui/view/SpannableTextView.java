package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0002R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u000f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\fR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/SpannableTextView;", "Lcom/onyx/android/sdk/theme/widgets/TintTextView;", "", "text", "", "setSpannableText", "Landroid/widget/TextView$BufferType;", "type", "setText", "a", "", C6999h.f39688c, Constants.STRING_SIG, "prefixText", "i", "suffixText", "", "j", "I", "prefixTextColor", C4921e.f26537n, "suffixTextColor", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SpannableTextView extends TintTextView {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String prefixText;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String suffixText;

    /* renamed from: j, reason: from kotlin metadata */
    public int prefixTextColor;

    /* renamed from: k, reason: from kotlin metadata */
    public int suffixTextColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpannableTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.prefixText = "";
        this.suffixText = "";
        int i = C7106R.color.red_warning;
        this.prefixTextColor = i;
        this.suffixTextColor = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C10651R.styleable.NecessaryTextView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        String string = obtainStyledAttributes.getString(C10651R.styleable.NecessaryTextView_prefixText);
        this.prefixText = string == null ? "" : string;
        String string2 = obtainStyledAttributes.getString(C10651R.styleable.NecessaryTextView_suffixText);
        this.suffixText = string2 != null ? string2 : "";
        this.prefixTextColor = obtainStyledAttributes.getResourceId(C10651R.styleable.NecessaryTextView_prefixTextColor, C7106R.color.red_warning);
        this.suffixTextColor = obtainStyledAttributes.getResourceId(C10651R.styleable.NecessaryTextView_suffixTextColor, C7106R.color.red_warning);
        obtainStyledAttributes.recycle();
        CharSequence text = getText();
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        setSpannableText(text);
    }

    /* renamed from: a */
    public final void m51474a() {
        if (this.prefixTextColor == 0) {
            this.prefixTextColor = C7106R.color.red_warning;
        }
        if (this.suffixTextColor == 0) {
            this.suffixTextColor = C7106R.color.red_warning;
        }
    }

    public final void setSpannableText(@NotNull CharSequence text) {
        Intrinsics.checkNotNullParameter(text, "text");
        m51474a();
        super.setText(StringKt.buildSpanText(text, this.prefixText, this.suffixText, ThemeUtils.getColorById(this.prefixTextColor), ThemeUtils.getColorById(this.suffixTextColor)), (TextView.BufferType) null);
    }

    @Override // android.widget.TextView
    public void setText(@Nullable CharSequence text, @Nullable TextView.BufferType type) {
        if (text == null) {
            text = "";
        }
        setSpannableText(text);
    }
}
