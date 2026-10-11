.class public final synthetic Lorg/apache/xmlbeans/impl/config/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/n;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/n;->e:Ljava/lang/String;

    check-cast p1, Lcom/github/javaparser/ast/body/TypeDeclaration;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/config/Parser;->f(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z

    move-result p0

    return p0
.end method
