package com.onyx.galaxy.note.utils;

import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/ShapeToolUtils;", "", "()V", "getDefaultSelectShapeToolType", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "getDefaultValues", "", "getEnableSwitchBrushList", "getSelectShapeToolType", "type", "", "default", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShapeToolUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolUtils.kt\ncom/onyx/galaxy/note/utils/ShapeToolUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n3792#2:31\n4307#2,2:32\n766#3:34\n857#3,2:35\n*S KotlinDebug\n*F\n+ 1 ShapeToolUtils.kt\ncom/onyx/galaxy/note/utils/ShapeToolUtils\n*L\n9#1:31\n9#1:32,2\n16#1:34\n16#1:35,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ShapeToolUtils {

    @NotNull
    public static final ShapeToolUtils INSTANCE = new ShapeToolUtils();

    @NotNull
    public final ShapeToolType getDefaultSelectShapeToolType() {
        ShapeToolType shapeToolByName = ShapeToolType.INSTANCE.getShapeToolByName(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getDefaultSelectShapeTool());
        Intrinsics.checkNotNull(shapeToolByName);
        return shapeToolByName;
    }

    @NotNull
    public final List<ShapeToolType> getDefaultValues() {
        List<String> unDisplayShapeToolList = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getUnDisplayShapeToolList();
        ShapeToolType[] values = ShapeToolType.values();
        ArrayList arrayList = new ArrayList();
        for (ShapeToolType shapeToolType : values) {
            if (!unDisplayShapeToolList.contains(shapeToolType.name())) {
                arrayList.add(shapeToolType);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<ShapeToolType> getEnableSwitchBrushList() {
        List<ShapeToolType> shapeShowList = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShapeShowList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeShowList) {
            if (NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getEnableSwitchBrushList().contains(((ShapeToolType) obj).name())) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final ShapeToolType getSelectShapeToolType(int type, @NotNull ShapeToolType r8) {
        ShapeToolType shapeToolType;
        Intrinsics.checkNotNullParameter(r8, "default");
        ShapeToolType[] values = ShapeToolType.values();
        int length = values.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                shapeToolType = null;
                break;
            }
            shapeToolType = values[i];
            if (shapeToolType.getShapeType() == type && !NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getUnDisplayShapeToolList().contains(shapeToolType.name())) {
                break;
            }
            i++;
        }
        return shapeToolType == null ? r8 : shapeToolType;
    }
}
