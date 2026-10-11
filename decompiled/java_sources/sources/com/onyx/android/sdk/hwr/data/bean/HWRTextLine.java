package com.onyx.android.sdk.hwr.data.bean;

import android.graphics.RectF;
import androidx.core.app.C0619b;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;", "Ljava/io/Serializable;", C0619b.f5199k, "", "chars", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;", "(Ljava/lang/String;Ljava/util/List;)V", "boundingBox", "Landroid/graphics/RectF;", "getBoundingBox", "()Landroid/graphics/RectF;", "setBoundingBox", "(Landroid/graphics/RectF;)V", "getChars", "()Ljava/util/List;", "setChars", "(Ljava/util/List;)V", "getLabel", "()Ljava/lang/String;", "setLabel", "(Ljava/lang/String;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRTextLine implements Serializable {

    @NotNull
    private RectF boundingBox;

    @NotNull
    private List<HWRChar> chars;

    @NotNull
    private String label;

    public HWRTextLine(@NotNull String label, @NotNull List<HWRChar> chars) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(chars, "chars");
        this.label = label;
        this.chars = chars;
        this.boundingBox = new RectF();
    }

    @NotNull
    public final RectF getBoundingBox() {
        return this.boundingBox;
    }

    @NotNull
    public final List<HWRChar> getChars() {
        return this.chars;
    }

    @NotNull
    public final String getLabel() {
        return this.label;
    }

    public final void setBoundingBox(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.boundingBox = rectF;
    }

    public final void setChars(@NotNull List<HWRChar> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.chars = list;
    }

    public final void setLabel(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.label = str;
    }
}
