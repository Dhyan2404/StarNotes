.class public final synthetic Lcom/sunia/HTREnginev2/cei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/function/IORunnable;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IORunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cei;->e:Lonyx/org/apache/commons/io/function/IORunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cei;->e:Lonyx/org/apache/commons/io/function/IORunnable;

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IORunnable;->a(Lonyx/org/apache/commons/io/function/IORunnable;)V

    return-void
.end method
