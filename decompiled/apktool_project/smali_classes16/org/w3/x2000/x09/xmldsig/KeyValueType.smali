.class public interface abstract Lorg/w3/x2000/x09/xmldsig/KeyValueType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/w3/x2000/x09/xmldsig/KeyValueType;",
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

    const-string v2, "keyvaluetype1d33type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/KeyValueType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/KeyValueType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDSAKeyValue()Lorg/w3/x2000/x09/xmldsig/DSAKeyValueType;
.end method

.method public abstract addNewRSAKeyValue()Lorg/w3/x2000/x09/xmldsig/RSAKeyValueType;
.end method

.method public abstract getDSAKeyValue()Lorg/w3/x2000/x09/xmldsig/DSAKeyValueType;
.end method

.method public abstract getRSAKeyValue()Lorg/w3/x2000/x09/xmldsig/RSAKeyValueType;
.end method

.method public abstract isSetDSAKeyValue()Z
.end method

.method public abstract isSetRSAKeyValue()Z
.end method

.method public abstract setDSAKeyValue(Lorg/w3/x2000/x09/xmldsig/DSAKeyValueType;)V
.end method

.method public abstract setRSAKeyValue(Lorg/w3/x2000/x09/xmldsig/RSAKeyValueType;)V
.end method

.method public abstract unsetDSAKeyValue()V
.end method

.method public abstract unsetRSAKeyValue()V
.end method
