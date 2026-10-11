.class public Lorg/apache/poi/xwpf/usermodel/XWPFInlinePicture;
.super Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;
.source "SourceFile"


# instance fields
.field private ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFPicture;Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFPicture;)V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFInlinePicture;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    sget-object p1, Lorg/apache/poi/wp/usermodel/Position;->BOTTOM:Lorg/apache/poi/wp/usermodel/Position;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->position:Lorg/apache/poi/wp/usermodel/Position;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFInlinePicture;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-static {p0}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method
