.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;",
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

    const-string v2, "cttextnormalautofitbbdftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getFontScale()Ljava/lang/Object;
.end method

.method public abstract getLnSpcReduction()Ljava/lang/Object;
.end method

.method public abstract isSetFontScale()Z
.end method

.method public abstract isSetLnSpcReduction()Z
.end method

.method public abstract setFontScale(Ljava/lang/Object;)V
.end method

.method public abstract setLnSpcReduction(Ljava/lang/Object;)V
.end method

.method public abstract unsetFontScale()V
.end method

.method public abstract unsetLnSpcReduction()V
.end method

.method public abstract xgetFontScale()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontScalePercentOrPercentString;
.end method

.method public abstract xgetLnSpcReduction()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercentOrPercentString;
.end method

.method public abstract xsetFontScale(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontScalePercentOrPercentString;)V
.end method

.method public abstract xsetLnSpcReduction(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercentOrPercentString;)V
.end method
