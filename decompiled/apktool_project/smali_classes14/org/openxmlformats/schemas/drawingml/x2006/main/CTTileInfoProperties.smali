.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;",
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

    const-string v2, "cttileinfoproperties2featype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;
.end method

.method public abstract getFlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;
.end method

.method public abstract getSx()Ljava/lang/Object;
.end method

.method public abstract getSy()Ljava/lang/Object;
.end method

.method public abstract getTx()Ljava/lang/Object;
.end method

.method public abstract getTy()Ljava/lang/Object;
.end method

.method public abstract isSetAlgn()Z
.end method

.method public abstract isSetFlip()Z
.end method

.method public abstract isSetSx()Z
.end method

.method public abstract isSetSy()Z
.end method

.method public abstract isSetTx()Z
.end method

.method public abstract isSetTy()Z
.end method

.method public abstract setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V
.end method

.method public abstract setFlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;)V
.end method

.method public abstract setSx(Ljava/lang/Object;)V
.end method

.method public abstract setSy(Ljava/lang/Object;)V
.end method

.method public abstract setTx(Ljava/lang/Object;)V
.end method

.method public abstract setTy(Ljava/lang/Object;)V
.end method

.method public abstract unsetAlgn()V
.end method

.method public abstract unsetFlip()V
.end method

.method public abstract unsetSx()V
.end method

.method public abstract unsetSy()V
.end method

.method public abstract unsetTx()V
.end method

.method public abstract unsetTy()V
.end method

.method public abstract xgetAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;
.end method

.method public abstract xgetFlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode;
.end method

.method public abstract xgetSx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetSy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;
.end method

.method public abstract xgetTy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;
.end method

.method public abstract xsetAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;)V
.end method

.method public abstract xsetFlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode;)V
.end method

.method public abstract xsetSx(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetSy(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetTx(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)V
.end method

.method public abstract xsetTy(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)V
.end method
