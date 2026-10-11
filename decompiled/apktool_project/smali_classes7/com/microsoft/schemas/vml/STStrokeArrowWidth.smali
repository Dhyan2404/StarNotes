.class public interface abstract Lcom/microsoft/schemas/vml/STStrokeArrowWidth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/vml/STStrokeArrowWidth;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_MEDIUM:I = 0x2

.field public static final INT_NARROW:I = 0x1

.field public static final INT_WIDE:I = 0x3

.field public static final MEDIUM:Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;

.field public static final NARROW:Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;

.field public static final WIDE:Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ststrokearrowwidth1563type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowWidth;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowWidth;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "narrow"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowWidth;->NARROW:Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;

    const-string v0, "medium"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowWidth;->MEDIUM:Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;

    const-string v0, "wide"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowWidth;->WIDE:Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
