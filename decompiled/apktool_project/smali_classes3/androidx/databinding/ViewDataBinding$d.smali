.class public Landroidx/databinding/ViewDataBinding$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/zge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Lcom/sunia/HTREnginev2/r5o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)",
            "Lcom/sunia/HTREnginev2/r5o;"
        }
    .end annotation

    new-instance p0, Landroidx/databinding/ViewDataBinding$i;

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding$i;-><init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding$i;->getListener()Lcom/sunia/HTREnginev2/r5o;

    move-result-object p0

    return-object p0
.end method
