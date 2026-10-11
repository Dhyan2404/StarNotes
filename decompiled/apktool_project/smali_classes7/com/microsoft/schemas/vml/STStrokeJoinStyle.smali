.class public interface abstract Lcom/microsoft/schemas/vml/STStrokeJoinStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;
    }
.end annotation


# static fields
.field public static final BEVEL:Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/vml/STStrokeJoinStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BEVEL:I = 0x2

.field public static final INT_MITER:I = 0x3

.field public static final INT_ROUND:I = 0x1

.field public static final MITER:Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

.field public static final ROUND:Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ststrokejoinstyle3c13type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeJoinStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeJoinStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "round"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeJoinStyle;->ROUND:Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

    const-string v0, "bevel"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeJoinStyle;->BEVEL:Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

    const-string v0, "miter"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeJoinStyle;->MITER:Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
