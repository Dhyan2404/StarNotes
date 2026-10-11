.class public final synthetic Lcom/sunia/HTREnginev2/k7e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Ljava/io/File;

.field public final synthetic f:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k7e;->e:Ljava/io/File;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/k7e;->f:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k7e;->e:Ljava/io/File;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k7e;->f:Ljava/io/File;

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/comparator/CompositeFileComparator;->c(Ljava/io/File;Ljava/io/File;Ljava/util/Comparator;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
