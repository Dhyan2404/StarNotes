package com.onyx.android.sdk.universal.editor.action.command;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.command.Command;
import com.onyx.android.sdk.note.request.AddUndoRedoCommandRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/command/AddUndoRedoCommandAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/note/common/command/Command;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/command/Command;", "command", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/command/Command;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AddUndoRedoCommandAction extends RxBaseAppAction<Command> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Command command;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.command.AddUndoRedoCommandAction$a */
    /* loaded from: classes8.dex */
    public static final class C8584a<T> implements Consumer {
        public C8584a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AddUndoRedoCommandAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AddUndoRedoCommandAction.this.m37473l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.command.AddUndoRedoCommandAction$b */
    /* loaded from: classes8.dex */
    public static final class C8585b<T, R> implements Function {
        public C8585b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Command apply(@NotNull AddUndoRedoCommandAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddUndoRedoCommandAction.this.command;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddUndoRedoCommandAction(@NotNull EditorBundle editorBundle, @NotNull Command command) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(command, "command");
        this.command = command;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Command> create() {
        Observable<Command> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C8584a()).map(new C8585b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m37473l() {
        new AddUndoRedoCommandRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.command).execute2();
    }
}
