package com.onyx.galaxy.note.editor.p046ui;

import android.view.View;
import com.onyx.android.sdk.universal.editor.events.app.ContentViewSizeChangedEvent;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.editor.event.ChangeScrollerConfigEvent;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment$initSplitScreenLayout$1;
import com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u0003H\u0016¨\u0006\u000b"}, m61528d2 = {"com/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSplitScreenLayout$1", "Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;", "onAnimatorEnd", "", "onAnimatorStart", "onDividerDown", "onDividerRelease", "onExitSpitScreen", "goneView", "Landroid/view/View;", "onLayoutSwitched", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteScribbleFragment$initSplitScreenLayout$1 implements SplitScreenLayout.Listener {

    /* renamed from: a */
    public final /* synthetic */ NoteScribbleFragment f59178a;

    /* renamed from: b */
    public final /* synthetic */ SplitScreenLayout f59179b;

    public NoteScribbleFragment$initSplitScreenLayout$1(NoteScribbleFragment noteScribbleFragment, SplitScreenLayout splitScreenLayout) {
        this.f59178a = noteScribbleFragment;
        this.f59179b = splitScreenLayout;
    }

    /* renamed from: b */
    public static final void m47040b(NoteScribbleFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46980a2();
    }

    @Override // com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout.Listener
    public void onAnimatorEnd() {
        this.f59178a.getEditorBundleManager().setEnabledAnimationUpdateEditorView(false);
        this.f59178a.getEditorBundleManager().postEvent(new ContentViewSizeChangedEvent());
        this.f59178a.getEditorBundleManager().resizeCache();
    }

    @Override // com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout.Listener
    public void onAnimatorStart() {
        this.f59178a.getEditorBundleManager().setEnabledAnimationUpdateEditorView(true);
    }

    @Override // com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout.Listener
    public void onDividerDown() {
        this.f59178a.getEditorBundleManager().setEnabledAnimationUpdateEditorView(true);
        this.f59178a.m46949J0();
    }

    @Override // com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout.Listener
    public void onDividerRelease() {
        this.f59178a.getEditorBundleManager().setEnabledAnimationUpdateEditorView(false);
        this.f59178a.getEditorBundleManager().postEvent(new ContentViewSizeChangedEvent());
        this.f59178a.m46980a2();
    }

    @Override // com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout.Listener
    public void onExitSpitScreen(@NotNull View goneView) {
        Intrinsics.checkNotNullParameter(goneView, "goneView");
        this.f59178a.getEditorBundleManager().setEnabledAnimationUpdateEditorView(false);
        this.f59178a.m46980a2();
        this.f59178a.getEditorBundleManager().onExitSpitScreen(goneView);
    }

    @Override // com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout.Listener
    public void onLayoutSwitched() {
        this.f59178a.m46949J0();
        SplitScreenLayout splitScreenLayout = this.f59179b;
        final NoteScribbleFragment noteScribbleFragment = this.f59178a;
        splitScreenLayout.post(new Runnable() { // from class: com.sunia.HTREnginev2.p1k
            @Override // java.lang.Runnable
            public final void run() {
                NoteScribbleFragment$initSplitScreenLayout$1.m47040b(NoteScribbleFragment.this);
            }
        });
        DocCollectionBundle.INSTANCE.postEvent(new ChangeScrollerConfigEvent(Boolean.FALSE, null, null, null, null, 30, null));
    }
}
