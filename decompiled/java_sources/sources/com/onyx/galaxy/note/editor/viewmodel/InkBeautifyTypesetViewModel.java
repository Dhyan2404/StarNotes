package com.onyx.galaxy.note.editor.viewmodel;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b+\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bI\u0010JJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000e\u001a\u00020\fJ\u0006\u0010\u000f\u001a\u00020\fJ\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u001e\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007J\u0006\u0010\u0017\u001a\u00020\u0007R(\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00190\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010'\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010+\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010\"\u001a\u0004\b)\u0010$\"\u0004\b*\u0010&R\"\u0010/\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010\"\u001a\u0004\b-\u0010$\"\u0004\b.\u0010&R\"\u0010\u0013\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\"\u001a\u0004\b1\u0010$\"\u0004\b2\u0010&R\"\u0010\u0014\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010\"\u001a\u0004\b4\u0010$\"\u0004\b5\u0010&R\"\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010\"\u001a\u0004\b7\u0010$\"\u0004\b8\u0010&R\"\u0010;\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010@\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010:\u001a\u0004\b@\u0010<\"\u0004\bA\u0010>R\"\u0010C\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010:\u001a\u0004\bC\u0010<\"\u0004\bD\u0010>R\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010G¨\u0006K"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", Constants.CLEAR_ATTRIBUTES, "", "isDefaultTypeset", "restoreDefaultTypeset", "", "value", "updateFontSize", "updateCharSpacing", "updateLineSpacing", "", "getFontSizeSuffix", "getFontCharSpacing", "getFontLineSpacing", "getParamExpand", "expand", "updateParamExpand", gon.f71257J, "charSpacing", "lineSpacing", "setDefaultTypeset", "getRealFontSize", "", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "i", "Ljava/util/List;", "getOriginTextShapes", "()Ljava/util/List;", "setOriginTextShapes", "(Ljava/util/List;)V", "originTextShapes", "j", "F", "getOriginFontSize", "()F", "setOriginFontSize", "(F)V", "originFontSize", C4921e.f26537n, "getOriginCharSpacing", "setOriginCharSpacing", "originCharSpacing", "l", "getOriginLineSpacing", "setOriginLineSpacing", "originLineSpacing", "m", "getFontSize", "setFontSize", GoogleApiAvailabilityLight.f29016b, "getCharSpacing", "setCharSpacing", C4921e.f26528e, "getLineSpacing", "setLineSpacing", "p", Constants.HASIDCALL_INDEX_SIG, "isFontSizeChanged", Constants.BOOLEAN_VALUE_SIG, "setFontSizeChanged", "(Z)V", "q", "isCharSpacingChanged", "setCharSpacingChanged", "r", "isLineSpacingChanged", "setLineSpacingChanged", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "s", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "paramExpandOption", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nInkBeautifyTypesetViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyTypesetViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"})
/* loaded from: classes9.dex */
public final class InkBeautifyTypesetViewModel extends BaseViewModel {

    /* renamed from: j, reason: from kotlin metadata */
    public float originFontSize;

    /* renamed from: k, reason: from kotlin metadata */
    public float originCharSpacing;

    /* renamed from: l, reason: from kotlin metadata */
    public float originLineSpacing;

    /* renamed from: m, reason: from kotlin metadata */
    public float fontSize;

    /* renamed from: n, reason: from kotlin metadata */
    public float charSpacing;

    /* renamed from: o, reason: from kotlin metadata */
    public float lineSpacing;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean isFontSizeChanged;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean isCharSpacingChanged;

    /* renamed from: r, reason: from kotlin metadata */
    public boolean isLineSpacingChanged;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<HWRTextShape> originTextShapes = new ArrayList();

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption paramExpandOption = NoteConfigManager.INSTANCE.getInkLastBeautifyParamExpandOption();

    public final void clear() {
        this.originTextShapes.clear();
        this.originFontSize = 0.0f;
        this.originCharSpacing = 0.0f;
        this.originLineSpacing = 0.0f;
        this.isFontSizeChanged = false;
        this.isCharSpacingChanged = false;
        this.isLineSpacingChanged = false;
        this.fontSize = 0.0f;
        this.charSpacing = 0.0f;
        this.lineSpacing = 0.0f;
    }

    public final float getCharSpacing() {
        return this.charSpacing;
    }

    @NotNull
    public final String getFontCharSpacing() {
        Boolean valueOf = Boolean.valueOf(this.isCharSpacingChanged);
        if (!(!valueOf.booleanValue())) {
            valueOf = null;
        }
        if (valueOf == null) {
            return "";
        }
        valueOf.booleanValue();
        return ResManager.INSTANCE.getStringSafely(C10651R.string.ink_title_origin_char_spacing);
    }

    @NotNull
    public final String getFontLineSpacing() {
        Boolean valueOf = Boolean.valueOf(this.isLineSpacingChanged);
        if (!(!valueOf.booleanValue())) {
            valueOf = null;
        }
        if (valueOf == null) {
            return "";
        }
        valueOf.booleanValue();
        return ResManager.INSTANCE.getStringSafely(C10651R.string.ink_title_origin_line_spacing);
    }

    public final float getFontSize() {
        return this.fontSize;
    }

    @NotNull
    public final String getFontSizeSuffix() {
        Boolean valueOf = Boolean.valueOf(this.isFontSizeChanged);
        if (!(!valueOf.booleanValue())) {
            valueOf = null;
        }
        if (valueOf == null) {
            return "";
        }
        valueOf.booleanValue();
        return ResManager.INSTANCE.getStringSafely(C10651R.string.ink_title_origin_font_size);
    }

    public final float getLineSpacing() {
        return this.lineSpacing;
    }

    public final float getOriginCharSpacing() {
        return this.originCharSpacing;
    }

    public final float getOriginFontSize() {
        return this.originFontSize;
    }

    public final float getOriginLineSpacing() {
        return this.originLineSpacing;
    }

    @NotNull
    public final List<HWRTextShape> getOriginTextShapes() {
        return this.originTextShapes;
    }

    public final boolean getParamExpand() {
        return this.paramExpandOption.get();
    }

    public final float getRealFontSize() {
        return DimenUtils.INSTANCE.pt2px(ResManager.INSTANCE.getAppContext(), this.fontSize);
    }

    /* renamed from: isCharSpacingChanged, reason: from getter */
    public final boolean getIsCharSpacingChanged() {
        return this.isCharSpacingChanged;
    }

    public final boolean isDefaultTypeset() {
        return (this.isFontSizeChanged || this.isCharSpacingChanged || this.isLineSpacingChanged) ? false : true;
    }

    /* renamed from: isFontSizeChanged, reason: from getter */
    public final boolean getIsFontSizeChanged() {
        return this.isFontSizeChanged;
    }

    /* renamed from: isLineSpacingChanged, reason: from getter */
    public final boolean getIsLineSpacingChanged() {
        return this.isLineSpacingChanged;
    }

    public final void restoreDefaultTypeset() {
        setDefaultTypeset(this.originFontSize, this.originCharSpacing, this.originLineSpacing);
    }

    public final void setCharSpacing(float f) {
        this.charSpacing = f;
    }

    public final void setCharSpacingChanged(boolean z) {
        this.isCharSpacingChanged = z;
    }

    public final void setDefaultTypeset(float fontSize, float charSpacing, float lineSpacing) {
        this.originFontSize = fontSize;
        this.originCharSpacing = charSpacing;
        this.originLineSpacing = lineSpacing;
        this.fontSize = fontSize;
        this.charSpacing = charSpacing;
        this.lineSpacing = lineSpacing;
        this.isFontSizeChanged = false;
        this.isCharSpacingChanged = false;
        this.isLineSpacingChanged = false;
    }

    public final void setFontSize(float f) {
        this.fontSize = f;
    }

    public final void setFontSizeChanged(boolean z) {
        this.isFontSizeChanged = z;
    }

    public final void setLineSpacing(float f) {
        this.lineSpacing = f;
    }

    public final void setLineSpacingChanged(boolean z) {
        this.isLineSpacingChanged = z;
    }

    public final void setOriginCharSpacing(float f) {
        this.originCharSpacing = f;
    }

    public final void setOriginFontSize(float f) {
        this.originFontSize = f;
    }

    public final void setOriginLineSpacing(float f) {
        this.originLineSpacing = f;
    }

    public final void setOriginTextShapes(@NotNull List<HWRTextShape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.originTextShapes = list;
    }

    public final void updateCharSpacing(float value) {
        this.charSpacing = value;
        this.isCharSpacingChanged = true;
    }

    public final void updateFontSize(float value) {
        this.fontSize = value;
        this.isFontSizeChanged = true;
    }

    public final void updateLineSpacing(float value) {
        this.lineSpacing = value;
        this.isLineSpacingChanged = true;
    }

    public final void updateParamExpand(boolean expand) {
        this.paramExpandOption.put(expand);
    }
}
