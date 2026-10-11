package com.onyx.galaxy.note.editor.data;

import android.graphics.Point;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0012¢\u0006\u0004\b\u001a\u0010\u001bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;", "", "Landroid/graphics/Point;", "a", "Landroid/graphics/Point;", "getLocationPoint", "()Landroid/graphics/Point;", "setLocationPoint", "(Landroid/graphics/Point;)V", "locationPoint", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "b", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "getDockType", "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "setDockType", "(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "dockType", "", "c", Constants.HASIDCALL_INDEX_SIG, "getExpandState", Constants.BOOLEAN_VALUE_SIG, "setExpandState", "(Z)V", "expandState", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/Point;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PenBoxLocationModel {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Point locationPoint;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public DockType dockType;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean expandState;

    public PenBoxLocationModel() {
        this(null, null, false, 7, null);
    }

    @Nullable
    public final DockType getDockType() {
        return this.dockType;
    }

    public final boolean getExpandState() {
        return this.expandState;
    }

    @Nullable
    public final Point getLocationPoint() {
        return this.locationPoint;
    }

    public final void setDockType(@Nullable DockType dockType) {
        this.dockType = dockType;
    }

    public final void setExpandState(boolean z) {
        this.expandState = z;
    }

    public final void setLocationPoint(@Nullable Point point) {
        this.locationPoint = point;
    }

    public PenBoxLocationModel(@Nullable Point point, @Nullable DockType dockType, boolean z) {
        this.locationPoint = point;
        this.dockType = dockType;
        this.expandState = z;
    }

    public /* synthetic */ PenBoxLocationModel(Point point, DockType dockType, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : point, (i & 2) != 0 ? null : dockType, (i & 4) != 0 ? true : z);
    }
}
