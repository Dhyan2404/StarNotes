.class public interface abstract Lcom/microsoft/schemas/office/office/STExtrusionRender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;
    }
.end annotation


# static fields
.field public static final BOUNDING_CUBE:Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/office/STExtrusionRender;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BOUNDING_CUBE:I = 0x3

.field public static final INT_SOLID:I = 0x1

.field public static final INT_WIRE_FRAME:I = 0x2

.field public static final SOLID:Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;

.field public static final WIRE_FRAME:Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stextrusionrenderd3b8type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/STExtrusionRender;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STExtrusionRender;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "solid"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STExtrusionRender;->SOLID:Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;

    const-string v0, "wireFrame"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STExtrusionRender;->WIRE_FRAME:Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;

    const-string v0, "boundingCube"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STExtrusionRender;->BOUNDING_CUBE:Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
