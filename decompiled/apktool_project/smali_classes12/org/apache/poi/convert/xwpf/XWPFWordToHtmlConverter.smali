.class public Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;
.super Lorg/apache/poi/convert/AbstractWordConverter;
.source "SourceFile"


# instance fields
.field private context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

.field private document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private documentHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/convert/AbstractWordConverter;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {v0, p1}, Lorg/apache/poi/sl/MetaData;->readProperties(Lorg/apache/poi/ooxml/POIXMLDocument;)V

    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v1, p0, Lorg/apache/poi/convert/AbstractWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/apache/poi/convert/HtmlDocumentFacade;)V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    new-instance p1, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;

    invoke-direct {p1, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;->documentHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;

    iget p0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentParaSize:I

    invoke-virtual {p1, p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->setDocumentParaSize(I)V

    return-void
.end method


# virtual methods
.method public closeImpl()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;->documentHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->close()V

    return-void
.end method

.method public convert()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;->documentHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;

    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->handleDocument()V

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;->documentHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;

    invoke-virtual {v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->getDocumentList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/apache/poi/convert/AbstractWordConverter;->reconstructDocumentLink()V

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->buildStylesheet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/convert/AbstractConverter;->addHtmlDocumentStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setAbort(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/convert/AbstractConverter;->setAbort(Z)V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;->documentHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->setAbort(Z)V

    return-void
.end method

.method public setDocumentParaSize(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/convert/AbstractConverter;->setDocumentParaSize(I)V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;->documentHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->setDocumentParaSize(I)V

    return-void
.end method

.method public setPicturesManager(Lorg/apache/poi/picture/PicturesManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/picture/PicturesManager<",
            "*>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/poi/convert/AbstractConverter;->setPicturesManager(Lorg/apache/poi/picture/PicturesManager;)V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->setPicturesManager(Lorg/apache/poi/picture/PicturesManager;)V

    return-void
.end method
