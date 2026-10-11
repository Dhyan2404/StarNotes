package com.onyx.galaxy.note.common.extension;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.hjq.window.EasyWindow;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001a\b\u0016\u0018\u00002\u00020\u0001:\u0001PB\u008a\u0001\u0012\u0006\u0010'\u001a\u00020\"\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012:\b\u0002\u00106\u001a4\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b-\u0012\b\b.\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110/¢\u0006\f\b-\u0012\b\b.\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\n\u0018\u00010,\u0012%\b\u0002\u0010;\u001a\u001f\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b-\u0012\b\b.\u0012\u0004\b\b(8\u0012\u0004\u0012\u00020\n\u0018\u000107¢\u0006\u0004\bN\u0010OJ\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0017J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ1\u0010\u0016\u001a\u00020\n2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0006H\u0016J\u000e\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0006J\b\u0010\u001b\u001a\u00020\u0011H\u0014J\b\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u0010\u001e\u001a\u00020\u001cH\u0002J\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u0014H\u0002J\u0010\u0010!\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u0014H\u0002R\u0017\u0010'\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+RT\u00106\u001a4\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b-\u0012\b\b.\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110/¢\u0006\f\b-\u0012\b\b.\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\n\u0018\u00010,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R3\u0010;\u001a\u001f\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b-\u0012\b\b.\u0012\u0004\b\b(8\u0012\u0004\u0012\u00020\n\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010>\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010@\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010=R\u0016\u0010B\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010=R\u0016\u0010D\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010=R\u0016\u00108\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010\u001a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010FR\u0016\u0010H\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010=R\u0016\u0010J\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010=R\u0018\u0010M\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010L¨\u0006Q"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/extension/MovingDraggable;", "Lcom/hjq/window/draggable/MovingDraggable;", "Landroid/view/View;", "v", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouch", "Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setOnMoveInterceptListener", "Landroid/graphics/Rect;", "editorContainerRect", "", "rootLocation", "setEditorContainerRect", "", "moveX", "moveY", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "recordDockType", "resetLocation", "(Ljava/lang/Float;Ljava/lang/Float;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "isTouchMoving", OnyxStatisticConstant.KEY_NOTE_DRAG, "enableDrag", "getMinTouchDistance", "", "i", C6999h.f39688c, "dockType", "j", C6998g.f39679a, "Landroid/content/Context;", "s", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "t", "Landroid/graphics/Rect;", "u", Constants.TYPES_INDEX_SIG, "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "Landroid/graphics/Point;", "locationPoint", "Lkotlin/jvm/functions/Function2;", "getCallback", "()Lkotlin/jvm/functions/Function2;", "setCallback", "(Lkotlin/jvm/functions/Function2;)V", "callback", "Lkotlin/Function1;", "touchMoving", "w", "Lkotlin/jvm/functions/Function1;", "moveCallback", "x", "F", "viewDownX", "y", "viewDownY", "z", "viewDownRawX", "J", "viewDownRawY", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, Constants.HASIDCALL_INDEX_SIG, "Q", "viewMoveX", "k0", "viewMoveY", "q0", "Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;", "onMoveInterceptListener", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/graphics/Rect;[ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V", "OnMoveInterceptListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class MovingDraggable extends com.hjq.window.draggable.MovingDraggable {

    /* renamed from: J, reason: from kotlin metadata */
    public float viewDownRawY;

    /* renamed from: O, reason: from kotlin metadata */
    public boolean touchMoving;

    /* renamed from: Q, reason: from kotlin metadata */
    public boolean enableDrag;

    /* renamed from: Z, reason: from kotlin metadata */
    public float viewMoveX;

    /* renamed from: k0, reason: from kotlin metadata */
    public float viewMoveY;

    /* renamed from: q0, reason: from kotlin metadata */
    @Nullable
    public OnMoveInterceptListener onMoveInterceptListener;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public Rect editorContainerRect;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public int[] rootLocation;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public Function2<? super DockType, ? super Point, Unit> callback;

    /* renamed from: w, reason: from kotlin metadata */
    @Nullable
    public Function1<? super Boolean, Unit> moveCallback;

    /* renamed from: x, reason: from kotlin metadata */
    public float viewDownX;

    /* renamed from: y, reason: from kotlin metadata */
    public float viewDownY;

    /* renamed from: z, reason: from kotlin metadata */
    public float viewDownRawX;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\bæ\u0080\u0001\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H&¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;", "", "onIntercept", "", "viewDownRawX", "", "viewDownRawY", "rawX", "rawY", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface OnMoveInterceptListener {
        boolean onIntercept(float viewDownRawX, float viewDownRawY, float rawX, float rawY);
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockType.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ MovingDraggable(Context context, Rect rect, int[] iArr, Function2 function2, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : rect, (i & 4) != 0 ? null : iArr, (i & 8) != 0 ? null : function2, (i & 16) != 0 ? null : function1);
    }

    public static /* synthetic */ void resetLocation$default(MovingDraggable movingDraggable, Float f, Float f2, DockType dockType, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resetLocation");
        }
        if ((i & 1) != 0) {
            f = null;
        }
        if ((i & 2) != 0) {
            f2 = null;
        }
        if ((i & 4) != 0) {
            dockType = null;
        }
        movingDraggable.resetLocation(f, f2, dockType);
    }

    public final void enableDrag(boolean drag) {
        this.enableDrag = drag;
    }

    /* renamed from: g */
    public final int m45001g(DockType dockType) {
        return (dockType.getIconRotationByType() > 0.0f ? 1 : (dockType.getIconRotationByType() == 0.0f ? 0 : -1)) == 0 ? m45003i() : m45002h();
    }

    @Nullable
    public final Function2<DockType, Point, Unit> getCallback() {
        return this.callback;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // com.hjq.window.draggable.BaseDraggable
    public float getMinTouchDistance() {
        return ViewConfiguration.get(this.context).getScaledTouchSlop() * 1.2f;
    }

    /* renamed from: h */
    public final int m45002h() {
        EasyWindow<?> easyWindow = getEasyWindow();
        View decorView = easyWindow != null ? easyWindow.getDecorView() : null;
        if (decorView == null) {
            return 0;
        }
        return Math.max(decorView.getWidth(), decorView.getHeight());
    }

    /* renamed from: i */
    public final int m45003i() {
        EasyWindow<?> easyWindow = getEasyWindow();
        View decorView = easyWindow != null ? easyWindow.getDecorView() : null;
        if (decorView == null) {
            return 0;
        }
        return Math.min(decorView.getWidth(), decorView.getHeight());
    }

    @Override // com.hjq.window.draggable.MovingDraggable
    /* renamed from: isTouchMoving, reason: from getter */
    public boolean getTouchMoving() {
        return this.touchMoving;
    }

    /* renamed from: j */
    public final int m45004j(DockType dockType) {
        return (dockType.getIconRotationByType() > 0.0f ? 1 : (dockType.getIconRotationByType() == 0.0f ? 0 : -1)) == 0 ? m45002h() : m45003i();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        if (r2 != 3) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c0, code lost:
    
        if (((r8 == null || r8.onIntercept(r7.viewDownRawX, r7.viewDownRawY, r9.getRawX(), r9.getRawY())) ? false : true) != false) goto L35;
     */
    @Override // com.hjq.window.draggable.MovingDraggable, android.view.View.OnTouchListener
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(@org.jetbrains.annotations.Nullable android.view.View r8, @org.jetbrains.annotations.NotNull android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.common.extension.MovingDraggable.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public final void resetLocation(@Nullable Float moveX, @Nullable Float moveY, @Nullable DockType recordDockType) {
        DockType dockType;
        int m45003i;
        float f;
        DockType dockType2;
        DockType dockType3;
        int i;
        int m45003i2;
        int i2;
        int m45003i3;
        Rect rect = this.editorContainerRect;
        if (rect != null) {
            float floatValue = moveX != null ? moveX.floatValue() : getViewOnScreenX();
            float floatValue2 = moveY != null ? moveY.floatValue() : getViewOnScreenY();
            float m45003i4 = (m45003i() / 2) + floatValue;
            float m45003i5 = (m45003i() / 2) + floatValue2;
            int width = rect.left + (rect.width() / 4);
            int width2 = rect.right - (rect.width() / 4);
            int height = rect.top + (rect.height() / 2);
            if (recordDockType != null) {
                int i3 = WhenMappings.$EnumSwitchMapping$0[recordDockType.ordinal()];
                if (i3 != 1) {
                    if (i3 == 2) {
                        dockType2 = DockType.TOP;
                        m45003i3 = rect.bottom + m45003i();
                    } else if (i3 == 3) {
                        dockType3 = DockType.RIGHT;
                        i2 = rect.left;
                        float f2 = floatValue2;
                        dockType2 = dockType3;
                        floatValue = i2;
                        f = f2;
                    } else {
                        if (i3 != 4) {
                            throw new NoWhenBranchMatchedException();
                        }
                        dockType2 = DockType.BOTTOM;
                        m45003i3 = rect.top;
                    }
                    f = m45003i3;
                } else {
                    dockType3 = DockType.LEFT;
                    i = rect.right;
                    m45003i2 = m45003i();
                    i2 = i - m45003i2;
                    float f22 = floatValue2;
                    dockType2 = dockType3;
                    floatValue = i2;
                    f = f22;
                }
            } else if (m45003i4 <= width) {
                dockType3 = DockType.RIGHT;
                i2 = rect.left;
                float f222 = floatValue2;
                dockType2 = dockType3;
                floatValue = i2;
                f = f222;
            } else if (m45003i4 >= width2) {
                dockType3 = DockType.LEFT;
                i = rect.right;
                m45003i2 = m45003i();
                i2 = i - m45003i2;
                float f2222 = floatValue2;
                dockType2 = dockType3;
                floatValue = i2;
                f = f2222;
            } else {
                if (m45003i5 <= height) {
                    dockType = DockType.BOTTOM;
                    m45003i = rect.top;
                } else {
                    dockType = DockType.TOP;
                    m45003i = rect.bottom + m45003i();
                }
                f = m45003i;
                dockType2 = dockType;
            }
            int i4 = rect.left;
            if (floatValue < i4) {
                floatValue = i4;
            }
            if (floatValue > rect.right - m45004j(dockType2)) {
                floatValue = rect.right - m45004j(dockType2);
            }
            int i5 = rect.top;
            if (f < i5) {
                f = i5;
            }
            if (f > rect.bottom - m45001g(dockType2)) {
                f = rect.bottom - m45001g(dockType2);
            }
            updateLocation(floatValue, f);
            Function2<? super DockType, ? super Point, Unit> function2 = this.callback;
            if (function2 != null) {
                function2.invoke(dockType2, new Point((int) floatValue, (int) f));
            }
        }
    }

    public final void setCallback(@Nullable Function2<? super DockType, ? super Point, Unit> function2) {
        this.callback = function2;
    }

    public final void setEditorContainerRect(@NotNull Rect editorContainerRect, @Nullable int[] rootLocation) {
        Intrinsics.checkNotNullParameter(editorContainerRect, "editorContainerRect");
        this.editorContainerRect = editorContainerRect;
        this.rootLocation = rootLocation;
    }

    public final void setOnMoveInterceptListener(@NotNull OnMoveInterceptListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onMoveInterceptListener = listener;
    }

    public MovingDraggable(@NotNull Context context, @Nullable Rect rect, @Nullable int[] iArr, @Nullable Function2<? super DockType, ? super Point, Unit> function2, @Nullable Function1<? super Boolean, Unit> function1) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.editorContainerRect = rect;
        this.rootLocation = iArr;
        this.callback = function2;
        this.moveCallback = function1;
        this.enableDrag = true;
    }
}
