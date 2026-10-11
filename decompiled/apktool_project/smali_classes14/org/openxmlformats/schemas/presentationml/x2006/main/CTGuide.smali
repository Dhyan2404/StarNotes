.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuide;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuide;",
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

    const-string v2, "ctguide4f93type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuide;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuide;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getOrient()Lorg/openxmlformats/schemas/presentationml/x2006/main/STDirection$Enum;
.end method

.method public abstract getPos()Ljava/lang/Object;
.end method

.method public abstract isSetOrient()Z
.end method

.method public abstract isSetPos()Z
.end method

.method public abstract setOrient(Lorg/openxmlformats/schemas/presentationml/x2006/main/STDirection$Enum;)V
.end method

.method public abstract setPos(Ljava/lang/Object;)V
.end method

.method public abstract unsetOrient()V
.end method

.method public abstract unsetPos()V
.end method

.method public abstract xgetOrient()Lorg/openxmlformats/schemas/presentationml/x2006/main/STDirection;
.end method

.method public abstract xgetPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xsetOrient(Lorg/openxmlformats/schemas/presentationml/x2006/main/STDirection;)V
.end method

.method public abstract xsetPos(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method
