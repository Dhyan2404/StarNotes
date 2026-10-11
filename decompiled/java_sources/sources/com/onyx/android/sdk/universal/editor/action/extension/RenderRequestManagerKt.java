package com.onyx.android.sdk.universal.editor.action.extension;

import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u0002\u001a\u0012\u0010\u0000\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\u0003\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0002¨\u0006\u0006"}, m61528d2 = {"safeClearAllNoteSliceCache", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "safeClearAllSliceCache", "", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class RenderRequestManagerKt {
    @NotNull
    public static final Observable<?> safeClearAllNoteSliceCache(@NotNull final EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return DocCommonActionsKt.createMainObservable(editorBundle, new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt$safeClearAllNoteSliceCache$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                EditorBundleKt.renderManager(EditorBundle.this).safeClearAllNoteSliceCache();
            }
        });
    }

    public static final void safeClearAllSliceCache(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        EditorBundleKt.renderManager(editorBundle).safeClearAllSliceCache();
    }

    @NotNull
    public static final Observable<?> safeClearAllNoteSliceCache(@NotNull final RxBaseAppAction<?> rxBaseAppAction) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        return DocCommonActionsKt.createMainObservable(rxBaseAppAction, new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt$safeClearAllNoteSliceCache$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                EditorBundleKt.renderManager(rxBaseAppAction.getEditorBundle()).safeClearAllNoteSliceCache();
            }
        });
    }
}
