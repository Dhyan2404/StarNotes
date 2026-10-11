package com.onyx.android.sdk.note.common.data.shape;

import com.onyx.android.sdk.base.common.error.BaseError;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "", "(Ljava/lang/String;I)V", "isUndefined", "", BaseError.UNDEFINED, "ScaleXY", "ScaleX", "ScaleY", "Translate", "Rotation", "XAxisMirror", "YAxisMirror", "Drag", "QuickCopy", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeTransformAction {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ShapeTransformAction[] $VALUES;
    public static final ShapeTransformAction Undefined = new ShapeTransformAction(BaseError.UNDEFINED, 0);
    public static final ShapeTransformAction ScaleXY = new ShapeTransformAction("ScaleXY", 1);
    public static final ShapeTransformAction ScaleX = new ShapeTransformAction("ScaleX", 2);
    public static final ShapeTransformAction ScaleY = new ShapeTransformAction("ScaleY", 3);
    public static final ShapeTransformAction Translate = new ShapeTransformAction("Translate", 4);
    public static final ShapeTransformAction Rotation = new ShapeTransformAction("Rotation", 5);
    public static final ShapeTransformAction XAxisMirror = new ShapeTransformAction("XAxisMirror", 6);
    public static final ShapeTransformAction YAxisMirror = new ShapeTransformAction("YAxisMirror", 7);
    public static final ShapeTransformAction Drag = new ShapeTransformAction("Drag", 8);
    public static final ShapeTransformAction QuickCopy = new ShapeTransformAction("QuickCopy", 9);

    private static final /* synthetic */ ShapeTransformAction[] $values() {
        return new ShapeTransformAction[]{Undefined, ScaleXY, ScaleX, ScaleY, Translate, Rotation, XAxisMirror, YAxisMirror, Drag, QuickCopy};
    }

    static {
        ShapeTransformAction[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private ShapeTransformAction(String str, int i) {
    }

    @NotNull
    public static EnumEntries<ShapeTransformAction> getEntries() {
        return $ENTRIES;
    }

    public static ShapeTransformAction valueOf(String str) {
        return (ShapeTransformAction) Enum.valueOf(ShapeTransformAction.class, str);
    }

    public static ShapeTransformAction[] values() {
        return (ShapeTransformAction[]) $VALUES.clone();
    }

    public boolean isUndefined() {
        return this == Undefined;
    }
}
