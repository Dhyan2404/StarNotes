package com.onyx.android.sdk.hwr.data.bean;

import android.graphics.RectF;
import androidx.core.app.C0619b;
import com.alibaba.fastjson2.annotation.JSONField;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b1\u00102J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR$\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR$\u0010#\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u0006\u001a\u0004\b!\u0010\b\"\u0004\b\"\u0010\nR*\u0010,\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R*\u00100\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010'\u001a\u0004\b.\u0010)\"\u0004\b/\u0010+¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRExpression;", "", "Landroid/graphics/RectF;", "toRectF", "", "a", Constants.STRING_SIG, "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "type", "b", "getLabel", "setLabel", C0619b.f5199k, "", "c", "I", "getValue", "()I", "setValue", "(I)V", "value", "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "d", "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "getBoundBox", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "setBoundBox", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V", "boundBox", "e", "getRange", "setRange", SessionDescription.f26441q, "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRItem;", C6997f.f39671c, "Ljava/util/List;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", FirebaseAnalytics.Param.ITEMS, C6998g.f39679a, "getCandidates", "setCandidates", "candidates", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRExpression {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String type;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String label;

    /* renamed from: c, reason: from kotlin metadata */
    public int value;

    /* renamed from: d, reason: from kotlin metadata */
    @JSONField(name = IStyleSheet.CLASS_BOUNDING_BOX)
    @Nullable
    public HWRBoundBox boundBox;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String range;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public List<HWRItem> items;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public List<String> candidates;

    @Nullable
    public final HWRBoundBox getBoundBox() {
        return this.boundBox;
    }

    @Nullable
    public final List<String> getCandidates() {
        return this.candidates;
    }

    @Nullable
    public final List<HWRItem> getItems() {
        return this.items;
    }

    @Nullable
    public final String getLabel() {
        return this.label;
    }

    @Nullable
    public final String getRange() {
        return this.range;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    public final int getValue() {
        return this.value;
    }

    public final void setBoundBox(@Nullable HWRBoundBox hWRBoundBox) {
        this.boundBox = hWRBoundBox;
    }

    public final void setCandidates(@Nullable List<String> list) {
        this.candidates = list;
    }

    public final void setItems(@Nullable List<HWRItem> list) {
        this.items = list;
    }

    public final void setLabel(@Nullable String str) {
        this.label = str;
    }

    public final void setRange(@Nullable String str) {
        this.range = str;
    }

    public final void setType(@Nullable String str) {
        this.type = str;
    }

    public final void setValue(int i) {
        this.value = i;
    }

    @Nullable
    public final RectF toRectF() {
        HWRBoundBox hWRBoundBox = this.boundBox;
        if (hWRBoundBox == null) {
            return new RectF();
        }
        Intrinsics.checkNotNull(hWRBoundBox);
        return hWRBoundBox.toRectF();
    }
}
