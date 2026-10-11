package com.onyx.android.sdk.filepicker;

import com.tencent.cos.xml.model.tag.DomainConfiguration;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0016\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/PickerFileConst;", "", "()V", "ALL", "", "CAJ", "DEFAULT_MAX_SELECT_COUNT", "", "EPUB", PickerFileConst.EXTRA_RESULT_SELECTION, "MOBI", "NOTE", "PDF", "PICKER_FILE_BACKUP_IMPORT_CODE", "PICKER_FILE_CONFIG_RAW_NAME", "PICKER_FILE_COVER_REQUEST_CODE", "PICKER_FILE_CREATE_NOTE_FROM_FILES", "PICKER_FILE_FONT_IMPORT_CODE", "PICKER_FILE_INSERT_PAGE_CODE", "PICKER_FILE_INSERT_PAGE_REQUEST_CODE", "PICKER_FILE_PAPER_REQUEST_CODE", "PICKER_FILE_REQUEST_CODE", "PPT", "REQUEST_MANAGE_FILES_ACCESS", "REQUEST_READ_STORAGE_PERMISSION", "REQUEST_STORAGE_PERMISSION_ACCESS", "TTF", DomainConfiguration.REPLACE_TXT, "WORD", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PickerFileConst {

    @NotNull
    public static final String ALL = "ALL";

    @NotNull
    public static final String CAJ = "caj";
    public static final int DEFAULT_MAX_SELECT_COUNT = 9;

    @NotNull
    public static final String EPUB = "epub";

    @NotNull
    public static final String EXTRA_RESULT_SELECTION = "EXTRA_RESULT_SELECTION";

    @NotNull
    public static final PickerFileConst INSTANCE = new PickerFileConst();

    @NotNull
    public static final String MOBI = "mobi";

    @NotNull
    public static final String NOTE = "note";

    @NotNull
    public static final String PDF = "pdf";
    public static final int PICKER_FILE_BACKUP_IMPORT_CODE = 2010;

    @NotNull
    public static final String PICKER_FILE_CONFIG_RAW_NAME = "file_picker_config";
    public static final int PICKER_FILE_COVER_REQUEST_CODE = 2002;
    public static final int PICKER_FILE_CREATE_NOTE_FROM_FILES = 2004;
    public static final int PICKER_FILE_FONT_IMPORT_CODE = 2009;
    public static final int PICKER_FILE_INSERT_PAGE_CODE = 2021;
    public static final int PICKER_FILE_INSERT_PAGE_REQUEST_CODE = 2007;
    public static final int PICKER_FILE_PAPER_REQUEST_CODE = 2003;
    public static final int PICKER_FILE_REQUEST_CODE = 2001;

    @NotNull
    public static final String PPT = "ppt";
    public static final int REQUEST_MANAGE_FILES_ACCESS = 2005;
    public static final int REQUEST_READ_STORAGE_PERMISSION = 2006;
    public static final int REQUEST_STORAGE_PERMISSION_ACCESS = 2008;

    @NotNull
    public static final String TTF = "ttf";

    @NotNull
    public static final String TXT = "txt";

    @NotNull
    public static final String WORD = "doc/docx";
}
