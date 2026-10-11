.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;
    }
.end annotation


# static fields
.field public static final AUTO_FILTER:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

.field public static final CHART:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_AUTO_FILTER:I = 0x3

.field public static final INT_CHART:I = 0x5

.field public static final INT_LABEL:I = 0x8

.field public static final INT_PIVOT_TABLE:I = 0x6

.field public static final INT_PRINT_AREA:I = 0x2

.field public static final INT_QUERY:I = 0x7

.field public static final INT_RANGE:I = 0x4

.field public static final INT_SHEET:I = 0x1

.field public static final LABEL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

.field public static final PIVOT_TABLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

.field public static final PRINT_AREA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

.field public static final QUERY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

.field public static final RANGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

.field public static final SHEET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stwebsourcetypecb38type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "sheet"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;->SHEET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    const-string v0, "printArea"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;->PRINT_AREA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    const-string v0, "autoFilter"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;->AUTO_FILTER:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    const-string v0, "range"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;->RANGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    const-string v0, "chart"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;->CHART:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    const-string v0, "pivotTable"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;->PIVOT_TABLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    const-string v0, "query"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;->QUERY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    const-string v0, "label"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;->LABEL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
