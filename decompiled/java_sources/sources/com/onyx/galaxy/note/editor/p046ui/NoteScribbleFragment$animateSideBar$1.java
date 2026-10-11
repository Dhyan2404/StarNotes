package com.onyx.galaxy.note.editor.p046ui;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.galaxy.note.editor.data.SlideBarType;
import com.onyx.galaxy.note.editor.event.EditorSideBarInfo;
import com.onyx.galaxy.note.editor.event.SidebarDisplayStateChangedEvent;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment$animateSideBar$1;
import com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, m61528d2 = {"com/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1", "Landroidx/transition/TransitionListenerAdapter;", "onTransitionCancel", "", AnimatedStateListDrawableCompat.f876Z, "Landroidx/transition/Transition;", "onTransitionEnd", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteScribbleFragment$animateSideBar$1 extends TransitionListenerAdapter {

    /* renamed from: e */
    public final /* synthetic */ boolean f59157e;

    /* renamed from: f */
    public final /* synthetic */ NoteScribbleFragment f59158f;

    /* renamed from: g */
    public final /* synthetic */ NoteOutlineDragContainer f59159g;

    /* renamed from: h */
    public final /* synthetic */ SlideBarType f59160h;

    public NoteScribbleFragment$animateSideBar$1(boolean z, NoteScribbleFragment noteScribbleFragment, NoteOutlineDragContainer noteOutlineDragContainer, SlideBarType slideBarType) {
        this.f59157e = z;
        this.f59158f = noteScribbleFragment;
        this.f59159g = noteOutlineDragContainer;
        this.f59160h = slideBarType;
    }

    /* renamed from: b */
    public static final void m47025b(NoteScribbleFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47008p1();
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public void onTransitionCancel(@NotNull Transition transition) {
        Intrinsics.checkNotNullParameter(transition, "transition");
        this.f59158f.setSideLayoutAnim(false);
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public void onTransitionEnd(@NotNull Transition transition) {
        boolean m46962R0;
        EditorSideBarInfo m46941F0;
        Intrinsics.checkNotNullParameter(transition, "transition");
        if (!this.f59157e) {
            this.f59158f.m46965S1(false, this.f59159g, this.f59160h);
            this.f59159g.setTag(null);
        }
        this.f59158f.setSideLayoutAnim(false);
        this.f59158f.m46958O0();
        this.f59158f.m46936C1();
        this.f59158f.m46996i2(this.f59159g);
        EditorBundleManager editorBundleManager = this.f59158f.getEditorBundleManager();
        m46962R0 = this.f59158f.m46962R0();
        m46941F0 = this.f59158f.m46941F0();
        editorBundleManager.postEvent(new SidebarDisplayStateChangedEvent(m46962R0, m46941F0));
        TintRelativeLayout tintRelativeLayout = this.f59158f.getBinding$note_overseasRelease().editorContainer;
        final NoteScribbleFragment noteScribbleFragment = this.f59158f;
        tintRelativeLayout.post(new Runnable() { // from class: com.sunia.HTREnginev2.n1k
            @Override // java.lang.Runnable
            public final void run() {
                NoteScribbleFragment$animateSideBar$1.m47025b(NoteScribbleFragment.this);
            }
        });
    }
}
