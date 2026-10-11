.class public final synthetic Lcom/sunia/HTREnginev2/ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/nio/file/Path;

.field public final synthetic f:Ljava/nio/file/attribute/BasicFileAttributes;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ia;->e:Ljava/nio/file/Path;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ia;->f:Ljava/nio/file/attribute/BasicFileAttributes;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ia;->e:Ljava/nio/file/Path;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ia;->f:Ljava/nio/file/attribute/BasicFileAttributes;

    check-cast p1, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/AndFileFilter;->b(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z

    move-result p0

    return p0
.end method
