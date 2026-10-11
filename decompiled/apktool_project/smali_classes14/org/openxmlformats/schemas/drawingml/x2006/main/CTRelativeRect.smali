.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;",
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

    const-string v2, "ctrelativerecta4ebtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getB()Ljava/lang/Object;
.end method

.method public abstract getL()Ljava/lang/Object;
.end method

.method public abstract getR()Ljava/lang/Object;
.end method

.method public abstract getT()Ljava/lang/Object;
.end method

.method public abstract isSetB()Z
.end method

.method public abstract isSetL()Z
.end method

.method public abstract isSetR()Z
.end method

.method public abstract isSetT()Z
.end method

.method public abstract setB(Ljava/lang/Object;)V
.end method

.method public abstract setL(Ljava/lang/Object;)V
.end method

.method public abstract setR(Ljava/lang/Object;)V
.end method

.method public abstract setT(Ljava/lang/Object;)V
.end method

.method public abstract unsetB()V
.end method

.method public abstract unsetL()V
.end method

.method public abstract unsetR()V
.end method

.method public abstract unsetT()V
.end method

.method public abstract xgetB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetL()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetT()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xsetB(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetL(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetR(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetT(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method
