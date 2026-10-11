.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewPortion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewPortion;",
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

    const-string v2, "ctnormalviewportione994type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewPortion;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewPortion;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAutoAdjust()Z
.end method

.method public abstract getSz()Ljava/lang/Object;
.end method

.method public abstract isSetAutoAdjust()Z
.end method

.method public abstract setAutoAdjust(Z)V
.end method

.method public abstract setSz(Ljava/lang/Object;)V
.end method

.method public abstract unsetAutoAdjust()V
.end method

.method public abstract xgetAutoAdjust()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSz()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;
.end method

.method public abstract xsetAutoAdjust(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSz(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)V
.end method
