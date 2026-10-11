package com.onyx.galaxy.note.p048ui.ext;

import android.text.InputFilter;
import android.widget.EditText;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"addInputFilter", "", "Landroid/widget/EditText;", "filter", "Landroid/text/InputFilter;", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nEditextExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditextExt.kt\ncom/onyx/galaxy/note/ui/ext/EditextExtKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,20:1\n37#2,2:21\n*S KotlinDebug\n*F\n+ 1 EditextExt.kt\ncom/onyx/galaxy/note/ui/ext/EditextExtKt\n*L\n19#1:21,2\n*E\n"})
/* loaded from: classes9.dex */
public final class EditextExtKt {
    public static final void addInputFilter(@NotNull EditText editText, @NotNull InputFilter filter) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        Intrinsics.checkNotNullParameter(filter, "filter");
        ArrayList arrayList = new ArrayList();
        InputFilter[] filters = editText.getFilters();
        Intrinsics.checkNotNullExpressionValue(filters, "getFilters(...)");
        CollectionsKt__MutableCollectionsKt.addAll(arrayList, filters);
        arrayList.add(filter);
        editText.setFilters((InputFilter[]) arrayList.toArray(new InputFilter[0]));
    }
}
