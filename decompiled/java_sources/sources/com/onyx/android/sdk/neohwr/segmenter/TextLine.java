package com.onyx.android.sdk.neohwr.segmenter;

import android.graphics.RectF;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u0000  2\u00020\u0001:\u0001 B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000eJ&\u0010\u0017\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR \u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;", "", "()V", "angle", "", "getAngle", "()F", "setAngle", "(F)V", "characterSize", "getCharacterSize", "setCharacterSize", Constants.ATTRNAME_ELEMENTS, "", "Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;", "getElements", "()Ljava/util/List;", "setElements", "(Ljava/util/List;)V", "region", "Landroid/graphics/RectF;", "getRegion", "()Landroid/graphics/RectF;", "setRegion", "(Landroid/graphics/RectF;)V", "addElement", "", "element", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "Companion", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TextLine {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private float angle;
    private float characterSize;

    @NotNull
    private RectF region = new RectF();

    @NotNull
    private List<TextElement> elements = new ArrayList();

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/segmenter/TextLine$Companion;", "", "()V", "createLine", "Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final TextLine createLine() {
            return new TextLine();
        }

        private Companion() {
        }
    }

    @JvmStatic
    @NotNull
    public static final TextLine createLine() {
        return INSTANCE.createLine();
    }

    public final void addElement(@NotNull TextElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        this.elements.add(element);
    }

    public final float getAngle() {
        return this.angle;
    }

    public final float getCharacterSize() {
        return this.characterSize;
    }

    @NotNull
    public final List<TextElement> getElements() {
        return this.elements;
    }

    @NotNull
    public final RectF getRegion() {
        return this.region;
    }

    public final void setAngle(float f) {
        this.angle = f;
    }

    public final void setCharacterSize(float f) {
        this.characterSize = f;
    }

    public final void setElements(@NotNull List<TextElement> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.elements = list;
    }

    public final void setRegion(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.region = rectF;
    }

    public final void setRegion(float left, float top, float right, float bottom) {
        this.region = new RectF(left, top, right, bottom);
    }
}
