package com.onyx.galaxy.note.category.view;

import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J>\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0016¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/EditTagInputFilter;", "Landroid/text/InputFilter;", "()V", "filter", "", "source", gon.f71290o0, "", "end", "dest", "Landroid/text/Spanned;", "dstart", "dend", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class EditTagInputFilter implements InputFilter {
    @Override // android.text.InputFilter
    @Nullable
    public CharSequence filter(@Nullable CharSequence source, int start, int end, @Nullable Spanned dest, int dstart, int dend) {
        boolean contains$default;
        if (TextUtils.isEmpty(source)) {
            return null;
        }
        Intrinsics.checkNotNull(source);
        contains$default = StringsKt__StringsKt.contains$default(source, '/', false, 2, (Object) null);
        return !contains$default ? source : "";
    }
}
