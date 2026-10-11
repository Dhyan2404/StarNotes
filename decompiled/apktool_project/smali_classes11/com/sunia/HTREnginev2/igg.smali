.class public final synthetic Lcom/sunia/HTREnginev2/igg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

.field public final synthetic f:Lonyx/org/apache/commons/io/monitor/FileEntry;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;Lonyx/org/apache/commons/io/monitor/FileEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/igg;->e:Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/igg;->f:Lonyx/org/apache/commons/io/monitor/FileEntry;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/igg;->e:Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/igg;->f:Lonyx/org/apache/commons/io/monitor/FileEntry;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->i(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object p0

    return-object p0
.end method
