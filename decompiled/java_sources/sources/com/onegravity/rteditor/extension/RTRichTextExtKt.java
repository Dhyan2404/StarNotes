package com.onegravity.rteditor.extension;

import android.text.Editable;
import android.text.Layout;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.effects.Effects;
import com.onegravity.rteditor.effects.SpanCollectMode;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Selection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"getVersionStr", "", "handleDeleteKey", "", "Lcom/onegravity/rteditor/RTEditText;", "keyCode", "", "sdk-rteditor_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class RTRichTextExtKt {
    @NotNull
    public static final String getVersionStr() {
        return "<version data-client=\"android\" data-version=\"2\"></version>";
    }

    public static final boolean handleDeleteKey(@NotNull RTEditText rTEditText, int i) {
        Editable text;
        Intrinsics.checkNotNullParameter(rTEditText, "<this>");
        if (i != 67 || (text = rTEditText.getText()) == null) {
            return false;
        }
        int selectionStart = rTEditText.getSelectionStart();
        int i2 = selectionStart - 1;
        if (selectionStart == rTEditText.getSelectionEnd() && i2 > 0) {
            int i3 = i2 - 1;
            if (text.charAt(i3) == '\n' && text.charAt(i2) == 8203) {
                Iterator<RTSpan<Layout.Alignment>> it2 = Effects.ALIGNMENT.getSpans(text, new Selection(i2, selectionStart), SpanCollectMode.SPAN_FLAGS).iterator();
                while (it2.hasNext()) {
                    text.removeSpan(it2.next());
                }
                text.delete(i3, selectionStart);
                return true;
            }
        }
        return false;
    }
}
