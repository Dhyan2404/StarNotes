.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLCONFIG/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLCONFIG/TypeSystemHolder;

    const-string v2, "nsconfigaebatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getPackage()Ljava/lang/String;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract getSuffix()Ljava/lang/String;
.end method

.method public abstract getUri()Ljava/lang/Object;
.end method

.method public abstract getUriprefix()Ljava/util/List;
.end method

.method public abstract isSetPackage()Z
.end method

.method public abstract isSetPrefix()Z
.end method

.method public abstract isSetSuffix()Z
.end method

.method public abstract isSetUri()Z
.end method

.method public abstract isSetUriprefix()Z
.end method

.method public abstract setPackage(Ljava/lang/String;)V
.end method

.method public abstract setPrefix(Ljava/lang/String;)V
.end method

.method public abstract setSuffix(Ljava/lang/String;)V
.end method

.method public abstract setUri(Ljava/lang/Object;)V
.end method

.method public abstract setUriprefix(Ljava/util/List;)V
.end method

.method public abstract unsetPackage()V
.end method

.method public abstract unsetPrefix()V
.end method

.method public abstract unsetSuffix()V
.end method

.method public abstract unsetUri()V
.end method

.method public abstract unsetUriprefix()V
.end method

.method public abstract xgetPackage()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPrefix()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSuffix()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetUri()Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList;
.end method

.method public abstract xgetUriprefix()Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespacePrefixList;
.end method

.method public abstract xsetPackage(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPrefix(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSuffix(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetUri(Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList;)V
.end method

.method public abstract xsetUriprefix(Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespacePrefixList;)V
.end method
