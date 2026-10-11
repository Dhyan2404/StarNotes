package com.onyx.galaxy.note.category.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer;
import com.onyx.galaxy.note.common.view.SwipeFrameLayout;
import com.onyx.galaxy.note.databinding.LayoutSwipeRecycleViewBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0016\u0018\u0000 *2\u00020\u0001:\u0002*+B\u0011\b\u0016\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b%\u0010&B\u001b\b\u0016\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b%\u0010'B#\b\u0016\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010(\u001a\u00020\u0016¢\u0006\u0004\b%\u0010)J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\u0006J\u001a\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0006H\u0002R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR\u0018\u0010$\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;", "Landroid/widget/FrameLayout;", "Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;", "getRecycleView", "Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setOnSwipeStateChangeListener", "", "enable", "setEnableSwipeDetector", "releaseSwipeIndex", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "a", "b", "Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;", "e", "Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;", "binding", "", C6997f.f39671c, "I", "getSwipeStartIndex", "()I", "setSwipeStartIndex", "(I)V", "swipeStartIndex", C6998g.f39679a, "getLastSwipeEndIndex", "setLastSwipeEndIndex", "lastSwipeEndIndex", C6999h.f39688c, "Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;", "onSwipeStateChangeListener", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "OnSwipeStateChangeListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SwipeRecycleViewContainer extends FrameLayout {
    public static final int INVALID_INDEX = -1;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public LayoutSwipeRecycleViewBinding binding;

    /* renamed from: f, reason: from kotlin metadata */
    public int swipeStartIndex;

    /* renamed from: g, reason: from kotlin metadata */
    public int lastSwipeEndIndex;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public OnSwipeStateChangeListener onSwipeStateChangeListener;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0018\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H&¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;", "", "onFinished", "", "onStart", "onSwiped", "startIndex", "", "endStartIndex", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface OnSwipeStateChangeListener {
        void onFinished();

        void onStart();

        void onSwiped(int startIndex, int endStartIndex);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SwipeRecycleViewContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: a */
    public final void m43951a(Context context, AttributeSet attrs) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C10651R.styleable.SwipeRecycleViewContainer);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.binding.recyclerView.setScrollBarEnable(obtainStyledAttributes.getBoolean(C10651R.styleable.SwipeRecycleViewContainer_scrollBarEnable, false));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    public final void m43952b() {
        this.binding.swipeContainer.setOnSwipeListener(new SwipeFrameLayout.OnSwipeChangeListener() { // from class: com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer$initView$1
            @Override // com.onyx.galaxy.note.common.view.SwipeFrameLayout.OnSwipeChangeListener
            public void onFinished() {
                SwipeRecycleViewContainer.this.releaseSwipeIndex();
            }

            @Override // com.onyx.galaxy.note.common.view.SwipeFrameLayout.OnSwipeChangeListener
            public void onStart() {
                SwipeRecycleViewContainer.OnSwipeStateChangeListener onSwipeStateChangeListener;
                SwipeRecycleViewContainer.this.releaseSwipeIndex();
                onSwipeStateChangeListener = SwipeRecycleViewContainer.this.onSwipeStateChangeListener;
                if (onSwipeStateChangeListener != null) {
                    onSwipeStateChangeListener.onStart();
                }
            }

            @Override // com.onyx.galaxy.note.common.view.SwipeFrameLayout.OnSwipeChangeListener
            public void onSwiped(float x, float y) {
                LayoutSwipeRecycleViewBinding layoutSwipeRecycleViewBinding;
                SwipeRecycleViewContainer.OnSwipeStateChangeListener onSwipeStateChangeListener;
                SwipeRecycleViewContainer.OnSwipeStateChangeListener onSwipeStateChangeListener2;
                layoutSwipeRecycleViewBinding = SwipeRecycleViewContainer.this.binding;
                RecyclerView.LayoutManager layoutManager = layoutSwipeRecycleViewBinding.recyclerView.getAutoFitRecycleView().getLayoutManager();
                if (layoutManager == null) {
                    return;
                }
                int childCount = layoutManager.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = layoutManager.getChildAt(i);
                    if (childAt == null) {
                        return;
                    }
                    if (new Rect(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom()).contains((int) x, (int) y)) {
                        int position = layoutManager.getPosition(childAt);
                        if (SwipeRecycleViewContainer.this.getSwipeStartIndex() == -1) {
                            SwipeRecycleViewContainer.this.setSwipeStartIndex(position);
                            onSwipeStateChangeListener2 = SwipeRecycleViewContainer.this.onSwipeStateChangeListener;
                            if (onSwipeStateChangeListener2 != null) {
                                onSwipeStateChangeListener2.onSwiped(SwipeRecycleViewContainer.this.getSwipeStartIndex(), position);
                                return;
                            }
                            return;
                        }
                        if (position != SwipeRecycleViewContainer.this.getLastSwipeEndIndex()) {
                            SwipeRecycleViewContainer.this.setLastSwipeEndIndex(position);
                            onSwipeStateChangeListener = SwipeRecycleViewContainer.this.onSwipeStateChangeListener;
                            if (onSwipeStateChangeListener != null) {
                                onSwipeStateChangeListener.onSwiped(SwipeRecycleViewContainer.this.getSwipeStartIndex(), SwipeRecycleViewContainer.this.getLastSwipeEndIndex());
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
            }
        });
    }

    public final int getLastSwipeEndIndex() {
        return this.lastSwipeEndIndex;
    }

    @NotNull
    public final AutoFitRecycleView getRecycleView() {
        return this.binding.recyclerView.getAutoFitRecycleView();
    }

    public final int getSwipeStartIndex() {
        return this.swipeStartIndex;
    }

    public final void releaseSwipeIndex() {
        this.swipeStartIndex = -1;
        this.lastSwipeEndIndex = -1;
    }

    public final void setEnableSwipeDetector(boolean enable) {
        this.binding.swipeContainer.setEnableSwipeDetector(enable);
    }

    public final void setLastSwipeEndIndex(int i) {
        this.lastSwipeEndIndex = i;
    }

    public final void setOnSwipeStateChangeListener(@NotNull OnSwipeStateChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onSwipeStateChangeListener = listener;
    }

    public final void setSwipeStartIndex(int i) {
        this.swipeStartIndex = i;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SwipeRecycleViewContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeRecycleViewContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        LayoutSwipeRecycleViewBinding inflate = LayoutSwipeRecycleViewBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.swipeStartIndex = -1;
        this.lastSwipeEndIndex = -1;
        m43952b();
        m43951a(context, attributeSet);
    }
}
