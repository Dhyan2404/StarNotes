package com.onyx.android.sdk.neohwr.layout;

import android.graphics.RectF;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0015\u0018\u00002\u00020\u0001B=\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u001f\u001a\u00020\u0006H\u0016R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;", "", "chars", "", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;", "text", "", "region", "Landroid/graphics/RectF;", "font", "textSize", "", "(Ljava/util/List;Ljava/lang/String;Landroid/graphics/RectF;Ljava/lang/String;F)V", "getChars", "()Ljava/util/List;", "setChars", "(Ljava/util/List;)V", "getFont", "()Ljava/lang/String;", "setFont", "(Ljava/lang/String;)V", "getRegion", "()Landroid/graphics/RectF;", "setRegion", "(Landroid/graphics/RectF;)V", "getText", "setText", "getTextSize", "()F", "setTextSize", "(F)V", "toString", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TextRunBox {

    @NotNull
    private List<TextCharBox> chars;

    @NotNull
    private String font;

    @NotNull
    private RectF region;

    @NotNull
    private String text;
    private float textSize;

    public TextRunBox() {
        this(null, null, null, null, 0.0f, 31, null);
    }

    @NotNull
    public final List<TextCharBox> getChars() {
        return this.chars;
    }

    @NotNull
    public final String getFont() {
        return this.font;
    }

    @NotNull
    public final RectF getRegion() {
        return this.region;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public final float getTextSize() {
        return this.textSize;
    }

    public final void setChars(@NotNull List<TextCharBox> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.chars = list;
    }

    public final void setFont(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.font = str;
    }

    public final void setRegion(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.region = rectF;
    }

    public final void setText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }

    public final void setTextSize(float f) {
        this.textSize = f;
    }

    @NotNull
    public String toString() {
        return "text=" + this.text + " region=" + this.region;
    }

    public TextRunBox(@NotNull List<TextCharBox> chars, @NotNull String text, @NotNull RectF region, @NotNull String font, float f) {
        Intrinsics.checkNotNullParameter(chars, "chars");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(font, "font");
        this.chars = chars;
        this.text = text;
        this.region = region;
        this.font = font;
        this.textSize = f;
    }

    public /* synthetic */ TextRunBox(List list, String str, RectF rectF, String str2, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? new RectF() : rectF, (i & 8) == 0 ? str2 : "", (i & 16) != 0 ? 0.0f : f);
    }
}
