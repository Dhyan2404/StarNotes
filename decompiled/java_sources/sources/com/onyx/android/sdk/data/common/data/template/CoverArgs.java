package com.onyx.android.sdk.data.common.data.template;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/template/CoverArgs;", "", "()V", "color", "", "getColor", "()I", "setColor", "(I)V", "colorList", "", "getColorList", "()Ljava/util/List;", "setColorList", "(Ljava/util/List;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CoverArgs implements Cloneable {
    private int color;

    @Nullable
    private List<Integer> colorList;

    @NotNull
    public Object clone() {
        return super.clone();
    }

    public final int getColor() {
        return this.color;
    }

    @Nullable
    public final List<Integer> getColorList() {
        return this.colorList;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setColorList(@Nullable List<Integer> list) {
        this.colorList = list;
    }
}
