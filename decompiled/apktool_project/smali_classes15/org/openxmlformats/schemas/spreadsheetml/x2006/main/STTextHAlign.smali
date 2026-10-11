.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;
    }
.end annotation


# static fields
.field public static final CENTER:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

.field public static final DISTRIBUTED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CENTER:I = 0x2

.field public static final INT_DISTRIBUTED:I = 0x5

.field public static final INT_JUSTIFY:I = 0x4

.field public static final INT_LEFT:I = 0x1

.field public static final INT_RIGHT:I = 0x3

.field public static final JUSTIFY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

.field public static final LEFT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

.field public static final RIGHT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttexthalign3023type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "left"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign;->LEFT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

    const-string v0, "center"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign;->CENTER:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

    const-string v0, "right"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign;->RIGHT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

    const-string v0, "justify"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign;->JUSTIFY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

    const-string v0, "distributed"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign;->DISTRIBUTED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
