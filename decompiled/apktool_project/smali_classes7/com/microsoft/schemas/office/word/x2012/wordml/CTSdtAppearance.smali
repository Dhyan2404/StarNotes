.class public interface abstract Lcom/microsoft/schemas/office/word/x2012/wordml/CTSdtAppearance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/word/x2012/wordml/CTSdtAppearance;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctsdtappearance51e9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/word/x2012/wordml/CTSdtAppearance;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/x2012/wordml/CTSdtAppearance;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getVal()Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;
.end method

.method public abstract isSetVal()Z
.end method

.method public abstract setVal(Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance$Enum;)V
.end method

.method public abstract unsetVal()V
.end method

.method public abstract xgetVal()Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance;
.end method

.method public abstract xsetVal(Lcom/microsoft/schemas/office/word/x2012/wordml/STSdtAppearance;)V
.end method
