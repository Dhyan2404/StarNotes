.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTControl;",
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

    const-string v2, "ctcontrolbf52type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTControl;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTControl;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewPic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImgH()I
.end method

.method public abstract getImgW()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
.end method

.method public abstract getShowAsIcon()Z
.end method

.method public abstract getSpid()Ljava/lang/String;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetImgH()Z
.end method

.method public abstract isSetImgW()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetPic()Z
.end method

.method public abstract isSetShowAsIcon()Z
.end method

.method public abstract isSetSpid()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setImgH(I)V
.end method

.method public abstract setImgW(I)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPic(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;)V
.end method

.method public abstract setShowAsIcon(Z)V
.end method

.method public abstract setSpid(Ljava/lang/String;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetImgH()V
.end method

.method public abstract unsetImgW()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetPic()V
.end method

.method public abstract unsetShowAsIcon()V
.end method

.method public abstract unsetSpid()V
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetImgH()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate32;
.end method

.method public abstract xgetImgW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate32;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetShowAsIcon()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSpid()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeID;
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetImgH(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate32;)V
.end method

.method public abstract xsetImgW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate32;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetShowAsIcon(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSpid(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeID;)V
.end method
