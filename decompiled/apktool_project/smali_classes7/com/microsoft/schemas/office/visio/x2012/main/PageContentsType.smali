.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;",
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

    const-string v2, "pagecontentstypea5d0type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewConnects()Lcom/microsoft/schemas/office/visio/x2012/main/ConnectsType;
.end method

.method public abstract addNewShapes()Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;
.end method

.method public abstract getConnects()Lcom/microsoft/schemas/office/visio/x2012/main/ConnectsType;
.end method

.method public abstract getShapes()Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;
.end method

.method public abstract isSetConnects()Z
.end method

.method public abstract isSetShapes()Z
.end method

.method public abstract setConnects(Lcom/microsoft/schemas/office/visio/x2012/main/ConnectsType;)V
.end method

.method public abstract setShapes(Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;)V
.end method

.method public abstract unsetConnects()V
.end method

.method public abstract unsetShapes()V
.end method
