.class public interface abstract Lcom/microsoft/schemas/vml/STStrokeLineStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/vml/STStrokeLineStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_SINGLE:I = 0x1

.field public static final INT_THICK_BETWEEN_THIN:I = 0x5

.field public static final INT_THICK_THIN:I = 0x4

.field public static final INT_THIN_THICK:I = 0x3

.field public static final INT_THIN_THIN:I = 0x2

.field public static final SINGLE:Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

.field public static final THICK_BETWEEN_THIN:Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

.field public static final THICK_THIN:Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

.field public static final THIN_THICK:Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

.field public static final THIN_THIN:Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ststrokelinestylea509type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeLineStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeLineStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "single"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeLineStyle;->SINGLE:Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    const-string v0, "thinThin"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeLineStyle;->THIN_THIN:Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    const-string v0, "thinThick"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeLineStyle;->THIN_THICK:Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    const-string v0, "thickThin"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeLineStyle;->THICK_THIN:Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    const-string v0, "thickBetweenThin"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeLineStyle;->THICK_BETWEEN_THIN:Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
