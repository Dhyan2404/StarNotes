.class public interface abstract Lcom/microsoft/schemas/vml/STStrokeArrowType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;
    }
.end annotation


# static fields
.field public static final BLOCK:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

.field public static final CLASSIC:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

.field public static final DIAMOND:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/vml/STStrokeArrowType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BLOCK:I = 0x2

.field public static final INT_CLASSIC:I = 0x3

.field public static final INT_DIAMOND:I = 0x5

.field public static final INT_NONE:I = 0x1

.field public static final INT_OPEN:I = 0x6

.field public static final INT_OVAL:I = 0x4

.field public static final NONE:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

.field public static final OPEN:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

.field public static final OVAL:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ststrokearrowtype7b4ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowType;->NONE:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    const-string v0, "block"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowType;->BLOCK:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    const-string v0, "classic"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowType;->CLASSIC:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    const-string v0, "oval"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowType;->OVAL:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    const-string v0, "diamond"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowType;->DIAMOND:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    const-string v0, "open"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowType;->OPEN:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
