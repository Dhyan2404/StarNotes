.class public interface abstract Lorg/w3/x2000/x09/xmldsig/DSAKeyValueType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/w3/x2000/x09/xmldsig/DSAKeyValueType;",
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

    const-string v2, "dsakeyvaluetypee913type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/DSAKeyValueType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/DSAKeyValueType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getG()[B
.end method

.method public abstract getJ()[B
.end method

.method public abstract getP()[B
.end method

.method public abstract getPgenCounter()[B
.end method

.method public abstract getQ()[B
.end method

.method public abstract getSeed()[B
.end method

.method public abstract getY()[B
.end method

.method public abstract isSetG()Z
.end method

.method public abstract isSetJ()Z
.end method

.method public abstract isSetP()Z
.end method

.method public abstract isSetPgenCounter()Z
.end method

.method public abstract isSetQ()Z
.end method

.method public abstract isSetSeed()Z
.end method

.method public abstract setG([B)V
.end method

.method public abstract setJ([B)V
.end method

.method public abstract setP([B)V
.end method

.method public abstract setPgenCounter([B)V
.end method

.method public abstract setQ([B)V
.end method

.method public abstract setSeed([B)V
.end method

.method public abstract setY([B)V
.end method

.method public abstract unsetG()V
.end method

.method public abstract unsetJ()V
.end method

.method public abstract unsetP()V
.end method

.method public abstract unsetPgenCounter()V
.end method

.method public abstract unsetQ()V
.end method

.method public abstract unsetSeed()V
.end method

.method public abstract xgetG()Lorg/w3/x2000/x09/xmldsig/CryptoBinary;
.end method

.method public abstract xgetJ()Lorg/w3/x2000/x09/xmldsig/CryptoBinary;
.end method

.method public abstract xgetP()Lorg/w3/x2000/x09/xmldsig/CryptoBinary;
.end method

.method public abstract xgetPgenCounter()Lorg/w3/x2000/x09/xmldsig/CryptoBinary;
.end method

.method public abstract xgetQ()Lorg/w3/x2000/x09/xmldsig/CryptoBinary;
.end method

.method public abstract xgetSeed()Lorg/w3/x2000/x09/xmldsig/CryptoBinary;
.end method

.method public abstract xgetY()Lorg/w3/x2000/x09/xmldsig/CryptoBinary;
.end method

.method public abstract xsetG(Lorg/w3/x2000/x09/xmldsig/CryptoBinary;)V
.end method

.method public abstract xsetJ(Lorg/w3/x2000/x09/xmldsig/CryptoBinary;)V
.end method

.method public abstract xsetP(Lorg/w3/x2000/x09/xmldsig/CryptoBinary;)V
.end method

.method public abstract xsetPgenCounter(Lorg/w3/x2000/x09/xmldsig/CryptoBinary;)V
.end method

.method public abstract xsetQ(Lorg/w3/x2000/x09/xmldsig/CryptoBinary;)V
.end method

.method public abstract xsetSeed(Lorg/w3/x2000/x09/xmldsig/CryptoBinary;)V
.end method

.method public abstract xsetY(Lorg/w3/x2000/x09/xmldsig/CryptoBinary;)V
.end method
