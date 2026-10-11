package com.onyx.galaxy.note.category.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.chad.library.adapter4.viewholder.QuickViewHolder;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.NoteListAddGridAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002%&B\u0007¢\u0006\u0004\b#\u0010$J \u0010\t\u001a\u00020\u00072\u0018\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004J\"\u0010\u000e\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0015J\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000fH\u0016J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000fH\u0016J \u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u000bH\u0014J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0006H\u0002R*\u0010\u001c\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001d\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "", "Lcom/chad/library/adapter4/viewholder/QuickViewHolder;", "Lkotlin/Function2;", "", "Landroid/view/View;", "", "callback", "setClickCallback", "holder", "", "position", "item", "onBindViewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onViewAttachedToWindow", "onViewDetachedFromWindow", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "clickedView", C4921e.f26528e, "t", "Lkotlin/jvm/functions/Function2;", "clickCallback", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "u", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "getPostProgressFilter", "()Lcom/onyx/android/sdk/base/rx/RxFilter;", "postProgressFilter", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "a", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteListAddGridAdapter extends BaseDifferAdapter<String, QuickViewHolder> {

    /* renamed from: v */
    @NotNull
    public static final String f55200v = "NoteListAddGridAdapter";

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public Function2<? super Boolean, ? super View, Unit> clickCallback;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final RxFilter<View> postProgressFilter;

    /* renamed from: com.onyx.galaxy.note.category.view.adapter.NoteListAddGridAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C11388a extends DiffUtil.ItemCallback<String> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(@NotNull String oldItem, @NotNull String newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(@NotNull String oldItem, @NotNull String newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.view.adapter.NoteListAddGridAdapter$b */
    /* loaded from: classes9.dex */
    public static final class C11389b<T> implements Consumer {
        public C11389b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull View it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListAddGridAdapter.this.m44093o(it2);
        }
    }

    public NoteListAddGridAdapter() {
        super(new C11388a());
        add(f55200v);
        this.postProgressFilter = new RxFilter<>();
    }

    /* renamed from: p */
    public static final boolean m44092p(GestureDetector gesture, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gesture, "$gesture");
        gesture.onTouchEvent(motionEvent);
        return true;
    }

    @NotNull
    public final RxFilter<View> getPostProgressFilter() {
        return this.postProgressFilter;
    }

    /* renamed from: o */
    public final void m44093o(View clickedView) {
        Function2<? super Boolean, ? super View, Unit> function2 = this.clickCallback;
        if (function2 != null) {
            function2.invoke(Boolean.FALSE, clickedView);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        this.postProgressFilter.subscribeThrottleFirst(ResManager.INSTANCE.getLong(C10651R.integer.create_note_double_tap_time_interval), new C11389b());
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewDetachedFromWindow(holder);
        this.postProgressFilter.dispose();
    }

    public final void setClickCallback(@NotNull Function2<? super Boolean, ? super View, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.clickCallback = callback;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindViewHolder(@NotNull QuickViewHolder holder, int position, @Nullable String item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        final ImageView imageView = (ImageView) holder.itemView.findViewById(C10651R.id.iv_note_create);
        final GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.onyx.galaxy.note.category.view.adapter.NoteListAddGridAdapter$onBindViewHolder$gesture$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(@NotNull MotionEvent e) {
                Intrinsics.checkNotNullParameter(e, "e");
                RxFilter<View> postProgressFilter = NoteListAddGridAdapter.this.getPostProgressFilter();
                ImageView ivNoteCreate = imageView;
                Intrinsics.checkNotNullExpressionValue(ivNoteCreate, "$ivNoteCreate");
                postProgressFilter.onNext(ivNoteCreate);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(@NotNull MotionEvent e) {
                Function2 function2;
                Intrinsics.checkNotNullParameter(e, "e");
                function2 = NoteListAddGridAdapter.this.clickCallback;
                if (function2 != null) {
                    Boolean bool = Boolean.TRUE;
                    ImageView ivNoteCreate = imageView;
                    Intrinsics.checkNotNullExpressionValue(ivNoteCreate, "$ivNoteCreate");
                    function2.invoke(bool, ivNoteCreate);
                }
                return super.onSingleTapConfirmed(e);
            }
        });
        holder.itemView.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.pwj
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m44092p;
                m44092p = NoteListAddGridAdapter.m44092p(gestureDetector, view, motionEvent);
                return m44092p;
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public QuickViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new QuickViewHolder(C10651R.layout.item_note_grid_create_display, parent);
    }
}
