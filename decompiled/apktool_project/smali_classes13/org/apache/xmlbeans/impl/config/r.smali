.class public final synthetic Lorg/apache/xmlbeans/impl/config/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/config/Parser;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/config/Parser;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/r;->e:Lorg/apache/xmlbeans/impl/config/Parser;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/config/r;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/r;->e:Lorg/apache/xmlbeans/impl/config/Parser;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/r;->f:Ljava/lang/String;

    check-cast p1, Lcom/github/javaparser/utils/SourceRoot;

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/config/Parser;->e(Lorg/apache/xmlbeans/impl/config/Parser;Ljava/lang/String;Lcom/github/javaparser/utils/SourceRoot;)Lcom/github/javaparser/ParseResult;

    move-result-object p0

    return-object p0
.end method
