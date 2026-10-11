package com.onyx.android.sdk.universal.editor.events.app;

import android.net.Uri;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B!\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000f\u0010\u0010R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;", "", "", "Landroid/net/Uri;", "a", "Ljava/util/List;", "getUriList", "()Ljava/util/List;", "uriList", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "b", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "getImportSelectedContext", "()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "importSelectedContext", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ImportImageUrisEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<Uri> uriList;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final ImportSelectedContext importSelectedContext;

    /* JADX WARN: Multi-variable type inference failed */
    public ImportImageUrisEvent(@NotNull List<? extends Uri> uriList, @Nullable ImportSelectedContext importSelectedContext) {
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        this.uriList = uriList;
        this.importSelectedContext = importSelectedContext;
    }

    @Nullable
    public final ImportSelectedContext getImportSelectedContext() {
        return this.importSelectedContext;
    }

    @NotNull
    public final List<Uri> getUriList() {
        return this.uriList;
    }

    public /* synthetic */ ImportImageUrisEvent(List list, ImportSelectedContext importSelectedContext, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? null : importSelectedContext);
    }
}
