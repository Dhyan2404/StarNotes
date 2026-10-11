.class public final synthetic Lcom/sunia/HTREnginev2/qzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic a:[Ljava/nio/file/LinkOption;

.field public final synthetic b:[Lonyx/org/apache/commons/io/file/DeleteOption;

.field public final synthetic c:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>([Ljava/nio/file/LinkOption;[Lonyx/org/apache/commons/io/file/DeleteOption;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qzk;->a:[Ljava/nio/file/LinkOption;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qzk;->b:[Lonyx/org/apache/commons/io/file/DeleteOption;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qzk;->c:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qzk;->a:[Ljava/nio/file/LinkOption;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qzk;->b:[Lonyx/org/apache/commons/io/file/DeleteOption;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qzk;->c:Ljava/nio/file/Path;

    check-cast p1, Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-static {v0, v1, p0, p1}, Lonyx/org/apache/commons/io/file/PathUtils;->a([Ljava/nio/file/LinkOption;[Lonyx/org/apache/commons/io/file/DeleteOption;Ljava/nio/file/Path;Ljava/nio/file/attribute/PosixFileAttributes;)Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method
