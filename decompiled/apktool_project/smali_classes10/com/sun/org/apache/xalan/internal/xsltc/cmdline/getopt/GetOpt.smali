.class public Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;,
        Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;
    }
.end annotation


# instance fields
.field private theCmdArgs:Ljava/util/List;

.field private theCurrentOption:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;

.field private theOptionMatcher:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;

.field private theOptions:Ljava/util/List;

.field private theOptionsIterator:Ljava/util/ListIterator;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theCurrentOption:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptions:Ljava/util/List;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theCmdArgs:Ljava/util/List;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptionMatcher:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theCmdArgs:Ljava/util/List;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;

    invoke-direct {v0, p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptionMatcher:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_6

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 p2, v0, 0x1

    goto/16 :goto_4

    :cond_0
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptions:Ljava/util/List;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v3, p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;C)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-le v2, v5, :cond_2

    :goto_1
    if-ge v6, v2, :cond_5

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptions:Ljava/util/List;

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {v4, p0, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;C)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->getArgLetter()C

    move-result v3

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->hasArg()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptionMatcher:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;->hasArg(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->setArg(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_2
    move p2, v0

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptionsIterator:Ljava/util/ListIterator;

    :goto_5
    array-length v0, p1

    if-ge p2, v0, :cond_7

    aget-object v0, p1, p2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theCmdArgs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method


# virtual methods
.method public getCmdArgs()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theCmdArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theCmdArgs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNextOption()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/IllegalArgumentException;,
            Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/MissingOptArgException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptionsIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptionsIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theCurrentOption:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->getArgLetter()C

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptionMatcher:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;->hasArg(C)Z

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theCurrentOption:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->getArgument()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptionMatcher:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;->match(C)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    const-string v0, "CMDLINE_OPT_MISSING_ARG_ERR"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/MissingOptArgException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/MissingOptArgException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    const-string v0, "ILLEGAL_CMDLINE_OPTION_ERR"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, -0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public getOptionArg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theCurrentOption:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->getArgument()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theCurrentOption:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->getArgLetter()C

    move-result v1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptionMatcher:Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$OptionMatcher;->hasArg(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public printOptions()V
    .locals 4

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->theOptions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPT ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->getArgLetter()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt$Option;->getArgument()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    goto :goto_0

    :cond_1
    return-void
.end method
