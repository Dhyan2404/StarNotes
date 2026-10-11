.class public interface abstract Lorg/etsi/uri/x01903/v13/CRLIdentifierType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/CRLIdentifierType;",
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

    const-string v2, "crlidentifiertypeb702type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/CRLIdentifierType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/CRLIdentifierType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getIssueTime()Ljava/util/Calendar;
.end method

.method public abstract getIssuer()Ljava/lang/String;
.end method

.method public abstract getNumber()Ljava/math/BigInteger;
.end method

.method public abstract getURI()Ljava/lang/String;
.end method

.method public abstract isSetNumber()Z
.end method

.method public abstract isSetURI()Z
.end method

.method public abstract setIssueTime(Ljava/util/Calendar;)V
.end method

.method public abstract setIssuer(Ljava/lang/String;)V
.end method

.method public abstract setNumber(Ljava/math/BigInteger;)V
.end method

.method public abstract setURI(Ljava/lang/String;)V
.end method

.method public abstract unsetNumber()V
.end method

.method public abstract unsetURI()V
.end method

.method public abstract xgetIssueTime()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetIssuer()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetNumber()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetURI()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xsetIssueTime(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetIssuer(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetNumber(Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetURI(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
