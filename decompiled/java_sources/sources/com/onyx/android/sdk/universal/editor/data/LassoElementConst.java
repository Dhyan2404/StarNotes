package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rJ\u001c\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00112\u0006\u0010\u0012\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/LassoElementConst;", "", "()V", "GRAPH", "", "HAND_WRITING", ShapeLinkType.LINK_IMAGE, "LINK", "MARK_PEN", "TAG", "TAPE", "TEXT", "allElements", "Lcom/onyx/android/sdk/base/extension/IntList;", "canSelectByLasso", "", Constants.ATTRNAME_ELEMENTS, "", "shapeType", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class LassoElementConst {
    public static final int GRAPH = 1;
    public static final int HAND_WRITING = 5;
    public static final int IMAGE = 19;

    @NotNull
    public static final LassoElementConst INSTANCE = new LassoElementConst();
    public static final int LINK = 33;
    public static final int MARK_PEN = 15;
    public static final int TAG = 45;
    public static final int TAPE = 39;
    public static final int TEXT = 16;

    private LassoElementConst() {
    }

    @NotNull
    public final IntList allElements() {
        IntList intList = new IntList();
        intList.add(1);
        intList.add(19);
        intList.add(39);
        intList.add(16);
        intList.add(5);
        intList.add(15);
        intList.add(33);
        intList.add(45);
        return intList;
    }

    public final boolean canSelectByLasso(@NotNull List<Integer> elements, int shapeType) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        return (shapeTypes.isGraphicalShape(shapeType) || shapeTypes.isUniversalShape(shapeType)) ? elements.contains(1) : shapeType == 15 ? elements.contains(15) : shapeTypes.isSupportHWR(shapeType) ? elements.contains(5) : shapeTypes.isImageShape(shapeType) ? elements.contains(19) : elements.contains(Integer.valueOf(shapeType));
    }
}
