.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonViewProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonViewProperties;",
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

    const-string v2, "ctcommonviewproperties9cc2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonViewProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonViewProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewOrigin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
.end method

.method public abstract addNewScale()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScale2D;
.end method

.method public abstract getOrigin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
.end method

.method public abstract getScale()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScale2D;
.end method

.method public abstract getVarScale()Z
.end method

.method public abstract isSetVarScale()Z
.end method

.method public abstract setOrigin(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V
.end method

.method public abstract setScale(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScale2D;)V
.end method

.method public abstract setVarScale(Z)V
.end method

.method public abstract unsetVarScale()V
.end method

.method public abstract xgetVarScale()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetVarScale(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
