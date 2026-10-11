package com.onyx.android.sdk.neohwr.layout;

import android.graphics.RectF;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\u0018\u00002\u00020\u0001B3\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\b\u0010\u001c\u001a\u00020\nH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;", "", "lines", "", "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;", "blockDegrees", "", "region", "Landroid/graphics/RectF;", "text", "", "(Ljava/util/List;FLandroid/graphics/RectF;Ljava/lang/String;)V", "getBlockDegrees", "()F", "setBlockDegrees", "(F)V", "getLines", "()Ljava/util/List;", "setLines", "(Ljava/util/List;)V", "getRegion", "()Landroid/graphics/RectF;", "setRegion", "(Landroid/graphics/RectF;)V", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "toString", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TextBlockBox {
    private float blockDegrees;

    @NotNull
    private List<TextLineBox> lines;

    @NotNull
    private RectF region;

    @NotNull
    private String text;

    public TextBlockBox() {
        this(null, 0.0f, null, null, 15, null);
    }

    public final float getBlockDegrees() {
        return this.blockDegrees;
    }

    @NotNull
    public final List<TextLineBox> getLines() {
        return this.lines;
    }

    @NotNull
    public final RectF getRegion() {
        return this.region;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public final void setBlockDegrees(float f) {
        this.blockDegrees = f;
    }

    public final void setLines(@NotNull List<TextLineBox> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.lines = list;
    }

    public final void setRegion(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.region = rectF;
    }

    public final void setText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }

    @NotNull
    public String toString() {
        return "text=" + this.text + " region=" + this.region + " rotation=" + this.blockDegrees;
    }

    public TextBlockBox(@NotNull List<TextLineBox> lines, float f, @NotNull RectF region, @NotNull String text) {
        Intrinsics.checkNotNullParameter(lines, "lines");
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(text, "text");
        this.lines = lines;
        this.blockDegrees = f;
        this.region = region;
        this.text = text;
    }

    public /* synthetic */ TextBlockBox(List list, float f, RectF rectF, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 2) != 0 ? 0.0f : f, (i & 4) != 0 ? new RectF() : rectF, (i & 8) != 0 ? "" : str);
    }
}
