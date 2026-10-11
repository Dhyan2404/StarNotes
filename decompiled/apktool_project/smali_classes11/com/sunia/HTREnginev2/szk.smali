.class public final synthetic Lcom/sunia/HTREnginev2/szk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/file/PathFilter;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/file/PathFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/szk;->e:Lonyx/org/apache/commons/io/file/PathFilter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/szk;->e:Lonyx/org/apache/commons/io/file/PathFilter;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/file/PathUtils;->c(Lonyx/org/apache/commons/io/file/PathFilter;Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method
