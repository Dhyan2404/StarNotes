package com.onyx.galaxy.note.editor.handler;

import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.ScrollDownAction;
import com.onyx.android.sdk.universal.editor.action.ScrollUpAction;
import com.onyx.android.sdk.universal.editor.data.ScrollInfo;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandler;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.helper.TextInputHelper;
import com.onyx.galaxy.note.common.keyboard.KeyboardHelper;
import com.onyx.galaxy.note.common.keyboard.KeyboardStateListener;
import com.onyx.galaxy.note.editor.event.ForceCloseKeyboardEvent;
import com.onyx.galaxy.note.editor.event.RegisterKeyboardHelperEvent;
import com.onyx.galaxy.note.editor.event.TextBoxKeyboardClosedEvent;
import com.onyx.galaxy.note.editor.event.TextBoxKeyboardOpenEvent;
import com.onyx.galaxy.note.editor.event.UnregisterKeyboardHelperEvent;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.view.InputTextToolLayout;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010%\u001a\u00020#¢\u0006\u0004\b/\u00100J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\bH\u0007J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\nH\u0007J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016J\b\u0010\u0010\u001a\u00020\u0003H\u0002J\u0018\u0010\u0012\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u001c\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\fH\u0002J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0002J\b\u0010\u001a\u001a\u00020\u0003H\u0002J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0014\u0010\u001e\u001a\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001f\u001a\u00020\u0003H\u0002J\b\u0010!\u001a\u00020 H\u0002J\b\u0010\"\u001a\u00020\u001bH\u0002R\u0014\u0010%\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010$R\u0016\u0010(\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010*R\u0014\u0010.\u001a\u00020,8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001e\u0010-¨\u00061"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;", "", "destroy", "Lcom/onyx/galaxy/note/editor/event/RegisterKeyboardHelperEvent;", NotificationCompat.CATEGORY_EVENT, "onRegisterKeyboradHelperEvent", "Lcom/onyx/galaxy/note/editor/event/UnregisterKeyboardHelperEvent;", "onUnregisterKeyboardHelperEvent", "Lcom/onyx/galaxy/note/editor/event/ForceCloseKeyboardEvent;", "onForceCloseKeyboardEvent", "", "keyboardHeight", "onKeyboardOpen", "onKeyboardClose", "e", "lastKeyboardHeight", C6998g.f39679a, "scrollOffset", "Lio/reactivex/rxjava3/core/Observable;", "i", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "old", "new", "j", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "c", C6999h.f39688c, "d", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "b", "a", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "scribbleFragment", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;", "keyboardHelper", "Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;", "Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;", "scrollInfo", "", "J", "SCROLL_UP_DELAY", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TextBoxKeyboardEventHandler implements EventHandler, KeyboardStateListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment scribbleFragment;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public KeyboardHelper keyboardHelper;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ScrollInfo scrollInfo;

    /* renamed from: h, reason: from kotlin metadata */
    public final long SCROLL_UP_DELAY;

    /* renamed from: com.onyx.galaxy.note.editor.handler.TextBoxKeyboardEventHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12115a<T> implements Consumer {
        public C12115a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextBoxKeyboardEventHandler.this.m46327d();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.TextBoxKeyboardEventHandler$b */
    /* loaded from: classes9.dex */
    public static final class C12116b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ int f58878f;

        /* renamed from: g */
        public final /* synthetic */ int f58879g;

        public C12116b(int i, int i2) {
            this.f58878f = i;
            this.f58879g = i2;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Integer.valueOf(TextBoxKeyboardEventHandler.this.m46330g(this.f58878f, this.f58879g));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.TextBoxKeyboardEventHandler$c */
    /* loaded from: classes9.dex */
    public static final class C12117c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ VirtualDocViewInfo f58881f;

        public C12117c(VirtualDocViewInfo virtualDocViewInfo) {
            this.f58881f = virtualDocViewInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextBoxKeyboardEventHandler.this.m46333j(this.f58881f, it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.TextBoxKeyboardEventHandler$d */
    /* loaded from: classes9.dex */
    public static final class C12118d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f58882e;

        /* renamed from: f */
        public final /* synthetic */ ScrollInfo f58883f;

        public C12118d(EditorBundle editorBundle, ScrollInfo scrollInfo) {
            this.f58882e = editorBundle;
            this.f58883f = scrollInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends VirtualDocViewInfo> apply(@NotNull TextBoxKeyboardEventHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ScrollUpAction(this.f58882e, this.f58883f).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.TextBoxKeyboardEventHandler$e */
    /* loaded from: classes9.dex */
    public static final class C12119e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ScrollInfo f58885f;

        public C12119e(ScrollInfo scrollInfo) {
            this.f58885f = scrollInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextBoxKeyboardEventHandler.this.m46333j(this.f58885f.getBeforeScrollVirtualDocViewInfo(), it2);
            this.f58885f.setAfterScrollVirtualDocViewInfo(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.TextBoxKeyboardEventHandler$f */
    /* loaded from: classes9.dex */
    public static final class C12120f<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ InputTextToolLayout f58886e;

        public C12120f(InputTextToolLayout inputTextToolLayout) {
            this.f58886e = inputTextToolLayout;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58886e.getTextInputHelper().resetLimitRect();
        }
    }

    public TextBoxKeyboardEventHandler(@NotNull NoteScribbleFragment scribbleFragment) {
        Intrinsics.checkNotNullParameter(scribbleFragment, "scribbleFragment");
        this.scribbleFragment = scribbleFragment;
        this.keyboardHelper = new KeyboardHelper();
        this.SCROLL_UP_DELAY = 50L;
        GlobalBundle.INSTANCE.register(this);
    }

    /* renamed from: a */
    public final EditorBundle m46324a() {
        return this.scribbleFragment.editorBundle$note_overseasRelease();
    }

    /* renamed from: b */
    public final TextBoxView m46325b() {
        return this.scribbleFragment.getTextBox$note_overseasRelease();
    }

    /* renamed from: c */
    public final void m46326c(EditorBundle editorBundle) {
        KeyboardHelper keyboardHelper = this.keyboardHelper;
        InputTextToolLayout inputTextLayout = this.scribbleFragment.getBinding$note_overseasRelease().inputTextLayout;
        Intrinsics.checkNotNullExpressionValue(inputTextLayout, "inputTextLayout");
        KeyboardHelper.animateDown$default(keyboardHelper, inputTextLayout, null, false, 6, null);
        KeyboardHelper keyboardHelper2 = this.keyboardHelper;
        InputTextToolLayout inputTextLayout2 = this.scribbleFragment.getBinding$note_overseasRelease().inputTextLayout;
        Intrinsics.checkNotNullExpressionValue(inputTextLayout2, "inputTextLayout");
        keyboardHelper2.removeTranslateRule(inputTextLayout2);
        m46331h(editorBundle).doOnNext(new C12115a()).subscribe();
    }

    /* renamed from: d */
    public final void m46327d() {
        m46329f();
        if (ViewKt.isVisible(m46325b())) {
            GlobalBundle.INSTANCE.postEvent(new TextBoxKeyboardClosedEvent());
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        EventHandler.DefaultImpls.destroy(this);
        GlobalBundle.INSTANCE.unregister(this);
    }

    /* renamed from: e */
    public final void m46328e() {
        InputTextToolLayout inputTextToolLayout = this.scribbleFragment.getBinding$note_overseasRelease().inputTextLayout;
        if (!(inputTextToolLayout instanceof ViewGroup)) {
            inputTextToolLayout = null;
        }
        if (inputTextToolLayout == null) {
            return;
        }
        if (this.keyboardHelper.isInitialized()) {
            this.keyboardHelper.release();
        }
        KeyboardHelper keyboardHelper = new KeyboardHelper();
        this.keyboardHelper = keyboardHelper;
        FragmentActivity requireActivity = this.scribbleFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        keyboardHelper.init(requireActivity).bindKeyboardInsetsListener(inputTextToolLayout).setOnKeyboardStateListener(this);
    }

    /* renamed from: f */
    public final void m46329f() {
        this.scrollInfo = null;
    }

    /* renamed from: g */
    public final int m46330g(int keyboardHeight, int lastKeyboardHeight) {
        TextBoxView m46325b = m46325b();
        InputTextToolLayout inputTextLayout = this.scribbleFragment.getBinding$note_overseasRelease().inputTextLayout;
        Intrinsics.checkNotNullExpressionValue(inputTextLayout, "inputTextLayout");
        int editorCursorBottom = m46325b.getEditorCursorBottom();
        int i = ViewKt.getLocationOnScreen(inputTextLayout)[1] + lastKeyboardHeight;
        this.keyboardHelper.setTranslateRule(inputTextLayout, 0, Integer.valueOf(-keyboardHeight));
        KeyboardHelper.animateUp$default(this.keyboardHelper, inputTextLayout, false, 2, null);
        m46329f();
        return editorCursorBottom - (i - keyboardHeight);
    }

    /* renamed from: h */
    public final Observable<?> m46331h(EditorBundle editorBundle) {
        ScrollInfo scrollInfo = this.scrollInfo;
        if (scrollInfo == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        VirtualDocViewInfo afterScrollVirtualDocViewInfo = scrollInfo.getAfterScrollVirtualDocViewInfo();
        if (afterScrollVirtualDocViewInfo == null) {
            afterScrollVirtualDocViewInfo = scrollInfo.getBeforeScrollVirtualDocViewInfo();
        }
        Observable<VirtualDocViewInfo> doOnNext = new ScrollDownAction(editorBundle, scrollInfo).build().doOnNext(new C12117c(afterScrollVirtualDocViewInfo));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: i */
    public final Observable<?> m46332i(int keyboardHeight, int scrollOffset) {
        EditorBundle m46324a = m46324a();
        InputTextToolLayout inputTextLayout = this.scribbleFragment.getBinding$note_overseasRelease().inputTextLayout;
        Intrinsics.checkNotNullExpressionValue(inputTextLayout, "inputTextLayout");
        ScrollInfo scrollInfo = new ScrollInfo(EditorBundleKt.virtualDocViewInfo(m46324a).copy(), keyboardHeight + inputTextLayout.getHeight(), -scrollOffset, null, 8, null);
        this.scrollInfo = scrollInfo;
        Observable<?> doOnNext = Observable.just(this).delay(this.SCROLL_UP_DELAY, TimeUnit.MILLISECONDS).flatMap(new C12118d(m46324a, scrollInfo)).doOnNext(new C12119e(scrollInfo)).doOnNext(new C12120f(inputTextLayout));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void init() {
        EventHandler.DefaultImpls.init(this);
    }

    /* renamed from: j */
    public final void m46333j(VirtualDocViewInfo old, VirtualDocViewInfo r7) {
        TextBoxView m46325b = m46325b();
        TextInputHelper textInputHelper = this.scribbleFragment.getBinding$note_overseasRelease().inputTextLayout.getTextInputHelper();
        float pVar = old.getViewport().top() - r7.getViewport().top();
        this.keyboardHelper.setTranslateRule(m46325b, Float.valueOf(m46325b.getTranslationY()), Float.valueOf(m46325b.getTranslationY() + pVar));
        KeyboardHelper.animateUp$default(this.keyboardHelper, m46325b, false, 2, null);
        textInputHelper.normalizeExtraVerticalOffset(-((int) pVar));
        this.keyboardHelper.removeTranslateRule(m46325b);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onForceCloseKeyboardEvent(@NotNull ForceCloseKeyboardEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundle editorBundle = event.getEditorBundle();
        if (editorBundle == null) {
            editorBundle = m46324a();
        }
        m46326c(editorBundle);
    }

    @Override // com.onyx.galaxy.note.common.keyboard.KeyboardStateListener
    public void onKeyboardClose() {
        m46326c(m46324a());
    }

    @Override // com.onyx.galaxy.note.common.keyboard.KeyboardStateListener
    public void onKeyboardOpen(final int keyboardHeight) {
        if (ViewKt.isVisible(m46325b())) {
            GlobalBundle.INSTANCE.postEvent(new TextBoxKeyboardOpenEvent());
            InputTextToolLayout inputTextLayout = this.scribbleFragment.getBinding$note_overseasRelease().inputTextLayout;
            Intrinsics.checkNotNullExpressionValue(inputTextLayout, "inputTextLayout");
            int translateDistance = (int) this.keyboardHelper.getTranslateDistance(inputTextLayout);
            if (translateDistance == keyboardHeight && DeviceFactory.INSTANCE.getCurrentDevice().filterDuplicateKeyboardOpenEvent(keyboardHeight)) {
                return;
            }
            Observable<R> map = m46331h(m46324a()).map(new C12116b(keyboardHeight, translateDistance));
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            RxjavaKt.flatMapIf(map, new Function1<Integer, Boolean>() { // from class: com.onyx.galaxy.note.editor.handler.TextBoxKeyboardEventHandler$onKeyboardOpen$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull Integer it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(it2.intValue() > 0);
                }
            }, new Function1<Integer, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.handler.TextBoxKeyboardEventHandler$onKeyboardOpen$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Observable<? extends Object> invoke(@NotNull Integer it2) {
                    Observable<? extends Object> m46332i;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    m46332i = TextBoxKeyboardEventHandler.this.m46332i(keyboardHeight, it2.intValue());
                    return m46332i;
                }
            }).subscribe();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRegisterKeyboradHelperEvent(@NotNull RegisterKeyboardHelperEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46328e();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUnregisterKeyboardHelperEvent(@NotNull UnregisterKeyboardHelperEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.keyboardHelper.release();
    }
}
