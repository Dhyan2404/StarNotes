package com.onyx.android.sdk.replicator.note.data.line;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000f\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u0011\b\u0016\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0005R\u001a\u0010\u0012\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000b¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;", "", "()V", "direction", "", "(I)V", "arrowHeight", "", "getArrowHeight", "()F", "setArrowHeight", "(F)V", "arrowLenFactor", "getArrowLenFactor", "setArrowLenFactor", "getDirection", "()I", "setDirection", "halfBottomLine", "getHalfBottomLine", "setHalfBottomLine", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ArrowStyle {
    public static final int ARROW_DIRECTION_BOTH = 3;
    public static final int ARROW_DIRECTION_END = 2;
    public static final int ARROW_DIRECTION_NONE = 0;
    public static final int ARROW_DIRECTION_START = 1;
    private float arrowHeight;
    private float arrowLenFactor;
    private int direction;
    private float halfBottomLine;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final ArrowStyle NONE = new ArrowStyle();

    @NotNull
    private static final ArrowStyle DEFAULT = new ArrowStyle(2);

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;", "", "()V", "ARROW_DIRECTION_BOTH", "", "ARROW_DIRECTION_END", "ARROW_DIRECTION_NONE", "ARROW_DIRECTION_START", "DEFAULT", "Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;", "getDEFAULT", "()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;", "NONE", "getNONE", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ArrowStyle getDEFAULT() {
            return ArrowStyle.DEFAULT;
        }

        @NotNull
        public final ArrowStyle getNONE() {
            return ArrowStyle.NONE;
        }

        private Companion() {
        }
    }

    public ArrowStyle() {
        this.arrowLenFactor = 6.0f;
        this.arrowHeight = 8.0f;
        this.halfBottomLine = 5.5f;
    }

    public final float getArrowHeight() {
        return this.arrowHeight;
    }

    public final float getArrowLenFactor() {
        return this.arrowLenFactor;
    }

    public final int getDirection() {
        return this.direction;
    }

    public final float getHalfBottomLine() {
        return this.halfBottomLine;
    }

    public final void setArrowHeight(float f) {
        this.arrowHeight = f;
    }

    public final void setArrowLenFactor(float f) {
        this.arrowLenFactor = f;
    }

    public final void setDirection(int i) {
        this.direction = i;
    }

    public final void setHalfBottomLine(float f) {
        this.halfBottomLine = f;
    }

    public ArrowStyle(int i) {
        this.arrowLenFactor = 6.0f;
        this.arrowHeight = 8.0f;
        this.halfBottomLine = 5.5f;
        this.direction = i;
    }

    public /* synthetic */ ArrowStyle(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }
}
