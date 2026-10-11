.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;
    }
.end annotation


# static fields
.field public static final DIFFERENCE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

.field public static final INT_DIFFERENCE:I = 0x2

.field public static final INT_INDEX:I = 0x9

.field public static final INT_NORMAL:I = 0x1

.field public static final INT_PERCENT:I = 0x3

.field public static final INT_PERCENT_DIFF:I = 0x4

.field public static final INT_PERCENT_OF_COL:I = 0x7

.field public static final INT_PERCENT_OF_ROW:I = 0x6

.field public static final INT_PERCENT_OF_TOTAL:I = 0x8

.field public static final INT_RUN_TOTAL:I = 0x5

.field public static final NORMAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

.field public static final PERCENT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

.field public static final PERCENT_DIFF:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

.field public static final PERCENT_OF_COL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

.field public static final PERCENT_OF_ROW:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

.field public static final PERCENT_OF_TOTAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

.field public static final RUN_TOTAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stshowdataas0732type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "normal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;->NORMAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    const-string v0, "difference"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;->DIFFERENCE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    const-string v0, "percent"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;->PERCENT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    const-string v0, "percentDiff"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;->PERCENT_DIFF:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    const-string v0, "runTotal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;->RUN_TOTAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    const-string v0, "percentOfRow"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;->PERCENT_OF_ROW:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    const-string v0, "percentOfCol"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;->PERCENT_OF_COL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    const-string v0, "percentOfTotal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;->PERCENT_OF_TOTAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    const-string v0, "index"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;->INDEX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
