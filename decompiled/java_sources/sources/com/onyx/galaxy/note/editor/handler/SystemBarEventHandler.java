package com.onyx.galaxy.note.editor.handler;

import android.app.Activity;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.device.CommonBaseDevice;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.extension.ActivityExtKt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandler;
import com.onyx.android.sdk.universal.editor.events.note.FullScreenAnimEndEvent;
import com.onyx.android.sdk.universal.editor.events.note.SystemBarWindowInsetsEvent;
import com.onyx.galaxy.note.editor.event.TextBoxKeyboardClosedEvent;
import com.onyx.galaxy.note.editor.event.TextBoxKeyboardOpenEvent;
import com.onyx.galaxy.note.editor.handler.SystemBarEventHandler;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u0017¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\bH\u0007J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\fH\u0007J\b\u0010\u000e\u001a\u00020\u0002H\u0002J \u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002R\u0017\u0010\u001b\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;", "", "init", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenAnimEndEvent;", NotificationCompat.CATEGORY_EVENT, "onFullScreenEndAnimEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SystemBarWindowInsetsEvent;", "onSetSystemBarWindowInsetsEvent", "Lcom/onyx/galaxy/note/editor/event/TextBoxKeyboardOpenEvent;", "onTextBoxKeyBoardOpenEvent", "Lcom/onyx/galaxy/note/editor/event/TextBoxKeyboardClosedEvent;", "onTextBoxKeyBoardClosedEvent", "e", "Landroid/view/View;", "view", "", "icCovered", "Landroidx/core/view/WindowInsetsCompat;", "insets", "j", C4921e.f26537n, "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "getScribbleFragment", "()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "scribbleFragment", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSystemBarEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemBarEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/SystemBarEventHandler\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,117:1\n157#2,8:118\n157#2,8:126\n157#2,8:134\n157#2,8:142\n157#2,8:150\n157#2,8:158\n157#2,8:166\n*S KotlinDebug\n*F\n+ 1 SystemBarEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/SystemBarEventHandler\n*L\n55#1:118,8\n61#1:126,8\n100#1:134,8\n69#1:142,8\n70#1:150,8\n71#1:158,8\n92#1:166,8\n*E\n"})
/* loaded from: classes9.dex */
public final class SystemBarEventHandler implements EventHandler {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment scribbleFragment;

    public SystemBarEventHandler(@NotNull NoteScribbleFragment scribbleFragment) {
        Intrinsics.checkNotNullParameter(scribbleFragment, "scribbleFragment");
        this.scribbleFragment = scribbleFragment;
        init();
    }

