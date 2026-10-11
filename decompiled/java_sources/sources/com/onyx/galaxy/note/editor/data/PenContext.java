package com.onyx.galaxy.note.editor.data;

import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0016\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\"\u0010#J\u0006\u0010\u0003\u001a\u00020\u0002J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0006HÆ\u0003J-\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\u0006HÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0012\u0010\u0013\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002R$\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R$\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR$\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001e¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/PenContext;", "", "", "isInvalid", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "component1", "", "component2", "component3", "lastShapeTool", "lastPenId", "lastPenBoxId", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "shapeToolType", "b", "a", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "getLastShapeTool", "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "setLastShapeTool", "(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getLastPenId", "()Ljava/lang/String;", "setLastPenId", "(Ljava/lang/String;)V", "c", "getLastPenBoxId", "setLastPenBoxId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Ljava/lang/String;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class PenContext {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public ShapeToolType lastShapeTool;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public String lastPenId;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public String lastPenBoxId;

    public PenContext() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ PenContext copy$default(PenContext penContext, ShapeToolType shapeToolType, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            shapeToolType = penContext.lastShapeTool;
        }
        if ((i & 2) != 0) {
            str = penContext.lastPenId;
        }
        if ((i & 4) != 0) {
            str2 = penContext.lastPenBoxId;
        }
        return penContext.copy(shapeToolType, str, str2);
    }

    /* renamed from: a */
    public final boolean m46007a() {
        return this.lastShapeTool == null && this.lastPenId == null;
    }

    /* renamed from: b */
    public final boolean m46008b(ShapeToolType shapeToolType) {
        boolean contains;
        contains = CollectionsKt___CollectionsKt.contains(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShapeHideList(), shapeToolType);
        return contains;
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final ShapeToolType getLastShapeTool() {
        return this.lastShapeTool;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getLastPenId() {
        return this.lastPenId;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getLastPenBoxId() {
        return this.lastPenBoxId;
    }

    @NotNull
    public final PenContext copy(@Nullable ShapeToolType lastShapeTool, @Nullable String lastPenId, @Nullable String lastPenBoxId) {
        return new PenContext(lastShapeTool, lastPenId, lastPenBoxId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PenContext)) {
            return false;
        }
        PenContext penContext = (PenContext) other;
        return this.lastShapeTool == penContext.lastShapeTool && Intrinsics.areEqual(this.lastPenId, penContext.lastPenId) && Intrinsics.areEqual(this.lastPenBoxId, penContext.lastPenBoxId);
    }

    @Nullable
    public final String getLastPenBoxId() {
        return this.lastPenBoxId;
    }

    @Nullable
    public final String getLastPenId() {
        return this.lastPenId;
    }

    @Nullable
    public final ShapeToolType getLastShapeTool() {
        return this.lastShapeTool;
    }

    public int hashCode() {
        ShapeToolType shapeToolType = this.lastShapeTool;
        int hashCode = (shapeToolType == null ? 0 : shapeToolType.hashCode()) * 31;
        String str = this.lastPenId;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.lastPenBoxId;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final boolean isInvalid() {
        return m46008b(this.lastShapeTool) || m46007a();
    }

    public final void setLastPenBoxId(@Nullable String str) {
        this.lastPenBoxId = str;
    }

    public final void setLastPenId(@Nullable String str) {
        this.lastPenId = str;
    }

    public final void setLastShapeTool(@Nullable ShapeToolType shapeToolType) {
        this.lastShapeTool = shapeToolType;
    }

    @NotNull
    public String toString() {
        return "PenContext(lastShapeTool=" + this.lastShapeTool + ", lastPenId=" + this.lastPenId + ", lastPenBoxId=" + this.lastPenBoxId + ')';
    }

    public PenContext(@Nullable ShapeToolType shapeToolType, @Nullable String str, @Nullable String str2) {
        this.lastShapeTool = shapeToolType;
        this.lastPenId = str;
        this.lastPenBoxId = str2;
    }

    public /* synthetic */ PenContext(ShapeToolType shapeToolType, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : shapeToolType, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2);
    }
}
