package com.chad.library.adapter4.dragswipe;

import android.graphics.Canvas;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.dragswipe.listener.OnItemSwipeListener;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J0\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0016¨\u0006\u0014"}, m61528d2 = {"com/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$5$listener$1", "Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;", "onItemSwipeEnd", "", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "pos", "", "onItemSwipeMoving", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "dX", "", "dY", "isCurrentlyActive", "", "onItemSwipeStart", "onItemSwiped", "direction", "bindingAdapterPosition", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 176)
@SourceDebugExtension({"SMAP\nDragSwipeExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragSwipeExt.kt\ncom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$5$listener$1\n*L\n1#1,85:1\n*E\n"})
/* loaded from: classes4.dex */
public final class DragSwipeExtKt$setItemSwipeListener$5$listener$1 implements OnItemSwipeListener {

    /* renamed from: a */
    public final /* synthetic */ Function2<RecyclerView.ViewHolder, Integer, Unit> f16210a;

    /* renamed from: b */
    public final /* synthetic */ Function5<Canvas, RecyclerView.ViewHolder, Float, Float, Boolean, Unit> f16211b;

    /* renamed from: c */
    public final /* synthetic */ Function3<RecyclerView.ViewHolder, Integer, Integer, Unit> f16212c;

    /* renamed from: d */
    public final /* synthetic */ Function2<RecyclerView.ViewHolder, Integer, Unit> f16213d;

    /* JADX WARN: Multi-variable type inference failed */
    public DragSwipeExtKt$setItemSwipeListener$5$listener$1(Function2<? super RecyclerView.ViewHolder, ? super Integer, Unit> function2, Function5<? super Canvas, ? super RecyclerView.ViewHolder, ? super Float, ? super Float, ? super Boolean, Unit> function5, Function3<? super RecyclerView.ViewHolder, ? super Integer, ? super Integer, Unit> function3, Function2<? super RecyclerView.ViewHolder, ? super Integer, Unit> function22) {
        this.f16210a = function2;
        this.f16211b = function5;
        this.f16212c = function3;
        this.f16213d = function22;
    }

    @Override // com.chad.library.adapter4.dragswipe.listener.OnItemSwipeListener
    public void onItemSwipeEnd(@NotNull RecyclerView.ViewHolder viewHolder, int pos) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        this.f16213d.invoke(viewHolder, Integer.valueOf(pos));
    }

    @Override // com.chad.library.adapter4.dragswipe.listener.OnItemSwipeListener
    public void onItemSwipeMoving(@NotNull Canvas canvas, @NotNull RecyclerView.ViewHolder viewHolder, float dX, float dY, boolean isCurrentlyActive) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        this.f16211b.invoke(canvas, viewHolder, Float.valueOf(dX), Float.valueOf(dY), Boolean.valueOf(isCurrentlyActive));
    }

    @Override // com.chad.library.adapter4.dragswipe.listener.OnItemSwipeListener
    public void onItemSwipeStart(@Nullable RecyclerView.ViewHolder viewHolder, int pos) {
        this.f16210a.invoke(viewHolder, Integer.valueOf(pos));
    }

    @Override // com.chad.library.adapter4.dragswipe.listener.OnItemSwipeListener
    public void onItemSwiped(@NotNull RecyclerView.ViewHolder viewHolder, int direction, int bindingAdapterPosition) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        this.f16212c.invoke(viewHolder, Integer.valueOf(direction), Integer.valueOf(bindingAdapterPosition));
    }
}
