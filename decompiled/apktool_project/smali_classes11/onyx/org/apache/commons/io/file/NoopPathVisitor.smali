.class public Lonyx/org/apache/commons/io/file/NoopPathVisitor;
.super Lonyx/org/apache/commons/io/file/SimplePathVisitor;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lonyx/org/apache/commons/io/file/NoopPathVisitor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/file/NoopPathVisitor;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/file/NoopPathVisitor;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/file/NoopPathVisitor;->INSTANCE:Lonyx/org/apache/commons/io/file/NoopPathVisitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lonyx/org/apache/commons/io/file/SimplePathVisitor;-><init>()V

    return-void
.end method

.method public constructor <init>(Lonyx/org/apache/commons/io/function/IOBiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOBiFunction<",
            "Ljava/nio/file/Path;",
            "Ljava/io/IOException;",
            "Ljava/nio/file/FileVisitResult;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/file/SimplePathVisitor;-><init>(Lonyx/org/apache/commons/io/function/IOBiFunction;)V

    return-void
.end method
