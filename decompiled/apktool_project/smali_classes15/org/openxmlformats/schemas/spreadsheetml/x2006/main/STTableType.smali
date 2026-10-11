.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_QUERY_TABLE:I = 0x3

.field public static final INT_WORKSHEET:I = 0x1

.field public static final INT_XML:I = 0x2

.field public static final QUERY_TABLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;

.field public static final WORKSHEET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;

.field public static final XML:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttabletype4fb7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "worksheet"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;->WORKSHEET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;

    const-string v0, "xml"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;->XML:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;

    const-string v0, "queryTable"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;->QUERY_TABLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
