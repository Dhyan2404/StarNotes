package com.onyx.android.sdk.hwr.data.bean;

import android.graphics.RectF;
import androidx.core.app.C0619b;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u001b\u0010\u001cR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R*\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRResult;", "", "", "a", Constants.STRING_SIG, "getLabel", "()Ljava/lang/String;", "setLabel", "(Ljava/lang/String;)V", C0619b.f5199k, "Landroid/graphics/RectF;", "b", "Landroid/graphics/RectF;", "getRectF", "()Landroid/graphics/RectF;", "setRectF", "(Landroid/graphics/RectF;)V", "rectF", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRItem;", "c", "Ljava/util/List;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", FirebaseAnalytics.Param.ITEMS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRResult {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String label;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public RectF rectF;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public List<HWRItem> items;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRResult$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/hwr/data/bean/HWRResult;", C0619b.f5199k, "", "rectF", "Landroid/graphics/RectF;", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final HWRResult create(@Nullable String label, @Nullable RectF rectF) {
            HWRResult hWRResult = new HWRResult();
            hWRResult.setLabel(label);
            hWRResult.setRectF(rectF);
            return hWRResult;
        }

        public Companion() {
        }
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
    public final RectF getRectF() {
        return this.rectF;
    }

    public final void setItems(@Nullable List<HWRItem> list) {
        this.items = list;
    }

    public final void setLabel(@Nullable String str) {
        this.label = str;
    }

    public final void setRectF(@Nullable RectF rectF) {
        this.rectF = rectF;
    }
}
