.class public final synthetic Lcom/sunia/HTREnginev2/egg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/egg;->e:Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/egg;->e:Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;

    check-cast p1, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->addObserver(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;)V

    return-void
.end method
