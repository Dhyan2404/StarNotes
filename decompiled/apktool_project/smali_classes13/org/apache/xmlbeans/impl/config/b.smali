.class public final synthetic Lorg/apache/xmlbeans/impl/config/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/b;->e:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/b;->e:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->a(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;Ljava/nio/file/Path;)V

    return-void
.end method
