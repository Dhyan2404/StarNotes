.class public final synthetic Lcom/sunia/HTREnginev2/ngg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/monitor/FileAlterationListener;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ngg;->e:Lonyx/org/apache/commons/io/monitor/FileAlterationListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ngg;->e:Lonyx/org/apache/commons/io/monitor/FileAlterationListener;

    check-cast p1, Lonyx/org/apache/commons/io/monitor/FileAlterationListener;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->d(Lonyx/org/apache/commons/io/monitor/FileAlterationListener;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
