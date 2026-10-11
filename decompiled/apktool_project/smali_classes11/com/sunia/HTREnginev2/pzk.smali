.class public final synthetic Lcom/sunia/HTREnginev2/pzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/file/PathFilter;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/file/PathFilter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pzk;->e:Lonyx/org/apache/commons/io/file/PathFilter;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/pzk;->f:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pzk;->e:Lonyx/org/apache/commons/io/file/PathFilter;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/pzk;->f:Z

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/file/PathUtils;->d(Lonyx/org/apache/commons/io/file/PathFilter;ZLjava/nio/file/Path;)Z

    move-result p0

    return p0
.end method
