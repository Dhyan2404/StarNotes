.class public final synthetic Lcom/sunia/HTREnginev2/v0n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/google/common/collect/Streams$l;

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Streams$l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
