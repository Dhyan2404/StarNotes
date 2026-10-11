.class public interface abstract Lcom/microsoft/schemas/office/word/x2012/wordml/CTPerson;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/word/x2012/wordml/CTPerson;",
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

    const-string v2, "ctperson9431type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/word/x2012/wordml/CTPerson;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/x2012/wordml/CTPerson;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPresenceInfo()Lcom/microsoft/schemas/office/word/x2012/wordml/CTPresenceInfo;
.end method

.method public abstract getAuthor()Ljava/lang/String;
.end method

.method public abstract getPresenceInfo()Lcom/microsoft/schemas/office/word/x2012/wordml/CTPresenceInfo;
.end method

.method public abstract isSetPresenceInfo()Z
.end method

.method public abstract setAuthor(Ljava/lang/String;)V
.end method

.method public abstract setPresenceInfo(Lcom/microsoft/schemas/office/word/x2012/wordml/CTPresenceInfo;)V
.end method

.method public abstract unsetPresenceInfo()V
.end method

.method public abstract xgetAuthor()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xsetAuthor(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method
