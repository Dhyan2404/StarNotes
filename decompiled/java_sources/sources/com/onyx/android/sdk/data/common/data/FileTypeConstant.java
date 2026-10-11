package com.onyx.android.sdk.data.common.data;

import com.fasterxml.jackson.core.JsonFactory;
import com.tencent.cos.xml.model.tag.DomainConfiguration;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\bE\n\u0002\u0010#\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00040LJ\u0011\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00040N¢\u0006\u0002\u0010OJ\u0011\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00040N¢\u0006\u0002\u0010OJ\u0011\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00040N¢\u0006\u0002\u0010OR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0014\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00040JX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006R"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/FileTypeConstant;", "", "()V", "ACSM", "", "APK", "AVI", "BMP", "BMP_SUFFIX", "CBR", "CBZ", "CHM", "DEDAO", "DIRECTORY_GRID", "DIRECTORY_LIST", "DJVU", "DOC", "DOCX", "EBA3", "EBAML", "EPUB", "FB2", "FILE_COVER", "FLV", "FOLDER_COVER", "GIF", "GOTO_UP", "HTM", "HTML", "ICO", "JEB", "JPEG", "JPG", JsonFactory.FORMAT_NAME_JSON, "MOBI", "MOV", "MP3", "MP4", "MPEG", "NOTE", "PDB", "PDF", "PNG", "POT", "POTM", "POTX", "PPA", "PPAM", "PPS", "PPSM", "PPSX", "PPT", "PPTM", "PPTX", "PRC", "RAR", "RM", "RMVB", "RTF", "SHORTCUT_GRID", "SHORTCUT_LIST", "SVG", "TIF", "TIFF", "TTF", DomainConfiguration.REPLACE_TXT, "WAV", "WMA", "WMV", "XLS", "XLSX", "ZIP", "_3GP", "defaultFilesType", "", "getDefaultFilesType", "", "getImageFileTypes", "", "()[Ljava/lang/String;", "getMusicFileTypes", "getVideoFileTypes", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FileTypeConstant {

    @NotNull
    public static final String ACSM = "acsm";

    @NotNull
    public static final String APK = "apk";

    @NotNull
    public static final String AVI = "avi";

    @NotNull
    public static final String BMP = "bmp";

    @NotNull
    public static final String BMP_SUFFIX = ".bmp";

    @NotNull
    public static final String CBR = "cbr";

    @NotNull
    public static final String CBZ = "cbz";

    @NotNull
    public static final String CHM = "chm";

    @NotNull
    public static final String DEDAO = "DeDao";

    @NotNull
    public static final String DIRECTORY_GRID = "directory_grid";

    @NotNull
    public static final String DIRECTORY_LIST = "directory_list";

    @NotNull
    public static final String DJVU = "djvu";

    @NotNull
    public static final String DOC = "doc";

    @NotNull
    public static final String DOCX = "docx";

    @NotNull
    public static final String EBA3 = "eba3";

    @NotNull
    public static final String EBAML = "ebaml";

    @NotNull
    public static final String EPUB = "epub";

    @NotNull
    public static final String FB2 = "fb2";

    @NotNull
    public static final String FILE_COVER = "filecover";

    @NotNull
    public static final String FLV = "flv";

    @NotNull
    public static final String FOLDER_COVER = "foldercover";

    @NotNull
    public static final String GIF = "gif";

    @NotNull
    public static final String GOTO_UP = "goup";

    @NotNull
    public static final String HTM = "htm";

    @NotNull
    public static final String HTML = "html";

    @NotNull
    public static final String ICO = "ico";

    @NotNull
    public static final String JEB = "jeb";

    @NotNull
    public static final String JPEG = "jpeg";

    @NotNull
    public static final String JPG = "jpg";

    @NotNull
    public static final String JSON = "json";

    @NotNull
    public static final String MOBI = "mobi";

    @NotNull
    public static final String MOV = "mov";

    @NotNull
    public static final String MP3 = "mp3";

    @NotNull
    public static final String MP4 = "mp4";

    @NotNull
    public static final String MPEG = "mpeg";

    @NotNull
    public static final String NOTE = "note";

    @NotNull
    public static final String PDB = "pdb";

    @NotNull
    public static final String PDF = "pdf";

    @NotNull
    public static final String PNG = "png";

    @NotNull
    public static final String POT = "pot";

    @NotNull
    public static final String POTM = "potm";

    @NotNull
    public static final String POTX = "potx";

    @NotNull
    public static final String PPA = "ppa";

    @NotNull
    public static final String PPAM = "ppam";

    @NotNull
    public static final String PPS = "pps";

    @NotNull
    public static final String PPSM = "ppsm";

    @NotNull
    public static final String PPSX = "ppsx";

    @NotNull
    public static final String PPT = "ppt";

    @NotNull
    public static final String PPTM = "pptm";

    @NotNull
    public static final String PPTX = "pptx";

    @NotNull
    public static final String PRC = "prc";

    @NotNull
    public static final String RAR = "rar";

    @NotNull
    public static final String RM = "rm";

    @NotNull
    public static final String RMVB = "rmvb";

    @NotNull
    public static final String RTF = "rtf";

    @NotNull
    public static final String SHORTCUT_GRID = "shortcut_grid";

    @NotNull
    public static final String SHORTCUT_LIST = "shortcut_list";

    @NotNull
    public static final String SVG = "svg";

    @NotNull
    public static final String TIF = "tif";

    @NotNull
    public static final String TIFF = "tiff";

    @NotNull
    public static final String TTF = "ttf";

    @NotNull
    public static final String TXT = "txt";

    @NotNull
    public static final String WAV = "wav";

    @NotNull
    public static final String WMA = "wma";

    @NotNull
    public static final String WMV = "wmv";

    @NotNull
    public static final String XLS = "xls";

    @NotNull
    public static final String XLSX = "xlsx";

    @NotNull
    public static final String ZIP = "zip";

    @NotNull
    public static final String _3GP = "3GP";

    @NotNull
    public static final FileTypeConstant INSTANCE = new FileTypeConstant();

    @NotNull
    private static final Set<String> defaultFilesType = new LinkedHashSet();

    private FileTypeConstant() {
    }

    @NotNull
    public final Set<String> getDefaultFilesType() {
        List listOf;
        Set<String> set = defaultFilesType;
        if (set.isEmpty()) {
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{ACSM, "apk", CBZ, CBR, CHM, DJVU, "doc", DOCX, EBA3, EBAML, "epub", FB2, HTM, "html", "mobi", PDB, "pdf", "ppt", PPS, POT, PPA, PPTX, PPSX, PPTM, PPSM, POTM, POTX, PPAM, PRC, RAR, RTF, "tiff", "txt", XLS, XLSX, "zip", JEB, "note"});
            set.addAll(listOf);
            FileTypeConstant fileTypeConstant = INSTANCE;
            CollectionsKt__MutableCollectionsKt.addAll(set, fileTypeConstant.getImageFileTypes());
            CollectionsKt__MutableCollectionsKt.addAll(set, fileTypeConstant.getMusicFileTypes());
            CollectionsKt__MutableCollectionsKt.addAll(set, fileTypeConstant.getVideoFileTypes());
        }
        return set;
    }

    @NotNull
    public final String[] getImageFileTypes() {
        return new String[]{BMP, "jpg", "jpeg", "gif", "png", ICO, SVG, TIF, "tiff"};
    }

    @NotNull
    public final String[] getMusicFileTypes() {
        return new String[]{MP3, WMA, WAV};
    }

    @NotNull
    public final String[] getVideoFileTypes() {
        return new String[]{MOV, MP4, AVI, WMV, RM, RMVB, _3GP, FLV, MPEG};
    }
}
