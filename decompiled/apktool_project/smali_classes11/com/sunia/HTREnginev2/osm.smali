.class public final synthetic Lcom/sunia/HTREnginev2/osm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOBiFunction;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/file/SimplePathVisitor;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/file/SimplePathVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/osm;->a:Lonyx/org/apache/commons/io/file/SimplePathVisitor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/osm;->a:Lonyx/org/apache/commons/io/file/SimplePathVisitor;

    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/io/IOException;

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/file/SimplePathVisitor;->a(Lonyx/org/apache/commons/io/file/SimplePathVisitor;Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method
