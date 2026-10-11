package com.onyx.android.sdk.textbox.utils;

import android.content.Context;
import android.os.Build;
import android.text.Editable;
import android.text.Layout;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.effects.AbsoluteSizeEffect;
import com.onegravity.rteditor.effects.AlignmentEffect;
import com.onegravity.rteditor.effects.BoldEffect;
import com.onegravity.rteditor.effects.Effect;
import com.onegravity.rteditor.effects.Effects;
import com.onegravity.rteditor.effects.ForegroundColorEffect;
import com.onegravity.rteditor.effects.ItalicEffect;
import com.onegravity.rteditor.effects.SpanCollectMode;
import com.onegravity.rteditor.effects.TypefaceEffect;
import com.onegravity.rteditor.effects.UnderlineEffect;
import com.onegravity.rteditor.fonts.RTTypeface;
import com.onegravity.rteditor.spans.AbsoluteSizeSpan;
import com.onegravity.rteditor.spans.ForegroundColorSpan;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.spans.TypefaceSpan;
import com.onegravity.rteditor.utils.Helper;
import com.onegravity.rteditor.utils.Selection;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.textbox.data.EditorStyleInfo;
import com.onyx.android.sdk.textbox.data.TextAlignType;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001aE\u0010\u0004\u001a\u00020\u0005\"\b\b\u0000\u0010\u0006*\u00020\u0007\"\u000e\b\u0001\u0010\b*\b\u0012\u0004\u0012\u0002H\u00060\t*\u00020\u00012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\b0\u000b2\u0006\u0010\f\u001a\u0002H\u0006¢\u0006\u0002\u0010\r\u001a\n\u0010\u000e\u001a\u00020\u000f*\u00020\u0001\u001a\u001a\u0010\u0010\u001a\u00020\u000f*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012\u001a\n\u0010\u0014\u001a\u00020\u0012*\u00020\u0001\u001a\u001a\u0010\u0015\u001a\u00020\u0016*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012\u001a\n\u0010\u0017\u001a\u00020\u000f*\u00020\u0001\u001a>\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0019\"\b\b\u0000\u0010\u0006*\u00020\u0007\"\u000e\b\u0001\u0010\b*\b\u0012\u0004\u0012\u0002H\u00060\t*\u00020\u00012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\b0\u000b¨\u0006\u001a"}, m61528d2 = {"initEditor", "Lcom/onegravity/rteditor/RTEditText;", "context", "Landroid/content/Context;", "applyEffectForAll", "", "V", "", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Lcom/onegravity/rteditor/spans/RTSpan;", "effect", "Lcom/onegravity/rteditor/effects/Effect;", "value", "(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V", "getAbsoluteSize", "", "getAlignmentEffectValue", gon.f71290o0, "", "end", "getFontColor", "getStyleInfo", "Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;", "getTypefaceName", "valuesInSelection", "", "sdk-textbox_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class RTEditorExtKt {
    public static final <V, C extends RTSpan<V>> void applyEffectForAll(@NotNull RTEditText rTEditText, @NotNull Effect<V, C> effect, @NotNull V value) {
        Intrinsics.checkNotNullParameter(rTEditText, "<this>");
        Intrinsics.checkNotNullParameter(effect, "effect");
        Intrinsics.checkNotNullParameter(value, "value");
        int max = Math.max(rTEditText.getSelectionStart(), 0);
        Editable text = rTEditText.getText();
        rTEditText.setSelection(0, text != null ? text.length() : 0);
        rTEditText.applyEffect(effect, value);
        rTEditText.setSelection(max);
    }

    @NotNull
    public static final String getAbsoluteSize(@NotNull RTEditText rTEditText) {
        Intrinsics.checkNotNullParameter(rTEditText, "<this>");
        Effect<Integer, AbsoluteSizeSpan> FONTSIZE = Effects.FONTSIZE;
        Intrinsics.checkNotNullExpressionValue(FONTSIZE, "FONTSIZE");
        List valuesInSelection = valuesInSelection(rTEditText, FONTSIZE);
        if (CollectionKt.isNullOrEmpty(valuesInSelection)) {
            return rTEditText.getTextSize() + ExtUnits.UNIT_PX;
        }
        return valuesInSelection.get(0) + ExtUnits.UNIT_PX;
    }

    @NotNull
    public static final String getAlignmentEffectValue(@NotNull RTEditText rTEditText, int i, int i2) {
        Intrinsics.checkNotNullParameter(rTEditText, "<this>");
        List<Layout.Alignment> valuesInSelection = Effects.ALIGNMENT.valuesInSelection(rTEditText);
        if (valuesInSelection.size() <= 0) {
            return TextAlignType.INSTANCE.fromAlignment(Helper.isRTL(rTEditText.getText(), i, i2) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL).getValue();
        }
        TextAlignType.Companion companion = TextAlignType.INSTANCE;
        Layout.Alignment alignment = valuesInSelection.get(0);
        Intrinsics.checkNotNullExpressionValue(alignment, "get(...)");
        return companion.fromAlignment(alignment).getValue();
    }

    public static final int getFontColor(@NotNull RTEditText rTEditText) {
        Intrinsics.checkNotNullParameter(rTEditText, "<this>");
        Effect<Integer, ForegroundColorSpan> FONTCOLOR = Effects.FONTCOLOR;
        Intrinsics.checkNotNullExpressionValue(FONTCOLOR, "FONTCOLOR");
        List valuesInSelection = valuesInSelection(rTEditText, FONTCOLOR);
        if (CollectionKt.isNullOrEmpty(valuesInSelection)) {
            return rTEditText.getCurrentTextColor();
        }
        Object obj = valuesInSelection.get(0);
        Intrinsics.checkNotNull(obj);
        return ((Number) obj).intValue();
    }

    @NotNull
    public static final EditorStyleInfo getStyleInfo(@NotNull RTEditText rTEditText, int i, int i2) {
        Intrinsics.checkNotNullParameter(rTEditText, "<this>");
        EditorStyleInfo editorStyleInfo = new EditorStyleInfo();
        editorStyleInfo.setFontSize(rTEditText.getTextSize() + ExtUnits.UNIT_PX);
        editorStyleInfo.setTextColor(rTEditText.getCurrentTextColor());
        editorStyleInfo.setLineHeight(String.valueOf(rTEditText.getLineSpacingMultiplier()));
        editorStyleInfo.setHasSelection(rTEditText.getSelectionStart() != rTEditText.getSelectionEnd());
        Iterator<Effect> it2 = Effects.ALL_EFFECTS.iterator();
        while (it2.hasNext()) {
            Effect next = it2.next();
            if (next.existsInSelection(rTEditText)) {
                if (next instanceof BoldEffect) {
                    editorStyleInfo.setBold(true);
                } else if (next instanceof ItalicEffect) {
                    editorStyleInfo.setItalic(true);
                } else if (next instanceof UnderlineEffect) {
                    editorStyleInfo.setUnderline(true);
                } else if (next instanceof AlignmentEffect) {
                    editorStyleInfo.setTextAlign(getAlignmentEffectValue(rTEditText, i, i2));
                } else if (next instanceof TypefaceEffect) {
                    editorStyleInfo.setFontFamily(getTypefaceName(rTEditText));
                } else if (next instanceof AbsoluteSizeEffect) {
                    editorStyleInfo.setFontSize(getAbsoluteSize(rTEditText));
                } else if (next instanceof ForegroundColorEffect) {
                    editorStyleInfo.setTextColor(getFontColor(rTEditText));
                }
            }
        }
        return editorStyleInfo;
    }

    @NotNull
    public static final String getTypefaceName(@NotNull RTEditText rTEditText) {
        Intrinsics.checkNotNullParameter(rTEditText, "<this>");
        Effect<RTTypeface, TypefaceSpan> TYPEFACE = Effects.TYPEFACE;
        Intrinsics.checkNotNullExpressionValue(TYPEFACE, "TYPEFACE");
        List valuesInSelection = valuesInSelection(rTEditText, TYPEFACE);
        if (valuesInSelection.size() != 1) {
            return "";
        }
        String name = ((RTTypeface) valuesInSelection.get(0)).getName();
        Intrinsics.checkNotNull(name);
        return name;
    }

    @NotNull
    public static final RTEditText initEditor(@NotNull Context context) {
        float handwritingBoundsOffsetBottom;
        Intrinsics.checkNotNullParameter(context, "context");
        RTEditText rTEditText = new RTEditText(context);
        rTEditText.setBackgroundColor(0);
        rTEditText.setPadding(0, 0, 0, 0);
        ViewKt.setMargins(rTEditText, 0);
        rTEditText.setGravity(48);
        rTEditText.setVerticalScrollBarEnabled(false);
        if (Build.VERSION.SDK_INT > 33) {
            handwritingBoundsOffsetBottom = rTEditText.getHandwritingBoundsOffsetBottom();
            rTEditText.setHandwritingBoundsOffsets(0.0f, 0.0f, 0.0f, handwritingBoundsOffsetBottom);
        }
        return rTEditText;
    }

    @NotNull
    public static final <V, C extends RTSpan<V>> List<V> valuesInSelection(@NotNull RTEditText rTEditText, @NotNull Effect<V, C> effect) {
        Intrinsics.checkNotNullParameter(rTEditText, "<this>");
        Intrinsics.checkNotNullParameter(effect, "effect");
        ArrayList arrayList = new ArrayList();
        Selection selection = new Selection(rTEditText);
        if (!selection.isEmpty()) {
            selection = new Selection(selection.start() + 1, selection.start() + 1);
        }
        Iterator<RTSpan<V>> it2 = effect.getSpans(rTEditText.getText(), selection, SpanCollectMode.SPAN_FLAGS).iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getValue());
        }
        return arrayList;
    }
}
