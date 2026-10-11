package com.onyx.android.sdk.replicator.note.data.point;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/point/PointConstant;", "", "()V", "INT_TYPE_LENGTH", "", "IO_SAVE_TIME_MS_THRESHOLD", "MAX_POINT_READ_LENGTH_V1", "POINT_DOCUMENT_HEADER_LENGTH", "POINT_DOCUMENT_POINT_LENGTH_V1", "POINT_DOCUMENT_SHAPE_ATTR_LENGTH_V1", "POINT_DOCUMENT_SHAPE_REPO_LENGTH_V1", "POINT_DOCUMENT_UUID_LENGTH", "POINT_DOCUMENT_XREF_LENGTH", "POINT_FILE_END", "", "POINT_FILE_NAME_SPLIT_CHAR", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PointConstant {

    @NotNull
    public static final PointConstant INSTANCE = new PointConstant();
    public static final int INT_TYPE_LENGTH = 4;
    public static final int IO_SAVE_TIME_MS_THRESHOLD = 1000;
    public static final int MAX_POINT_READ_LENGTH_V1 = 83886080;
    public static final int POINT_DOCUMENT_HEADER_LENGTH = 76;
    public static final int POINT_DOCUMENT_POINT_LENGTH_V1 = 16;
    public static final int POINT_DOCUMENT_SHAPE_ATTR_LENGTH_V1 = 4;
    public static final int POINT_DOCUMENT_SHAPE_REPO_LENGTH_V1 = 44;
    public static final int POINT_DOCUMENT_UUID_LENGTH = 36;
    public static final int POINT_DOCUMENT_XREF_LENGTH = 4;

    @NotNull
    public static final String POINT_FILE_END = "points";

    @NotNull
    public static final String POINT_FILE_NAME_SPLIT_CHAR = "#";

    private PointConstant() {
    }
}
