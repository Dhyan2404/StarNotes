.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/AuthorEntryType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/AuthorEntryType;",
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

    const-string v2, "authorentrytype53a4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/AuthorEntryType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/AuthorEntryType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getID()J
.end method

.method public abstract getInitials()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getResolutionID()Ljava/lang/String;
.end method

.method public abstract isSetInitials()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetResolutionID()Z
.end method

.method public abstract setID(J)V
.end method

.method public abstract setInitials(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setResolutionID(Ljava/lang/String;)V
.end method

.method public abstract unsetInitials()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetResolutionID()V
.end method

.method public abstract xgetID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetInitials()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetResolutionID()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetInitials(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetResolutionID(Lorg/apache/xmlbeans/XmlString;)V
.end method
