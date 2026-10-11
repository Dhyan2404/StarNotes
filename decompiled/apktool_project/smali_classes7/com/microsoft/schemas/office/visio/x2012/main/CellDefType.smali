.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;",
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

    const-string v2, "celldeftypebe08type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getF()Ljava/lang/String;
.end method

.method public abstract getIX()S
.end method

.method public abstract getN()Ljava/lang/String;
.end method

.method public abstract getS()S
.end method

.method public abstract getT()Ljava/lang/String;
.end method

.method public abstract isSetF()Z
.end method

.method public abstract isSetIX()Z
.end method

.method public abstract isSetS()Z
.end method

.method public abstract setF(Ljava/lang/String;)V
.end method

.method public abstract setIX(S)V
.end method

.method public abstract setN(Ljava/lang/String;)V
.end method

.method public abstract setS(S)V
.end method

.method public abstract setT(Ljava/lang/String;)V
.end method

.method public abstract unsetF()V
.end method

.method public abstract unsetIX()V
.end method

.method public abstract unsetS()V
.end method

.method public abstract xgetF()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetIX()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetN()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetS()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetT()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xsetF(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetIX(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetN(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetS(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetT(Lorg/apache/xmlbeans/XmlToken;)V
.end method
