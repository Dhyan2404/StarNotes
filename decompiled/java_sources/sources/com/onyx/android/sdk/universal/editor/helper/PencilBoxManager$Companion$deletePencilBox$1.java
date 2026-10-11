package com.onyx.android.sdk.universal.editor.helper;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.replicator.note.data.pen.PencilBox;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, m61528d2 = {"<anonymous>", "", "manager", "Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PencilBoxManager$Companion$deletePencilBox$1 extends Lambda implements Function1<PencilBoxManager, Unit> {
    final /* synthetic */ List<String> $boxIdList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PencilBoxManager$Companion$deletePencilBox$1(List<String> list) {
        super(1);
        this.$boxIdList = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invoke$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(PencilBoxManager pencilBoxManager) {
        invoke2(pencilBoxManager);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable PencilBoxManager pencilBoxManager) {
        Object firstOrNull;
        if (pencilBoxManager == null) {
            return;
        }
        ArrayList<PencilBox> boxList = pencilBoxManager.getBoxList();
        final List<String> list = this.$boxIdList;
        final Function1<PencilBox, Boolean> function1 = new Function1<PencilBox, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$Companion$deletePencilBox$1.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PencilBox it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(list.contains(it2.getId()));
            }
        };
        boxList.removeIf(new Predicate() { // from class: com.onyx.android.sdk.universal.editor.helper.a
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean invoke$lambda$0;
                invoke$lambda$0 = PencilBoxManager$Companion$deletePencilBox$1.invoke$lambda$0(Function1.this, obj);
                return invoke$lambda$0;
            }
        });
        if (this.$boxIdList.contains(pencilBoxManager.getSelectedId())) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) pencilBoxManager.getBoxList());
            PencilBox pencilBox = (PencilBox) firstOrNull;
            pencilBoxManager.setSelectedId(StringKt.safelyGetStr(pencilBox != null ? pencilBox.getId() : null));
        }
    }
}
