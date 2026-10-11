package com.onyx.android.sdk.hwr.data.bean;

import androidx.core.app.C0619b;
import com.alibaba.fastjson2.annotation.JSONField;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.neohwr.layout.SourcePointGroup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b5\u00106J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R(\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00130\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\r\u001a\u0004\b\u0015\u0010\u000f\"\u0004\b\u0016\u0010\u0011R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR(\u0010$\u001a\b\u0012\u0004\u0012\u00020 0\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\r\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00104\u001a\u00020-8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u00067"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;", "", "", "toString", "a", Constants.STRING_SIG, "getLabel", "()Ljava/lang/String;", "setLabel", "(Ljava/lang/String;)V", C0619b.f5199k, "", "b", "Ljava/util/List;", "getCandidates", "()Ljava/util/List;", "setCandidates", "(Ljava/util/List;)V", "candidates", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPoint;", "c", "getGrid", "setGrid", "grid", "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "d", "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "getBoundBox", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "setBoundBox", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V", "boundBox", "Lcom/onyx/android/sdk/hwr/data/bean/HWRItem;", "e", "getItems", "setItems", FirebaseAnalytics.Param.ITEMS, "", C6997f.f39671c, "I", "getWord", "()I", "setWord", "(I)V", "word", "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", C6998g.f39679a, "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "getSourcePointGroup", "()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "setSourcePointGroup", "(Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)V", "sourcePointGroup", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRChar {

    /* renamed from: d, reason: from kotlin metadata */
    @JSONField(name = IStyleSheet.CLASS_BOUNDING_BOX)
    @Nullable
    public HWRBoundBox boundBox;

    /* renamed from: f, reason: from kotlin metadata */
    public int word;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String label = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<String> candidates = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<HWRPoint> grid = new ArrayList();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public List<HWRItem> items = new ArrayList();

    /* renamed from: g, reason: from kotlin metadata */
    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public transient SourcePointGroup sourcePointGroup = new SourcePointGroup(null, null, 0, 0, 15, null);

    @Nullable
    public final HWRBoundBox getBoundBox() {
        return this.boundBox;
    }

    @NotNull
    public final List<String> getCandidates() {
        return this.candidates;
    }

    @NotNull
    public final List<HWRPoint> getGrid() {
        return this.grid;
    }

    @NotNull
    public final List<HWRItem> getItems() {
        return this.items;
    }

    @NotNull
    public final String getLabel() {
        return this.label;
    }

    @NotNull
    public final SourcePointGroup getSourcePointGroup() {
        return this.sourcePointGroup;
    }

    public final int getWord() {
        return this.word;
    }

    public final void setBoundBox(@Nullable HWRBoundBox hWRBoundBox) {
        this.boundBox = hWRBoundBox;
    }

    public final void setCandidates(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.candidates = list;
    }

    public final void setGrid(@NotNull List<HWRPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.grid = list;
    }

    public final void setItems(@NotNull List<HWRItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.items = list;
    }

    public final void setLabel(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.label = str;
    }

    public final void setSourcePointGroup(@NotNull SourcePointGroup sourcePointGroup) {
        Intrinsics.checkNotNullParameter(sourcePointGroup, "<set-?>");
        this.sourcePointGroup = sourcePointGroup;
    }

    public final void setWord(int i) {
        this.word = i;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.label);
        sb.append(' ');
        HWRBoundBox hWRBoundBox = this.boundBox;
        sb.append(hWRBoundBox != null ? Float.valueOf(hWRBoundBox.getX()) : null);
        sb.append(' ');
        HWRBoundBox hWRBoundBox2 = this.boundBox;
        sb.append(hWRBoundBox2 != null ? Float.valueOf(hWRBoundBox2.getY()) : null);
        return sb.toString();
    }
}
