.class public final synthetic Lorg/apache/xmlbeans/impl/config/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/github/javaparser/ParseResult;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/config/Parser;->b(Lcom/github/javaparser/ParseResult;)Z

    move-result p0

    return p0
.end method
