.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;
    }
.end annotation


# static fields
.field public static final ASCENDING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

.field public static final ASCENDING_ALPHA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

.field public static final ASCENDING_NATURAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

.field public static final DESCENDING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

.field public static final DESCENDING_ALPHA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

.field public static final DESCENDING_NATURAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ASCENDING:I = 0x2

.field public static final INT_ASCENDING_ALPHA:I = 0x4

.field public static final INT_ASCENDING_NATURAL:I = 0x6

.field public static final INT_DESCENDING:I = 0x3

.field public static final INT_DESCENDING_ALPHA:I = 0x5

.field public static final INT_DESCENDING_NATURAL:I = 0x7

.field public static final INT_NONE:I = 0x1

.field public static final NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stsorttype2ad1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    const-string v0, "ascending"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;->ASCENDING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    const-string v0, "descending"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;->DESCENDING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    const-string v0, "ascendingAlpha"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;->ASCENDING_ALPHA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    const-string v0, "descendingAlpha"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;->DESCENDING_ALPHA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    const-string v0, "ascendingNatural"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;->ASCENDING_NATURAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    const-string v0, "descendingNatural"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;->DESCENDING_NATURAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
