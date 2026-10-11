.class public final synthetic Lcom/sunia/HTREnginev2/shk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/shk;->e:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/shk;->e:Ljava/io/File;

    check-cast p1, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->b(Ljava/io/File;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z

    move-result p0

    return p0
.end method
