package com.onyx.galaxy.note.category.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.chad.library.adapter4.viewholder.QuickViewHolder;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.NoteListAddLinearAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u001a\u001bB\u0007¢\u0006\u0004\b\u0018\u0010\u0019J \u0010\t\u001a\u00020\u00072\u0018\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004J\"\u0010\u000e\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0015J \u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000bH\u0014R*\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "", "Lcom/chad/library/adapter4/viewholder/QuickViewHolder;", "Lkotlin/Function2;", "", "Landroid/view/View;", "", "callback", "setClickCallback", "holder", "", "position", "item", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "t", "Lkotlin/jvm/functions/Function2;", "clickCallback", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "a", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteListAddLinearAdapter extends BaseDifferAdapter<String, QuickViewHolder> {

    /* renamed from: u */
    @NotNull
    public static final String f55206u = "NoteListAddLinearAdapter";

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public Function2<? super Boolean, ? super View, Unit> clickCallback;

    /* renamed from: com.onyx.galaxy.note.category.view.adapter.NoteListAddLinearAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C11390a extends DiffUtil.ItemCallback<String> {
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

    public NoteListAddLinearAdapter() {
        super(new C11390a());
        add(f55206u);
    }

    /* renamed from: o */
    public static final boolean m44098o(GestureDetector gesture, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gesture, "$gesture");
        gesture.onTouchEvent(motionEvent);
        return true;
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
        final Ref.LongRef longRef = new Ref.LongRef();
        longRef.element = System.currentTimeMillis();
        final GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.onyx.galaxy.note.category.view.adapter.NoteListAddLinearAdapter$onBindViewHolder$gesture$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(@NotNull MotionEvent e) {
                Function2 function2;
                Intrinsics.checkNotNullParameter(e, "e");
                if (System.currentTimeMillis() - Ref.LongRef.this.element <= ResManager.INSTANCE.getLong(C10651R.integer.create_note_double_tap_time_interval)) {
                    return true;
                }
                function2 = this.clickCallback;
                if (function2 != null) {
                    Boolean bool = Boolean.FALSE;
                    ImageView ivNoteCreate = imageView;
                    Intrinsics.checkNotNullExpressionValue(ivNoteCreate, "$ivNoteCreate");
                    function2.invoke(bool, ivNoteCreate);
                }
                Ref.LongRef.this.element = System.currentTimeMillis();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(@NotNull MotionEvent e) {
                Function2 function2;
                Intrinsics.checkNotNullParameter(e, "e");
                function2 = this.clickCallback;
                if (function2 == null) {
                    return true;
                }
                Boolean bool = Boolean.TRUE;
                ImageView ivNoteCreate = imageView;
                Intrinsics.checkNotNullExpressionValue(ivNoteCreate, "$ivNoteCreate");
                function2.invoke(bool, ivNoteCreate);
                return true;
            }
        });
        holder.itemView.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.qwj
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m44098o;
                m44098o = NoteListAddLinearAdapter.m44098o(gestureDetector, view, motionEvent);
                return m44098o;
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public QuickViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new QuickViewHolder(C10651R.layout.item_note_linear_create_display, parent);
    }
}
