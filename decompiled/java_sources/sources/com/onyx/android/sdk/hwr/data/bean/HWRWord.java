package com.onyx.android.sdk.hwr.data.bean;

import androidx.core.app.C0619b;
import com.alibaba.fastjson2.annotation.JSONField;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R(\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R(\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0014\u001a\u0004\b\u001c\u0010\u0016\"\u0004\b\u001d\u0010\u0018R\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010*\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b'\u0010!\u001a\u0004\b(\u0010#\"\u0004\b)\u0010%¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;", "", "", "a", Constants.STRING_SIG, "getLabel", "()Ljava/lang/String;", "setLabel", "(Ljava/lang/String;)V", C0619b.f5199k, "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "b", "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "getBoundBox", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "setBoundBox", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V", "boundBox", "", "c", "Ljava/util/List;", "getCandidates", "()Ljava/util/List;", "setCandidates", "(Ljava/util/List;)V", "candidates", "Lcom/onyx/android/sdk/hwr/data/bean/HWRItem;", "d", "getItems", "setItems", FirebaseAnalytics.Param.ITEMS, "", "e", "I", "getFirstChar", "()I", "setFirstChar", "(I)V", "firstChar", C6997f.f39671c, "getLastChar", "setLastChar", "lastChar", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRWord {

    /* renamed from: b, reason: from kotlin metadata */
    @JSONField(name = IStyleSheet.CLASS_BOUNDING_BOX)
    @Nullable
    public HWRBoundBox boundBox;

    /* renamed from: e, reason: from kotlin metadata */
    @JSONField(name = "first-char")
    public int firstChar;

    /* renamed from: f, reason: from kotlin metadata */
    @JSONField(name = "last-char")
    public int lastChar;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String label = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<String> candidates = new ArrayList();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<HWRItem> items = new ArrayList();

    @Nullable
    public final HWRBoundBox getBoundBox() {
        return this.boundBox;
    }

    @NotNull
    public final List<String> getCandidates() {
        return this.candidates;
    }

    public final int getFirstChar() {
        return this.firstChar;
    }

    @NotNull
    public final List<HWRItem> getItems() {
        return this.items;
    }

    @NotNull
    public final String getLabel() {
        return this.label;
    }

    public final int getLastChar() {
        return this.lastChar;
    }

    public final void setBoundBox(@Nullable HWRBoundBox hWRBoundBox) {
        this.boundBox = hWRBoundBox;
    }

    public final void setCandidates(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.candidates = list;
    }

    public final void setFirstChar(int i) {
        this.firstChar = i;
    }

    public final void setItems(@NotNull List<HWRItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.items = list;
    }

    public final void setLabel(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.label = str;
    }

    public final void setLastChar(int i) {
        this.lastChar = i;
    }
}
