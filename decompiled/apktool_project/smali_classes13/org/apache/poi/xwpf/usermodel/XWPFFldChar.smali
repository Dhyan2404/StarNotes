.class public Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IRunPart;


# instance fields
.field private fldCharState:Lorg/apache/poi/xwpf/usermodel/FldCharState;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;->init(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;)V

    return-void
.end method

.method private init(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;)V
    .locals 2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->getFldCharType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/FldCharState;->END:Lorg/apache/poi/xwpf/usermodel/FldCharState;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;->fldCharState:Lorg/apache/poi/xwpf/usermodel/FldCharState;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/FldCharState;->SEPARATE:Lorg/apache/poi/xwpf/usermodel/FldCharState;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;->fldCharState:Lorg/apache/poi/xwpf/usermodel/FldCharState;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/FldCharState;->BEGIN:Lorg/apache/poi/xwpf/usermodel/FldCharState;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;->fldCharState:Lorg/apache/poi/xwpf/usermodel/FldCharState;

    :cond_3
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getFldCharState()Lorg/apache/poi/xwpf/usermodel/FldCharState;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;->fldCharState:Lorg/apache/poi/xwpf/usermodel/FldCharState;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    const-string p0, "CTFldChar"

    return-object p0
.end method
