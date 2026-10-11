.class public interface abstract Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV2;",
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

    const-string v2, "ctsignatureinfov2d460type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV2;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV2;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAddress1()Ljava/lang/String;
.end method

.method public abstract getAddress2()Ljava/lang/String;
.end method

.method public abstract isSetAddress1()Z
.end method

.method public abstract isSetAddress2()Z
.end method

.method public abstract setAddress1(Ljava/lang/String;)V
.end method

.method public abstract setAddress2(Ljava/lang/String;)V
.end method

.method public abstract unsetAddress1()V
.end method

.method public abstract unsetAddress2()V
.end method

.method public abstract xgetAddress1()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetAddress2()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAddress1(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetAddress2(Lorg/apache/xmlbeans/XmlString;)V
.end method
