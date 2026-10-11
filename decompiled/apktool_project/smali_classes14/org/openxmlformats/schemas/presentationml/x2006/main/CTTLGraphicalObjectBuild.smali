.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLGraphicalObjectBuild;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLGraphicalObjectBuild;",
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

    const-string v2, "cttlgraphicalobjectbuild9a11type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLGraphicalObjectBuild;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLGraphicalObjectBuild;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBldAsOne()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewBldSub()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationGraphicalObjectBuildProperties;
.end method

.method public abstract getBldAsOne()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getBldSub()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationGraphicalObjectBuildProperties;
.end method

.method public abstract getGrpId()J
.end method

.method public abstract getSpid()J
.end method

.method public abstract getUiExpand()Z
.end method

.method public abstract isSetBldAsOne()Z
.end method

.method public abstract isSetBldSub()Z
.end method

.method public abstract isSetUiExpand()Z
.end method

.method public abstract setBldAsOne(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setBldSub(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationGraphicalObjectBuildProperties;)V
.end method

.method public abstract setGrpId(J)V
.end method

.method public abstract setSpid(J)V
.end method

.method public abstract setUiExpand(Z)V
.end method

.method public abstract unsetBldAsOne()V
.end method

.method public abstract unsetBldSub()V
.end method

.method public abstract unsetUiExpand()V
.end method

.method public abstract xgetGrpId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSpid()Lorg/openxmlformats/schemas/drawingml/x2006/main/STDrawingElementId;
.end method

.method public abstract xgetUiExpand()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetGrpId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSpid(Lorg/openxmlformats/schemas/drawingml/x2006/main/STDrawingElementId;)V
.end method

.method public abstract xsetUiExpand(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
