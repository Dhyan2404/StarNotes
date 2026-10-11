.class public final synthetic Lcom/sunia/HTREnginev2/l9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;

.field public final synthetic b:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l9;->a:Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/l9;->b:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/l9;->a:Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l9;->b:Ljava/nio/file/Path;

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;->a(Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method
