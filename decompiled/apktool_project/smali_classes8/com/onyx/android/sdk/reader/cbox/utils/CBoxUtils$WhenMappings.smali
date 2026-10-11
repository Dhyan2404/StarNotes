.class public final synthetic Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;->values()[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;->NORMAL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;->NONE:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->values()[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2
    sget-object v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->NORMAL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->SPACE_ALL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v3, 0x3

    :try_start_4
    sget-object v4, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->SPACE_FIRST:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v4, 0x4

    :try_start_5
    sget-object v5, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->TRIM_START:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;->values()[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_6
    sget-object v5, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;->ALIGNMENT_NONE:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;->ALIGNMENT_LEFT:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;->ALIGNMENT_RIGHT:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;->ALIGNMENT_JUSTIFY:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/onyx/engine/sdk/WritingMode;->values()[Lcom/onyx/engine/sdk/WritingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_a
    sget-object v4, Lcom/onyx/engine/sdk/WritingMode;->HORIZONTAL:Lcom/onyx/engine/sdk/WritingMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, Lcom/onyx/engine/sdk/WritingMode;->VERTICAL_LR:Lcom/onyx/engine/sdk/WritingMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Lcom/onyx/engine/sdk/WritingMode;->VERTICAL_RL:Lcom/onyx/engine/sdk/WritingMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lcom/onyx/engine/sdk/PageProgressionDirection;->values()[Lcom/onyx/engine/sdk/PageProgressionDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_d
    sget-object v3, Lcom/onyx/engine/sdk/PageProgressionDirection;->RTL:Lcom/onyx/engine/sdk/PageProgressionDirection;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-static {}, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->values()[Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v3, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->SIMPLIFIED_TO_TRADITIONAL:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->TRADITIONAL_TO_SIMPLIFIED:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;->$EnumSwitchMapping$5:[I

    return-void
.end method
