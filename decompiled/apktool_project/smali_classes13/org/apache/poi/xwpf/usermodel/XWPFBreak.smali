.class public Lorg/apache/poi/xwpf/usermodel/XWPFBreak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IRunPart;


# instance fields
.field private breakType:Lorg/apache/poi/xwpf/usermodel/BreakType;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;->getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType;->COLUMN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BreakType;->COLUMN:Lorg/apache/poi/xwpf/usermodel/BreakType;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFBreak;->breakType:Lorg/apache/poi/xwpf/usermodel/BreakType;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType;->PAGE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BreakType;->PAGE:Lorg/apache/poi/xwpf/usermodel/BreakType;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFBreak;->breakType:Lorg/apache/poi/xwpf/usermodel/BreakType;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BreakType;->TEXT_WRAPPING:Lorg/apache/poi/xwpf/usermodel/BreakType;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFBreak;->breakType:Lorg/apache/poi/xwpf/usermodel/BreakType;

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

.method public getBreakType()Lorg/apache/poi/xwpf/usermodel/BreakType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFBreak;->breakType:Lorg/apache/poi/xwpf/usermodel/BreakType;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    const-string p0, "\n"

    return-object p0
.end method
