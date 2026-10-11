package com.onyx.android.sdk.replicator.note.data.background;

import com.blankj.utilcode.constant.PermissionConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\bU\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010X\u001a\u00020\u0004J\u000e\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\u0004J\u000e\u0010\\\u001a\u00020Z2\u0006\u0010[\u001a\u00020\u0004J\u000e\u0010]\u001a\u00020Z2\u0006\u0010[\u001a\u00020\u0004J\u000e\u0010^\u001a\u00020Z2\u0006\u0010[\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010K\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010L\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010U\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006_"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackgroundType;", "", "()V", "ANALYSIS_5W1H_METHOD_TEMPLATE", "", "BLACK", "BUSINESS_MODEL", PermissionConstants.CALENDAR, "CALLIGRAPHY1", "CALLIGRAPHY2", "CALLIGRAPHY3", "CALLIGRAPHY4", "CALLIGRAPHY5", "COLUMN", "CORNELL", "COVER1", "COVER2", "COVER3", "COVER4", "EBBINGHAUS_FORGETTING_CURVE_REVIEW_PLAN", "EMERGENCY_IMPORTANT_TEMPLATE", "EMPTY", "ENGLISH", "FITNESS_PUNCH", "FOUR_GRID_CARTOON", "FUNNEL", "GE_MATRIX", "GRID", "GRID_5_5", "GRID_POINT", "HORIZONTAL_LINE_24", "HORIZONTAL_LINE_26", "HORIZONTAL_LINE_32", "IMAGE_FILE", "LANDSCAPE_COLUMN", "LANDSCAPE_ENGLISH", "LANDSCAPE_GRID", "LANDSCAPE_GRID_5_5", "LANDSCAPE_GRID_POINT", "LANDSCAPE_MATS", "LANDSCAPE_MUSIC", "LANDSCAPE_TABLE", "LEFT_GRID", "LINE", "LINE_1_6", "LINE_2_0", "LOG_LOG_PAPER", "MATS", "MC_KINSEY", "MINUTES_OF_THE_MEETING", "MM_PAPER", "MONTHLY_PLAN", "MUSIC", "NEW_CALENDAR", "NEW_COLUMN", "NEW_ENGLISH", "NEW_GRID", "NEW_GRID_5_5", "NEW_GRID_POINT", "NEW_LEFT_GRID", "NEW_LINE", "NEW_LINE_1_6", "NEW_LINE_2_0", "NEW_MATS", "NEW_MUSIC", "NEW_TABLE", "PDA_CYCLE", "PDF_FILE", "PEST_ANALYSIS", "PYRAMID", "REVENUE_AND_EXPENDITURE_DETAILS", "SEMI_LOG_PAPER", "STEP_FLOW_CHART", "SWOT_ANALYSIS", "TABLE", "TEXT_BACKGROUND_MAX", "TEXT_BACKGROUND_MIN", "TEXT_COMMON1", "TEXT_STUDY1", "TEXT_WORK1", "TEXT_WORK2", "TEXT_WORK3", "TIME_AXIS", "TIME_SCHEDULE", "TO_DO_LIST", "WORD_MEMORY_BOOK", "WORK_SCHEDULE", "ZITHER_SCORE", "defaultBackground", "isEmptyBackground", "", "type", "isFileType", "isOldBKGround", "isRichTextBKGround", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteBackgroundType {
    public static final int ANALYSIS_5W1H_METHOD_TEMPLATE = 4001;
    public static final int BLACK = 4509;
    public static final int BUSINESS_MODEL = 4507;
    public static final int CALENDAR = 13;
    public static final int CALLIGRAPHY1 = 6503;
    public static final int CALLIGRAPHY2 = 6504;
    public static final int CALLIGRAPHY3 = 6505;
    public static final int CALLIGRAPHY4 = 6506;
    public static final int CALLIGRAPHY5 = 6507;
    public static final int COLUMN = 7;
    public static final int CORNELL = 1015;
    public static final int COVER1 = 6006;
    public static final int COVER2 = 6007;
    public static final int COVER3 = 6008;
    public static final int COVER4 = 6009;
    public static final int EBBINGHAUS_FORGETTING_CURVE_REVIEW_PLAN = 5501;
    public static final int EMERGENCY_IMPORTANT_TEMPLATE = 4506;
    public static final int EMPTY = 0;
    public static final int ENGLISH = 5;
    public static final int FITNESS_PUNCH = 6501;
    public static final int FOUR_GRID_CARTOON = 6004;
    public static final int FUNNEL = 5002;
    public static final int GE_MATRIX = 4501;
    public static final int GRID = 1;
    public static final int GRID_5_5 = 10;
    public static final int GRID_POINT = 9;
    public static final int HORIZONTAL_LINE_24 = 4005;
    public static final int HORIZONTAL_LINE_26 = 4006;
    public static final int HORIZONTAL_LINE_32 = 4007;
    public static final int IMAGE_FILE = 26;

    @NotNull
    public static final NoteBackgroundType INSTANCE = new NoteBackgroundType();
    public static final int LANDSCAPE_COLUMN = 3005;
    public static final int LANDSCAPE_ENGLISH = 3007;
    public static final int LANDSCAPE_GRID = 3001;
    public static final int LANDSCAPE_GRID_5_5 = 3002;
    public static final int LANDSCAPE_GRID_POINT = 3003;
    public static final int LANDSCAPE_MATS = 3008;
    public static final int LANDSCAPE_MUSIC = 3006;
    public static final int LANDSCAPE_TABLE = 3004;
    public static final int LEFT_GRID = 8;
    public static final int LINE = 2;
    public static final int LINE_1_6 = 11;
    public static final int LINE_2_0 = 12;
    public static final int LOG_LOG_PAPER = 6005;
    public static final int MATS = 3;
    public static final int MC_KINSEY = 1014;
    public static final int MINUTES_OF_THE_MEETING = 4505;
    public static final int MM_PAPER = 6001;
    public static final int MONTHLY_PLAN = 4008;
    public static final int MUSIC = 4;
    public static final int NEW_CALENDAR = 1013;
    public static final int NEW_COLUMN = 1007;
    public static final int NEW_ENGLISH = 1005;
    public static final int NEW_GRID = 1001;
    public static final int NEW_GRID_5_5 = 1010;
    public static final int NEW_GRID_POINT = 1009;
    public static final int NEW_LEFT_GRID = 1008;
    public static final int NEW_LINE = 1002;
    public static final int NEW_LINE_1_6 = 1011;
    public static final int NEW_LINE_2_0 = 1012;
    public static final int NEW_MATS = 1003;
    public static final int NEW_MUSIC = 1004;
    public static final int NEW_TABLE = 1006;
    public static final int PDA_CYCLE = 4502;
    public static final int PDF_FILE = 27;
    public static final int PEST_ANALYSIS = 4503;
    public static final int PYRAMID = 5001;
    public static final int REVENUE_AND_EXPENDITURE_DETAILS = 6502;
    public static final int SEMI_LOG_PAPER = 6002;
    public static final int STEP_FLOW_CHART = 4003;
    public static final int SWOT_ANALYSIS = 4002;
    public static final int TABLE = 6;
    public static final int TEXT_BACKGROUND_MAX = 7999;
    public static final int TEXT_BACKGROUND_MIN = 7000;
    public static final int TEXT_COMMON1 = 7100;
    public static final int TEXT_STUDY1 = 7050;
    public static final int TEXT_WORK1 = 7000;
    public static final int TEXT_WORK2 = 7001;
    public static final int TEXT_WORK3 = 7002;
    public static final int TIME_AXIS = 6003;
    public static final int TIME_SCHEDULE = 4508;
    public static final int TO_DO_LIST = 4004;
    public static final int WORD_MEMORY_BOOK = 5502;
    public static final int WORK_SCHEDULE = 4504;
    public static final int ZITHER_SCORE = 5003;

    private NoteBackgroundType() {
    }

    public final int defaultBackground() {
        return 0;
    }

    public final boolean isEmptyBackground(int type) {
        return type == 0;
    }

    public final boolean isFileType(int type) {
        return type == 26 || type == 27;
    }

    public final boolean isOldBKGround(int type) {
        return type > 0 && type <= 13;
    }

    public final boolean isRichTextBKGround(int type) {
        return type >= 7000 && type <= 7999;
    }
}
