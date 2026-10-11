.class public interface abstract Lcom/microsoft/schemas/vml/STFillType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/STFillType$Enum;
    }
.end annotation


# static fields
.field public static final FRAME:Lcom/microsoft/schemas/vml/STFillType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/vml/STFillType;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRADIENT:Lcom/microsoft/schemas/vml/STFillType$Enum;

.field public static final GRADIENT_RADIAL:Lcom/microsoft/schemas/vml/STFillType$Enum;

.field public static final INT_FRAME:I = 0x6

.field public static final INT_GRADIENT:I = 0x2

.field public static final INT_GRADIENT_RADIAL:I = 0x3

.field public static final INT_PATTERN:I = 0x5

.field public static final INT_SOLID:I = 0x1

.field public static final INT_TILE:I = 0x4

.field public static final PATTERN:Lcom/microsoft/schemas/vml/STFillType$Enum;

.field public static final SOLID:Lcom/microsoft/schemas/vml/STFillType$Enum;

.field public static final TILE:Lcom/microsoft/schemas/vml/STFillType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stfilltype382btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/STFillType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "solid"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STFillType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STFillType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillType;->SOLID:Lcom/microsoft/schemas/vml/STFillType$Enum;

    const-string v0, "gradient"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STFillType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STFillType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillType;->GRADIENT:Lcom/microsoft/schemas/vml/STFillType$Enum;

    const-string v0, "gradientRadial"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STFillType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STFillType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillType;->GRADIENT_RADIAL:Lcom/microsoft/schemas/vml/STFillType$Enum;

    const-string v0, "tile"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STFillType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STFillType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillType;->TILE:Lcom/microsoft/schemas/vml/STFillType$Enum;

    const-string v0, "pattern"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STFillType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STFillType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillType;->PATTERN:Lcom/microsoft/schemas/vml/STFillType$Enum;

    const-string v0, "frame"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STFillType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STFillType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillType;->FRAME:Lcom/microsoft/schemas/vml/STFillType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