    /* renamed from: f */
    public static final void m46312f(final SystemBarEventHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ViewCompat.setOnApplyWindowInsetsListener(this$0.scribbleFragment.getBinding$note_overseasRelease().editorContainer, new OnApplyWindowInsetsListener() { // from class: com.sunia.HTREnginev2.l6n
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat m46313g;
                m46313g = SystemBarEventHandler.m46313g(SystemBarEventHandler.this, view, windowInsetsCompat);
                return m46313g;
            }
        });
    }

    /* renamed from: g */
    public static final WindowInsetsCompat m46313g(SystemBarEventHandler this$0, View view, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (NoteConfigManager.INSTANCE.getStatusBarHideOption().get()) {
            TintRelativeLayout editorContainer = this$0.scribbleFragment.getBinding$note_overseasRelease().editorContainer;
            Intrinsics.checkNotNullExpressionValue(editorContainer, "editorContainer");
            editorContainer.setPadding(editorContainer.getPaddingLeft(), editorContainer.getPaddingTop(), editorContainer.getPaddingRight(), 0);
            NoteOutlineDragContainer leftSideBarLayout = this$0.scribbleFragment.getBinding$note_overseasRelease().leftSideBarLayout;
            Intrinsics.checkNotNullExpressionValue(leftSideBarLayout, "leftSideBarLayout");
            leftSideBarLayout.setPadding(leftSideBarLayout.getPaddingLeft(), leftSideBarLayout.getPaddingTop(), leftSideBarLayout.getPaddingRight(), 0);
            NoteOutlineDragContainer rightSideBarLayout = this$0.scribbleFragment.getBinding$note_overseasRelease().rightSideBarLayout;
            Intrinsics.checkNotNullExpressionValue(rightSideBarLayout, "rightSideBarLayout");
            rightSideBarLayout.setPadding(rightSideBarLayout.getPaddingLeft(), rightSideBarLayout.getPaddingTop(), rightSideBarLayout.getPaddingRight(), 0);
            return insets;
        }
        boolean isCoveredByNavigationBar = ViewKt.isCoveredByNavigationBar(view, insets);
        TintRelativeLayout editorContainer2 = this$0.scribbleFragment.getBinding$note_overseasRelease().editorContainer;
        Intrinsics.checkNotNullExpressionValue(editorContainer2, "editorContainer");
        this$0.m46317j(editorContainer2, isCoveredByNavigationBar, insets);
        NoteOutlineDragContainer leftSideBarLayout2 = this$0.scribbleFragment.getBinding$note_overseasRelease().leftSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(leftSideBarLayout2, "leftSideBarLayout");
        this$0.m46317j(leftSideBarLayout2, isCoveredByNavigationBar, insets);
        NoteOutlineDragContainer rightSideBarLayout2 = this$0.scribbleFragment.getBinding$note_overseasRelease().rightSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(rightSideBarLayout2, "rightSideBarLayout");
        this$0.m46317j(rightSideBarLayout2, isCoveredByNavigationBar, insets);
        return insets;
    }

    /* renamed from: h */
    public static final void m46314h(final SystemBarEventHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ViewCompat.setOnApplyWindowInsetsListener(this$0.scribbleFragment.getBinding$note_overseasRelease().editTitleLayout, new OnApplyWindowInsetsListener() { // from class: com.sunia.HTREnginev2.o6n
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat m46315i;
                m46315i = SystemBarEventHandler.m46315i(SystemBarEventHandler.this, view, windowInsetsCompat);
                return m46315i;
            }
        });
    }

    /* renamed from: i */
    public static final WindowInsetsCompat m46315i(SystemBarEventHandler this$0, View view, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(insets, "insets");
        int i = insets.getInsets(WindowInsetsCompat.Type.statusBars()).top;
        CommonBaseDevice currentDevice = DeviceFactory.INSTANCE.getCurrentDevice();
        FragmentActivity requireActivity = this$0.scribbleFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        int deviceTopPaddingHeight = currentDevice.getDeviceTopPaddingHeight(requireActivity);
        if (NoteConfigManager.INSTANCE.getStatusBarHideOption().get()) {
            i = 0;
        }
        view.setPadding(view.getPaddingLeft(), Math.max(i, deviceTopPaddingHeight), view.getPaddingRight(), view.getPaddingBottom());
        return insets;
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        EventHandler.DefaultImpls.destroy(this);
        GlobalBundle.INSTANCE.unregister(this);
    }

    /* renamed from: e */
    public final void m46316e() {
        this.scribbleFragment.getBinding$note_overseasRelease().editorContainer.post(new Runnable() { // from class: com.sunia.HTREnginev2.m6n
            @Override // java.lang.Runnable
            public final void run() {
                SystemBarEventHandler.m46312f(SystemBarEventHandler.this);
            }
        });
        this.scribbleFragment.getBinding$note_overseasRelease().editTitleLayout.post(new Runnable() { // from class: com.sunia.HTREnginev2.n6n
            @Override // java.lang.Runnable
            public final void run() {
                SystemBarEventHandler.m46314h(SystemBarEventHandler.this);
            }
        });
    }

    @NotNull
    public final NoteScribbleFragment getScribbleFragment() {
        return this.scribbleFragment;
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void init() {
        EventHandler.DefaultImpls.init(this);
        GlobalBundle.INSTANCE.register(this);
    }

    /* renamed from: j */
    public final void m46317j(View view, boolean icCovered, WindowInsetsCompat insets) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), icCovered ? insets.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom : 0);
    }

    /* renamed from: k */
    public final void m46318k() {
        FragmentKt.requireActivitySafety$default(this.scribbleFragment, null, new Function1<Activity, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.SystemBarEventHandler$updateDataTopPadding$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Activity activity) {
                invoke2(activity);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Activity activity) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                if (NoteConfigManager.INSTANCE.getStatusBarHideOption().get()) {
                    TintRelativeLayout editorContainer = SystemBarEventHandler.this.getScribbleFragment().getBinding$note_overseasRelease().editorContainer;
                    Intrinsics.checkNotNullExpressionValue(editorContainer, "editorContainer");
                    editorContainer.setPadding(editorContainer.getPaddingLeft(), 0, editorContainer.getPaddingRight(), editorContainer.getPaddingBottom());
                    return;
                }
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(activity.getWindow().getDecorView());
                TintRelativeLayout tintRelativeLayout = SystemBarEventHandler.this.getScribbleFragment().getBinding$note_overseasRelease().editorContainer;
                SystemBarEventHandler systemBarEventHandler = SystemBarEventHandler.this;
                Intrinsics.checkNotNull(tintRelativeLayout);
                int statusBarHeight = ViewKt.isCoveredByStatusBar(tintRelativeLayout, rootWindowInsets) ? ActivityExtKt.getStatusBarHeight(activity) : 0;
                TintRelativeLayout editorContainer2 = systemBarEventHandler.getScribbleFragment().getBinding$note_overseasRelease().editorContainer;
                Intrinsics.checkNotNullExpressionValue(editorContainer2, "editorContainer");
                editorContainer2.setPadding(editorContainer2.getPaddingLeft(), statusBarHeight, editorContainer2.getPaddingRight(), editorContainer2.getPaddingBottom());
            }
        }, 1, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFullScreenEndAnimEvent(@NotNull FullScreenAnimEndEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46318k();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSetSystemBarWindowInsetsEvent(@NotNull SystemBarWindowInsetsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46316e();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextBoxKeyBoardClosedEvent(@NotNull TextBoxKeyboardClosedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FragmentActivity requireActivity = this.scribbleFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        int navigationBarHeight = ActivityExtKt.getNavigationBarHeight(requireActivity);
        TintRelativeLayout editorContainer = this.scribbleFragment.getBinding$note_overseasRelease().editorContainer;
        Intrinsics.checkNotNullExpressionValue(editorContainer, "editorContainer");
        editorContainer.setPadding(editorContainer.getPaddingLeft(), editorContainer.getPaddingTop(), editorContainer.getPaddingRight(), navigationBarHeight);
        this.scribbleFragment.getBinding$note_overseasRelease().inputTextLayout.getTextInputHelper().resetLimitRect();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextBoxKeyBoardOpenEvent(@NotNull TextBoxKeyboardOpenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TintRelativeLayout editorContainer = this.scribbleFragment.getBinding$note_overseasRelease().editorContainer;
        Intrinsics.checkNotNullExpressionValue(editorContainer, "editorContainer");
        editorContainer.setPadding(editorContainer.getPaddingLeft(), editorContainer.getPaddingTop(), editorContainer.getPaddingRight(), 0);
    }
}
