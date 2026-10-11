package com.onyx.android.sdk.reader.api;

import com.onyx.android.sdk.base.extension.StringKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0016J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0002J\u0006\u0010\r\u001a\u00020\fJ&\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00020\u000fH\u0002R\"\u0010\u0017\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", "", "", "isEmpty", "", "id", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;", "findEntryById", "title", "findEntryByTitle", "desc", "copyAndSort", "", Constants.RESET, "root", "Lkotlin/Function1;", "matcher", "a", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;", "getRootEntry", "()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;", "setRootEntry", "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V", "rootEntry", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReaderDocumentTableOfContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderDocumentTableOfContent.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1855#2,2:65\n*S KotlinDebug\n*F\n+ 1 ReaderDocumentTableOfContent.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent\n*L\n44#1:65,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ReaderDocumentTableOfContent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public ReaderDocumentTableOfContentEntry rootEntry;

    /* JADX WARN: Multi-variable type inference failed */
    public ReaderDocumentTableOfContent() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* renamed from: a */
    public final ReaderDocumentTableOfContentEntry m34476a(ReaderDocumentTableOfContentEntry root, Function1<? super ReaderDocumentTableOfContentEntry, Boolean> matcher) {
        if (matcher.invoke(root).booleanValue()) {
            return root;
        }
        List<ReaderDocumentTableOfContentEntry> children = root.getChildren();
        if (children == null || children.isEmpty()) {
            return null;
        }
        Iterator<T> it2 = root.getChildren().iterator();
        while (it2.hasNext()) {
            ReaderDocumentTableOfContentEntry m34476a = m34476a((ReaderDocumentTableOfContentEntry) it2.next(), matcher);
            if (m34476a != null) {
                return m34476a;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final ReaderDocumentTableOfContent copyAndSort(boolean desc) {
        if (!isEmpty()) {
            return new ReaderDocumentTableOfContent(this.rootEntry.copyAndSort(desc));
        }
        return new ReaderDocumentTableOfContent(null, 1, 0 == true ? 1 : 0);
    }

    @Nullable
    public final ReaderDocumentTableOfContentEntry findEntryById(@NotNull final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return m34476a(this.rootEntry, new Function1<ReaderDocumentTableOfContentEntry, Boolean>() { // from class: com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent$findEntryById$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ReaderDocumentTableOfContentEntry it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getId().compareTo(id) == 0);
            }
        });
    }

    @Nullable
    public final ReaderDocumentTableOfContentEntry findEntryByTitle(@NotNull String title) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(title, "title");
        trim = StringsKt__StringsKt.trim((CharSequence) title);
        final String obj = trim.toString();
        return m34476a(this.rootEntry, new Function1<ReaderDocumentTableOfContentEntry, Boolean>() { // from class: com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent$findEntryByTitle$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ReaderDocumentTableOfContentEntry it2) {
                CharSequence trim2;
                Intrinsics.checkNotNullParameter(it2, "it");
                String str = obj;
                trim2 = StringsKt__StringsKt.trim((CharSequence) it2.getTitle());
                return Boolean.valueOf(StringKt.safelyEqualsIgnoreCase(str, trim2.toString()));
            }
        });
    }

    @NotNull
    public final ReaderDocumentTableOfContentEntry getRootEntry() {
        return this.rootEntry;
    }

    public final boolean isEmpty() {
        List<ReaderDocumentTableOfContentEntry> children = this.rootEntry.getChildren();
        return children == null || children.isEmpty();
    }

    public final void reset() {
        this.rootEntry = new ReaderDocumentTableOfContentEntry(null, 0, null, null, false, false, false, 0L, false, null, 1023, null);
    }

    public final void setRootEntry(@NotNull ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry) {
        Intrinsics.checkNotNullParameter(readerDocumentTableOfContentEntry, "<set-?>");
        this.rootEntry = readerDocumentTableOfContentEntry;
    }

    public ReaderDocumentTableOfContent(@NotNull ReaderDocumentTableOfContentEntry rootEntry) {
        Intrinsics.checkNotNullParameter(rootEntry, "rootEntry");
        this.rootEntry = rootEntry;
    }

    public /* synthetic */ ReaderDocumentTableOfContent(ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ReaderDocumentTableOfContentEntry(null, 0, null, null, false, false, false, 0L, false, null, 1023, null) : readerDocumentTableOfContentEntry);
    }
}
