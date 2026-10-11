package com.onyx.galaxy.note.datarepository.constants;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/constants/Constants;", "", "()V", "DOWNLOAD_STATUS_ADDED", "", "DOWNLOAD_STATUS_COMPLETED", "DOWNLOAD_STATUS_ERROR", "DOWNLOAD_STATUS_IN_PROGRESS", "DOWNLOAD_STATUS_UNSTART", "RESOURCE_TYPE_STICKER", "", "RESOURCE_TYPE_TEMPLATE", "TEMPLATE_TYPE_COVER", "TEMPLATE_TYPE_NOTE", "TEMPLATE_TYPE_PAPER", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class Constants {
    public static final int DOWNLOAD_STATUS_ADDED = 3;
    public static final int DOWNLOAD_STATUS_COMPLETED = 2;
    public static final int DOWNLOAD_STATUS_ERROR = -1;
    public static final int DOWNLOAD_STATUS_IN_PROGRESS = 1;
    public static final int DOWNLOAD_STATUS_UNSTART = 0;

    @NotNull
    public static final Constants INSTANCE = new Constants();

    @NotNull
    public static final String RESOURCE_TYPE_STICKER = "STICKER";

    @NotNull
    public static final String RESOURCE_TYPE_TEMPLATE = "TEMPLATE";
    public static final int TEMPLATE_TYPE_COVER = 3;
    public static final int TEMPLATE_TYPE_NOTE = 1;
    public static final int TEMPLATE_TYPE_PAPER = 2;
}
