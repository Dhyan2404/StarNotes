package com.onyx.android.sdk.universal.editor.events.app;

import android.net.Uri;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B/\u0012\u001a\u0010\n\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00030\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0011\u0010\u0012R+\u0010\n\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;", "", "", "Lkotlin/Pair;", "Landroid/net/Uri;", "", "a", "Ljava/util/List;", "getUriList", "()Ljava/util/List;", "uriList", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "b", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "getImportSelectedContext", "()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "importSelectedContext", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ImportDocumentUrisEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<Pair<Uri, String>> uriList;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final ImportSelectedContext importSelectedContext;

    /* JADX WARN: Multi-variable type inference failed */
    public ImportDocumentUrisEvent(@NotNull List<? extends Pair<? extends Uri, String>> uriList, @Nullable ImportSelectedContext importSelectedContext) {
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        this.uriList = uriList;
        this.importSelectedContext = importSelectedContext;
    }

    @Nullable
    public final ImportSelectedContext getImportSelectedContext() {
        return this.importSelectedContext;
    }

    @NotNull
    public final List<Pair<Uri, String>> getUriList() {
        return this.uriList;
    }

    public /* synthetic */ ImportDocumentUrisEvent(List list, ImportSelectedContext importSelectedContext, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? null : importSelectedContext);
    }
}
