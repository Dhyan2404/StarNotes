package com.onyx.android.sdk.reader.sync.model;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/sync/model/ReaderModelType;", "", "()V", "ANNOTATION_MODE", "", "BOOKMARK_MODE", "LIBRARY_MODE", "METADATA_COLLECTION_MODE", "METADATA_MODE", "NOTE_DOCUMENT_MODE", "NOTE_SHAPE_MODE", "isLibraryModelType", "", "type", "isUserDataModelType", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderModelType {
    public static final int ANNOTATION_MODE = 1;
    public static final int BOOKMARK_MODE = 2;

    @NotNull
    public static final ReaderModelType INSTANCE = new ReaderModelType();
    public static final int LIBRARY_MODE = 3;
    public static final int METADATA_COLLECTION_MODE = 5;
    public static final int METADATA_MODE = 4;
    public static final int NOTE_DOCUMENT_MODE = 7;
    public static final int NOTE_SHAPE_MODE = 6;

    public final boolean isLibraryModelType(int type) {
        return type == 3 || type == 4 || type == 5;
    }

    public final boolean isUserDataModelType(int type) {
        return type == 1 || type == 2 || type == 7;
    }
}
