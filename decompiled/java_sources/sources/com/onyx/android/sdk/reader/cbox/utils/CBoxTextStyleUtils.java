package com.onyx.android.sdk.reader.cbox.utils;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.reader.api.ReaderTextStyle;
import com.onyx.engine.sdk.PageInfo;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b*\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b9\u0010:J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\u0016\u0010\f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\bJ\u0016\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u000fJ\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\bJ&\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0011R\u0014\u0010\u001e\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010 \u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0014\u0010\"\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b!\u0010\u001dR\u0014\u0010$\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b#\u0010\u001dR\u0014\u0010&\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010\u001dR\u0014\u0010(\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b'\u0010\u001dR\u0014\u0010*\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b)\u0010\u001dR\u0014\u0010,\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b+\u0010\u001dR\u0014\u0010.\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b-\u0010\u001dR\u0014\u00100\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b/\u0010\u001dR\u0014\u00102\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b1\u0010\u001dR\u0014\u00104\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b3\u0010\u001dR\u0014\u00106\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b5\u0010\u001dR\u0014\u00108\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b7\u0010\u001d¨\u0006;"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;", "", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "style", "Lcom/onyx/engine/sdk/ReaderTextStyle;", "engineStyle", "", "convertLetterSpacing", "Lcom/onyx/engine/sdk/PageInfo;", "pageInfo", "", "createLetterSpacing", "convertWordSpacing", "createWordSpacing", "convertLineSpacing", "", "lineSpacing", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;", "createLineHeight", "convertParagraphSpacing", "paragraphSpacing", "createParagraphSpacing", "width", "height", "convertPageMargin", "length", "marginPercentage", "convertToMargin", "a", "F", "MIN_LETTER_SPACING", "b", "MAX_LETTER_SPACING", "c", "MIN_WORD_SPACING", "d", "MAX_WORD_SPACING", "e", "MIN_LINE_SPACING", C6997f.f39671c, "MAX_LINE_SPACING", C6998g.f39679a, "LINE_HEIGHT_FACTOR", C6999h.f39688c, "LINE_HEIGHT_OFFSET", "i", "MIN_PARAGRAPH_SPACING", "j", "MAX_PARAGRAPH_SPACING", C4921e.f26537n, "PARAGRAPH_FACTOR", "l", "PARAGRAPH_OFFSET", "m", "MIN_MARGIN_PERCENT", GoogleApiAvailabilityLight.f29016b, "MAX_MARGIN_PERCENT", Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CBoxTextStyleUtils {

    @NotNull
    public static final CBoxTextStyleUtils INSTANCE = new CBoxTextStyleUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final float MIN_LETTER_SPACING = -0.1f;

    /* renamed from: b, reason: from kotlin metadata */
    public static final float MAX_LETTER_SPACING = 0.1f;

    /* renamed from: c, reason: from kotlin metadata */
    public static final float MIN_WORD_SPACING = -0.1f;

    /* renamed from: d, reason: from kotlin metadata */
    public static final float MAX_WORD_SPACING = 0.1f;

    /* renamed from: e, reason: from kotlin metadata */
    public static final float MIN_LINE_SPACING = 0.8f;

    /* renamed from: f, reason: from kotlin metadata */
    public static final float MAX_LINE_SPACING = 2.5f;

    /* renamed from: g, reason: from kotlin metadata */
    public static final float LINE_HEIGHT_FACTOR = 100.0f;

    /* renamed from: h, reason: from kotlin metadata */
    public static final float LINE_HEIGHT_OFFSET = 20.0f;

    /* renamed from: i, reason: from kotlin metadata */
    public static final float MIN_PARAGRAPH_SPACING = 0.0f;

    /* renamed from: j, reason: from kotlin metadata */
    public static final float MAX_PARAGRAPH_SPACING = 2.0f;

    /* renamed from: k, reason: from kotlin metadata */
    public static final float PARAGRAPH_FACTOR = 100.0f;

    /* renamed from: l, reason: from kotlin metadata */
    public static final float PARAGRAPH_OFFSET = 0.0f;

    /* renamed from: m, reason: from kotlin metadata */
    public static final float MIN_MARGIN_PERCENT = 0.0f;

    /* renamed from: n, reason: from kotlin metadata */
    public static final float MAX_MARGIN_PERCENT = 70.0f;

    public final void convertLetterSpacing(@NotNull ReaderTextStyle style, @NotNull com.onyx.engine.sdk.ReaderTextStyle engineStyle) {
        float coerceIn;
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(engineStyle, "engineStyle");
        if (style.isOriginCssLetterSpacing()) {
            engineStyle.setLetterSpacing(Float.MAX_VALUE);
        } else {
            coerceIn = RangesKt___RangesKt.coerceIn(style.getLetterSpacing(), -0.1f, 0.1f);
            engineStyle.setLetterSpacing(coerceIn);
        }
    }

    public final void convertLineSpacing(@NotNull ReaderTextStyle style, @NotNull com.onyx.engine.sdk.ReaderTextStyle engineStyle) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(engineStyle, "engineStyle");
        if (style.isOriginCssLineSpacing()) {
            engineStyle.setLineSpacing(Float.MAX_VALUE);
            return;
        }
        ReaderTextStyle.Percentage lineSpacing = style.getLineSpacing();
        Intrinsics.checkNotNull(lineSpacing);
        engineStyle.setLineSpacing(convertLineSpacing(lineSpacing.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String()));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void convertPageMargin(int r5, int r6, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.reader.api.ReaderTextStyle r7, @org.jetbrains.annotations.NotNull com.onyx.engine.sdk.ReaderTextStyle r8) {
        /*
            r4 = this;
            java.lang.String r0 = "style"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "engineStyle"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            com.onyx.android.sdk.reader.api.ReaderTextStyle$PageMargin r0 = r7.getPageMargin()
            boolean r1 = r7.isOriginCssLeftMargin()
            r2 = 2139095039(0x7f7fffff, float:3.4028235E38)
            if (r1 != 0) goto L34
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            com.onyx.android.sdk.reader.api.ReaderTextStyle$Percentage r1 = r0.getLeftMargin()
            if (r1 != 0) goto L21
            goto L34
        L21:
            com.onyx.engine.sdk.ReaderTextStyle$PageMargin r1 = r8.getPageMargin()
            com.onyx.android.sdk.reader.api.ReaderTextStyle$Percentage r3 = r0.getLeftMargin()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            float r3 = r4.convertToMargin(r5, r3)
            r1.setLeftMargin(r3)
            goto L3b
        L34:
            com.onyx.engine.sdk.ReaderTextStyle$PageMargin r1 = r8.getPageMargin()
            r1.setLeftMargin(r2)
        L3b:
            boolean r1 = r7.isOriginCssTopMargin()
            if (r1 != 0) goto L5e
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            com.onyx.android.sdk.reader.api.ReaderTextStyle$Percentage r1 = r0.getTopMargin()
            if (r1 != 0) goto L4b
            goto L5e
        L4b:
            com.onyx.engine.sdk.ReaderTextStyle$PageMargin r1 = r8.getPageMargin()
            com.onyx.android.sdk.reader.api.ReaderTextStyle$Percentage r3 = r0.getTopMargin()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            float r3 = r4.convertToMargin(r6, r3)
            r1.setTopMargin(r3)
            goto L65
        L5e:
            com.onyx.engine.sdk.ReaderTextStyle$PageMargin r1 = r8.getPageMargin()
            r1.setTopMargin(r2)
        L65:
            boolean r1 = r7.isOriginCssRightMargin()
            if (r1 != 0) goto L88
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            com.onyx.android.sdk.reader.api.ReaderTextStyle$Percentage r1 = r0.getRightMargin()
            if (r1 != 0) goto L75
            goto L88
        L75:
            com.onyx.engine.sdk.ReaderTextStyle$PageMargin r1 = r8.getPageMargin()
            com.onyx.android.sdk.reader.api.ReaderTextStyle$Percentage r3 = r0.getRightMargin()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            float r5 = r4.convertToMargin(r5, r3)
            r1.setRightMargin(r5)
            goto L8f
        L88:
            com.onyx.engine.sdk.ReaderTextStyle$PageMargin r5 = r8.getPageMargin()
            r5.setRightMargin(r2)
        L8f:
            boolean r5 = r7.isOriginCssBottomMargin()
            if (r5 != 0) goto Lb2
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            com.onyx.android.sdk.reader.api.ReaderTextStyle$Percentage r5 = r0.getBottomMargin()
            if (r5 != 0) goto L9f
            goto Lb2
        L9f:
            com.onyx.engine.sdk.ReaderTextStyle$PageMargin r5 = r8.getPageMargin()
            com.onyx.android.sdk.reader.api.ReaderTextStyle$Percentage r7 = r0.getBottomMargin()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
            float r4 = r4.convertToMargin(r6, r7)
            r5.setBottomMargin(r4)
            goto Lb9
        Lb2:
            com.onyx.engine.sdk.ReaderTextStyle$PageMargin r4 = r8.getPageMargin()
            r4.setBottomMargin(r2)
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.cbox.utils.CBoxTextStyleUtils.convertPageMargin(int, int, com.onyx.android.sdk.reader.api.ReaderTextStyle, com.onyx.engine.sdk.ReaderTextStyle):void");
    }

    public final void convertParagraphSpacing(@NotNull ReaderTextStyle style, @NotNull com.onyx.engine.sdk.ReaderTextStyle engineStyle) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(engineStyle, "engineStyle");
        if (style.isOriginCssParagraphSpacing()) {
            engineStyle.setParagraphSpacing(Float.MAX_VALUE);
            return;
        }
        ReaderTextStyle.Percentage paragraphSpacing = style.getParagraphSpacing();
        Intrinsics.checkNotNull(paragraphSpacing);
        engineStyle.setParagraphSpacing(convertParagraphSpacing(paragraphSpacing.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String()));
    }

    public final float convertToMargin(int length, @NotNull ReaderTextStyle.Percentage marginPercentage) {
        Intrinsics.checkNotNullParameter(marginPercentage, "marginPercentage");
        return ((((Number) MathUtils.INSTANCE.clamp(Float.valueOf(marginPercentage.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String()), Float.valueOf(0.0f), Float.valueOf(70.0f))).floatValue() / 100.0f) / 2.0f) * length;
    }

    public final void convertWordSpacing(@NotNull ReaderTextStyle style, @NotNull com.onyx.engine.sdk.ReaderTextStyle engineStyle) {
        float coerceIn;
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(engineStyle, "engineStyle");
        if (style.isOriginCssWordSpacing()) {
            engineStyle.setWordSpacing(Float.MAX_VALUE);
        } else {
            coerceIn = RangesKt___RangesKt.coerceIn(style.getWordSpacing(), -0.1f, 0.1f);
            engineStyle.setWordSpacing(coerceIn);
        }
    }

    public final float createLetterSpacing(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        MathUtils mathUtils = MathUtils.INSTANCE;
        Float valueOf = Float.valueOf(pageInfo.getLetterSpacing());
        ReaderTextStyle.Companion companion = ReaderTextStyle.INSTANCE;
        float floatValue = ((Number) mathUtils.clamp(valueOf, Float.valueOf(companion.getMIN_LETTER_SPACING()), Float.valueOf(companion.getMAX_LETTER_SPACING()))).floatValue();
        Debug.INSTANCE.m32035d(CBoxTextStyleUtils.class, "letterSpacing = " + floatValue, new Object[0]);
        return floatValue;
    }

    @NotNull
    public final ReaderTextStyle.Percentage createLineHeight(@NotNull PageInfo pageInfo) {
        int coerceIn;
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        int lineHeight = (int) ((pageInfo.getLineHeight() * 100.0f) + 20.0f);
        ReaderTextStyle.Companion companion = ReaderTextStyle.INSTANCE;
        coerceIn = RangesKt___RangesKt.coerceIn(lineHeight, companion.getSMALL_LINE_SPACING().getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String(), companion.getLARGE_LINE_SPACING().getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String());
        Debug.INSTANCE.m32035d(CBoxTextStyleUtils.class, "lineHeight = " + coerceIn, new Object[0]);
        return ReaderTextStyle.Percentage.INSTANCE.create(coerceIn);
    }

    @NotNull
    public final ReaderTextStyle.Percentage createParagraphSpacing(@NotNull PageInfo pageInfo) {
        int coerceIn;
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        int paragraphSpacing = (int) ((pageInfo.getParagraphSpacing() * 100.0f) + 0.0f);
        ReaderTextStyle.Companion companion = ReaderTextStyle.INSTANCE;
        coerceIn = RangesKt___RangesKt.coerceIn(paragraphSpacing, companion.getSMALL_PARAGRAPH_SPACING().getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String(), companion.getLARGE_PARAGRAPH_SPACING().getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String());
        Debug.INSTANCE.m32035d(CBoxTextStyleUtils.class, "paragraphSpacing = " + coerceIn, new Object[0]);
        return ReaderTextStyle.Percentage.INSTANCE.create(coerceIn);
    }

    public final float createWordSpacing(@NotNull com.onyx.engine.sdk.ReaderTextStyle engineStyle) {
        Intrinsics.checkNotNullParameter(engineStyle, "engineStyle");
        float wordSpacing = engineStyle.getWordSpacing();
        if (engineStyle.getWordSpacing() == Float.MAX_VALUE) {
            Debug.INSTANCE.m32035d(CBoxTextStyleUtils.class, "wordSpacing = 0", new Object[0]);
            wordSpacing = 0.0f;
        }
        MathUtils mathUtils = MathUtils.INSTANCE;
        Float valueOf = Float.valueOf(wordSpacing);
        ReaderTextStyle.Companion companion = ReaderTextStyle.INSTANCE;
        float floatValue = ((Number) mathUtils.clamp(valueOf, Float.valueOf(companion.getMIN_WORD_SPACING()), Float.valueOf(companion.getMAX_WORD_SPACING()))).floatValue();
        Debug.INSTANCE.m32035d(CBoxTextStyleUtils.class, "wordSpacing = " + floatValue, new Object[0]);
        return floatValue;
    }

    public final float convertLineSpacing(int lineSpacing) {
        float coerceIn;
        coerceIn = RangesKt___RangesKt.coerceIn((lineSpacing - 20.0f) / 100.0f, 0.8f, 2.5f);
        return coerceIn;
    }

    public final float convertParagraphSpacing(int paragraphSpacing) {
        float coerceIn;
        coerceIn = RangesKt___RangesKt.coerceIn((paragraphSpacing - 0.0f) / 100.0f, 0.0f, 2.0f);
        return coerceIn;
    }
}
