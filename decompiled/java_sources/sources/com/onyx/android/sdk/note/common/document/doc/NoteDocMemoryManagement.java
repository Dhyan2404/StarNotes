package com.onyx.android.sdk.note.common.document.doc;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\b\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;", "", "checkTraceMemoryAvailable", "", "requireReleaseMemory", "", "noteDoc", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "currentPageId", "", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface NoteDocMemoryManagement {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = Companion.f43473a;
    public static final boolean DEBUG = false;
    public static final long DEFAULT_MIN_MEMORY = 62914560;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement$Companion;", "", "()V", "DEBUG", "", "DEFAULT_MIN_MEMORY", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public static final boolean DEBUG = false;
        public static final long DEFAULT_MIN_MEMORY = 62914560;

        /* renamed from: a */
        public static final /* synthetic */ Companion f43473a = new Companion();
    }

    boolean checkTraceMemoryAvailable();

    void requireReleaseMemory(@NotNull NoteDocument noteDoc, @NotNull String currentPageId);
}
