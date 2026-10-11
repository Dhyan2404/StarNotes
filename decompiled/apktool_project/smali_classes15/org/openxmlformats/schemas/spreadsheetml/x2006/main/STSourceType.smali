.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;
    }
.end annotation


# static fields
.field public static final CONSOLIDATION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

.field public static final EXTERNAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CONSOLIDATION:I = 0x3

.field public static final INT_EXTERNAL:I = 0x2

.field public static final INT_SCENARIO:I = 0x4

.field public static final INT_WORKSHEET:I = 0x1

.field public static final SCENARIO:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

.field public static final WORKSHEET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stsourcetype074etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "worksheet"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;->WORKSHEET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

    const-string v0, "external"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;->EXTERNAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

    const-string v0, "consolidation"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;->CONSOLIDATION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

    const-string v0, "scenario"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;->SCENARIO:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
