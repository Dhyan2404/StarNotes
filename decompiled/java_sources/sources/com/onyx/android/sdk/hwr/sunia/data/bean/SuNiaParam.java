package com.onyx.android.sdk.hwr.sunia.data.bean;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b4\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0002\u0012\b\b\u0002\u0010 \u001a\u00020\u0002\u0012\b\b\u0002\u0010$\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b@\u0010AJN\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002R\"\u0010\u0015\u001a\u00020\u000e8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u001c\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010 \u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0017\u001a\u0004\b\u001e\u0010\u0019\"\u0004\b\u001f\u0010\u001bR\"\u0010$\u001a\u00020\u000e8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0010\u001a\u0004\b\"\u0010\u0012\"\u0004\b#\u0010\u0014R\"\u0010\u0003\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0017\u001a\u0004\b&\u0010\u0019\"\u0004\b'\u0010\u001bR\"\u0010\u0004\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b(\u0010\u0017\u001a\u0004\b)\u0010\u0019\"\u0004\b*\u0010\u001bR\"\u0010\u0005\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b+\u0010\u0017\u001a\u0004\b,\u0010\u0019\"\u0004\b-\u0010\u001bR\"\u0010\u0006\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b.\u0010\u0017\u001a\u0004\b/\u0010\u0019\"\u0004\b0\u0010\u001bR\"\u0010\u0007\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b1\u0010\u0017\u001a\u0004\b2\u0010\u0019\"\u0004\b3\u0010\u001bR\"\u0010\b\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b4\u0010\u0017\u001a\u0004\b5\u0010\u0019\"\u0004\b6\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b7\u0010\u0017\u001a\u0004\b8\u0010\u0019\"\u0004\b9\u0010\u001bR\"\u0010\n\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b:\u0010\u0017\u001a\u0004\b;\u0010\u0019\"\u0004\b<\u0010\u001bR\"\u0010\u000b\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b=\u0010\u0017\u001a\u0004\b>\u0010\u0019\"\u0004\b?\u0010\u001b¨\u0006B"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;", "", "", "continuity", "cursive", "lightBrush", "width", "feiBai", "brushTexture", "yiYang", "smooth", "autoSmooth", "", "updateValue", "", "a", Constants.STRING_SIG, "getName$sdk_sunia_overseasRelease", "()Ljava/lang/String;", "setName$sdk_sunia_overseasRelease", "(Ljava/lang/String;)V", "name", "b", "I", "getMode$sdk_sunia_overseasRelease", "()I", "setMode$sdk_sunia_overseasRelease", "(I)V", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE, "c", "getIntensity$sdk_sunia_overseasRelease", "setIntensity$sdk_sunia_overseasRelease", "intensity", "d", "getTip$sdk_sunia_overseasRelease", "setTip$sdk_sunia_overseasRelease", "tip", "e", "getContinuity$sdk_sunia_overseasRelease", "setContinuity$sdk_sunia_overseasRelease", C6997f.f39671c, "getCursive$sdk_sunia_overseasRelease", "setCursive$sdk_sunia_overseasRelease", C6998g.f39679a, "getLightBrush$sdk_sunia_overseasRelease", "setLightBrush$sdk_sunia_overseasRelease", C6999h.f39688c, "getWidth$sdk_sunia_overseasRelease", "setWidth$sdk_sunia_overseasRelease", "i", "getFeiBai$sdk_sunia_overseasRelease", "setFeiBai$sdk_sunia_overseasRelease", "j", "getBrushTexture$sdk_sunia_overseasRelease", "setBrushTexture$sdk_sunia_overseasRelease", C4921e.f26537n, "getYiYang$sdk_sunia_overseasRelease", "setYiYang$sdk_sunia_overseasRelease", "l", "getSmooth$sdk_sunia_overseasRelease", "setSmooth$sdk_sunia_overseasRelease", "m", "getAutoSmooth$sdk_sunia_overseasRelease", "setAutoSmooth$sdk_sunia_overseasRelease", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;IILjava/lang/String;IIIIIIIII)V", "sdk-sunia_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class SuNiaParam {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String name;

    /* renamed from: b, reason: from kotlin metadata */
    public int mode;

    /* renamed from: c, reason: from kotlin metadata */
    public int intensity;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String tip;

    /* renamed from: e, reason: from kotlin metadata */
    public int continuity;

    /* renamed from: f, reason: from kotlin metadata */
    public int cursive;

    /* renamed from: g, reason: from kotlin metadata */
    public int lightBrush;

    /* renamed from: h, reason: from kotlin metadata */
    public int width;

    /* renamed from: i, reason: from kotlin metadata */
    public int feiBai;

    /* renamed from: j, reason: from kotlin metadata */
    public int brushTexture;

    /* renamed from: k, reason: from kotlin metadata */
    public int yiYang;

    /* renamed from: l, reason: from kotlin metadata */
    public int smooth;

    /* renamed from: m, reason: from kotlin metadata */
    public int autoSmooth;

    public SuNiaParam() {
        this(null, 0, 0, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8191, null);
    }

    /* renamed from: getAutoSmooth$sdk_sunia_overseasRelease, reason: from getter */
    public final int getAutoSmooth() {
        return this.autoSmooth;
    }

    /* renamed from: getBrushTexture$sdk_sunia_overseasRelease, reason: from getter */
    public final int getBrushTexture() {
        return this.brushTexture;
    }

    /* renamed from: getContinuity$sdk_sunia_overseasRelease, reason: from getter */
    public final int getContinuity() {
        return this.continuity;
    }

    /* renamed from: getCursive$sdk_sunia_overseasRelease, reason: from getter */
    public final int getCursive() {
        return this.cursive;
    }

    /* renamed from: getFeiBai$sdk_sunia_overseasRelease, reason: from getter */
    public final int getFeiBai() {
        return this.feiBai;
    }

    /* renamed from: getIntensity$sdk_sunia_overseasRelease, reason: from getter */
    public final int getIntensity() {
        return this.intensity;
    }

    /* renamed from: getLightBrush$sdk_sunia_overseasRelease, reason: from getter */
    public final int getLightBrush() {
        return this.lightBrush;
    }

    /* renamed from: getMode$sdk_sunia_overseasRelease, reason: from getter */
    public final int getMode() {
        return this.mode;
    }

    @NotNull
    /* renamed from: getName$sdk_sunia_overseasRelease, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: getSmooth$sdk_sunia_overseasRelease, reason: from getter */
    public final int getSmooth() {
        return this.smooth;
    }

    @NotNull
    /* renamed from: getTip$sdk_sunia_overseasRelease, reason: from getter */
    public final String getTip() {
        return this.tip;
    }

    /* renamed from: getWidth$sdk_sunia_overseasRelease, reason: from getter */
    public final int getWidth() {
        return this.width;
    }

    /* renamed from: getYiYang$sdk_sunia_overseasRelease, reason: from getter */
    public final int getYiYang() {
        return this.yiYang;
    }

    public final void setAutoSmooth$sdk_sunia_overseasRelease(int i) {
        this.autoSmooth = i;
    }

    public final void setBrushTexture$sdk_sunia_overseasRelease(int i) {
        this.brushTexture = i;
    }

    public final void setContinuity$sdk_sunia_overseasRelease(int i) {
        this.continuity = i;
    }

    public final void setCursive$sdk_sunia_overseasRelease(int i) {
        this.cursive = i;
    }

    public final void setFeiBai$sdk_sunia_overseasRelease(int i) {
        this.feiBai = i;
    }

    public final void setIntensity$sdk_sunia_overseasRelease(int i) {
        this.intensity = i;
    }

    public final void setLightBrush$sdk_sunia_overseasRelease(int i) {
        this.lightBrush = i;
    }

    public final void setMode$sdk_sunia_overseasRelease(int i) {
        this.mode = i;
    }

    public final void setName$sdk_sunia_overseasRelease(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setSmooth$sdk_sunia_overseasRelease(int i) {
        this.smooth = i;
    }

    public final void setTip$sdk_sunia_overseasRelease(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.tip = str;
    }

    public final void setWidth$sdk_sunia_overseasRelease(int i) {
        this.width = i;
    }

    public final void setYiYang$sdk_sunia_overseasRelease(int i) {
        this.yiYang = i;
    }

    public final void updateValue(int continuity, int cursive, int lightBrush, int width, int feiBai, int brushTexture, int yiYang, int smooth, int autoSmooth) {
        this.continuity = continuity;
        this.cursive = cursive;
        this.lightBrush = lightBrush;
        this.width = width;
        this.feiBai = feiBai;
        this.brushTexture = brushTexture;
        this.yiYang = yiYang;
        this.smooth = smooth;
        this.autoSmooth = autoSmooth;
    }

    public SuNiaParam(@NotNull String name, int i, int i2, @NotNull String tip, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(tip, "tip");
        this.name = name;
        this.mode = i;
        this.intensity = i2;
        this.tip = tip;
        updateValue(i3, i4, i5, i6, i7, i8, i9, i10, i11);
    }

    public /* synthetic */ SuNiaParam(String str, int i, int i2, String str2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? "" : str, (i12 & 2) != 0 ? 0 : i, (i12 & 4) != 0 ? 0 : i2, (i12 & 8) == 0 ? str2 : "", (i12 & 16) != 0 ? 0 : i3, (i12 & 32) != 0 ? 0 : i4, (i12 & 64) != 0 ? 0 : i5, (i12 & 128) != 0 ? 0 : i6, (i12 & 256) != 0 ? 0 : i7, (i12 & 512) != 0 ? 0 : i8, (i12 & 1024) != 0 ? 0 : i9, (i12 & 2048) != 0 ? 0 : i10, (i12 & 4096) == 0 ? i11 : 0);
    }
}
