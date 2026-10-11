.class public final synthetic Lorg/apache/xmlbeans/impl/config/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/github/javaparser/ParseResult;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/config/Parser;->c(Lcom/github/javaparser/ParseResult;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
