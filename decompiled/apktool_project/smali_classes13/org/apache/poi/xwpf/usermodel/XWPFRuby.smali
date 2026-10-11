.class public Lorg/apache/poi/xwpf/usermodel/XWPFRuby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IRunPart;


# instance fields
.field private ruby:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRuby;->ruby:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRuby;->ruby:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    invoke-static {v0}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRuby;->ruby:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
