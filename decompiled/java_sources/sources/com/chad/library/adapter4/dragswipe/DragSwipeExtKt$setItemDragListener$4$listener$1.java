package com.chad.library.adapter4.dragswipe;

import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.dragswipe.listener.OnItemDragListener;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\u000e"}, m61528d2 = {"com/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$4$listener$1", "Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;", "onItemDragEnd", "", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "pos", "", "onItemDragMoving", "source", "from", "target", "to", "onItemDragStart", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 176)
@SourceDebugExtension({"SMAP\nDragSwipeExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragSwipeExt.kt\ncom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$4$listener$1\n*L\n1#1,85:1\n*E\n"})
/* loaded from: classes4.dex */
public final class DragSwipeExtKt$setItemDragListener$4$listener$1 implements OnItemDragListener {

    /* renamed from: a */
    public final /* synthetic */ Function2<RecyclerView.ViewHolder, Integer, Unit> f16207a;

    /* renamed from: b */
    public final /* synthetic */ Function4<RecyclerView.ViewHolder, Integer, RecyclerView.ViewHolder, Integer, Unit> f16208b;

    /* renamed from: c */
    public final /* synthetic */ Function2<RecyclerView.ViewHolder, Integer, Unit> f16209c;

    /* JADX WARN: Multi-variable type inference failed */
    public DragSwipeExtKt$setItemDragListener$4$listener$1(Function2<? super RecyclerView.ViewHolder, ? super Integer, Unit> function2, Function4<? super RecyclerView.ViewHolder, ? super Integer, ? super RecyclerView.ViewHolder, ? super Integer, Unit> function4, Function2<? super RecyclerView.ViewHolder, ? super Integer, Unit> function22) {
        this.f16207a = function2;
        this.f16208b = function4;
        this.f16209c = function22;
    }

    @Override // com.chad.library.adapter4.dragswipe.listener.OnItemDragListener
    public void onItemDragEnd(@NotNull RecyclerView.ViewHolder viewHolder, int pos) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        this.f16209c.invoke(viewHolder, Integer.valueOf(pos));
    }

    @Override // com.chad.library.adapter4.dragswipe.listener.OnItemDragListener
    public void onItemDragMoving(@NotNull RecyclerView.ViewHolder source, int from, @NotNull RecyclerView.ViewHolder target, int to) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        this.f16208b.invoke(source, Integer.valueOf(from), target, Integer.valueOf(to));
    }

    @Override // com.chad.library.adapter4.dragswipe.listener.OnItemDragListener
    public void onItemDragStart(@Nullable RecyclerView.ViewHolder viewHolder, int pos) {
        this.f16207a.invoke(viewHolder, Integer.valueOf(pos));
    }
}
