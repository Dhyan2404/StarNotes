.class public Lorg/apache/poi/convert/xwpf/handler/XWPFFieldHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private fieldRun:Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

.field private runList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFieldHandler;->runList:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFieldHandler;->fieldRun:Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getParent()Lorg/apache/poi/xwpf/usermodel/IRunBody;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->getCTField()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFieldHandler;->runList:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v4, v2, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFieldHandler;->fieldRun:Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    invoke-static {v0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFieldHandler;->fieldRun:Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->getCTField()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method public handleRun(Lorg/jsoup/nodes/Element;III)V
    .locals 7

    add-int/lit8 p4, p4, 0x1

    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFieldHandler;->runList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFieldHandler;->runList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    add-int/lit8 v6, v3, 0x1

    move-object v2, p1

    move v4, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->handleRun(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFRun;Lorg/jsoup/nodes/Element;III)Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;

    move v3, v6

    goto :goto_0

    :cond_0
    return-void
.end method
