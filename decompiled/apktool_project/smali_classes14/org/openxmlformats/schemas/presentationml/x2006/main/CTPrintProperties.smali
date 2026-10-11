.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPrintProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPrintProperties;",
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

    const-string v2, "ctprintproperties6e0ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPrintProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPrintProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getClrMode()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintColorMode$Enum;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getFrameSlides()Z
.end method

.method public abstract getHiddenSlides()Z
.end method

.method public abstract getPrnWhat()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;
.end method

.method public abstract getScaleToFitPaper()Z
.end method

.method public abstract isSetClrMode()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFrameSlides()Z
.end method

.method public abstract isSetHiddenSlides()Z
.end method

.method public abstract isSetPrnWhat()Z
.end method

.method public abstract isSetScaleToFitPaper()Z
.end method

.method public abstract setClrMode(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintColorMode$Enum;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFrameSlides(Z)V
.end method

.method public abstract setHiddenSlides(Z)V
.end method

.method public abstract setPrnWhat(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;)V
.end method

.method public abstract setScaleToFitPaper(Z)V
.end method

.method public abstract unsetClrMode()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFrameSlides()V
.end method

.method public abstract unsetHiddenSlides()V
.end method

.method public abstract unsetPrnWhat()V
.end method

.method public abstract unsetScaleToFitPaper()V
.end method

.method public abstract xgetClrMode()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintColorMode;
.end method

.method public abstract xgetFrameSlides()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHiddenSlides()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPrnWhat()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;
.end method

.method public abstract xgetScaleToFitPaper()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetClrMode(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintColorMode;)V
.end method

.method public abstract xsetFrameSlides(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHiddenSlides(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPrnWhat(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;)V
.end method

.method public abstract xsetScaleToFitPaper(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
