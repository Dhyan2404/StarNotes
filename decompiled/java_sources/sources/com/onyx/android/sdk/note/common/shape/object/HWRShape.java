package com.onyx.android.sdk.note.common.shape.object;

import com.onyx.android.sdk.neohwr.layout.SourcePointGroup;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R$\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "", "J", "I", "getHwrType", "()I", "hwrType", "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "K", "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "getSourceShapeGroup", "()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "setSourceShapeGroup", "(Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)V", "sourceShapeGroup", Constants.CONSTRUCTOR_NAME, "(I)V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class HWRShape extends ObjectShape {
    public static final int HWR_TYPE_NONE = 0;
    public static final int HWR_TYPE_TEXT_CHAR = 1;

    /* renamed from: J, reason: from kotlin metadata */
    public final int hwrType;

    /* renamed from: K, reason: from kotlin metadata */
    @Nullable
    public SourcePointGroup sourceShapeGroup;

    public HWRShape(int i) {
        this.hwrType = i;
    }

    public final int getHwrType() {
        return this.hwrType;
    }

    @Nullable
    public final SourcePointGroup getSourceShapeGroup() {
        return this.sourceShapeGroup;
    }

    public final void setSourceShapeGroup(@Nullable SourcePointGroup sourcePointGroup) {
        this.sourceShapeGroup = sourcePointGroup;
    }
}
