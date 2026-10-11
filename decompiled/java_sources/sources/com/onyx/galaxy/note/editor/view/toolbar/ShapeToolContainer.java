package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.view.ViewGroupKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.IShapeViewOpt;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeToolContainer;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u00017B\u0011\b\u0016\u0012\u0006\u00101\u001a\u000200¢\u0006\u0004\b2\u00103B\u001d\b\u0016\u0012\u0006\u00101\u001a\u000200\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f¢\u0006\u0004\b2\u00104B%\b\u0016\u0012\u0006\u00101\u001a\u000200\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\u0006\u00105\u001a\u00020\u0019¢\u0006\u0004\b2\u00106J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0014\u0010\u000b\u001a\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\tJ\u0014\u0010\u000f\u001a\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010J\u0010\u0010\u0014\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\rJ\u0016\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0010J\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001c\u001a\u00020\rJ\u000e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\rJ\u0012\u0010!\u001a\u00020\u00042\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0010\u0010$\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0010\u0010%\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0010\u0010&\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0018\u0010)\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\u0002H\u0002R\u0016\u0010,\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010+R\u001e\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010-R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010/¨\u00068"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;", "Landroid/widget/LinearLayout;", "Landroid/view/View;", "clickView", "", "setSelectedChildView", "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setItemClickListener", "Lkotlin/Function0;", "callBack", "addChildViewChangeCallback", "", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "list", "addAllChildView", "", "enable", "enableShapeIconViews", "toolType", "setSelectByType", "select", "updateSelectByType", "Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;", "getSelectShapeToolType", "", "color", "setSelectedColorChange", "shapeToolType", "findViewByType", "ensureShapeToolViewVisible", "Landroid/util/AttributeSet;", "attrs", C6999h.f39688c, "view", C6997f.f39671c, C6998g.f39679a, "d", "e", "parentView", "targetView", "i", "", "F", "iconMargin", "Lkotlin/jvm/functions/Function0;", "childViewChangeCallback", "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "IShapeClickListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeToolContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,245:1\n1864#2,3:246\n1313#3,2:249\n*S KotlinDebug\n*F\n+ 1 ShapeToolContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer\n*L\n59#1:246,3\n80#1:249,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ShapeToolContainer extends LinearLayout {

    /* renamed from: e, reason: from kotlin metadata */
    public float iconMargin;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Function0<Unit> childViewChangeCallback;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public IShapeClickListener listener;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;", "", "onDoubleClicked", "", "iShapeViewOpt", "Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;", "onNormalItemClicked", "onVipItemClicked", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface IShapeClickListener {
        void onDoubleClicked(@NotNull IShapeViewOpt iShapeViewOpt);

        void onNormalItemClicked(@NotNull IShapeViewOpt iShapeViewOpt);

        void onVipItemClicked(@NotNull IShapeViewOpt iShapeViewOpt);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeToolContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: c */
    public static final void m50193c(ShapeToolContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m50197f(view);
    }

    /* renamed from: j */
    public static final void m50194j(View targetView, View parentView) {
        int i;
        int i2;
        int i3;
        Intrinsics.checkNotNullParameter(targetView, "$targetView");
        Intrinsics.checkNotNullParameter(parentView, "$parentView");
        int[] iArr = new int[2];
        targetView.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        parentView.getLocationInWindow(iArr2);
        if (targetView.getRotation() > 0.0f) {
            i = iArr2[1];
            int width = parentView.getWidth() + i;
            i2 = iArr[1];
            int width2 = targetView.getWidth() + i2;
            if (i2 >= i) {
                if (width2 > width) {
                    i3 = width2 - width;
                }
                i3 = 0;
            }
            i3 = i2 - i;
        } else {
            i = iArr2[0];
            int width3 = parentView.getWidth() + i;
            i2 = iArr[0];
            int width4 = targetView.getWidth() + i2;
            if (i2 >= i) {
                if (width4 > width3) {
                    i3 = width4 - width3;
                }
                i3 = 0;
            }
            i3 = i2 - i;
        }
        parentView.scrollBy(i3, 0);
    }

    private final void setSelectedChildView(View clickView) {
        int childCount;
        if (!m50195d(clickView) || (childCount = getChildCount()) < 0) {
            return;
        }
        int i = 0;
        while (true) {
            KeyEvent.Callback childAt = getChildAt(i);
            if (childAt instanceof IShapeViewOpt) {
                IShapeViewOpt iShapeViewOpt = (IShapeViewOpt) childAt;
                if (iShapeViewOpt.getViewShapeType() != ShapeToolType.RULER) {
                    IShapeViewOpt.DefaultImpls.setViewSelect$default(iShapeViewOpt, Intrinsics.areEqual(childAt, clickView), false, 2, null);
                }
            }
            if (i == childCount) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void addAllChildView(@NotNull List<? extends ShapeToolType> list) {
        ShapeIconView shapeIconView;
        Intrinsics.checkNotNullParameter(list, "list");
        removeAllViews();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ShapeToolType shapeToolType = (ShapeToolType) obj;
            if (shapeToolType.getIsShapeToolGroup()) {
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                shapeIconView = new ShapeIconGroupView(context);
            } else {
                Context context2 = getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                shapeIconView = new ShapeIconView(context2);
            }
            shapeIconView.setShapeTool(shapeToolType);
            addView(shapeIconView);
            if (i != 0) {
                ViewGroup.LayoutParams layoutParams = shapeIconView.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                ((LinearLayout.LayoutParams) layoutParams).leftMargin = (int) this.iconMargin;
            }
            ViewKt.shortClick(shapeIconView, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gmm
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShapeToolContainer.m50193c(ShapeToolContainer.this, view);
                }
            });
            i = i2;
        }
        Function0<Unit> function0 = this.childViewChangeCallback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final void addChildViewChangeCallback(@NotNull Function0<Unit> callBack) {
        Intrinsics.checkNotNullParameter(callBack, "callBack");
        this.childViewChangeCallback = callBack;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final boolean m50195d(View view) {
        if (!(view instanceof IShapeViewOpt)) {
            return true;
        }
        return !ShapeToolType.INSTANCE.getDISABLE_SELECT_SHAPE_TOOL_TYPES().contains(((IShapeViewOpt) view).getViewShapeType());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public final boolean m50196e(View view) {
        if (!(view instanceof IShapeViewOpt)) {
            return true;
        }
        return !ShapeToolType.INSTANCE.getDISABLE_SELECT_SHAPE_TOOL_TYPES().contains(((IShapeViewOpt) view).getViewShapeType());
    }

    public final void enableShapeIconViews(boolean enable) {
        Sequence filter;
        Sequence map;
        filter = SequencesKt___SequencesKt.filter(ViewGroupKt.getChildren(this), new Function1<View, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolContainer$enableShapeIconViews$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull View it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2 instanceof IShapeViewOpt);
            }
        });
        map = SequencesKt___SequencesKt.map(filter, new Function1<View, IShapeViewOpt>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolContainer$enableShapeIconViews$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final IShapeViewOpt invoke(@NotNull View it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return (IShapeViewOpt) it2;
            }
        });
        Iterator it2 = map.iterator();
        while (it2.hasNext()) {
            ((IShapeViewOpt) it2.next()).enableShapeView(enable);
        }
    }

    public final void ensureShapeToolViewVisible(@NotNull ShapeToolType shapeToolType) {
        Intrinsics.checkNotNullParameter(shapeToolType, "shapeToolType");
        RectF globalVisibleRectF = com.onyx.android.sdk.base.extension.ViewKt.globalVisibleRectF(this);
        View findViewByType = findViewByType(shapeToolType);
        if (findViewByType == null) {
            return;
        }
        RectF globalVisibleRectF2 = com.onyx.android.sdk.base.extension.ViewKt.globalVisibleRectF(findViewByType);
        if (globalVisibleRectF2.isEmpty() || !globalVisibleRectF.contains(globalVisibleRectF2) || globalVisibleRectF.bottom < globalVisibleRectF2.top + findViewByType.getMeasuredHeight()) {
            m50200i(com.onyx.android.sdk.base.extension.ViewKt.getParentView(this), findViewByType);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public final void m50197f(View view) {
        if (view instanceof IShapeViewOpt) {
            if (m50198g(view)) {
                IShapeClickListener iShapeClickListener = this.listener;
                if (iShapeClickListener != null) {
                    iShapeClickListener.onDoubleClicked((IShapeViewOpt) view);
                    return;
                }
                return;
            }
            IShapeViewOpt iShapeViewOpt = (IShapeViewOpt) view;
            if (iShapeViewOpt.isVipType()) {
                IShapeClickListener iShapeClickListener2 = this.listener;
                if (iShapeClickListener2 != null) {
                    iShapeClickListener2.onVipItemClicked(iShapeViewOpt);
                    return;
                }
                return;
            }
            IShapeClickListener iShapeClickListener3 = this.listener;
            if (iShapeClickListener3 != null) {
                iShapeClickListener3.onNormalItemClicked(iShapeViewOpt);
            }
            setSelectedChildView(view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final View findViewByType(@NotNull ShapeToolType shapeToolType) {
        Intrinsics.checkNotNullParameter(shapeToolType, "shapeToolType");
        int childCount = getChildCount();
        if (childCount < 0) {
            return null;
        }
        int i = 0;
        while (true) {
            View childAt = getChildAt(i);
            if ((childAt instanceof IShapeViewOpt) && ((IShapeViewOpt) childAt).getViewShapeType() == shapeToolType) {
                return childAt;
            }
            if (i == childCount) {
                return null;
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
    
        return kotlin.jvm.internal.Intrinsics.areEqual(r3, r7);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m50198g(android.view.View r7) {
        /*
            r6 = this;
            int r0 = r6.getChildCount()
            r1 = 0
            if (r0 < 0) goto L34
            r2 = r1
        L8:
            android.view.View r3 = r6.getChildAt(r2)
            boolean r4 = r3 instanceof com.onyx.galaxy.note.editor.view.IShapeViewOpt
            if (r4 == 0) goto L2f
            r4 = r3
            com.onyx.galaxy.note.editor.view.IShapeViewOpt r4 = (com.onyx.galaxy.note.editor.view.IShapeViewOpt) r4
            boolean r5 = r4.getIsSelect()
            if (r5 == 0) goto L2f
            boolean r5 = r7 instanceof com.onyx.galaxy.note.editor.view.IShapeViewOpt
            if (r5 == 0) goto L2a
            com.onyx.galaxy.note.editor.data.ShapeToolType r4 = r4.getViewShapeType()
            r5 = r7
            com.onyx.galaxy.note.editor.view.IShapeViewOpt r5 = (com.onyx.galaxy.note.editor.view.IShapeViewOpt) r5
            com.onyx.galaxy.note.editor.data.ShapeToolType r5 = r5.getViewShapeType()
            if (r4 != r5) goto L2f
        L2a:
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r7)
            return r6
        L2f:
            if (r2 == r0) goto L34
            int r2 = r2 + 1
            goto L8
        L34:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolContainer.m50198g(android.view.View):boolean");
    }

    @Nullable
    public final IShapeViewOpt getSelectShapeToolType() {
        int childCount = getChildCount();
        if (childCount < 0) {
            return null;
        }
        int i = 0;
        while (true) {
            KeyEvent.Callback childAt = getChildAt(i);
            if (childAt instanceof IShapeViewOpt) {
                IShapeViewOpt iShapeViewOpt = (IShapeViewOpt) childAt;
                if (iShapeViewOpt.getIsSelect()) {
                    return iShapeViewOpt;
                }
            }
            if (i == childCount) {
                return null;
            }
            i++;
        }
    }

    /* renamed from: h */
    public final void m50199h(AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.ShapeToolContainer);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.iconMargin = obtainStyledAttributes.getDimension(C10651R.styleable.ShapeToolContainer_iconMargin, ResManager.INSTANCE.getDimension(C7384R.dimen.dp_4));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: i */
    public final void m50200i(final View parentView, final View targetView) {
        parentView.post(new Runnable() { // from class: com.sunia.HTREnginev2.hmm
            @Override // java.lang.Runnable
            public final void run() {
                ShapeToolContainer.m50194j(targetView, parentView);
            }
        });
    }

    public final void setItemClickListener(@Nullable IShapeClickListener listener) {
        this.listener = listener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setSelectByType(@Nullable ShapeToolType toolType) {
        int childCount = getChildCount();
        if (childCount >= 0) {
            int i = 0;
            while (true) {
                View childAt = getChildAt(i);
                if ((childAt instanceof IShapeViewOpt) && m50196e(childAt)) {
                    IShapeViewOpt iShapeViewOpt = (IShapeViewOpt) childAt;
                    IShapeViewOpt.DefaultImpls.setViewSelect$default(iShapeViewOpt, iShapeViewOpt.getViewShapeType() == toolType, false, 2, null);
                }
                if (i == childCount) {
                    break;
                } else {
                    i++;
                }
            }
        }
        if (toolType != null) {
            ensureShapeToolViewVisible(toolType);
        }
    }

    public final void setSelectedColorChange(int color) {
        int childCount = getChildCount();
        if (childCount < 0) {
            return;
        }
        int i = 0;
        while (true) {
            KeyEvent.Callback childAt = getChildAt(i);
            if (childAt instanceof IShapeViewOpt) {
                IShapeViewOpt iShapeViewOpt = (IShapeViewOpt) childAt;
                if (iShapeViewOpt.getIsSelect()) {
                    iShapeViewOpt.setHintColor(color);
                }
            }
            if (i == childCount) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void updateSelectByType(@NotNull ShapeToolType toolType, boolean select) {
        Intrinsics.checkNotNullParameter(toolType, "toolType");
        int childCount = getChildCount();
        if (childCount < 0) {
            return;
        }
        int i = 0;
        while (true) {
            KeyEvent.Callback childAt = getChildAt(i);
            if (childAt instanceof IShapeViewOpt) {
                IShapeViewOpt iShapeViewOpt = (IShapeViewOpt) childAt;
                if (iShapeViewOpt.getViewShapeType() == toolType) {
                    IShapeViewOpt.DefaultImpls.setViewSelect$default(iShapeViewOpt, select, false, 2, null);
                }
            }
            if (i == childCount) {
                return;
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeToolContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ShapeToolContainer(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapeToolContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        setOrientation(0);
        setGravity(16);
        m50199h(attributeSet);
    }

    public /* synthetic */ ShapeToolContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
