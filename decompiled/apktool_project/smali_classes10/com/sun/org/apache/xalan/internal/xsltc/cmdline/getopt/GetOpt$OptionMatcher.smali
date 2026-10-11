.class Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OptionMatcher"
.end annotation


# instance fields
.field private theOptString:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;->theOptString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasArg(C)Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;->theOptString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;->theOptString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;->theOptString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x3a

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    return v0
.end method

.method public match(C)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;->theOptString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
