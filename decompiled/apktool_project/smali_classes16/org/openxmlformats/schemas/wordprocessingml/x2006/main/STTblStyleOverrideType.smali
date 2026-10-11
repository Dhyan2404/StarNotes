.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;
    }
.end annotation


# static fields
.field public static final BAND_1_HORZ:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final BAND_1_VERT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final BAND_2_HORZ:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final BAND_2_VERT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final FIRST_COL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final FIRST_ROW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BAND_1_HORZ:I = 0x8

.field public static final INT_BAND_1_VERT:I = 0x6

.field public static final INT_BAND_2_HORZ:I = 0x9

.field public static final INT_BAND_2_VERT:I = 0x7

.field public static final INT_FIRST_COL:I = 0x4

.field public static final INT_FIRST_ROW:I = 0x2

.field public static final INT_LAST_COL:I = 0x5

.field public static final INT_LAST_ROW:I = 0x3

.field public static final INT_NE_CELL:I = 0xa

.field public static final INT_NW_CELL:I = 0xb

.field public static final INT_SE_CELL:I = 0xc

.field public static final INT_SW_CELL:I = 0xd

.field public static final INT_WHOLE_TABLE:I = 0x1

.field public static final LAST_COL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final LAST_ROW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final NE_CELL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final NW_CELL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final SE_CELL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final SW_CELL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final WHOLE_TABLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttblstyleoverridetype869ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "wholeTable"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->WHOLE_TABLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    const-string v0, "firstRow"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->FIRST_ROW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    const-string v0, "lastRow"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->LAST_ROW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    const-string v0, "firstCol"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->FIRST_COL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    const-string v0, "lastCol"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->LAST_COL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    const-string v0, "band1Vert"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->BAND_1_VERT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    const-string v0, "band2Vert"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->BAND_2_VERT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    const-string v0, "band1Horz"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->BAND_1_HORZ:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    const-string v0, "band2Horz"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->BAND_2_HORZ:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    const-string v0, "neCell"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->NE_CELL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    const-string v0, "nwCell"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->NW_CELL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    const-string v0, "seCell"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->SE_CELL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    const-string v0, "swCell"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;->SW_CELL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
