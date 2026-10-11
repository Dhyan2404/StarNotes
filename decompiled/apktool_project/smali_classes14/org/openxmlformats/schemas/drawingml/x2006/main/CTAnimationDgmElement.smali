.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationDgmElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationDgmElement;",
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

    const-string v2, "ctanimationdgmelemente027type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationDgmElement;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationDgmElement;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getBldStep()Lorg/openxmlformats/schemas/drawingml/x2006/main/STDgmBuildStep$Enum;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract isSetBldStep()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract setBldStep(Lorg/openxmlformats/schemas/drawingml/x2006/main/STDgmBuildStep$Enum;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract unsetBldStep()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract xgetBldStep()Lorg/openxmlformats/schemas/drawingml/x2006/main/STDgmBuildStep;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xsetBldStep(Lorg/openxmlformats/schemas/drawingml/x2006/main/STDgmBuildStep;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method
