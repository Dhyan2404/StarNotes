package com.onyx.android.sdk.note.common.data.render;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\r¢\u0006\u0004\b4\u00105J\u0006\u0010\u0003\u001a\u00020\u0002J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\u0007\u001a\u00020\u0000J\u0006\u0010\b\u001a\u00020\u0002J\u0018\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0017\u0010\u0011\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\f\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR(\u0010(\u001a\b\u0012\u0004\u0012\u00020!0\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010/\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u00103\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u0013\u001a\u0004\b1\u0010\u0015\"\u0004\b2\u0010\u0017¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "", "", "isNeedRender", "", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "noteSliceList", "copy", "isEnabledEnsureDisplay", OcrValues.LANG_ITALIAN, "Landroid/graphics/RectF;", "pageDisplayRectF", "a", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "b", Constants.HASIDCALL_INDEX_SIG, "getShowExcerptIndicator", Constants.BOOLEAN_VALUE_SIG, "setShowExcerptIndicator", "(Z)V", "showExcerptIndicator", "", "c", "I", "getLayerId", "()I", "setLayerId", "(I)V", "layerId", "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;", "d", "Ljava/util/List;", "getSliceRenderInfoList", "()Ljava/util/List;", "setSliceRenderInfoList", "(Ljava/util/List;)V", "sliceRenderInfoList", "e", "Landroid/graphics/RectF;", "getDirtyPageDisplayRectF", "()Landroid/graphics/RectF;", "setDirtyPageDisplayRectF", "(Landroid/graphics/RectF;)V", "dirtyPageDisplayRectF", C6997f.f39671c, "getSupportRenderPageContentBitmap", "setSupportRenderPageContentBitmap", "supportRenderPageContentBitmap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteRenderArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteRenderArgs.kt\ncom/onyx/android/sdk/note/common/data/render/NoteRenderArgs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n1549#2:119\n1620#2,3:120\n766#2:123\n857#2,2:124\n*S KotlinDebug\n*F\n+ 1 NoteRenderArgs.kt\ncom/onyx/android/sdk/note/common/data/render/NoteRenderArgs\n*L\n38#1:119\n38#1:120,3\n56#1:123\n56#1:124,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteRenderArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualPageBoxInfo;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean showExcerptIndicator;

    /* renamed from: c, reason: from kotlin metadata */
    public int layerId;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<NoteSliceRenderInfo> sliceRenderInfoList;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RectF dirtyPageDisplayRectF;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean supportRenderPageContentBitmap;

    public NoteRenderArgs(@NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.showExcerptIndicator = true;
        this.layerId = -1;
        this.sliceRenderInfoList = new ArrayList();
        this.dirtyPageDisplayRectF = new RectF();
        this.supportRenderPageContentBitmap = true;
    }

    /* renamed from: a */
    public final boolean m33649a(SliceInfo it2, RectF pageDisplayRectF) {
        boolean isContainPageDisplayRect = it2.isContainPageDisplayRect(pageDisplayRectF);
        if (!isContainPageDisplayRect) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "pass = " + isContainPageDisplayRect + ", dirtyRect not in slice, do not render, isHighQuality = " + it2.getIsHighQuality() + ", id = " + it2.getBoxInfo().getId(), new Object[0]);
        }
        return isContainPageDisplayRect;
    }

    @NotNull
    public final NoteRenderArgs copy() {
        NoteRenderArgs noteRenderArgs = new NoteRenderArgs(this.virtualPageBoxInfo.copy());
        noteRenderArgs.showExcerptIndicator = this.showExcerptIndicator;
        noteRenderArgs.layerId = this.layerId;
        noteRenderArgs.sliceRenderInfoList = CollectionKt.copy(this.sliceRenderInfoList);
        noteRenderArgs.dirtyPageDisplayRectF = RectFKt.copy(this.dirtyPageDisplayRectF);
        noteRenderArgs.supportRenderPageContentBitmap = this.supportRenderPageContentBitmap;
        return noteRenderArgs;
    }

    @NotNull
    public final RectF getDirtyPageDisplayRectF() {
        return this.dirtyPageDisplayRectF;
    }

    public final int getLayerId() {
        return this.layerId;
    }

    public final boolean getShowExcerptIndicator() {
        return this.showExcerptIndicator;
    }

    @NotNull
    public final List<NoteSliceRenderInfo> getSliceRenderInfoList() {
        return this.sliceRenderInfoList;
    }

    public final boolean getSupportRenderPageContentBitmap() {
        return this.supportRenderPageContentBitmap;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public final boolean isEnabledEnsureDisplay() {
        final RectF rectF = this.dirtyPageDisplayRectF;
        if (RectKt.isNullOrEmpty(rectF)) {
            return false;
        }
        List<SliceInfo> noteSliceList = noteSliceList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : noteSliceList) {
            if (((SliceInfo) obj).getIsHighQuality()) {
                arrayList.add(obj);
            }
        }
        return !CollectionKt.contains(arrayList, new Function1<SliceInfo, Boolean>() { // from class: com.onyx.android.sdk.note.common.data.render.NoteRenderArgs$isEnabledEnsureDisplay$containInvalidDirtyRectHighQualitySlice$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SliceInfo it2) {
                boolean m33649a;
                Intrinsics.checkNotNullParameter(it2, "it");
                m33649a = NoteRenderArgs.this.m33649a(it2, rectF);
                return Boolean.valueOf(!m33649a);
            }
        });
    }

    public final boolean isNeedRender() {
        return !this.sliceRenderInfoList.isEmpty();
    }

    @NotNull
    public final List<SliceInfo> noteSliceList() {
        int collectionSizeOrDefault;
        List<SliceInfo> mutableList;
        List<NoteSliceRenderInfo> list = this.sliceRenderInfoList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteSliceRenderInfo) it2.next()).getNoteRenderSlice());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    public final void setDirtyPageDisplayRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.dirtyPageDisplayRectF = rectF;
    }

    public final void setLayerId(int i) {
        this.layerId = i;
    }

    public final void setShowExcerptIndicator(boolean z) {
        this.showExcerptIndicator = z;
    }

    public final void setSliceRenderInfoList(@NotNull List<NoteSliceRenderInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.sliceRenderInfoList = list;
    }

    public final void setSupportRenderPageContentBitmap(boolean z) {
        this.supportRenderPageContentBitmap = z;
    }
}
