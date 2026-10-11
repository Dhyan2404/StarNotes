package com.onyx.galaxy.note.category.p044ui;

import android.content.ClipDescription;
import android.view.DragEvent;
import android.view.View;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.NoteListAdapter;
import com.onyx.galaxy.note.category.view.drag.NoteFolderTreeDragListener;
import com.onyx.galaxy.note.category.view.drag.NoteTagTreeDragListener;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\b\u0005*\u0002\u0000\u0014\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\bR\u001b\u0010\u000f\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, m61528d2 = {"com/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1", "Landroid/view/View$OnDragListener;", "Landroid/view/View;", "v", "Landroid/view/DragEvent;", "e", "", "onDrag", Constants.HASIDCALL_INDEX_SIG, "scrollUp", "", C6997f.f39671c, "Lkotlin/Lazy;", "a", "()I", "flingVelocity", "", C6998g.f39679a, "J", "scrollDuration", "com/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1$scrollRunnable$1", C6999h.f39688c, "Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1$scrollRunnable$1;", "scrollRunnable", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteListFunctionFragment$onDragListener$1 implements View.OnDragListener {

    /* renamed from: e, reason: from kotlin metadata */
    public boolean scrollUp;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy flingVelocity;

    /* renamed from: g, reason: from kotlin metadata */
    public final long scrollDuration;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NoteListFunctionFragment$onDragListener$1$scrollRunnable$1 scrollRunnable;

    /* renamed from: i */
    public final /* synthetic */ NoteListFunctionFragment f54799i;

    /* JADX WARN: Type inference failed for: r0v3, types: [com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$onDragListener$1$scrollRunnable$1] */
    public NoteListFunctionFragment$onDragListener$1(final NoteListFunctionFragment noteListFunctionFragment) {
        Lazy lazy;
        this.f54799i = noteListFunctionFragment;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$onDragListener$1$flingVelocity$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(NoteListFunctionFragment.this.requireContext().getResources().getInteger(C10651R.integer.scroll_fling_velocity));
            }
        });
        this.flingVelocity = lazy;
        this.scrollDuration = 250L;
        this.scrollRunnable = new Runnable() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$onDragListener$1$scrollRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                boolean z2;
                boolean z3;
                int m43434a;
                long j;
                boolean z4;
                int m43434a2;
                z = NoteListFunctionFragment$onDragListener$1.this.scrollUp;
                if (z) {
                    z4 = noteListFunctionFragment.scrollTop;
                    if (!z4) {
                        TintRecycleView tintRecycleView = noteListFunctionFragment.m43425u0().rvFilter;
                        m43434a2 = NoteListFunctionFragment$onDragListener$1.this.m43434a();
                        tintRecycleView.fling(0, 0 - m43434a2);
                        TintRecycleView tintRecycleView2 = noteListFunctionFragment.m43425u0().rvFilter;
                        j = NoteListFunctionFragment$onDragListener$1.this.scrollDuration;
                        tintRecycleView2.postDelayed(this, j);
                    }
                }
                z2 = NoteListFunctionFragment$onDragListener$1.this.scrollUp;
                if (!z2) {
                    z3 = noteListFunctionFragment.scrollBottom;
                    if (!z3) {
                        TintRecycleView tintRecycleView3 = noteListFunctionFragment.m43425u0().rvFilter;
                        m43434a = NoteListFunctionFragment$onDragListener$1.this.m43434a();
                        tintRecycleView3.fling(0, m43434a);
                    }
                }
                TintRecycleView tintRecycleView22 = noteListFunctionFragment.m43425u0().rvFilter;
                j = NoteListFunctionFragment$onDragListener$1.this.scrollDuration;
                tintRecycleView22.postDelayed(this, j);
            }
        };
    }

    /* renamed from: a */
    public final int m43434a() {
        return ((Number) this.flingVelocity.getValue()).intValue();
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(@NotNull View v, @NotNull DragEvent e) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(e, "e");
        this.scrollUp = v.getId() == C10651R.id.v_scroll_up;
        switch (e.getAction()) {
            case 1:
                ClipDescription clipDescription = e.getClipDescription();
                CharSequence label = clipDescription != null ? clipDescription.getLabel() : null;
                return Intrinsics.areEqual(label, NoteListAdapter.TAG) || Intrinsics.areEqual(label, NoteFolderTreeDragListener.TAG) || Intrinsics.areEqual(label, NoteTagTreeDragListener.TAG);
            case 3:
            case 4:
            case 6:
                this.f54799i.m43425u0().rvFilter.removeCallbacks(this.scrollRunnable);
            case 2:
                return true;
            case 5:
                this.f54799i.m43425u0().rvFilter.post(this.scrollRunnable);
                return true;
            default:
                return false;
        }
    }
}
