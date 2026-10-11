.class Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Option"
.end annotation


# instance fields
.field private theArgLetter:C

.field private theArgument:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;C)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->theArgument:Ljava/lang/String;

    iput-char p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->theArgLetter:C

    return-void
.end method


# virtual methods
.method public getArgLetter()C
    .locals 0

    iget-char p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->theArgLetter:C

    return p0
.end method

.method public getArgument()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->theArgument:Ljava/lang/String;

    return-object p0
.end method

.method public hasArg()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->theArgument:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setArg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->theArgument:Ljava/lang/String;

    return-void
.end method
