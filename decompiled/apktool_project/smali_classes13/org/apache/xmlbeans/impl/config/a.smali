.class public final synthetic Lorg/apache/xmlbeans/impl/config/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lcom/github/javaparser/utils/ProjectRoot;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/utils/ProjectRoot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/a;->e:Lcom/github/javaparser/utils/ProjectRoot;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/a;->e:Lcom/github/javaparser/utils/ProjectRoot;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->a(Lcom/github/javaparser/utils/ProjectRoot;Ljava/nio/file/Path;)V

    return-void
.end method
