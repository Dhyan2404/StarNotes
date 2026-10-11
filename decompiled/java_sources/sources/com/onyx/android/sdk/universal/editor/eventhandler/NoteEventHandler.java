package com.onyx.android.sdk.universal.editor.eventhandler;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.config.DocumentState;
import com.onyx.android.sdk.universal.editor.events.app.ActivityResumeEvent;
import com.onyx.android.sdk.universal.editor.events.app.DocumentClosedEvent;
import com.onyx.android.sdk.universal.editor.events.app.DocumentStateEvent;
import com.onyx.android.sdk.universal.editor.events.app.StartActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.OpenNoteDocumentEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\fH\u0007J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u000eH\u0017J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0012H\u0007¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/eventhandler/NoteEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "onActivityResumeEvent", "", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityResumeEvent;", "onDocumentClosedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;", "onDocumentStateEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;", "onOpenNoteDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/OpenNoteDocumentEvent;", "onStartActivateDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;", "onVirtualDocViewInfoEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteEventHandler extends BaseEventHandler {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DocumentState.values().length];
            try {
                iArr[DocumentState.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DocumentState.PENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteEventHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivityResumeEvent(@NotNull ActivityResumeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getEditorBundle().getUiBundle().resetUIStateInfo();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentClosedEvent(@NotNull DocumentClosedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getEditorBundle().onDocumentClosed();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentStateEvent(@NotNull DocumentStateEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getEditorBundle().getUiBundle().setDocumentState(event.getDocumentState());
        int i = WhenMappings.$EnumSwitchMapping$0[event.getDocumentState().ordinal()];
        if (i == 1 || i == 2) {
            getEditorBundle().onDocumentClosed();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onOpenNoteDocumentEvent(@NotNull OpenNoteDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartActivateDocumentEvent(@NotNull StartActivateDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.stopScroll(getEditorBundle());
        EditorBundleKt.toDummyProvider(getEditorBundle());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.updateVirtualDocViewInfo(getEditorBundle(), event.getVirtualDocViewInfo());
    }
}
