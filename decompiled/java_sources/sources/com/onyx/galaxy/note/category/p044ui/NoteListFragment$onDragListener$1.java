package com.onyx.galaxy.note.category.p044ui;

import android.content.ClipDescription;
import android.view.DragEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.recyclerview.widget.RecyclerView;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\b\b*\u0002\u0000\u0011\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u001b\u0010\f\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, m61528d2 = {"com/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1", "Landroid/view/View$OnDragListener;", "Landroid/view/View;", "v", "Landroid/view/DragEvent;", "e", "", "onDrag", "", "Lkotlin/Lazy;", "a", "()I", "flingVelocity", "", C6997f.f39671c, "J", "scrollDuration", "com/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1$scrollRunnable$1", C6998g.f39679a, "Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1$scrollRunnable$1;", "scrollRunnable", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "scrollUp", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteListFragment$onDragListener$1 implements View.OnDragListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy flingVelocity;

    /* renamed from: f, reason: from kotlin metadata */
    public final long scrollDuration;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final NoteListFragment$onDragListener$1$scrollRunnable$1 scrollRunnable;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean scrollUp;

    /* renamed from: i */
    public final /* synthetic */ NoteListFragment f54762i;

    /* JADX WARN: Type inference failed for: r0v3, types: [com.onyx.galaxy.note.category.ui.NoteListFragment$onDragListener$1$scrollRunnable$1] */
    public NoteListFragment$onDragListener$1(final NoteListFragment noteListFragment) {
        Lazy lazy;
        this.f54762i = noteListFragment;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$onDragListener$1$flingVelocity$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ViewConfiguration.get(NoteListFragment.this.requireContext()).getScaledTouchSlop() * ResManager.INSTANCE.getInteger(C10651R.integer.note_list_fling_factor));
            }
        });
        this.flingVelocity = lazy;
        this.scrollDuration = 250L;
        this.scrollRunnable = new Runnable() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$onDragListener$1$scrollRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                boolean z2;
                boolean z3;
                int m43381a;
                long j;
                boolean z4;
                int m43381a2;
                z = NoteListFragment$onDragListener$1.this.scrollUp;
                if (z) {
                    z4 = noteListFragment.scrollTop;
                    if (!z4) {
                        RecyclerView recyclerView = noteListFragment.m43313I0().f56750rv;
                        m43381a2 = NoteListFragment$onDragListener$1.this.m43381a();
                        recyclerView.fling(0, 0 - m43381a2);
                        RecyclerView recyclerView2 = noteListFragment.m43313I0().f56750rv;
                        j = NoteListFragment$onDragListener$1.this.scrollDuration;
                        recyclerView2.postDelayed(this, j);
                    }
                }
                z2 = NoteListFragment$onDragListener$1.this.scrollUp;
                if (!z2) {
                    z3 = noteListFragment.scrollBottom;
                    if (!z3) {
                        RecyclerView recyclerView3 = noteListFragment.m43313I0().f56750rv;
                        m43381a = NoteListFragment$onDragListener$1.this.m43381a();
                        recyclerView3.fling(0, m43381a);
                    }
                }
                RecyclerView recyclerView22 = noteListFragment.m43313I0().f56750rv;
                j = NoteListFragment$onDragListener$1.this.scrollDuration;
                recyclerView22.postDelayed(this, j);
            }
        };
    }

    /* renamed from: a */
    public final int m43381a() {
        return ((Number) this.flingVelocity.getValue()).intValue();
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(@NotNull View v, @NotNull DragEvent e) {
        NotePageListAdapter m43328Q0;
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(e, "e");
        this.scrollUp = v.getId() == C10651R.id.v_scroll_up;
        switch (e.getAction()) {
            case 1:
                ClipDescription clipDescription = e.getClipDescription();
                return Intrinsics.areEqual(clipDescription != null ? clipDescription.getLabel() : null, NotePageListAdapter.TAG);
            case 3:
            case 6:
                RecyclerView recyclerView = this.f54762i.m43313I0().f56750rv;
                recyclerView.removeCallbacks(this.scrollRunnable);
                recyclerView.stopScroll();
            case 2:
                return true;
            case 4:
                m43328Q0 = this.f54762i.m43328Q0();
                m43328Q0.resetDragView();
                return true;
            case 5:
                this.f54762i.m43313I0().f56750rv.post(this.scrollRunnable);
                return true;
            default:
                return false;
        }
    }
}
