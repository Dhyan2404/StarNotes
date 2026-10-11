.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;
    }
.end annotation


# static fields
.field public static final CELL_COLOR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;

.field public static final FONT_COLOR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICON:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;

.field public static final INT_CELL_COLOR:I = 0x2

.field public static final INT_FONT_COLOR:I = 0x3

.field public static final INT_ICON:I = 0x4

.field public static final INT_VALUE:I = 0x1

.field public static final VALUE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stsortbyca6etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "value"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy;->VALUE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;

    const-string v0, "cellColor"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy;->CELL_COLOR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;

    const-string v0, "fontColor"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy;->FONT_COLOR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;

    const-string v0, "icon"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy;->ICON:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
