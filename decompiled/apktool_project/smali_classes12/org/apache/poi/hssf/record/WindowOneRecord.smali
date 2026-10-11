.class public final Lorg/apache/poi/hssf/record/WindowOneRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final hidden:Lorg/apache/poi/util/BitField;

.field private static final hscroll:Lorg/apache/poi/util/BitField;

.field private static final iconic:Lorg/apache/poi/util/BitField;

.field private static final reserved:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x3ds

.field private static final tabs:Lorg/apache/poi/util/BitField;

.field private static final vscroll:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_h_hold:S

.field private field_2_v_hold:S

.field private field_3_width:S

.field private field_4_height:S

.field private field_5_options:S

.field private field_6_active_sheet:I

.field private field_7_first_visible_tab:I

.field private field_8_num_selected_tabs:S

.field private field_9_tab_width_ratio:S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->reserved:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/WindowOneRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    .line 7
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    .line 8
    iget v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    .line 9
    iget v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    .line 10
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    .line 11
    iget-short p1, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->copy()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->copy()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->copy()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/WindowOneRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/WindowOneRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;)V

    return-object v0
.end method

.method public getActiveSheetIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x12

    return p0
.end method

.method public getDisplayHorizontalScrollbar()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDisplayTabs()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDisplayVerticalScrollbar()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getFirstVisibleTab()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 18
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

    const-string v1, "horizontalHold"

    new-instance v2, Lcom/sunia/HTREnginev2/j9o;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/j9o;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;)V

    const-string v3, "verticalHold"

    new-instance v4, Lcom/sunia/HTREnginev2/k9o;

    invoke-direct {v4, v0}, Lcom/sunia/HTREnginev2/k9o;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;)V

    const-string v5, "width"

    new-instance v6, Lcom/sunia/HTREnginev2/l9o;

    invoke-direct {v6, v0}, Lcom/sunia/HTREnginev2/l9o;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;)V

    const-string v7, "options"

    new-instance v8, Lcom/sunia/HTREnginev2/m9o;

    invoke-direct {v8, v0}, Lcom/sunia/HTREnginev2/m9o;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;)V

    const/4 v9, 0x6

    new-array v9, v9, [Lorg/apache/poi/util/BitField;

    const/4 v10, 0x0

    sget-object v11, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Lorg/apache/poi/hssf/record/WindowOneRecord;->reserved:Lorg/apache/poi/util/BitField;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    sget-object v11, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    aput-object v11, v9, v10

    const/4 v10, 0x5

    sget-object v11, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    aput-object v11, v9, v10

    const-string v12, "HIDDEN"

    const-string v13, "ICONIC"

    const-string v14, "RESERVED"

    const-string v15, "HSCROLL"

    const-string v16, "VSCROLL"

    const-string v17, "TABS"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v8

    const-string v9, "activeSheetIndex"

    new-instance v10, Lcom/sunia/HTREnginev2/n9o;

    invoke-direct {v10, v0}, Lcom/sunia/HTREnginev2/n9o;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;)V

    const-string v11, "firstVisibleTab"

    new-instance v12, Lcom/sunia/HTREnginev2/o9o;

    invoke-direct {v12, v0}, Lcom/sunia/HTREnginev2/o9o;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;)V

    const-string v13, "numSelectedTabs"

    new-instance v14, Lcom/sunia/HTREnginev2/p9o;

    invoke-direct {v14, v0}, Lcom/sunia/HTREnginev2/p9o;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;)V

    const-string v15, "tabWidthRatio"

    move-object/from16 v16, v15

    new-instance v15, Lcom/sunia/HTREnginev2/q9o;

    invoke-direct {v15, v0}, Lcom/sunia/HTREnginev2/q9o;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;)V

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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->WINDOW_ONE:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHeight()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    return p0
.end method

.method public getHidden()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getHorizontalHold()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    return p0
.end method

.method public getIconic()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getNumSelectedTabs()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    return p0
.end method

.method public getOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x3d

    return p0
.end method

.method public getTabWidthRatio()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    return p0
.end method

.method public getVerticalHold()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    return p0
.end method

.method public getWidth()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHorizontalHold()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getVerticalHold()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getWidth()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHeight()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getActiveSheetIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getFirstVisibleTab()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getNumSelectedTabs()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getTabWidthRatio()S

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setActiveSheetIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    return-void
.end method

.method public setDisplayHorizonalScrollbar(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setDisplayTabs(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setDisplayVerticalScrollbar(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    return-void
.end method

.method public setHeight(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    return-void
.end method

.method public setHidden(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setHorizontalHold(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    return-void
.end method

.method public setIconic(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setNumSelectedTabs(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setTabWidthRatio(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    return-void
.end method

.method public setVerticalHold(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    return-void
.end method

.method public setWidth(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    return-void
.end method
