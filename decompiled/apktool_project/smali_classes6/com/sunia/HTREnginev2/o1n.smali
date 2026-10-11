.class public final synthetic Lcom/sunia/HTREnginev2/o1n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/google/common/util/concurrent/Striped$h;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Striped$h;-><init>()V

    return-object p0
.end method
