.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;
    }
.end annotation


# static fields
.field public static final AVG:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final BLANK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final COUNT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final COUNT_A:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final DATA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final DEFAULT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRAND:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final INT_AVG:I = 0x5

.field public static final INT_BLANK:I = 0xf

.field public static final INT_COUNT:I = 0x9

.field public static final INT_COUNT_A:I = 0x4

.field public static final INT_DATA:I = 0x1

.field public static final INT_DEFAULT:I = 0x2

.field public static final INT_GRAND:I = 0xe

.field public static final INT_MAX:I = 0x6

.field public static final INT_MIN:I = 0x7

.field public static final INT_PRODUCT:I = 0x8

.field public static final INT_STD_DEV:I = 0xa

.field public static final INT_STD_DEV_P:I = 0xb

.field public static final INT_SUM:I = 0x3

.field public static final INT_VAR:I = 0xc

.field public static final INT_VAR_P:I = 0xd

.field public static final MAX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final MIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final PRODUCT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final STD_DEV:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final STD_DEV_P:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final SUM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final VAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final VAR_P:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stitemtype6186type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "data"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->DATA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "default"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->DEFAULT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "sum"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->SUM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "countA"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->COUNT_A:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "avg"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->AVG:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "max"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->MAX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "min"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->MIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "product"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->PRODUCT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "count"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->COUNT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "stdDev"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->STD_DEV:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "stdDevP"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->STD_DEV_P:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "var"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->VAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "varP"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->VAR_P:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "grand"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->GRAND:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "blank"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->BLANK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
