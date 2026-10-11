.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;",
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

    const-string v2, "cttltimetargetelementdca9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewInkTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;
.end method

.method public abstract addNewSldTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewSndTgt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;
.end method

.method public abstract addNewSpTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;
.end method

.method public abstract getInkTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;
.end method

.method public abstract getSldTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getSndTgt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;
.end method

.method public abstract getSpTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;
.end method

.method public abstract isSetInkTgt()Z
.end method

.method public abstract isSetSldTgt()Z
.end method

.method public abstract isSetSndTgt()Z
.end method

.method public abstract isSetSpTgt()Z
.end method

.method public abstract setInkTgt(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;)V
.end method

.method public abstract setSldTgt(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setSndTgt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;)V
.end method

.method public abstract setSpTgt(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;)V
.end method

.method public abstract unsetInkTgt()V
.end method

.method public abstract unsetSldTgt()V
.end method

.method public abstract unsetSndTgt()V
.end method

.method public abstract unsetSpTgt()V
.end method
