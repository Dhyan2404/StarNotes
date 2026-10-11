package com.onyx.android.sdk.note.common.data.selection;

import android.graphics.Bitmap;
import android.graphics.Path;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.data.selection.SelectionArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.PathUtils;
import com.onyx.android.sdk.note.common.utils.PointUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bA\u0010BJ\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\b\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002J\b\u0010\t\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\nJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\b\u0010\u0013\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0016\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u0014\u0010\u001a\u001a\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017J\u000e\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u000eJ\u0006\u0010\u001d\u001a\u00020\u0005J\u0006\u0010\u001e\u001a\u00020\u0014J\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00140\u001fJ\u0006\u0010\"\u001a\u00020\u0014J\u000e\u0010\"\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\u0014J\u000e\u0010\u001e\u001a\u00020\u00142\u0006\u0010$\u001a\u00020 J\u0006\u0010&\u001a\u00020%R\u0018\u0010)\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010\u001b\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u0010#\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\"\u00106\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u0014038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u0010+R(\u0010@\u001a\b\u0012\u0004\u0012\u000209088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?¨\u0006C"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;", "", "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "getSelectionRect", "rect", "", "setSelectionRect", "editRect", "setEditRect", "getEditRect", "", "selectionType", "setSelectionType", "getSelectionType", "Landroid/graphics/Path;", "getSelectionPath", "Landroid/graphics/Bitmap;", "bitmap", "setSelectionBitmap", "getSelectionBitmap", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "selectionTrackPoints", "addSelectionPoints", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchDataList", "addSelectionPagePoints", "selectionPath", "setSelectionPath", "clearSelectionPath", "getSelectionPoints", "", "", "getSelectionPagePointsMap", "getSelectionPointsByType", "selectionPoints", CouchFieldKey.KEY_TOC_PAGE_ID, "", "isRectSelection", "a", "Landroid/graphics/Bitmap;", "selectionBitmap", "b", "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "selectionRect", "c", "Landroid/graphics/Path;", "d", "I", "e", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "", C6997f.f39671c, "Ljava/util/Map;", "selectionPagePointsMap", C6998g.f39679a, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/List;", "getSelectionRenderingShapes", "()Ljava/util/List;", "setSelectionRenderingShapes", "(Ljava/util/List;)V", "selectionRenderingShapes", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectionArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionArgs.kt\ncom/onyx/android/sdk/note/common/data/selection/SelectionArgs\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,137:1\n215#2,2:138\n*S KotlinDebug\n*F\n+ 1 SelectionArgs.kt\ncom/onyx/android/sdk/note/common/data/selection/SelectionArgs\n*L\n81#1:138,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SelectionArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Bitmap selectionBitmap;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public SelectionRect selectionRect;

    /* renamed from: d, reason: from kotlin metadata */
    public int selectionType;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public SelectionRect editRect;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Path selectionPath = new Path();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public TouchPointList selectionPoints = new TouchPointList();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Map<String, TouchPointList> selectionPagePointsMap = new LinkedHashMap();

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<Shape> selectionRenderingShapes = new ArrayList();

    /* renamed from: b */
    public static final TouchPointList m33663b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (TouchPointList) tmp0.invoke(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void addSelectionPagePoints(@NotNull List<TouchData> touchDataList) {
        Intrinsics.checkNotNullParameter(touchDataList, "touchDataList");
        for (Map.Entry entry : CollectionKt.toMapList(touchDataList, new Function1<TouchData, String>() { // from class: com.onyx.android.sdk.note.common.data.selection.SelectionArgs$addSelectionPagePoints$map$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull TouchData it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.ensureBoxInfo().getId();
            }
        }, new Function1<TouchData, TouchPoint>() { // from class: com.onyx.android.sdk.note.common.data.selection.SelectionArgs$addSelectionPagePoints$map$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final TouchPoint invoke(@NotNull TouchData it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getTouchPoint();
            }
        }).entrySet()) {
            Map<String, TouchPointList> map = this.selectionPagePointsMap;
            Object key = entry.getKey();
            final SelectionArgs$addSelectionPagePoints$1$1 selectionArgs$addSelectionPagePoints$1$1 = new Function1<String, TouchPointList>() { // from class: com.onyx.android.sdk.note.common.data.selection.SelectionArgs$addSelectionPagePoints$1$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final TouchPointList invoke(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new TouchPointList();
                }
            };
            TouchPointList touchPointList = (TouchPointList) map.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.hgm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    TouchPointList m33663b;
                    m33663b = SelectionArgs.m33663b(Function1.this, obj);
                    return m33663b;
                }
            });
            touchPointList.addAll(touchPointList.size(), (List<TouchPoint>) entry.getValue());
        }
    }

    public final void addSelectionPoints(@Nullable TouchPointList selectionTrackPoints) {
        this.selectionPoints.addAll((TouchPointList) AnyKt.getOrElse(selectionTrackPoints, new Function0<TouchPointList>() { // from class: com.onyx.android.sdk.note.common.data.selection.SelectionArgs$addSelectionPoints$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TouchPointList invoke() {
                return new TouchPointList();
            }
        }));
        if (this.selectionType == 2) {
            PathUtils.INSTANCE.drawRect(this.selectionPath, this.selectionPoints);
        } else {
            PathUtils.INSTANCE.expandPathByTouchList(this.selectionPath, selectionTrackPoints);
        }
    }

    public final void clearSelectionPath() {
        this.selectionPath = new Path();
    }

    @Nullable
    public final SelectionRect getEditRect() {
        return this.editRect;
    }

    @Nullable
    public final Bitmap getSelectionBitmap() {
        return this.selectionBitmap;
    }

    @NotNull
    public final Map<String, TouchPointList> getSelectionPagePointsMap() {
        return this.selectionPagePointsMap;
    }

    @NotNull
    public final Path getSelectionPath() {
        return this.selectionPath;
    }

    @NotNull
    public final TouchPointList getSelectionPoints() {
        return this.selectionPoints;
    }

    @NotNull
    public final TouchPointList getSelectionPointsByType() {
        return getSelectionPointsByType(this.selectionPoints);
    }

    @Nullable
    public final SelectionRect getSelectionRect() {
        return this.selectionRect;
    }

    @NotNull
    public final List<Shape> getSelectionRenderingShapes() {
        return this.selectionRenderingShapes;
    }

    public final int getSelectionType() {
        return this.selectionType;
    }

    public final boolean isRectSelection() {
        return SelectionType.INSTANCE.isRectSelection(getSelectionType());
    }

    public final void setEditRect(@Nullable SelectionRect editRect) {
        this.editRect = editRect;
    }

    public final void setSelectionBitmap(@Nullable Bitmap bitmap) {
        this.selectionBitmap = bitmap;
    }

    public final void setSelectionPath(@NotNull Path selectionPath) {
        Intrinsics.checkNotNullParameter(selectionPath, "selectionPath");
        this.selectionPath = selectionPath;
    }

    public final void setSelectionRect(@Nullable SelectionRect rect) {
        this.selectionRect = rect;
    }

    public final void setSelectionRenderingShapes(@NotNull List<Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectionRenderingShapes = list;
    }

    public final void setSelectionType(int selectionType) {
        this.selectionType = selectionType;
    }

    @NotNull
    public final TouchPointList getSelectionPoints(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        if (this.selectionType == 2) {
            return getSelectionPoints();
        }
        TouchPointList touchPointList = this.selectionPagePointsMap.get(pageId);
        return touchPointList == null ? new TouchPointList() : touchPointList;
    }

    @NotNull
    public final TouchPointList getSelectionPointsByType(@NotNull TouchPointList selectionPoints) {
        Intrinsics.checkNotNullParameter(selectionPoints, "selectionPoints");
        if (this.selectionType == 2) {
            return PathUtils.INSTANCE.rectToPathPointList(PointUtils.INSTANCE.toRectTouchPointList(selectionPoints));
        }
        return selectionPoints.m72175clone();
    }
}
