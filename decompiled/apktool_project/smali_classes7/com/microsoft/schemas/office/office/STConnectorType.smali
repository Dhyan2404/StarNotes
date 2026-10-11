.class public interface abstract Lcom/microsoft/schemas/office/office/STConnectorType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/office/STConnectorType$Enum;
    }
.end annotation


# static fields
.field public static final CURVED:Lcom/microsoft/schemas/office/office/STConnectorType$Enum;

.field public static final ELBOW:Lcom/microsoft/schemas/office/office/STConnectorType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/office/STConnectorType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CURVED:I = 0x4

.field public static final INT_ELBOW:I = 0x3

.field public static final INT_NONE:I = 0x1

.field public static final INT_STRAIGHT:I = 0x2

.field public static final NONE:Lcom/microsoft/schemas/office/office/STConnectorType$Enum;

.field public static final STRAIGHT:Lcom/microsoft/schemas/office/office/STConnectorType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stconnectortypecbd0type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/STConnectorType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STConnectorType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STConnectorType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STConnectorType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STConnectorType;->NONE:Lcom/microsoft/schemas/office/office/STConnectorType$Enum;

    const-string v0, "straight"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STConnectorType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STConnectorType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STConnectorType;->STRAIGHT:Lcom/microsoft/schemas/office/office/STConnectorType$Enum;

    const-string v0, "elbow"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STConnectorType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STConnectorType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STConnectorType;->ELBOW:Lcom/microsoft/schemas/office/office/STConnectorType$Enum;

    const-string v0, "curved"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STConnectorType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STConnectorType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STConnectorType;->CURVED:Lcom/microsoft/schemas/office/office/STConnectorType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
