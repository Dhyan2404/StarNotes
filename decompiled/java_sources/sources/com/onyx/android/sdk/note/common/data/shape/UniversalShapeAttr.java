package com.onyx.android.sdk.note.common.data.shape;

import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u001b\u001a\u00020\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\u001eR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;", "Ljava/io/Serializable;", "()V", "favorited", "", "getFavorited", Constants.BOOLEAN_VALUE_SIG, "setFavorited", "(Z)V", CouchFieldKey.KEY_FILL_COLOR, "", "getFillColor", "()I", "setFillColor", "(I)V", "fillColorEnable", "getFillColorEnable", "setFillColorEnable", "lineStyleType", "getLineStyleType", "setLineStyleType", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "updateFillColorIfNotValid", "", "colorGet", "Lkotlin/Function0;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class UniversalShapeAttr implements Serializable {
    private boolean favorited;
    private int fillColor;
    private boolean fillColorEnable;
    private int lineStyleType;

    @Nullable
    private String type = "line";

    public final boolean getFavorited() {
        return this.favorited;
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    public final boolean getFillColorEnable() {
        return this.fillColorEnable;
    }

    public final int getLineStyleType() {
        return this.lineStyleType;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    public final void setFavorited(boolean z) {
        this.favorited = z;
    }

    public final void setFillColor(int i) {
        this.fillColor = i;
    }

    public final void setFillColorEnable(boolean z) {
        this.fillColorEnable = z;
    }

    public final void setLineStyleType(int i) {
        this.lineStyleType = i;
    }

    public final void setType(@Nullable String str) {
        this.type = str;
    }

    public final void updateFillColorIfNotValid(@NotNull Function0<Integer> colorGet) {
        Intrinsics.checkNotNullParameter(colorGet, "colorGet");
        if (ColorKt.isTransparent(this.fillColor)) {
            this.fillColor = colorGet.invoke().intValue();
        }
    }
}
