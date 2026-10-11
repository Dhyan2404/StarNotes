.class public final Lorg/apache/poi/hssf/record/DVRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final FLAG_MASKS:[I

.field private static final FLAG_NAMES:[Ljava/lang/String;

.field private static final NULL_TEXT_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field private static final opt_condition_operator:Lorg/apache/poi/util/BitField;

.field private static final opt_data_type:Lorg/apache/poi/util/BitField;

.field private static final opt_empty_cell_allowed:Lorg/apache/poi/util/BitField;

.field private static final opt_error_style:Lorg/apache/poi/util/BitField;

.field private static final opt_show_error_on_invalid_value:Lorg/apache/poi/util/BitField;

.field private static final opt_show_prompt_on_cell_selected:Lorg/apache/poi/util/BitField;

.field private static final opt_string_list_formula:Lorg/apache/poi/util/BitField;

.field private static final opt_suppress_dropdown_arrow:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1bes


# instance fields
.field private final _errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field private final _errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field private final _formula1:Lorg/apache/poi/ss/formula/Formula;

.field private final _formula2:Lorg/apache/poi/ss/formula/Formula;

.field private _not_used_1:S

.field private _not_used_2:S

.field private _option_flags:I

.field private final _promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field private final _promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field private final _regions:Lorg/apache/poi/ss/util/CellRangeAddressList;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    const-string v1, "\u0000"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->NULL_TEXT_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_data_type:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_error_style:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_string_list_formula:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_empty_cell_allowed:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_suppress_dropdown_arrow:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x40000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_show_prompt_on_cell_selected:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x80000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_show_error_on_invalid_value:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x700000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_condition_operator:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->FLAG_MASKS:[I

    const-string v1, "DATA_TYPE"

    const-string v2, "ERROR_STYLE"

    const-string v3, "STRING_LIST_FORMULA"

    const-string v4, "EMPTY_CELL_ALLOWED"

    const-string v5, "SUPPRESS_DROPDOWN_ARROW"

    const-string v6, "SHOW_PROMPT_ON_CELL_SELECTED"

    const-string v7, "SHOW_ERROR_ON_INVALID_VALUE"

    const-string v8, "CONDITION_OPERATOR"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->FLAG_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0xf
        0x70
        0x80
        0x100
        0x200
        0x40000
        0x80000
        0x700000
    .end array-data
.end method

.method public constructor <init>(IIIZZZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/util/CellRangeAddressList;)V
    .locals 9

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    .line 14
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/16 v5, 0x3fe0

    .line 15
    iput-short v5, v0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_1:S

    const/4 v5, 0x0

    .line 16
    iput-short v5, v0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_2:S

    const/16 v6, 0x20

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v6, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prompt-title cannot be longer than 32 characters, but had: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 v7, 0xff

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v7, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prompt-text cannot be longer than 255 characters, but had: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz v3, :cond_5

    .line 21
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v6, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error-title cannot be longer than 32 characters, but had: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    if-eqz v4, :cond_7

    .line 23
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v7, :cond_6

    goto :goto_3

    .line 24
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error-text cannot be longer than 255 characters, but had: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_7
    :goto_3
    sget-object v6, Lorg/apache/poi/hssf/record/DVRecord;->opt_data_type:Lorg/apache/poi/util/BitField;

    move v7, p1

    invoke-virtual {v6, v5, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v5

    .line 26
    sget-object v6, Lorg/apache/poi/hssf/record/DVRecord;->opt_condition_operator:Lorg/apache/poi/util/BitField;

    move v7, p2

    invoke-virtual {v6, v5, p2}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v5

    .line 27
    sget-object v6, Lorg/apache/poi/hssf/record/DVRecord;->opt_error_style:Lorg/apache/poi/util/BitField;

    move v7, p3

    invoke-virtual {v6, v5, p3}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v5

    .line 28
    sget-object v6, Lorg/apache/poi/hssf/record/DVRecord;->opt_empty_cell_allowed:Lorg/apache/poi/util/BitField;

    move v7, p4

    invoke-virtual {v6, v5, p4}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v5

    .line 29
    sget-object v6, Lorg/apache/poi/hssf/record/DVRecord;->opt_suppress_dropdown_arrow:Lorg/apache/poi/util/BitField;

    move v7, p5

    invoke-virtual {v6, v5, p5}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v5

    .line 30
    sget-object v6, Lorg/apache/poi/hssf/record/DVRecord;->opt_string_list_formula:Lorg/apache/poi/util/BitField;

    move v7, p6

    invoke-virtual {v6, v5, p6}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v5

    .line 31
    sget-object v6, Lorg/apache/poi/hssf/record/DVRecord;->opt_show_prompt_on_cell_selected:Lorg/apache/poi/util/BitField;

    move/from16 v7, p7

    invoke-virtual {v6, v5, v7}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v5

    .line 32
    sget-object v6, Lorg/apache/poi/hssf/record/DVRecord;->opt_show_error_on_invalid_value:Lorg/apache/poi/util/BitField;

    move/from16 v7, p10

    invoke-virtual {v6, v5, v7}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v5

    .line 33
    iput v5, v0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    .line 34
    invoke-static/range {p8 .. p8}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleText(Ljava/lang/String;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 35
    invoke-static/range {p9 .. p9}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleText(Ljava/lang/String;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 36
    invoke-static/range {p11 .. p11}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleText(Ljava/lang/String;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 37
    invoke-static/range {p12 .. p12}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleText(Ljava/lang/String;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 38
    invoke-static/range {p13 .. p13}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 39
    invoke-static/range {p14 .. p14}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    move-object/from16 v1, p15

    .line 40
    iput-object v1, v0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/DVRecord;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    const/16 v0, 0x3fe0

    .line 2
    iput-short v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_1:S

    const/4 v0, 0x0

    .line 3
    iput-short v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_2:S

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    iput v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    .line 5
    iget-object v0, p1, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->copy()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 6
    iget-object v0, p1, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->copy()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 7
    iget-object v0, p1, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->copy()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 8
    iget-object v0, p1, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->copy()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 9
    iget-short v0, p1, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_1:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_1:S

    .line 10
    iget-object v0, p1, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 11
    iget-short v0, p1, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_2:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_2:S

    .line 12
    iget-object v0, p1, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 13
    iget-object p1, p1, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->copy()Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/16 v0, 0x3fe0

    .line 42
    iput-short v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_1:S

    const/4 v0, 0x0

    .line 43
    iput-short v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_2:S

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    .line 45
    invoke-static {p1}, Lorg/apache/poi/hssf/record/DVRecord;->readUnicodeString(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 46
    invoke-static {p1}, Lorg/apache/poi/hssf/record/DVRecord;->readUnicodeString(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 47
    invoke-static {p1}, Lorg/apache/poi/hssf/record/DVRecord;->readUnicodeString(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 48
    invoke-static {p1}, Lorg/apache/poi/hssf/record/DVRecord;->readUnicodeString(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_1:S

    .line 51
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_2:S

    .line 54
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 55
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/DVRecord;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/DVRecord;->lambda$getGenericProperties$0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/DVRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/DVRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getUnicodeStringSize(Lorg/apache/poi/hssf/record/common/UnicodeString;)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-object p0
.end method

.method private static readUnicodeString(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0
.end method

.method private static resolveTitleString(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->NULL_TEXT_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resolveTitleText(Ljava/lang/String;)Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/hssf/record/DVRecord;->NULL_TEXT_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

    return-object p0
.end method

.method private static serializeUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVRecord;->copy()Lorg/apache/poi/hssf/record/DVRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/DVRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/DVRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DVRecord;-><init>(Lorg/apache/poi/hssf/record/DVRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVRecord;->copy()Lorg/apache/poi/hssf/record/DVRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVRecord;->copy()Lorg/apache/poi/hssf/record/DVRecord;

    move-result-object p0

    return-object p0
.end method

.method public getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddressList;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-object p0
.end method

.method public getConditionOperator()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_condition_operator:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/DVRecord;->getUnicodeStringSize(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getUnicodeStringSize(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getUnicodeStringSize(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getUnicodeStringSize(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getSize()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getDataType()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_data_type:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getEmptyCellAllowed()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_empty_cell_allowed:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getErrorStyle()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_error_style:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleString(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getErrorTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleString(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens(Lorg/apache/poi/ss/formula/Formula;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method public getFormula2()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens(Lorg/apache/poi/ss/formula/Formula;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "optionFlags"

    new-instance v2, Lcom/sunia/HTREnginev2/nre;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/nre;-><init>(Lorg/apache/poi/hssf/record/DVRecord;)V

    sget-object v3, Lorg/apache/poi/hssf/record/DVRecord;->FLAG_MASKS:[I

    sget-object v4, Lorg/apache/poi/hssf/record/DVRecord;->FLAG_NAMES:[Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v2

    const-string v3, "promptTitle"

    new-instance v4, Lcom/sunia/HTREnginev2/ore;

    invoke-direct {v4, v0}, Lcom/sunia/HTREnginev2/ore;-><init>(Lorg/apache/poi/hssf/record/DVRecord;)V

    const-string v5, "errorTitle"

    new-instance v6, Lcom/sunia/HTREnginev2/pre;

    invoke-direct {v6, v0}, Lcom/sunia/HTREnginev2/pre;-><init>(Lorg/apache/poi/hssf/record/DVRecord;)V

    const-string v7, "promptText"

    new-instance v8, Lcom/sunia/HTREnginev2/qre;

    invoke-direct {v8, v0}, Lcom/sunia/HTREnginev2/qre;-><init>(Lorg/apache/poi/hssf/record/DVRecord;)V

    const-string v9, "errorText"

    new-instance v10, Lcom/sunia/HTREnginev2/rre;

    invoke-direct {v10, v0}, Lcom/sunia/HTREnginev2/rre;-><init>(Lorg/apache/poi/hssf/record/DVRecord;)V

    const-string v11, "formula1"

    new-instance v12, Lcom/sunia/HTREnginev2/sre;

    invoke-direct {v12, v0}, Lcom/sunia/HTREnginev2/sre;-><init>(Lorg/apache/poi/hssf/record/DVRecord;)V

    const-string v13, "formula2"

    new-instance v14, Lcom/sunia/HTREnginev2/tre;

    invoke-direct {v14, v0}, Lcom/sunia/HTREnginev2/tre;-><init>(Lorg/apache/poi/hssf/record/DVRecord;)V

    const-string v15, "regions"

    move-object/from16 v16, v15

    new-instance v15, Lcom/sunia/HTREnginev2/ure;

    invoke-direct {v15, v0}, Lcom/sunia/HTREnginev2/ure;-><init>(Lorg/apache/poi/hssf/record/DVRecord;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    invoke-static/range {v0 .. v15}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->DV:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getListExplicitFormula()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_string_list_formula:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getPromptText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleString(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPromptTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleString(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShowErrorOnInvalidValue()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_show_error_on_invalid_value:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getShowPromptOnCellSelected()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_show_prompt_on_cell_selected:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1be

    return p0
.end method

.method public getSuppressDropdownArrow()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_suppress_dropdown_arrow:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/DVRecord;->serializeUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/DVRecord;->serializeUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/DVRecord;->serializeUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/DVRecord;->serializeUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_1:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_2:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method
