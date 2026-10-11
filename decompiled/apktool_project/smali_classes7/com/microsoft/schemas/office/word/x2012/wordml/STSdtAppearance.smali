.class public interface abstract Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;
    }
.end annotation


# static fields
.field public static final BOUNDING_BOX:Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIDDEN:Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;

.field public static final INT_BOUNDING_BOX:I = 0x1

.field public static final INT_HIDDEN:I = 0x3

.field public static final INT_TAGS:I = 0x2

.field public static final TAGS:Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stsdtappearance49f9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "boundingBox"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance;->BOUNDING_BOX:Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;

    const-string v0, "tags"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance;->TAGS:Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;

    const-string v0, "hidden"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance;->HIDDEN:Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
