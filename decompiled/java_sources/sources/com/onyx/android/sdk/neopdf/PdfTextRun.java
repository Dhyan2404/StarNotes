package com.onyx.android.sdk.neopdf;

import androidx.core.graphics.drawable.IconCompat;
import com.onyx.android.sdk.base.utils.EqualsUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 .2\u00020\u0001:\u0002./B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010+\u001a\u00020!2\b\u0010,\u001a\u0004\u0018\u00010-H\u0096\u0002R\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\"\"\u0004\b#\u0010$R\u001a\u0010%\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\"\"\u0004\b&\u0010$R\u001a\u0010'\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\"\"\u0004\b(\u0010$R\u001a\u0010)\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\"\"\u0004\b*\u0010$¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfTextRun;", "Ljava/io/Serializable;", "()V", "charList", "", "Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;", "getCharList", "()[Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;", "setCharList", "([Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;)V", "[Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;", "faceIndex", "", "getFaceIndex", "()I", "setFaceIndex", "(I)V", "fontColor", "getFontColor", "setFontColor", "fontPath", "", "getFontPath", "()Ljava/lang/String;", "setFontPath", "(Ljava/lang/String;)V", gon.f71257J, "", "getFontSize", "()F", "setFontSize", "(F)V", "isBold", "", Constants.BOOLEAN_VALUE_SIG, "setBold", "(Z)V", "isItalic", "setItalic", "isUnderline", "setUnderline", "isVertical", "setVertical", "equals", IconCompat.f5434l, "", "Companion", "RunChar", "sdk-pdfdata_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PdfTextRun implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int faceIndex;

    @Nullable
    private String fontPath;
    private boolean isBold;
    private boolean isItalic;
    private boolean isUnderline;
    private boolean isVertical;

    @NotNull
    private RunChar[] charList = new RunChar[0];
    private float fontSize = 10.0f;
    private int fontColor = -16777216;

    @Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\f\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JÓ\u0001\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112v\u0010\u0014\u001ar\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u000b0\b¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0007\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\b¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\b¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u00110\u0015¢\u0006\u0002\u0010\u001cJS\u0010\u0003\u001a\u00020\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011¢\u0006\u0002\u0010\u001eJF\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfTextRun$Companion;", "", "()V", BaiduYunConstant.CREATE, "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/neopdf/PdfTextRun;", "Lkotlin/collections/ArrayList;", "charList", "", "Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;", "fontPath", "", gon.f71257J, "", "fontColor", "", "isBold", "", "isItalic", "isUnderline", "findSubstFonts", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "fontList", "substFontList", "", "faceIndexList", "([Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;Ljava/lang/String;FIZZZLkotlin/jvm/functions/Function4;)Ljava/util/ArrayList;", "faceIndex", "([Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;Ljava/lang/String;IFIZZZ)Lcom/onyx/android/sdk/neopdf/PdfTextRun;", "ch", "", "left", "baseline", "sdk-pdfdata_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nPdfTextRun.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfTextRun.kt\ncom/onyx/android/sdk/neopdf/PdfTextRun$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,198:1\n37#2,2:199\n37#2,2:201\n*S KotlinDebug\n*F\n+ 1 PdfTextRun.kt\ncom/onyx/android/sdk/neopdf/PdfTextRun$Companion\n*L\n148#1:199,2\n164#1:201,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PdfTextRun create(char ch, float left, float baseline, float fontSize, int fontColor, boolean isBold, boolean isItalic, boolean isUnderline) {
            PdfTextRun pdfTextRun = new PdfTextRun();
            pdfTextRun.setCharList(new RunChar[]{new RunChar(ch, left, baseline)});
            pdfTextRun.setFontSize(fontSize);
            pdfTextRun.setFontColor(fontColor);
            pdfTextRun.setBold(isBold);
            pdfTextRun.setItalic(isItalic);
            pdfTextRun.setUnderline(isUnderline);
            return pdfTextRun;
        }

        public Companion() {
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00e5 A[LOOP:2: B:26:0x0093->B:35:0x00e5, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00e8 A[EDGE_INSN: B:36:0x00e8->B:44:0x00e8 BREAK  A[LOOP:2: B:26:0x0093->B:35:0x00e5], SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, java.lang.String[]] */
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.ArrayList<com.onyx.android.sdk.neopdf.PdfTextRun> create(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.neopdf.PdfTextRun.RunChar[] r20, @org.jetbrains.annotations.Nullable java.lang.String r21, float r22, int r23, boolean r24, boolean r25, boolean r26, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function4<? super java.lang.String[], ? super java.lang.String[], ? super java.lang.String[], ? super int[], java.lang.Boolean> r27) {
            /*
                Method dump skipped, instructions count: 233
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.neopdf.PdfTextRun.Companion.create(com.onyx.android.sdk.neopdf.PdfTextRun$RunChar[], java.lang.String, float, int, boolean, boolean, boolean, kotlin.jvm.functions.Function4):java.util.ArrayList");
        }

        @NotNull
        public final PdfTextRun create(@NotNull RunChar[] charList, @Nullable String fontPath, int faceIndex, float fontSize, int fontColor, boolean isBold, boolean isItalic, boolean isUnderline) {
            Intrinsics.checkNotNullParameter(charList, "charList");
            PdfTextRun pdfTextRun = new PdfTextRun();
            pdfTextRun.setCharList(charList);
            pdfTextRun.setFontPath(fontPath);
            pdfTextRun.setFaceIndex(faceIndex);
            pdfTextRun.setFontSize(fontSize);
            pdfTextRun.setFontColor(fontColor);
            pdfTextRun.setBold(isBold);
            pdfTextRun.setItalic(isItalic);
            pdfTextRun.setUnderline(isUnderline);
            return pdfTextRun;
        }
    }

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0011\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u001f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bB'\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bR\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;", "Ljava/io/Serializable;", "()V", "ch", "", "left", "", "baseline", "(CFF)V", "rotation", "", "(CFFI)V", "getBaseline", "()F", "setBaseline", "(F)V", "getCh", "()C", "setCh", "(C)V", "getLeft", "setLeft", "getRotation", "()I", "setRotation", "(I)V", "Companion", "sdk-pdfdata_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class RunChar implements Serializable {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);
        private float baseline;
        private char ch;
        private float left;
        private int rotation;

        @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;", "ch", "", "left", "", "baseline", "rotation", "", "sdk-pdfdata_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final RunChar create(char ch, float left, float baseline, int rotation) {
                return new RunChar(ch, left, baseline, rotation);
            }

            public Companion() {
            }
        }

        public RunChar() {
        }

        public final float getBaseline() {
            return this.baseline;
        }

        public final char getCh() {
            return this.ch;
        }

        public final float getLeft() {
            return this.left;
        }

        public final int getRotation() {
            return this.rotation;
        }

        public final void setBaseline(float f) {
            this.baseline = f;
        }

        public final void setCh(char c) {
            this.ch = c;
        }

        public final void setLeft(float f) {
            this.left = f;
        }

        public final void setRotation(int i) {
            this.rotation = i;
        }

        public RunChar(char c, float f, float f2) {
            this.ch = c;
            this.left = f;
            this.baseline = f2;
        }

        public RunChar(char c, float f, float f2, int i) {
            this.ch = c;
            this.left = f;
            this.baseline = f2;
            this.rotation = i;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(PdfTextRun.class, obj.getClass())) {
            return false;
        }
        PdfTextRun pdfTextRun = (PdfTextRun) obj;
        EqualsUtils equalsUtils = EqualsUtils.INSTANCE;
        return equalsUtils.equals((Object) this.charList, (Object) pdfTextRun.charList) && equalsUtils.equals(this.fontSize, pdfTextRun.fontSize) && equalsUtils.equals(this.fontColor, pdfTextRun.fontColor) && equalsUtils.equals(this.isBold, pdfTextRun.isBold) && equalsUtils.equals(this.isItalic, pdfTextRun.isItalic) && equalsUtils.equals(this.isUnderline, pdfTextRun.isUnderline) && equalsUtils.equals(this.isVertical, pdfTextRun.isVertical);
    }

    @NotNull
    public final RunChar[] getCharList() {
        return this.charList;
    }

    public final int getFaceIndex() {
        return this.faceIndex;
    }

    public final int getFontColor() {
        return this.fontColor;
    }

    @Nullable
    public final String getFontPath() {
        return this.fontPath;
    }

    public final float getFontSize() {
        return this.fontSize;
    }

    /* renamed from: isBold, reason: from getter */
    public final boolean getIsBold() {
        return this.isBold;
    }

    /* renamed from: isItalic, reason: from getter */
    public final boolean getIsItalic() {
        return this.isItalic;
    }

    /* renamed from: isUnderline, reason: from getter */
    public final boolean getIsUnderline() {
        return this.isUnderline;
    }

    /* renamed from: isVertical, reason: from getter */
    public final boolean getIsVertical() {
        return this.isVertical;
    }

    public final void setBold(boolean z) {
        this.isBold = z;
    }

    public final void setCharList(@NotNull RunChar[] runCharArr) {
        Intrinsics.checkNotNullParameter(runCharArr, "<set-?>");
        this.charList = runCharArr;
    }

    public final void setFaceIndex(int i) {
        this.faceIndex = i;
    }

    public final void setFontColor(int i) {
        this.fontColor = i;
    }

    public final void setFontPath(@Nullable String str) {
        this.fontPath = str;
    }

    public final void setFontSize(float f) {
        this.fontSize = f;
    }

    public final void setItalic(boolean z) {
        this.isItalic = z;
    }

    public final void setUnderline(boolean z) {
        this.isUnderline = z;
    }

    public final void setVertical(boolean z) {
        this.isVertical = z;
    }
}
