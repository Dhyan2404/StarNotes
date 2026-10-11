.class public Lcom/sun/org/apache/regexp/internal/REUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final complexPrefix:Ljava/lang/String; = "complex:"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRE(Ljava/lang/String;)Lcom/sun/org/apache/regexp/internal/RE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/sun/org/apache/regexp/internal/REUtil;->createRE(Ljava/lang/String;I)Lcom/sun/org/apache/regexp/internal/RE;

    move-result-object p0

    return-object p0
.end method

.method public static createRE(Ljava/lang/String;I)Lcom/sun/org/apache/regexp/internal/RE;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    const-string v0, "complex:"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    invoke-static {p0}, Lcom/sun/org/apache/regexp/internal/RE;->simplePatternToFullRegularExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
