package com.onyx.android.sdk.universal.editor.data;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.bitmap.SafeBitmap;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.data.SliceKt;
import com.onyx.android.sdk.universal.editor.display.node.IRenderNode;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001=B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020&J\u0006\u0010'\u001a\u00020\u0014J\u000e\u0010(\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010)\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u0006\u0010*\u001a\u00020\u0014J\u000e\u0010+\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010,\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u001c\u0010-\u001a\u00020\u00142\b\u0010.\u001a\u0004\u0018\u00010\b2\b\u0010/\u001a\u0004\u0018\u00010\bH\u0002J\u0006\u00100\u001a\u000201J\u0006\u00102\u001a\u000203J\u000e\u00104\u001a\u00020$2\u0006\u00105\u001a\u00020\u0014J\u000e\u00106\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:J\n\u0010;\u001a\u00020<*\u00020\u0005R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\n\"\u0004\b\u001e\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006>"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;", "", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "renderNode", "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)V", "contentSliceInfo", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "getContentSliceInfo", "()Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "setContentSliceInfo", "(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V", "displayState", "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;", "getDisplayState", "()Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;", "setDisplayState", "(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;)V", "isSliceOutOfDate", "", Constants.BOOLEAN_VALUE_SIG, "setSliceOutOfDate", "(Z)V", "isVisible", "setVisible", "getRenderNode", "()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "sliceInfo", "getSliceInfo", "setSliceInfo", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "clearRenderNode", "", "getValidSliceCount", "", "isNeedRequestDisplay", "isNeedUpdateRenderNode", "isRectChanged", "isRenderNodeSizeChanged", "isRotationChanged", "isScaleChanged", "isUpdateSliceInfoSuccess", "old", "new", "toDebugString", "", "toRenderNodePositionRect", "Landroid/graphics/Rect;", "updateDisplayStateAfterDrawPageNode", "drawSuccess", "updateRenderNodeBoxInfo", "updateSliceInfo", "Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;", "pageSliceInfo", "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;", "toVisibleRectF", "Landroid/graphics/RectF;", "DisplayState", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PageRenderNodeInfo {

    @Nullable
    private SliceInfo contentSliceInfo;

    @NotNull
    private DisplayState displayState;
    private boolean isSliceOutOfDate;
    private boolean isVisible;

    @NotNull
    private final IRenderNode renderNode;

    @Nullable
    private SliceInfo sliceInfo;

    @NotNull
    private BoxInfo virtualPageBoxInfo;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;", "", "(Ljava/lang/String;I)V", "NOT_DISPLAY", "LOADING", "DISPLAY_FAIL", "DISPLAY_SUCCESS", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DisplayState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DisplayState[] $VALUES;
        public static final DisplayState NOT_DISPLAY = new DisplayState("NOT_DISPLAY", 0);
        public static final DisplayState LOADING = new DisplayState("LOADING", 1);
        public static final DisplayState DISPLAY_FAIL = new DisplayState("DISPLAY_FAIL", 2);
        public static final DisplayState DISPLAY_SUCCESS = new DisplayState("DISPLAY_SUCCESS", 3);

        private static final /* synthetic */ DisplayState[] $values() {
            return new DisplayState[]{NOT_DISPLAY, LOADING, DISPLAY_FAIL, DISPLAY_SUCCESS};
        }

        static {
            DisplayState[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private DisplayState(String str, int i) {
        }

        @NotNull
        public static EnumEntries<DisplayState> getEntries() {
            return $ENTRIES;
        }

        public static DisplayState valueOf(String str) {
            return (DisplayState) Enum.valueOf(DisplayState.class, str);
        }

        public static DisplayState[] values() {
            return (DisplayState[]) $VALUES.clone();
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DisplayState.values().length];
            try {
                iArr[DisplayState.NOT_DISPLAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DisplayState.DISPLAY_FAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PageRenderNodeInfo(@NotNull BoxInfo virtualPageBoxInfo, @NotNull IRenderNode renderNode) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(renderNode, "renderNode");
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.renderNode = renderNode;
        this.isVisible = true;
        this.displayState = DisplayState.NOT_DISPLAY;
    }

    private final boolean isUpdateSliceInfoSuccess(SliceInfo old, SliceInfo r5) {
        SafeBitmap safeBitmap;
        SafeBitmap safeBitmap2;
        Bitmap bitmap = null;
        String cacheKey = r5 != null ? r5.cacheKey() : null;
        if (cacheKey == null) {
            cacheKey = "";
        }
        String cacheKey2 = old != null ? old.cacheKey() : null;
        String str = cacheKey2 != null ? cacheKey2 : "";
        Bitmap bitmap2 = (old == null || (safeBitmap2 = old.getSafeBitmap()) == null) ? null : safeBitmap2.getBitmap();
        if (r5 != null && (safeBitmap = r5.getSafeBitmap()) != null) {
            bitmap = safeBitmap.getBitmap();
        }
        return (Intrinsics.areEqual(cacheKey, str) && Intrinsics.areEqual(bitmap, bitmap2)) ? false : true;
    }

    public final void clearRenderNode() {
        this.renderNode.discardDisplayList();
        this.sliceInfo = null;
        this.contentSliceInfo = null;
    }

    @Nullable
    public final SliceInfo getContentSliceInfo() {
        return this.contentSliceInfo;
    }

    @NotNull
    public final DisplayState getDisplayState() {
        return this.displayState;
    }

    @NotNull
    public final IRenderNode getRenderNode() {
        return this.renderNode;
    }

    @Nullable
    public final SliceInfo getSliceInfo() {
        return this.sliceInfo;
    }

    public final int getValidSliceCount() {
        boolean isValid = SliceKt.isValid(this.sliceInfo);
        return SliceKt.isValid(this.contentSliceInfo) ? (isValid ? 1 : 0) + 1 : isValid ? 1 : 0;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public final boolean isNeedRequestDisplay() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.displayState.ordinal()];
        return i == 1 || i == 2;
    }

    public final boolean isNeedUpdateRenderNode(@NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        return isRectChanged(virtualPageBoxInfo) || isScaleChanged(virtualPageBoxInfo) || isRotationChanged(virtualPageBoxInfo);
    }

    public final boolean isRectChanged(@NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        RectF visibleRect = virtualPageBoxInfo.getVisibleRect();
        if (this.renderNode.getTranslationX() == visibleRect.left) {
            return (((this.renderNode.getTranslationY() > visibleRect.top ? 1 : (this.renderNode.getTranslationY() == visibleRect.top ? 0 : -1)) == 0) && this.renderNode.getWidth() == ((int) visibleRect.width()) && this.renderNode.getHeight() == ((int) visibleRect.height())) ? false : true;
        }
        return true;
    }

    public final boolean isRenderNodeSizeChanged() {
        Rect renderNodePositionRect = toRenderNodePositionRect();
        return (this.renderNode.getWidth() == renderNodePositionRect.width() && this.renderNode.getHeight() == renderNodePositionRect.height()) ? false : true;
    }

    public final boolean isRotationChanged(@NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        return !(this.virtualPageBoxInfo.getRotation() == virtualPageBoxInfo.getRotation());
    }

    public final boolean isScaleChanged(@NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        return !(this.virtualPageBoxInfo.getActualScale() == virtualPageBoxInfo.getActualScale());
    }

    /* renamed from: isSliceOutOfDate, reason: from getter */
    public final boolean getIsSliceOutOfDate() {
        return this.isSliceOutOfDate;
    }

    /* renamed from: isVisible, reason: from getter */
    public final boolean getIsVisible() {
        return this.isVisible;
    }

    public final void setContentSliceInfo(@Nullable SliceInfo sliceInfo) {
        this.contentSliceInfo = sliceInfo;
    }

    public final void setDisplayState(@NotNull DisplayState displayState) {
        Intrinsics.checkNotNullParameter(displayState, "<set-?>");
        this.displayState = displayState;
    }

    public final void setSliceInfo(@Nullable SliceInfo sliceInfo) {
        this.sliceInfo = sliceInfo;
    }

    public final void setSliceOutOfDate(boolean z) {
        this.isSliceOutOfDate = z;
    }

    public final void setVirtualPageBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualPageBoxInfo = boxInfo;
    }

    public final void setVisible(boolean z) {
        this.isVisible = z;
    }

    @NotNull
    public final String toDebugString() {
        return "PageRenderNodeInfo:virtualPage.id = " + this.virtualPageBoxInfo.getId() + ", " + AnyKt.toSimpleNameString(this.virtualPageBoxInfo) + "\n, virtualPage.visibleRect = " + this.virtualPageBoxInfo.getVisibleRect() + ", actualScale = " + this.virtualPageBoxInfo.getActualScale() + ", toRect = " + toRenderNodePositionRect() + "\n, renderNode.visibleRect = " + toVisibleRectF(this.renderNode) + ", width = " + this.renderNode.getWidth() + ", height = " + this.renderNode.getHeight() + "\n, isSliceOutOfDate = " + this.isSliceOutOfDate + "\n, displayState = " + this.displayState + "\n, " + SliceKt.getDebugString(this.sliceInfo) + "\n, " + SliceKt.getDebugString(this.contentSliceInfo) + '\n';
    }

    @NotNull
    public final Rect toRenderNodePositionRect() {
        return new Rect(0, 0, (int) this.virtualPageBoxInfo.width(), (int) this.virtualPageBoxInfo.height());
    }

    @NotNull
    public final RectF toVisibleRectF(@NotNull IRenderNode iRenderNode) {
        Intrinsics.checkNotNullParameter(iRenderNode, "<this>");
        return new RectF(iRenderNode.getTranslationX(), iRenderNode.getTranslationY(), iRenderNode.getTranslationX() + iRenderNode.getWidth(), iRenderNode.getTranslationY() + iRenderNode.getHeight());
    }

    public final void updateDisplayStateAfterDrawPageNode(boolean drawSuccess) {
        this.displayState = drawSuccess ? DisplayState.DISPLAY_SUCCESS : DisplayState.DISPLAY_FAIL;
    }

    public final boolean updateRenderNodeBoxInfo(@NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        if (!isNeedUpdateRenderNode(virtualPageBoxInfo)) {
            return false;
        }
        RectF visibleRect = virtualPageBoxInfo.getVisibleRect();
        this.renderNode.setTranslationX(visibleRect.left);
        this.renderNode.setTranslationY(visibleRect.top);
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        return true;
    }

    @NotNull
    public final UpdatePageRenderNodeSliceResult updateSliceInfo(@NotNull PageSliceInfo pageSliceInfo) {
        SliceInfo sliceInfo;
        Intrinsics.checkNotNullParameter(pageSliceInfo, "pageSliceInfo");
        SliceInfo sliceInfo2 = pageSliceInfo.getSliceInfo();
        SliceInfo contentSliceInfo = pageSliceInfo.getContentSliceInfo();
        SliceInfo sliceInfo3 = this.contentSliceInfo;
        SliceInfo sliceInfo4 = this.sliceInfo;
        boolean z = isUpdateSliceInfoSuccess(sliceInfo3, contentSliceInfo) || isUpdateSliceInfoSuccess(sliceInfo4, sliceInfo2);
        if (z) {
            this.sliceInfo = sliceInfo2;
            this.contentSliceInfo = contentSliceInfo;
        } else {
            SliceInfo sliceInfo5 = this.sliceInfo;
            if (sliceInfo5 != null) {
                sliceInfo5.copyDisplayData(sliceInfo2);
            }
            if (contentSliceInfo != null && (sliceInfo = this.contentSliceInfo) != null) {
                sliceInfo.copyDisplayData(contentSliceInfo);
            }
        }
        return new UpdatePageRenderNodeSliceResult(this.virtualPageBoxInfo.getId(), z, sliceInfo3, sliceInfo4, contentSliceInfo, sliceInfo2);
    }

    public /* synthetic */ PageRenderNodeInfo(BoxInfo boxInfo, IRenderNode iRenderNode, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(boxInfo, (i & 2) != 0 ? DisplayDataKt.createRenderNode(boxInfo.getId()) : iRenderNode);
    }
}
