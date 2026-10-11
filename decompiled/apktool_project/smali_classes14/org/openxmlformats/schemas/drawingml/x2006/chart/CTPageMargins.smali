.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;",
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

    const-string v2, "ctpagemarginsb730type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getB()D
.end method

.method public abstract getFooter()D
.end method

.method public abstract getHeader()D
.end method

.method public abstract getL()D
.end method

.method public abstract getR()D
.end method

.method public abstract getT()D
.end method

.method public abstract setB(D)V
.end method

.method public abstract setFooter(D)V
.end method

.method public abstract setHeader(D)V
.end method

.method public abstract setL(D)V
.end method

.method public abstract setR(D)V
.end method

.method public abstract setT(D)V
.end method

.method public abstract xgetB()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetFooter()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetHeader()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetL()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetR()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetT()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xsetB(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetFooter(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetHeader(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetL(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetR(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetT(Lorg/apache/xmlbeans/XmlDouble;)V
.end method
