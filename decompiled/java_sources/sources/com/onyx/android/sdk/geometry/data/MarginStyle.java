package com.onyx.android.sdk.geometry.data;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u0007\n\u0002\b\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B#\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\bB\u0005¢\u0006\u0002\u0010\tJ\u0006\u0010\u001d\u001a\u00020\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/MarginStyle;", "", "color", "", "style", "(II)V", "templateResource", "", "(ILjava/lang/String;I)V", "()V", "getColor", "()I", "setColor", "(I)V", "getStyle", "setStyle", "getTemplateResource", "()Ljava/lang/String;", "setTemplateResource", "(Ljava/lang/String;)V", "templateResourceId", "getTemplateResourceId", "setTemplateResourceId", "templateSpace", "", "getTemplateSpace", "()F", "setTemplateSpace", "(F)V", "copy", "Companion", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MarginStyle {
    public static final int STYLE_DOTTED = 2;
    public static final int STYLE_GRID = 3;
    public static final int STYLE_LINE = 1;
    public static final int STYLE_NONE = 0;
    private int color;
    private int style;

    @Nullable
    private String templateResource;

    @Nullable
    private String templateResourceId;
    private float templateSpace;

    public MarginStyle() {
        this.color = -1;
        this.templateSpace = 10.0f;
    }

    @NotNull
    public final MarginStyle copy() {
        MarginStyle marginStyle = new MarginStyle();
        marginStyle.color = this.color;
        marginStyle.style = this.style;
        marginStyle.templateResource = this.templateResource;
        marginStyle.templateResourceId = this.templateResourceId;
        marginStyle.templateSpace = this.templateSpace;
        return marginStyle;
    }

    public final int getColor() {
        return this.color;
    }

    public final int getStyle() {
        return this.style;
    }

    @Nullable
    public final String getTemplateResource() {
        return this.templateResource;
    }

    @Nullable
    public final String getTemplateResourceId() {
        return this.templateResourceId;
    }

    public final float getTemplateSpace() {
        return this.templateSpace;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setStyle(int i) {
        this.style = i;
    }

    public final void setTemplateResource(@Nullable String str) {
        this.templateResource = str;
    }

    public final void setTemplateResourceId(@Nullable String str) {
        this.templateResourceId = str;
    }

    public final void setTemplateSpace(float f) {
        this.templateSpace = f;
    }

    public MarginStyle(int i, int i2) {
        this();
        this.color = i;
        this.style = i2;
    }

    public /* synthetic */ MarginStyle(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i3 & 2) != 0 ? 0 : i2);
    }

    public MarginStyle(int i, @Nullable String str, int i2) {
        this(i, i2);
        this.templateResource = str;
    }

    public /* synthetic */ MarginStyle(int i, String str, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, (i3 & 4) != 0 ? 0 : i2);
    }
}
