.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDataModel;",
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

    const-string v2, "ctdatamodel8e5ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDataModel;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDataModel;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBg()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFormatting;
.end method

.method public abstract addNewCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxnList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewPtLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPtList;
.end method

.method public abstract addNewWhole()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTWholeE2OFormatting;
.end method

.method public abstract getBg()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFormatting;
.end method

.method public abstract getCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxnList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getPtLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPtList;
.end method

.method public abstract getWhole()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTWholeE2OFormatting;
.end method

.method public abstract isSetBg()Z
.end method

.method public abstract isSetCxnLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetWhole()Z
.end method

.method public abstract setBg(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFormatting;)V
.end method

.method public abstract setCxnLst(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxnList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setPtLst(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPtList;)V
.end method

.method public abstract setWhole(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTWholeE2OFormatting;)V
.end method

.method public abstract unsetBg()V
.end method

.method public abstract unsetCxnLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetWhole()V
.end method
