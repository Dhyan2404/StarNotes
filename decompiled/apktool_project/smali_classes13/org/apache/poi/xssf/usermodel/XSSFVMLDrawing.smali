.class public final Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# static fields
.field private static final COMMENT_SHAPE_TYPE_ID:Ljava/lang/String; = "_x0000_t202"

.field public static final QNAME_VMLDRAWING:Ljavax/xml/namespace/QName;

.field private static final ptrn_shapeId:Ljava/util/regex/Pattern;


# instance fields
.field private _shapeId:I

.field private _shapeTypeId:Ljava/lang/String;

.field private root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "urn:schemas-poi-apache-org:vmldrawing"

    const-string v2, "xml"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_VMLDRAWING:Ljavax/xml/namespace/QName;

    const-string v0, "_x0000_s(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->ptrn_shapeId:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    const/16 v0, 0x400

    .line 2
    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->newDrawing()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    const/16 p1, 0x400

    .line 5
    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method private matchCommentShape(Lorg/apache/xmlbeans/XmlObject;II)Z
    .locals 2

    instance-of p0, p1, Lcom/microsoft/schemas/vml/CTShape;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/microsoft/schemas/vml/CTShape;

    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTShape;->sizeOfClientDataArray()I

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p1, v0}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object p0

    invoke-interface {p0}, Lcom/microsoft/schemas/office/excel/CTClientData;->getObjectType()Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object p1

    sget-object v1, Lcom/microsoft/schemas/office/excel/STObjectType;->NOTE:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    if-eq p1, v1, :cond_2

    return v0

    :cond_2
    invoke-interface {p0, v0}, Lcom/microsoft/schemas/office/excel/CTClientData;->getRowArray(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-interface {p0, v0}, Lcom/microsoft/schemas/office/excel/CTClientData;->getColumnArray(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    if-ne p1, p2, :cond_3

    if-ne p0, p3, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private newDrawing()V
    .locals 4

    sget-object v0, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {v0}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->addNewXml()Lorg/apache/poi/schemas/vmldrawing/CTXML;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/microsoft/schemas/office/office/ShapelayoutDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/schemas/office/office/ShapelayoutDocument;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/office/ShapelayoutDocument;->addNewShapelayout()Lcom/microsoft/schemas/office/office/CTShapeLayout;

    move-result-object v2

    sget-object v3, Lcom/microsoft/schemas/vml/STExt;->EDIT:Lcom/microsoft/schemas/vml/STExt$Enum;

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/office/office/CTShapeLayout;->setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V

    invoke-interface {v2}, Lcom/microsoft/schemas/office/office/CTShapeLayout;->addNewIdmap()Lcom/microsoft/schemas/office/office/CTIdMap;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/office/office/CTIdMap;->setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V

    const-string v3, "1"

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/office/office/CTIdMap;->setData(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/XmlCursor;->copyXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    sget-object v1, Lcom/microsoft/schemas/vml/CTGroup;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/schemas/vml/CTGroup;

    invoke-interface {v1}, Lcom/microsoft/schemas/vml/CTGroup;->addNewShapetype()Lcom/microsoft/schemas/vml/CTShapetype;

    move-result-object v2

    const-string v3, "_x0000_t202"

    iput-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeTypeId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/vml/CTShapetype;->setId(Ljava/lang/String;)V

    const-string p0, "21600,21600"

    invoke-interface {v2, p0}, Lcom/microsoft/schemas/vml/CTShapetype;->setCoordsize(Ljava/lang/String;)V

    const/high16 p0, 0x434a0000    # 202.0f

    invoke-interface {v2, p0}, Lcom/microsoft/schemas/vml/CTShapetype;->setSpt(F)V

    const-string p0, "m,l,21600r21600,l21600,xe"

    invoke-interface {v2, p0}, Lcom/microsoft/schemas/vml/CTShapetype;->setPath2(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/microsoft/schemas/vml/CTShapetype;->addNewStroke()Lcom/microsoft/schemas/vml/CTStroke;

    move-result-object p0

    sget-object v3, Lcom/microsoft/schemas/vml/STStrokeJoinStyle;->MITER:Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

    invoke-interface {p0, v3}, Lcom/microsoft/schemas/vml/CTStroke;->setJoinstyle(Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;)V

    invoke-interface {v2}, Lcom/microsoft/schemas/vml/CTShapetype;->addNewPath()Lcom/microsoft/schemas/vml/CTPath;

    move-result-object p0

    sget-object v2, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;->T:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    invoke-interface {p0, v2}, Lcom/microsoft/schemas/vml/CTPath;->setGradientshapeok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V

    sget-object v2, Lcom/microsoft/schemas/office/office/STConnectType;->RECT:Lcom/microsoft/schemas/office/office/STConnectType$Enum;

    invoke-interface {p0, v2}, Lcom/microsoft/schemas/vml/CTPath;->setConnecttype(Lcom/microsoft/schemas/office/office/STConnectType$Enum;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/XmlCursor;->copyXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p0, :cond_0

    :try_start_6
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_3
    move-exception p0

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_9
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p0

    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_c
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_2

    :catchall_8
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1
.end method


# virtual methods
.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public findCommentShape(II)Lcom/microsoft/schemas/vml/CTShape;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {v0}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->getXml()Lorg/apache/poi/schemas/vmldrawing/CTXML;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->matchCommentShape(Lorg/apache/xmlbeans/XmlObject;II)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lcom/microsoft/schemas/vml/CTShape;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-object v1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
.end method

.method public getDocument()Lorg/apache/poi/schemas/vmldrawing/XmlDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {p0}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->getXml()Lorg/apache/poi/schemas/vmldrawing/CTXML;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
.end method

.method public newCommentShape()Lcom/microsoft/schemas/vml/CTShape;
    .locals 6
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lcom/microsoft/schemas/vml/CTGroup;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/schemas/vml/CTGroup;

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTGroup;->addNewShape()Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_x0000_s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTShape;->setId(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeTypeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTShape;->setType(Ljava/lang/String;)V

    const-string v2, "position:absolute; visibility:hidden"

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTShape;->setStyle(Ljava/lang/String;)V

    const-string v2, "#ffffe1"

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTShape;->setFillcolor(Ljava/lang/String;)V

    sget-object v3, Lcom/microsoft/schemas/office/office/STInsetMode;->AUTO:Lcom/microsoft/schemas/office/office/STInsetMode$Enum;

    invoke-interface {v1, v3}, Lcom/microsoft/schemas/vml/CTShape;->setInsetmode(Lcom/microsoft/schemas/office/office/STInsetMode$Enum;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/vml/CTShape;->addNewFill()Lcom/microsoft/schemas/vml/CTFill;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/microsoft/schemas/vml/CTFill;->setColor(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/vml/CTShape;->addNewShadow()Lcom/microsoft/schemas/vml/CTShadow;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;->T:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/vml/CTShadow;->setOn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V

    const-string v4, "black"

    invoke-interface {v2, v4}, Lcom/microsoft/schemas/vml/CTShadow;->setColor(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/vml/CTShadow;->setObscured(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/vml/CTShape;->addNewPath()Lcom/microsoft/schemas/vml/CTPath;

    move-result-object v2

    sget-object v3, Lcom/microsoft/schemas/office/office/STConnectType;->NONE:Lcom/microsoft/schemas/office/office/STConnectType$Enum;

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/vml/CTPath;->setConnecttype(Lcom/microsoft/schemas/office/office/STConnectType$Enum;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/vml/CTShape;->addNewTextbox()Lcom/microsoft/schemas/vml/CTTextbox;

    move-result-object v2

    const-string v3, "mso-direction-alt:auto"

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/vml/CTTextbox;->setStyle(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/vml/CTShape;->addNewClientData()Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object v1

    sget-object v2, Lcom/microsoft/schemas/office/excel/STObjectType;->NOTE:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->setObjectType(Lcom/microsoft/schemas/office/excel/STObjectType$Enum;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewMoveWithCells()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewSizeWithCells()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewAnchor()Lorg/apache/xmlbeans/XmlString;

    move-result-object v2

    const-string v3, "1, 15, 0, 2, 3, 15, 3, 16"

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewAutoFill()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;

    move-result-object v2

    const-string v3, "False"

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewRow()Lorg/apache/xmlbeans/XmlInteger;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/xmlbeans/XmlInteger;->setBigIntegerValue(Ljava/math/BigInteger;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewColumn()Lorg/apache/xmlbeans/XmlInteger;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlInteger;->setBigIntegerValue(Ljava/math/BigInteger;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {p0}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->getXml()Lorg/apache/poi/schemas/vmldrawing/CTXML;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/XmlCursor;->copyXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lcom/microsoft/schemas/vml/CTShape;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_7
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_VMLDRAWING:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadSubstituteNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setDocumentType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    new-instance v3, Lorg/apache/poi/util/ReplacingInputStream;

    new-instance v4, Lorg/apache/poi/util/ReplacingInputStream;

    const-string v5, "<br>"

    const-string v6, "<br/>"

    invoke-direct {v4, p1, v5, v6}, Lorg/apache/poi/util/ReplacingInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, " xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\""

    invoke-direct {v3, v4, p1, v2}, Lorg/apache/poi/util/ReplacingInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {p1}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->getXml()Lorg/apache/poi/schemas/vmldrawing/CTXML;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTShapetype;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/microsoft/schemas/vml/CTShapetype;

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShapetype;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeTypeId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTShape;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/microsoft/schemas/vml/CTShape;

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->ptrn_shapeId:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    :try_start_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
.end method

.method public removeCommentShape(II)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {v0}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->getXml()Lorg/apache/poi/schemas/vmldrawing/CTXML;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->matchCommentShape(Lorg/apache/xmlbeans/XmlObject;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->removeXml()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    const/4 p0, 0x1

    return p0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_VMLDRAWING:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveImplicitNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {p0, p1, v0}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
