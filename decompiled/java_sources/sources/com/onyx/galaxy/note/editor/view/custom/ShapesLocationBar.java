package com.onyx.galaxy.note.editor.view.custom;

import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RangeKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutShapesLocationBarBinding;
import com.onyx.galaxy.note.editor.event.EditorSideBarInfo;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u00017B\u0011\b\u0016\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b/\u00100B\u001d\b\u0016\u0012\u0006\u0010.\u001a\u00020-\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u000101¢\u0006\u0004\b/\u00103B%\b\u0016\u0012\u0006\u0010.\u001a\u00020-\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u000101\u0012\u0006\u00105\u001a\u000204¢\u0006\u0004\b/\u00106J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\nJ\b\u0010\u0011\u001a\u00020\nH\u0002R\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR:\u0010$\u001a&\u0012\f\u0012\n !*\u0004\u0018\u00010 0  !*\u0012\u0012\f\u0012\n !*\u0004\u0018\u00010 0 \u0018\u00010\u001f0\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R:\u0010&\u001a&\u0012\f\u0012\n !*\u0004\u0018\u00010 0  !*\u0012\u0012\f\u0012\n !*\u0004\u0018\u00010 0 \u0018\u00010\u001f0\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010#R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u00068"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "Landroid/view/MotionEvent;", "ev", "", "onInterceptTouchEvent", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;", "position", "", "updatePosition", "Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;", PrivilegedApp.f6532i, "updateBySideBar", "restorePositionIf", "resetLocation", "b", "Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;", "binding", "Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;)V", "Landroid/graphics/PointF;", C6999h.f39688c, "Landroid/graphics/PointF;", "downRawPoint", "i", "downViewPosition", "Lorg/apache/commons/lang3/Range;", "", "kotlin.jvm.PlatformType", "j", "Lorg/apache/commons/lang3/Range;", "rangeX", C4921e.f26537n, "rangeY", "l", "Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;", "getPosition", "()Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;", "setPosition", "(Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;)V", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Position", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShapesLocationBar extends TintFrameLayout {
    public LayoutShapesLocationBarBinding binding;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public PointF downRawPoint;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public PointF downViewPosition;

    /* renamed from: j, reason: from kotlin metadata */
    public Range<Float> rangeX;

    /* renamed from: k, reason: from kotlin metadata */
    public Range<Float> rangeY;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public Position position;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;", "", "(Ljava/lang/String;I)V", "LEFT_TOP", "RIGHT_TOP", "FREE", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Position {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Position[] $VALUES;
        public static final Position LEFT_TOP = new Position("LEFT_TOP", 0);
        public static final Position RIGHT_TOP = new Position("RIGHT_TOP", 1);
        public static final Position FREE = new Position("FREE", 2);

        private static final /* synthetic */ Position[] $values() {
            return new Position[]{LEFT_TOP, RIGHT_TOP, FREE};
        }

        static {
            Position[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private Position(String str, int i) {
        }

        @NotNull
        public static EnumEntries<Position> getEntries() {
            return $ENTRIES;
        }

        public static Position valueOf(String str) {
            return (Position) Enum.valueOf(Position.class, str);
        }

        public static Position[] values() {
            return (Position[]) $VALUES.clone();
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Position.values().length];
            try {
                iArr[Position.LEFT_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Position.RIGHT_TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Position.FREE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapesLocationBar(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: b */
    public final void m47754b() {
        LayoutShapesLocationBarBinding inflate = LayoutShapesLocationBarBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding(inflate);
        getBinding().prev.setImageTintList(C10651R.color.settings_item_icon_color_selector);
        getBinding().next.setImageTintList(C10651R.color.settings_item_icon_color_selector);
    }

    @NotNull
    public final LayoutShapesLocationBarBinding getBinding() {
        LayoutShapesLocationBarBinding layoutShapesLocationBarBinding = this.binding;
        if (layoutShapesLocationBarBinding != null) {
            return layoutShapesLocationBarBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @NotNull
    public final Position getPosition() {
        return this.position;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        if (ev.getAction() == 0) {
            onTouchEvent(ev);
        }
        float scaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        if (Math.abs(ev.getRawX() - this.downRawPoint.x) <= scaledTouchSlop && Math.abs(ev.getRawY() - this.downRawPoint.y) <= scaledTouchSlop) {
            return super.onInterceptTouchEvent(ev);
        }
        onTouchEvent(ev);
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action == 0) {
            this.downRawPoint.set(event.getRawX(), event.getRawY());
            this.downViewPosition.set(getX(), getY());
            ViewGroup parentView = ViewKt.getParentView(this);
            this.rangeX = Range.between(Float.valueOf(0.0f), Float.valueOf(parentView.getWidth() - getWidth()));
            this.rangeY = Range.between(Float.valueOf(0.0f), Float.valueOf(parentView.getHeight() - getHeight()));
            return true;
        }
        if (action != 2) {
            return true;
        }
        this.position = Position.FREE;
        float rawX = event.getRawX() - this.downRawPoint.x;
        float rawY = event.getRawY() - this.downRawPoint.y;
        Range<Float> rangeX = this.rangeX;
        Intrinsics.checkNotNullExpressionValue(rangeX, "rangeX");
        Object clamp = RangeKt.clamp(rangeX, Float.valueOf(this.downViewPosition.x + rawX));
        Intrinsics.checkNotNullExpressionValue(clamp, "clamp(...)");
        setX(((Number) clamp).floatValue());
        Range<Float> rangeY = this.rangeY;
        Intrinsics.checkNotNullExpressionValue(rangeY, "rangeY");
        Object clamp2 = RangeKt.clamp(rangeY, Float.valueOf(this.downViewPosition.y + rawY));
        Intrinsics.checkNotNullExpressionValue(clamp2, "clamp(...)");
        setY(((Number) clamp2).floatValue());
        return true;
    }

    public final void resetLocation() {
        ViewGroup parentView = ViewKt.getParentView(this);
        Float valueOf = Float.valueOf(0.0f);
        Range between = Range.between(valueOf, Float.valueOf(parentView.getWidth() - getWidth()));
        Range between2 = Range.between(valueOf, Float.valueOf(parentView.getHeight() - getHeight()));
        if (between.contains(Float.valueOf(getX())) && between2.contains(Float.valueOf(getY()))) {
            return;
        }
        Intrinsics.checkNotNull(between);
        Object clamp = RangeKt.clamp(between, Float.valueOf(getX()));
        Intrinsics.checkNotNullExpressionValue(clamp, "clamp(...)");
        setX(((Number) clamp).floatValue());
        Intrinsics.checkNotNull(between2);
        Object clamp2 = RangeKt.clamp(between2, Float.valueOf(getY()));
        Intrinsics.checkNotNullExpressionValue(clamp2, "clamp(...)");
        setY(((Number) clamp2).floatValue());
    }

    public final void restorePositionIf() {
        updatePosition(this.position);
    }

    public final void setBinding(@NotNull LayoutShapesLocationBarBinding layoutShapesLocationBarBinding) {
        Intrinsics.checkNotNullParameter(layoutShapesLocationBarBinding, "<set-?>");
        this.binding = layoutShapesLocationBarBinding;
    }

    public final void setPosition(@NotNull Position position) {
        Intrinsics.checkNotNullParameter(position, "<set-?>");
        this.position = position;
    }

    public final void updateBySideBar(@NotNull EditorSideBarInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        if (ViewKt.globalVisibleRectF(ViewKt.getParentView(this)).right == info.getContainerGlobalVisibleRect().right) {
            if (WhenMappings.$EnumSwitchMapping$0[this.position.ordinal()] != 3) {
                setX((((ViewKt.getParentView(this).getWidth() - getWidth()) - ResManager.INSTANCE.getDimension(C7384R.dimen.dp_80)) - info.getRightSideBarGlobalVisibleRect().width()) - info.getContainerTranslationX());
            }
        }
    }

    public final void updatePosition(@NotNull Position position) {
        Intrinsics.checkNotNullParameter(position, "position");
        int i = WhenMappings.$EnumSwitchMapping$0[position.ordinal()];
        if (i == 1) {
            ResManager resManager = ResManager.INSTANCE;
            setX(resManager.getDimension(C7384R.dimen.dp_80));
            setY(resManager.getDimension(C7384R.dimen.dp_30));
        } else if (i == 2) {
            float width = ViewKt.getParentView(this).getWidth() - getWidth();
            ResManager resManager2 = ResManager.INSTANCE;
            setX(width - resManager2.getDimension(C7384R.dimen.dp_80));
            setY(resManager2.getDimension(C7384R.dimen.dp_30));
        }
        this.position = position;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapesLocationBar(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ShapesLocationBar(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapesLocationBar(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Float valueOf = Float.valueOf(0.0f);
        this.downRawPoint = new PointF(0.0f, 0.0f);
        this.downViewPosition = new PointF(0.0f, 0.0f);
        Float valueOf2 = Float.valueOf(1000.0f);
        this.rangeX = Range.between(valueOf, valueOf2);
        this.rangeY = Range.between(valueOf, valueOf2);
        this.position = Position.RIGHT_TOP;
        m47754b();
    }

    public /* synthetic */ ShapesLocationBar(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
