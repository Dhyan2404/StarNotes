package com.onyx.android.sdk.universal.editor.display;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.RectF;
import android.view.View;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.data.AnimateBoxArgs;
import com.onyx.android.sdk.universal.editor.data.PageRenderNodeInfo;
import com.onyx.android.sdk.universal.editor.display.RenderNodeAnimator;
import com.onyx.android.sdk.universal.editor.display.node.IRenderNode;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u000e\u0018\u00002\u00020\u0001:\u0003JKLB\u000f\u0012\u0006\u0010(\u001a\u00020%¢\u0006\u0004\bH\u0010IJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J.\u0010\r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\bJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015J\u0012\u0010\u001a\u001a\u00020\u0010*\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018J\u0012\u0010\u001b\u001a\u00020\u0010*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\bJ\u0012\u0010\u001c\u001a\u00020\u0010*\u00020\u00042\u0006\u0010\f\u001a\u00020\bJ&\u0010$\u001a\u0006\u0012\u0002\b\u00030#2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u001d2\u0006\u0010\"\u001a\u00020!R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u001d\u0010.\u001a\b\u0012\u0004\u0012\u00020\u000e0)8\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u001d\u00101\u001a\b\u0012\u0004\u0012\u00020\u00150)8\u0006¢\u0006\f\n\u0004\b/\u0010+\u001a\u0004\b0\u0010-R\u001d\u00104\u001a\b\u0012\u0004\u0012\u00020\u00120)8\u0006¢\u0006\f\n\u0004\b2\u0010+\u001a\u0004\b3\u0010-R5\u0010>\u001a\u0015\u0012\f\u0012\n 6*\u0004\u0018\u00010\b0\b05¢\u0006\u0002\b78\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001a\u0010D\u001a\u00020?8\u0006X\u0086D¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010CR\u001a\u0010G\u001a\u00020?8\u0006X\u0086D¢\u0006\f\n\u0004\bE\u0010A\u001a\u0004\bF\u0010C¨\u0006M"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;", "", "", "startAnimations", "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "renderNode", "animateRemove", "animateAdd", "", "fromX", "fromY", "toX", "toY", "animateMove", "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;", "removeInfo", "Landroid/animation/Animator;", "doAnimateRemove", "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;", "moveInfo", "doAnimateMove", "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;", "addInfo", "doAnimateAdd", "", "to", "alphaAnimator", "translateXAnimator", "translateYAnimator", "", "", "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;", "pageRenderNodeMap", "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;", "args", "Lio/reactivex/rxjava3/core/Observable;", "boxAnimationObservable", "Landroid/view/View;", "a", "Landroid/view/View;", "hostView", "", "b", "Ljava/util/List;", "getRemoveInfos", "()Ljava/util/List;", "removeInfos", "c", "getAddInfos", "addInfos", "d", "getMoveInfos", "moveInfos", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "e", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "getReplaySubject", "()Lio/reactivex/rxjava3/subjects/ReplaySubject;", "setReplaySubject", "(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V", "replaySubject", "", C6997f.f39671c, "J", "getMoveDuration", "()J", "moveDuration", C6998g.f39679a, "getAlphaDuration", "alphaDuration", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "AddInfo", "MoveInfo", "RemoveInfo", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenderNodeAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNodeAnimator.kt\ncom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,180:1\n1549#2:181\n1620#2,3:182\n1549#2:185\n1620#2,3:186\n1549#2:189\n1620#2,3:190\n1855#2,2:249\n1855#2,2:251\n1855#2,2:253\n91#3,14:193\n91#3,14:207\n91#3,14:221\n91#3,14:235\n*S KotlinDebug\n*F\n+ 1 RenderNodeAnimator.kt\ncom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator\n*L\n48#1:181\n48#1:182,3\n49#1:185\n49#1:186,3\n50#1:189\n50#1:190,3\n161#1:249,2\n166#1:251,2\n171#1:253,2\n56#1:193,14\n94#1:207,14\n113#1:221,14\n127#1:235,14\n*E\n"})
/* loaded from: classes8.dex */
public final class RenderNodeAnimator {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final View hostView;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<RemoveInfo> removeInfos;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final List<AddInfo> addInfos;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<MoveInfo> moveInfos;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public ReplaySubject<Integer> replaySubject;

    /* renamed from: f, reason: from kotlin metadata */
    public final long moveDuration;

    /* renamed from: g, reason: from kotlin metadata */
    public final long alphaDuration;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;", "", "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "component1", "renderNode", "copy", "", "toString", "", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "getRenderNode", "()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final /* data */ class AddInfo {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final IRenderNode renderNode;

        public AddInfo(@NotNull IRenderNode renderNode) {
            Intrinsics.checkNotNullParameter(renderNode, "renderNode");
            this.renderNode = renderNode;
        }

        public static /* synthetic */ AddInfo copy$default(AddInfo addInfo, IRenderNode iRenderNode, int i, Object obj) {
            if ((i & 1) != 0) {
                iRenderNode = addInfo.renderNode;
            }
            return addInfo.copy(iRenderNode);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final IRenderNode getRenderNode() {
            return this.renderNode;
        }

        @NotNull
        public final AddInfo copy(@NotNull IRenderNode renderNode) {
            Intrinsics.checkNotNullParameter(renderNode, "renderNode");
            return new AddInfo(renderNode);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof AddInfo) && Intrinsics.areEqual(this.renderNode, ((AddInfo) other).renderNode);
        }

        @NotNull
        public final IRenderNode getRenderNode() {
            return this.renderNode;
        }

        public int hashCode() {
            return this.renderNode.hashCode();
        }

        @NotNull
        public String toString() {
            return "AddInfo(renderNode=" + this.renderNode + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b#\u0010$J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J;\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u0004HÆ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\n\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001a\u001a\u0004\b\u001e\u0010\u001cR\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010\u001cR\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b!\u0010\u001a\u001a\u0004\b\"\u0010\u001c¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;", "", "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "component1", "", "component2", "component3", "component4", "component5", "renderNode", "fromX", "fromY", "toX", "toY", "copy", "", "toString", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "getRenderNode", "()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "b", "I", "getFromX", "()I", "c", "getFromY", "d", "getToX", "e", "getToY", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;IIII)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final /* data */ class MoveInfo {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final IRenderNode renderNode;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        public final int fromX;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        public final int fromY;

        /* renamed from: d, reason: from kotlin metadata and from toString */
        public final int toX;

        /* renamed from: e, reason: from kotlin metadata and from toString */
        public final int toY;

        public MoveInfo(@NotNull IRenderNode renderNode, int i, int i2, int i3, int i4) {
            Intrinsics.checkNotNullParameter(renderNode, "renderNode");
            this.renderNode = renderNode;
            this.fromX = i;
            this.fromY = i2;
            this.toX = i3;
            this.toY = i4;
        }

        public static /* synthetic */ MoveInfo copy$default(MoveInfo moveInfo, IRenderNode iRenderNode, int i, int i2, int i3, int i4, int i5, Object obj) {
            if ((i5 & 1) != 0) {
                iRenderNode = moveInfo.renderNode;
            }
            if ((i5 & 2) != 0) {
                i = moveInfo.fromX;
            }
            int i6 = i;
            if ((i5 & 4) != 0) {
                i2 = moveInfo.fromY;
            }
            int i7 = i2;
            if ((i5 & 8) != 0) {
                i3 = moveInfo.toX;
            }
            int i8 = i3;
            if ((i5 & 16) != 0) {
                i4 = moveInfo.toY;
            }
            return moveInfo.copy(iRenderNode, i6, i7, i8, i4);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final IRenderNode getRenderNode() {
            return this.renderNode;
        }

        /* renamed from: component2, reason: from getter */
        public final int getFromX() {
            return this.fromX;
        }

        /* renamed from: component3, reason: from getter */
        public final int getFromY() {
            return this.fromY;
        }

        /* renamed from: component4, reason: from getter */
        public final int getToX() {
            return this.toX;
        }

        /* renamed from: component5, reason: from getter */
        public final int getToY() {
            return this.toY;
        }

        @NotNull
        public final MoveInfo copy(@NotNull IRenderNode renderNode, int fromX, int fromY, int toX, int toY) {
            Intrinsics.checkNotNullParameter(renderNode, "renderNode");
            return new MoveInfo(renderNode, fromX, fromY, toX, toY);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MoveInfo)) {
                return false;
            }
            MoveInfo moveInfo = (MoveInfo) other;
            return Intrinsics.areEqual(this.renderNode, moveInfo.renderNode) && this.fromX == moveInfo.fromX && this.fromY == moveInfo.fromY && this.toX == moveInfo.toX && this.toY == moveInfo.toY;
        }

        public final int getFromX() {
            return this.fromX;
        }

        public final int getFromY() {
            return this.fromY;
        }

        @NotNull
        public final IRenderNode getRenderNode() {
            return this.renderNode;
        }

        public final int getToX() {
            return this.toX;
        }

        public final int getToY() {
            return this.toY;
        }

        public int hashCode() {
            return (((((((this.renderNode.hashCode() * 31) + Integer.hashCode(this.fromX)) * 31) + Integer.hashCode(this.fromY)) * 31) + Integer.hashCode(this.toX)) * 31) + Integer.hashCode(this.toY);
        }

        @NotNull
        public String toString() {
            return "MoveInfo(renderNode=" + this.renderNode + ", fromX=" + this.fromX + ", fromY=" + this.fromY + ", toX=" + this.toX + ", toY=" + this.toY + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;", "", "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "component1", "renderNode", "copy", "", "toString", "", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "getRenderNode", "()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final /* data */ class RemoveInfo {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final IRenderNode renderNode;

        public RemoveInfo(@NotNull IRenderNode renderNode) {
            Intrinsics.checkNotNullParameter(renderNode, "renderNode");
            this.renderNode = renderNode;
        }

        public static /* synthetic */ RemoveInfo copy$default(RemoveInfo removeInfo, IRenderNode iRenderNode, int i, Object obj) {
            if ((i & 1) != 0) {
                iRenderNode = removeInfo.renderNode;
            }
            return removeInfo.copy(iRenderNode);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final IRenderNode getRenderNode() {
            return this.renderNode;
        }

        @NotNull
        public final RemoveInfo copy(@NotNull IRenderNode renderNode) {
            Intrinsics.checkNotNullParameter(renderNode, "renderNode");
            return new RemoveInfo(renderNode);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof RemoveInfo) && Intrinsics.areEqual(this.renderNode, ((RemoveInfo) other).renderNode);
        }

        @NotNull
        public final IRenderNode getRenderNode() {
            return this.renderNode;
        }

        public int hashCode() {
            return this.renderNode.hashCode();
        }

        @NotNull
        public String toString() {
            return "RemoveInfo(renderNode=" + this.renderNode + ')';
        }
    }

    public RenderNodeAnimator(@NotNull View hostView) {
        Intrinsics.checkNotNullParameter(hostView, "hostView");
        this.hostView = hostView;
        this.removeInfos = new ArrayList();
        this.addInfos = new ArrayList();
        this.moveInfos = new ArrayList();
        ReplaySubject<Integer> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.replaySubject = create;
        this.moveDuration = 250L;
        this.alphaDuration = 250L;
    }

    /* renamed from: d */
    public static final void m40777d(IRenderNode this_alphaAnimator, RenderNodeAnimator this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this_alphaAnimator, "$this_alphaAnimator");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this_alphaAnimator.setAlpha(((Float) animatedValue).floatValue());
        this$0.hostView.invalidate();
    }

    /* renamed from: e */
    public static final void m40778e(IRenderNode this_translateXAnimator, RenderNodeAnimator this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this_translateXAnimator, "$this_translateXAnimator");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this_translateXAnimator.setTranslationX(((Float) animatedValue).floatValue());
        this$0.hostView.invalidate();
    }

    /* renamed from: f */
    public static final void m40779f(IRenderNode this_translateYAnimator, RenderNodeAnimator this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this_translateYAnimator, "$this_translateYAnimator");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this_translateYAnimator.setTranslationY(((Float) animatedValue).floatValue());
        this$0.hostView.invalidate();
    }

    @NotNull
    public final Animator alphaAnimator(@NotNull final IRenderNode iRenderNode, float f) {
        Intrinsics.checkNotNullParameter(iRenderNode, "<this>");
        ValueAnimator ofFloat = ValueAnimator.ofFloat(iRenderNode.getAlpha(), f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.fkl
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RenderNodeAnimator.m40777d(IRenderNode.this, this, valueAnimator);
            }
        });
        Intrinsics.checkNotNullExpressionValue(ofFloat, "apply(...)");
        return ofFloat;
    }

    public final void animateAdd(@NotNull IRenderNode renderNode) {
        Intrinsics.checkNotNullParameter(renderNode, "renderNode");
        renderNode.setAlpha(0.0f);
        this.addInfos.add(new AddInfo(renderNode));
    }

    public final void animateMove(@NotNull IRenderNode renderNode, int fromX, int fromY, int toX, int toY) {
        Intrinsics.checkNotNullParameter(renderNode, "renderNode");
        float f = fromX;
        float f2 = fromY;
        float translationX = toX - (f - renderNode.getTranslationX());
        float translationY = toY - (f2 - renderNode.getTranslationY());
        if (translationX == 0.0f) {
            if (translationY == 0.0f) {
                return;
            }
        }
        if (!(translationX == 0.0f)) {
            renderNode.setTranslationX(f);
        }
        if (!(translationY == 0.0f)) {
            renderNode.setTranslationY(f2);
        }
        this.moveInfos.add(new MoveInfo(renderNode, fromX, fromY, toX, toY));
    }

    public final void animateRemove(@NotNull IRenderNode renderNode) {
        Intrinsics.checkNotNullParameter(renderNode, "renderNode");
        this.removeInfos.add(new RemoveInfo(renderNode));
    }

    @NotNull
    public final Observable<?> boxAnimationObservable(@NotNull Map<String, PageRenderNodeInfo> pageRenderNodeMap, @NotNull AnimateBoxArgs args) {
        IRenderNode renderNode;
        IRenderNode renderNode2;
        IRenderNode renderNode3;
        Intrinsics.checkNotNullParameter(pageRenderNodeMap, "pageRenderNodeMap");
        Intrinsics.checkNotNullParameter(args, "args");
        Iterator<T> it2 = args.getRemoveList().iterator();
        while (it2.hasNext()) {
            PageRenderNodeInfo pageRenderNodeInfo = pageRenderNodeMap.get((String) it2.next());
            if (pageRenderNodeInfo != null && (renderNode3 = pageRenderNodeInfo.getRenderNode()) != null) {
                animateRemove(renderNode3);
            }
        }
        Iterator<T> it3 = args.getAddList().iterator();
        while (it3.hasNext()) {
            PageRenderNodeInfo pageRenderNodeInfo2 = pageRenderNodeMap.get((String) it3.next());
            if (pageRenderNodeInfo2 != null && (renderNode2 = pageRenderNodeInfo2.getRenderNode()) != null) {
                animateAdd(renderNode2);
            }
        }
        Iterator<T> it4 = args.getMoveList().entrySet().iterator();
        while (it4.hasNext()) {
            Map.Entry entry = (Map.Entry) it4.next();
            BoxInfo boxInfo = (BoxInfo) entry.getKey();
            RectF rectF = (RectF) entry.getValue();
            PageRenderNodeInfo pageRenderNodeInfo3 = pageRenderNodeMap.get(boxInfo.getId());
            if (pageRenderNodeInfo3 != null && (renderNode = pageRenderNodeInfo3.getRenderNode()) != null) {
                animateMove(renderNode, (int) boxInfo.getVisibleRect().left, (int) boxInfo.getVisibleRect().top, (int) rectF.left, (int) rectF.top);
            }
        }
        ReplaySubject<Integer> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.replaySubject = create;
        startAnimations();
        return this.replaySubject;
    }

    @NotNull
    public final Animator doAnimateAdd(@NotNull final AddInfo addInfo) {
        Intrinsics.checkNotNullParameter(addInfo, "addInfo");
        Animator alphaAnimator = alphaAnimator(addInfo.getRenderNode(), 1.0f);
        alphaAnimator.setDuration(this.alphaDuration);
        alphaAnimator.addListener(new Animator.AnimatorListener() { // from class: com.onyx.android.sdk.universal.editor.display.RenderNodeAnimator$doAnimateAdd$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
                RenderNodeAnimator.AddInfo.this.getRenderNode().setAlpha(1.0f);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        return alphaAnimator;
    }

    @NotNull
    public final Animator doAnimateMove(@NotNull final MoveInfo moveInfo) {
        Intrinsics.checkNotNullParameter(moveInfo, "moveInfo");
        final int toX = moveInfo.getToX() - moveInfo.getFromX();
        final int toY = moveInfo.getToY() - moveInfo.getFromY();
        ArrayList arrayList = new ArrayList();
        if (toX != 0) {
            arrayList.add(translateXAnimator(moveInfo.getRenderNode(), ((int) moveInfo.getRenderNode().getTranslationX()) + toX));
        }
        if (toY != 0) {
            arrayList.add(translateYAnimator(moveInfo.getRenderNode(), ((int) moveInfo.getRenderNode().getTranslationY()) + toY));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(this.moveDuration);
        animatorSet.playTogether(arrayList);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.onyx.android.sdk.universal.editor.display.RenderNodeAnimator$doAnimateMove$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
                if (toX != 0) {
                    moveInfo.getRenderNode().setTranslationX(0.0f);
                }
                if (toY != 0) {
                    moveInfo.getRenderNode().setTranslationY(0.0f);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        return animatorSet;
    }

    @NotNull
    public final Animator doAnimateRemove(@NotNull final RemoveInfo removeInfo) {
        Intrinsics.checkNotNullParameter(removeInfo, "removeInfo");
        Animator alphaAnimator = alphaAnimator(removeInfo.getRenderNode(), 0.0f);
        alphaAnimator.setDuration(this.alphaDuration);
        alphaAnimator.addListener(new Animator.AnimatorListener() { // from class: com.onyx.android.sdk.universal.editor.display.RenderNodeAnimator$doAnimateRemove$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                RenderNodeAnimator.RemoveInfo.this.getRenderNode().setAlpha(1.0f);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        return alphaAnimator;
    }

    @NotNull
    public final List<AddInfo> getAddInfos() {
        return this.addInfos;
    }

    public final long getAlphaDuration() {
        return this.alphaDuration;
    }

    public final long getMoveDuration() {
        return this.moveDuration;
    }

    @NotNull
    public final List<MoveInfo> getMoveInfos() {
        return this.moveInfos;
    }

    @NotNull
    public final List<RemoveInfo> getRemoveInfos() {
        return this.removeInfos;
    }

    @NotNull
    public final ReplaySubject<Integer> getReplaySubject() {
        return this.replaySubject;
    }

    public final void setReplaySubject(@NotNull ReplaySubject<Integer> replaySubject) {
        Intrinsics.checkNotNullParameter(replaySubject, "<set-?>");
        this.replaySubject = replaySubject;
    }

    public final void startAnimations() {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        ArrayList arrayList = new ArrayList();
        List<RemoveInfo> list = this.removeInfos;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(doAnimateRemove((RemoveInfo) it2.next()));
        }
        arrayList.addAll(arrayList2);
        List<MoveInfo> list2 = this.moveInfos;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(doAnimateMove((MoveInfo) it3.next()));
        }
        arrayList.addAll(arrayList3);
        List<AddInfo> list3 = this.addInfos;
        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault3);
        Iterator<T> it4 = list3.iterator();
        while (it4.hasNext()) {
            arrayList4.add(doAnimateAdd((AddInfo) it4.next()));
        }
        arrayList.addAll(arrayList4);
        this.removeInfos.clear();
        this.moveInfos.clear();
        this.addInfos.clear();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.onyx.android.sdk.universal.editor.display.RenderNodeAnimator$startAnimations$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                RxjavaKt.done(RenderNodeAnimator.this.getReplaySubject(), 0);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        animatorSet.start();
    }

    @NotNull
    public final Animator translateXAnimator(@NotNull final IRenderNode iRenderNode, int i) {
        Intrinsics.checkNotNullParameter(iRenderNode, "<this>");
        ValueAnimator ofFloat = ValueAnimator.ofFloat(iRenderNode.getTranslationX(), i);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.gkl
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RenderNodeAnimator.m40778e(IRenderNode.this, this, valueAnimator);
            }
        });
        Intrinsics.checkNotNullExpressionValue(ofFloat, "apply(...)");
        return ofFloat;
    }

    @NotNull
    public final Animator translateYAnimator(@NotNull final IRenderNode iRenderNode, int i) {
        Intrinsics.checkNotNullParameter(iRenderNode, "<this>");
        ValueAnimator ofFloat = ValueAnimator.ofFloat(iRenderNode.getTranslationY(), i);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.hkl
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RenderNodeAnimator.m40779f(IRenderNode.this, this, valueAnimator);
            }
        });
        Intrinsics.checkNotNullExpressionValue(ofFloat, "apply(...)");
        return ofFloat;
    }
}
