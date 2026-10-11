.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;",
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

    const-string v2, "ctnonvisualconnectorproperties6f8etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCxnSpLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectorLocking;
.end method

.method public abstract addNewEndCxn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnection;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewStCxn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnection;
.end method

.method public abstract getCxnSpLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectorLocking;
.end method

.method public abstract getEndCxn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnection;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getStCxn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnection;
.end method

.method public abstract isSetCxnSpLocks()Z
.end method

.method public abstract isSetEndCxn()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetStCxn()Z
.end method

.method public abstract setCxnSpLocks(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectorLocking;)V
.end method

.method public abstract setEndCxn(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnection;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setStCxn(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnection;)V
.end method

.method public abstract unsetCxnSpLocks()V
.end method

.method public abstract unsetEndCxn()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetStCxn()V
.end method
