.class public final synthetic Lcom/sunia/HTREnginev2/mgg;
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

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mgg;->e:Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mgg;->e:Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    check-cast p1, Lonyx/org/apache/commons/io/monitor/FileAlterationListener;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->a(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V

    return-void
.end method
