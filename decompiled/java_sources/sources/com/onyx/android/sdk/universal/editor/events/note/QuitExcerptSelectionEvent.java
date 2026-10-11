package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B6\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012#\b\u0002\u0010\u0012\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\b¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R2\u0010\u0012\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "getSaveChanged", Constants.BOOLEAN_VALUE_SIG, "saveChanged", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lkotlin/ParameterName;", "name", "shape", "", "b", "Lkotlin/jvm/functions/Function1;", "getOnSaveCallback", "()Lkotlin/jvm/functions/Function1;", "onSaveCallback", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZLkotlin/jvm/functions/Function1;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class QuitExcerptSelectionEvent {

    /* renamed from: a, reason: from kotlin metadata */
    public final boolean saveChanged;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Function1<Shape, Unit> onSaveCallback;

    /* JADX WARN: Multi-variable type inference failed */
    public QuitExcerptSelectionEvent() {
        this(false, null, 3, 0 == true ? 1 : 0);
    }

    @NotNull
    public final Function1<Shape, Unit> getOnSaveCallback() {
        return this.onSaveCallback;
    }

    public final boolean getSaveChanged() {
        return this.saveChanged;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public QuitExcerptSelectionEvent(boolean z, @NotNull Function1<? super Shape, Unit> onSaveCallback) {
        Intrinsics.checkNotNullParameter(onSaveCallback, "onSaveCallback");
        this.saveChanged = z;
        this.onSaveCallback = onSaveCallback;
    }

    public /* synthetic */ QuitExcerptSelectionEvent(boolean z, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? new Function1<Shape, Unit>() { // from class: com.onyx.android.sdk.universal.editor.events.note.QuitExcerptSelectionEvent.1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Shape shape) {
                invoke2(shape);
                return Unit.INSTANCE;
            }
        } : function1);
    }
}
