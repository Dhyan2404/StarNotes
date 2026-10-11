package com.onyx.galaxy.note.editor.data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ShapeToolConfig;", "Ljava/io/Serializable;", "()V", "defaultSelectShapeTool", "", "getDefaultSelectShapeTool", "()Ljava/lang/String;", "setDefaultSelectShapeTool", "(Ljava/lang/String;)V", "enableSwitchBrushList", "", "getEnableSwitchBrushList", "()Ljava/util/List;", "setEnableSwitchBrushList", "(Ljava/util/List;)V", "unDisplayShapeToolList", "getUnDisplayShapeToolList", "setUnDisplayShapeToolList", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ShapeToolConfig implements Serializable {

    @NotNull
    private List<String> unDisplayShapeToolList = new ArrayList();

    @NotNull
    private List<String> enableSwitchBrushList = new ArrayList();

    @NotNull
    private String defaultSelectShapeTool = "";

    @NotNull
    public final String getDefaultSelectShapeTool() {
        return this.defaultSelectShapeTool;
    }

    @NotNull
    public final List<String> getEnableSwitchBrushList() {
        return this.enableSwitchBrushList;
    }

    @NotNull
    public final List<String> getUnDisplayShapeToolList() {
        return this.unDisplayShapeToolList;
    }

    public final void setDefaultSelectShapeTool(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.defaultSelectShapeTool = str;
    }

    public final void setEnableSwitchBrushList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.enableSwitchBrushList = list;
    }

    public final void setUnDisplayShapeToolList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.unDisplayShapeToolList = list;
    }
}
