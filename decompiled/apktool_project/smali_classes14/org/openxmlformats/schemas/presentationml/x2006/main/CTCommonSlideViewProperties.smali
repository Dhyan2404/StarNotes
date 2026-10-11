.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideViewProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideViewProperties;",
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

    const-string v2, "ctcommonslideviewproperties6ef1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideViewProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideViewProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonViewProperties;
.end method

.method public abstract addNewGuideLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuideList;
.end method

.method public abstract getCViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonViewProperties;
.end method

.method public abstract getGuideLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuideList;
.end method

.method public abstract getShowGuides()Z
.end method

.method public abstract getSnapToGrid()Z
.end method

.method public abstract getSnapToObjects()Z
.end method

.method public abstract isSetGuideLst()Z
.end method

.method public abstract isSetShowGuides()Z
.end method

.method public abstract isSetSnapToGrid()Z
.end method

.method public abstract isSetSnapToObjects()Z
.end method

.method public abstract setCViewPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonViewProperties;)V
.end method

.method public abstract setGuideLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuideList;)V
.end method

.method public abstract setShowGuides(Z)V
.end method

.method public abstract setSnapToGrid(Z)V
.end method

.method public abstract setSnapToObjects(Z)V
.end method

.method public abstract unsetGuideLst()V
.end method

.method public abstract unsetShowGuides()V
.end method

.method public abstract unsetSnapToGrid()V
.end method

.method public abstract unsetSnapToObjects()V
.end method

.method public abstract xgetShowGuides()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSnapToGrid()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSnapToObjects()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetShowGuides(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSnapToGrid(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSnapToObjects(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
