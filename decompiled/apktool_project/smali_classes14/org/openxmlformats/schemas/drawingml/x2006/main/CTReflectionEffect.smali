.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;",
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

    const-string v2, "ctreflectioneffect9c37type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;
.end method

.method public abstract getBlurRad()J
.end method

.method public abstract getDir()I
.end method

.method public abstract getDist()J
.end method

.method public abstract getEndA()Ljava/lang/Object;
.end method

.method public abstract getEndPos()Ljava/lang/Object;
.end method

.method public abstract getFadeDir()I
.end method

.method public abstract getKx()I
.end method

.method public abstract getKy()I
.end method

.method public abstract getRotWithShape()Z
.end method

.method public abstract getStA()Ljava/lang/Object;
.end method

.method public abstract getStPos()Ljava/lang/Object;
.end method

.method public abstract getSx()Ljava/lang/Object;
.end method

.method public abstract getSy()Ljava/lang/Object;
.end method

.method public abstract isSetAlgn()Z
.end method

.method public abstract isSetBlurRad()Z
.end method

.method public abstract isSetDir()Z
.end method

.method public abstract isSetDist()Z
.end method

.method public abstract isSetEndA()Z
.end method

.method public abstract isSetEndPos()Z
.end method

.method public abstract isSetFadeDir()Z
.end method

.method public abstract isSetKx()Z
.end method

.method public abstract isSetKy()Z
.end method

.method public abstract isSetRotWithShape()Z
.end method

.method public abstract isSetStA()Z
.end method

.method public abstract isSetStPos()Z
.end method

.method public abstract isSetSx()Z
.end method

.method public abstract isSetSy()Z
.end method

.method public abstract setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V
.end method

.method public abstract setBlurRad(J)V
.end method

.method public abstract setDir(I)V
.end method

.method public abstract setDist(J)V
.end method

.method public abstract setEndA(Ljava/lang/Object;)V
.end method

.method public abstract setEndPos(Ljava/lang/Object;)V
.end method

.method public abstract setFadeDir(I)V
.end method

.method public abstract setKx(I)V
.end method

.method public abstract setKy(I)V
.end method

.method public abstract setRotWithShape(Z)V
.end method

.method public abstract setStA(Ljava/lang/Object;)V
.end method

.method public abstract setStPos(Ljava/lang/Object;)V
.end method

.method public abstract setSx(Ljava/lang/Object;)V
.end method

.method public abstract setSy(Ljava/lang/Object;)V
.end method

.method public abstract unsetAlgn()V
.end method

.method public abstract unsetBlurRad()V
.end method

.method public abstract unsetDir()V
.end method

.method public abstract unsetDist()V
.end method

.method public abstract unsetEndA()V
.end method

.method public abstract unsetEndPos()V
.end method

.method public abstract unsetFadeDir()V
.end method

.method public abstract unsetKx()V
.end method

.method public abstract unsetKy()V
.end method

.method public abstract unsetRotWithShape()V
.end method

.method public abstract unsetStA()V
.end method

.method public abstract unsetStPos()V
.end method

.method public abstract unsetSx()V
.end method

.method public abstract unsetSy()V
.end method

.method public abstract xgetAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;
.end method

.method public abstract xgetBlurRad()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetDir()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedAngle;
.end method

.method public abstract xgetDist()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetEndA()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;
.end method

.method public abstract xgetEndPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;
.end method

.method public abstract xgetFadeDir()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedAngle;
.end method

.method public abstract xgetKx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STFixedAngle;
.end method

.method public abstract xgetKy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STFixedAngle;
.end method

.method public abstract xgetRotWithShape()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetStA()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;
.end method

.method public abstract xgetStPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;
.end method

.method public abstract xgetSx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetSy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xsetAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;)V
.end method

.method public abstract xsetBlurRad(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetDir(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedAngle;)V
.end method

.method public abstract xsetDist(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetEndA(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)V
.end method

.method public abstract xsetEndPos(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)V
.end method

.method public abstract xsetFadeDir(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedAngle;)V
.end method

.method public abstract xsetKx(Lorg/openxmlformats/schemas/drawingml/x2006/main/STFixedAngle;)V
.end method

.method public abstract xsetKy(Lorg/openxmlformats/schemas/drawingml/x2006/main/STFixedAngle;)V
.end method

.method public abstract xsetRotWithShape(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetStA(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)V
.end method

.method public abstract xsetStPos(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)V
.end method

.method public abstract xsetSx(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetSy(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method
