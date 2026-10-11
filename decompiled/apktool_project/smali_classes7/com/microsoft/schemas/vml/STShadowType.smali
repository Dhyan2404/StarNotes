.class public interface abstract Lcom/microsoft/schemas/vml/STShadowType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/STShadowType$Enum;
    }
.end annotation


# static fields
.field public static final DOUBLE:Lcom/microsoft/schemas/vml/STShadowType$Enum;

.field public static final EMBOSS:Lcom/microsoft/schemas/vml/STShadowType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/vml/STShadowType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_DOUBLE:I = 0x2

.field public static final INT_EMBOSS:I = 0x3

.field public static final INT_PERSPECTIVE:I = 0x4

.field public static final INT_SINGLE:I = 0x1

.field public static final PERSPECTIVE:Lcom/microsoft/schemas/vml/STShadowType$Enum;

.field public static final SINGLE:Lcom/microsoft/schemas/vml/STShadowType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stshadowtype8b48type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/STShadowType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STShadowType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "single"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STShadowType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STShadowType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STShadowType;->SINGLE:Lcom/microsoft/schemas/vml/STShadowType$Enum;

    const-string v0, "double"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STShadowType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STShadowType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STShadowType;->DOUBLE:Lcom/microsoft/schemas/vml/STShadowType$Enum;

    const-string v0, "emboss"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STShadowType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STShadowType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STShadowType;->EMBOSS:Lcom/microsoft/schemas/vml/STShadowType$Enum;

    const-string v0, "perspective"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STShadowType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STShadowType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STShadowType;->PERSPECTIVE:Lcom/microsoft/schemas/vml/STShadowType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
