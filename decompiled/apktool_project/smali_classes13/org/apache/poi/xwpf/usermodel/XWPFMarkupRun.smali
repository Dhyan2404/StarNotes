.class public abstract Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IRunElement;


# instance fields
.field private id:I


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;->getId()Ljava/math/BigInteger;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;->id:I

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

.method public getID()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;->id:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
