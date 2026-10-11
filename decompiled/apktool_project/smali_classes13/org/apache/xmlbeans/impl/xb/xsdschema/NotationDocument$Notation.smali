.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Notation"
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/ElementFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;

    const-string v2, "notation8b1felemtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;->Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPublic()Ljava/lang/String;
.end method

.method public abstract getSystem()Ljava/lang/String;
.end method

.method public abstract isSetPublic()Z
.end method

.method public abstract isSetSystem()Z
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPublic(Ljava/lang/String;)V
.end method

.method public abstract setSystem(Ljava/lang/String;)V
.end method

.method public abstract unsetPublic()V
.end method

.method public abstract unsetSystem()V
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlNCName;
.end method

.method public abstract xgetPublic()Lorg/apache/xmlbeans/impl/xb/xsdschema/Public;
.end method

.method public abstract xgetSystem()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlNCName;)V
.end method

.method public abstract xsetPublic(Lorg/apache/xmlbeans/impl/xb/xsdschema/Public;)V
.end method

.method public abstract xsetSystem(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
