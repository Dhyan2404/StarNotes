.class public final synthetic Lcom/sunia/HTREnginev2/pgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pgg;->e:Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pgg;->e:Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    check-cast p1, Lonyx/org/apache/commons/io/monitor/FileEntry;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->h(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;Lonyx/org/apache/commons/io/monitor/FileEntry;)V

    return-void
.end method
