.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xmlschema/BaseAttribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xmlschema/BaseAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLLANG/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLLANG/TypeSystemHolder;

    const-string v2, "basece23attrtypetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlschema/BaseAttribute;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlschema/BaseAttribute;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getBase()Ljava/lang/String;
.end method

.method public abstract isSetBase()Z
.end method

.method public abstract setBase(Ljava/lang/String;)V
.end method

.method public abstract unsetBase()V
.end method

.method public abstract xgetBase()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xsetBase(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
