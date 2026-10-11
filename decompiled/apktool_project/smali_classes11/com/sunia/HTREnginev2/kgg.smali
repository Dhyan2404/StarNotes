.class public final synthetic Lcom/sunia/HTREnginev2/kgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/monitor/FileEntry;

.field public final synthetic f:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kgg;->e:Lonyx/org/apache/commons/io/monitor/FileEntry;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kgg;->f:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kgg;->e:Lonyx/org/apache/commons/io/monitor/FileEntry;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kgg;->f:Ljava/io/File;

    check-cast p1, Lonyx/org/apache/commons/io/monitor/FileAlterationListener;

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->c(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V

    return-void
.end method
