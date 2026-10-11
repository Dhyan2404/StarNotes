package com.onyx.galaxy.note.editor.handler;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.StringListOption;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.ink.EnsureDocumentFontAction;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.DocumentOpenSuccessEvent;
import com.onyx.galaxy.note.editor.action.font.CheckDocumentFontAction;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;", NotificationCompat.CATEGORY_EVENT, "", "onDocumentOpenSuccessEvent", "", C6997f.f39671c, "I", "maxFontCheckSize", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DocumentEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    public final int maxFontCheckSize;

    /* renamed from: com.onyx.galaxy.note.editor.handler.DocumentEventHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12012a<T, R> implements Function {

        /* renamed from: e */
        public static final C12012a<T, R> f58644e = new C12012a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends EnsureDocumentFontAction> apply(@NotNull Set<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureDocumentFontAction(it2).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.DocumentEventHandler$b */
    /* loaded from: classes9.dex */
    public static final class C12013b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ StringListOption f58645e;

        /* renamed from: f */
        public final /* synthetic */ DocumentOpenSuccessEvent f58646f;

        /* renamed from: g */
        public final /* synthetic */ DocumentEventHandler f58647g;

        public C12013b(StringListOption stringListOption, DocumentOpenSuccessEvent documentOpenSuccessEvent, DocumentEventHandler documentEventHandler) {
            this.f58645e = stringListOption;
            this.f58646f = documentOpenSuccessEvent;
            this.f58647g = documentEventHandler;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull EnsureDocumentFontAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58645e.add(this.f58646f.getOpenDocArgs().getDocumentId(), true, this.f58647g.maxFontCheckSize);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocumentEventHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.maxFontCheckSize = 100;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentOpenSuccessEvent(@NotNull DocumentOpenSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        StringListOption fontCheckedDocumentListOption = NoteConfigManager.INSTANCE.getFontCheckedDocumentListOption();
        if (fontCheckedDocumentListOption.get().contains((Object) event.getOpenDocArgs().getDocumentId())) {
            return;
        }
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnNext = new CheckDocumentFontAction(getEditorBundle()).build().flatMap(C12012a.f58644e).doOnNext(new C12013b(fontCheckedDocumentListOption, event, this));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        onyxErrorHandler.subscribeSilently(doOnNext);
    }
}
