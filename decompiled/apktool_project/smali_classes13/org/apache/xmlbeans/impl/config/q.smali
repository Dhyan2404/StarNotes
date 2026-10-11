.class public final synthetic Lorg/apache/xmlbeans/impl/config/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/q;->e:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/q;->e:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->collect(Ljava/nio/file/Path;)Lcom/github/javaparser/utils/ProjectRoot;

    return-void
.end method
